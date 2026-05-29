library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity alu is
Port ( 
   rs1_v             : in  STD_LOGIC_VECTOR (31 downto 0);  -- rs_1 value
   rs2_v             : in  STD_LOGIC_VECTOR (31 downto 0);  -- rs_2 value
   isALUreg          : in  STD_LOGIC;                       -- does computation invole rs_1 and rs_2 ? or imm ?
   isBranch          : in  STD_LOGIC;                       -- branch instruction ?
   isAluSubstraction : in  STD_LOGIC;                       -- function7 field, bit 6
   isCustom          : in  STD_LOGIC;                       -- custom instruction
   func3             : in  STD_LOGIC_VECTOR ( 2 downto 0);  -- func3 field
   func7             : in  STD_LOGIC_VECTOR ( 6 downto 0);  -- func7 field
   imm_v             : in  STD_LOGIC_VECTOR (31 downto 0);  -- immediate value

   aluOut_v          : out STD_LOGIC_VECTOR (31 downto 0);  -- result of the ALU computation
   takeBranch        : out STD_LOGIC
 );
end alu;


architecture arch of alu is

    -- Choix des opérandes uniques (évite de dupliquer les calculs type R / type I)
    signal op2           : std_logic_vector(31 downto 0);
    signal shift_amount  : integer range 0 to 31;
    
    -- Signaux pour le soustracteur unique (intervient pour SUB, SLT, SLTU et les Branches)
    signal sub_res       : std_logic_vector(32 downto 0); -- 33 bits pour capturer la retenue/signe
    signal op1_ext       : std_logic_vector(32 downto 0);
    signal op2_ext       : std_logic_vector(32 downto 0);
    
    -- Indicateurs de comparaison issus du soustracteur unique
    signal less_signed   : std_logic;
    signal less_unsigned : std_logic;
    signal equal_s       : std_logic;

    -- Signaux de calcul factorisés
    signal add_res       : std_logic_vector(31 downto 0);
    signal shift_res     : std_logic_vector(31 downto 0);
    
    -- Signaux pour les instructions Zicsr / Custom extensions conditionnelles
    signal czero_eqz     : std_logic_vector(31 downto 0);
    signal czero_neqz    : std_logic_vector(31 downto 0);

begin

    -------------------------------------------------------------------------
    -- 1. FACTORISATION DES OPÉRANDES (Entrées communes pour R-Type et I-Type)
    -------------------------------------------------------------------------
    op2          <= rs2_v when isALUreg = '1' else imm_v;
    shift_amount <= to_integer(unsigned(op2(4 downto 0)));

    -------------------------------------------------------------------------
    -- 2. PARTIE OPÉRATIVE UNIQUE (Un seul bloc de chaque type)
    -------------------------------------------------------------------------
    
    -- Additionneur standard 32-bits
    add_res <= std_logic_vector(unsigned(rs1_v) + unsigned(op2));

    -- Soustracteur 33-bits partagé pour la soustraction ET toutes les comparaisons
    -- On étend d'un bit pour gérer proprement le bit de signe et la retenue (carry)
    op1_ext <= (rs1_v(31) & rs1_v) when (func3 = "100" or func3 = "101" or func3 = "010") else ('0' & rs1_v);
    op2_ext <= (op2(31)   & op2)   when (func3 = "100" or func3 = "101" or func3 = "010") else ('0' & op2);
    
    sub_res <= std_logic_vector(unsigned(op1_ext) - unsigned(op2_ext));

    -- Extraction des indicateurs de comparaison à partir du soustracteur unique
    equal_s       <= '1' when rs1_v = rs2_v else '0';
    less_signed   <= sub_res(32);                             -- Le bit de signe après extension signée
    less_unsigned <= '1' when unsigned(rs1_v) < unsigned(op2) else '0'; -- Porté par le comparateur natif ou sub_res

    -- Barrel Shifter Unique (Gère SLL, SRL, SRA pour R et I)
    process(rs1_v, shift_amount, func3, isAluSubstraction)
    begin
        case func3 is
            when "001" => -- SLL / SLLI (Décalage à gauche)
                shift_res <= std_logic_vector(shift_left(unsigned(rs1_v), shift_amount));
            when "101" => 
                if isAluSubstraction = '1' then -- SRA / SRAI (Décalage à droite arithmétique)
                    shift_res <= std_logic_vector(shift_right(signed(rs1_v), shift_amount));
                else -- SRL / SRLI (Décalage à droite logique)
                    shift_res <= std_logic_vector(shift_right(unsigned(rs1_v), shift_amount));
                end if;
            when others =>
                shift_res <= (others => '0');
        end case;
    end process;

    -- Instructions spécifiques (Zicond / Custom)
    czero_eqz  <= (others => '0') when rs2_v = x"00000000" else rs1_v;
    czero_neqz <= (others => '0') when rs2_v /= x"00000000" else rs1_v;

    -------------------------------------------------------------------------
    -- 3. MULTIPLEXAGE DE SORTIE DE L'ALU
    -------------------------------------------------------------------------
    process(isCustom, func3, func7, isALUreg, isAluSubstraction, rs1_v, add_res, sub_res, shift_res, less_signed, less_unsigned, czero_eqz, czero_neqz, op2)
        variable rev : std_logic_vector(31 downto 0);
    begin
        -- Version optimisée en ligne de l'inversion de bits custom
        for i in 0 to 31 loop 
            rev(i) := rs1_v(31-i); 
        end loop;

        if isCustom = '1' then
            aluOut_v <= rev;
        elsif func7 = "0000111" then
            if func3 = "111" then aluOut_v <= czero_neqz;
            else                  aluOut_v <= czero_eqz;
            end if;
        else
            case func3 is
                when "000" => 
                    if (isALUreg = '1' and isAluSubstraction = '1') then
                        aluOut_v <= sub_res(31 downto 0); -- Utilisation du soustracteur unique
                    else
                        aluOut_v <= add_res;
                    end if;
                when "001" | "101" => 
                    aluOut_v <= shift_res; -- Un seul signal pour tous les décalages
                when "010" => 
                    aluOut_v <= (0 => less_signed, others => '0');   -- SLT / SLTI
                when "011" => 
                    aluOut_v <= (0 => less_unsigned, others => '0'); -- SLTU / SLTIU
                when "100" => 
                    aluOut_v <= rs1_v xor op2;
                when "110" => 
                    aluOut_v <= rs1_v or op2;
                when "111" => 
                    aluOut_v <= rs1_v and op2;
                when others => 
                    aluOut_v <= (others => '0');
            end case;
        end if;
    end process;

    -------------------------------------------------------------------------
    -- 4. GESTION DES BRANCHES (Utilise les indicateurs calculés plus haut)
    -------------------------------------------------------------------------
    process(isBranch, func3, equal_s, less_signed, less_unsigned)
    begin
        if isBranch = '1' then
            case func3 is
                when "000"  => takeBranch <= equal_s;             -- BEQ
                when "001"  => takeBranch <= not equal_s;         -- BNE
                when "100"  => takeBranch <= less_signed;         -- BLT
                when "101"  => takeBranch <= not less_signed;     -- BGE
                when "110"  => takeBranch <= less_unsigned;       -- BLTU
                when "111"  => takeBranch <= not less_unsigned;   -- BGEU
                when others => takeBranch <= '0';
            end case;
        else
            takeBranch <= '0';
        end if;
    end process;

end arch;