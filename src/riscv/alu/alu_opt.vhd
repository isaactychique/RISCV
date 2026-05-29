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

    signal op2 : std_logic_vector(31 downto 0);

    signal eq_s  : std_logic;
    signal lt_s  : std_logic;
    signal ltu_s : std_logic;

    signal shift_amount : integer range 0 to 31;
    signal shift_res    : std_logic_vector(31 downto 0);

    signal add_s  : std_logic_vector(31 downto 0);
    signal sub_s  : std_logic_vector(31 downto 0);
    signal xor_s  : std_logic_vector(31 downto 0);
    signal or_s   : std_logic_vector(31 downto 0);
    signal and_s  : std_logic_vector(31 downto 0);
    signal slt_s  : std_logic_vector(31 downto 0);
    signal sltu_s : std_logic_vector(31 downto 0);

   
    signal czero_eqz_s  : std_logic_vector(31 downto 0);
    signal czero_nez_s  : std_logic_vector(31 downto 0);

begin

   
    op2 <= rs2_v when isALUreg = '1' else imm_v;


    process(rs2_v, imm_v, isALUreg)
    begin
        if isALUreg = '1' then
            shift_amount <= to_integer(unsigned(rs2_v(4 downto 0)));
        else
            shift_amount <= to_integer(unsigned(imm_v(4 downto 0)));
        end if;
    end process;


    eq_s  <= '1' when rs1_v = op2 else '0';
    lt_s  <= '1' when signed(rs1_v) < signed(op2) else '0';
    ltu_s <= '1' when unsigned(rs1_v) < unsigned(op2) else '0';


    add_s <= std_logic_vector(signed(rs1_v) + signed(op2));
    sub_s <= std_logic_vector(signed(rs1_v) - signed(op2));

    xor_s <= rs1_v xor op2;
    or_s  <= rs1_v or op2;
    and_s <= rs1_v and op2;

    slt_s  <= (31 downto 1 => '0') & lt_s;
    sltu_s <= (31 downto 1 => '0') & ltu_s;


    -- SHIFT UNIQUE
    shift_res <=
        std_logic_vector(shift_left(unsigned(rs1_v), shift_amount))
            when func3 = "001"
        else
        std_logic_vector(shift_right(unsigned(rs1_v), shift_amount))
            when func3 = "101" and isAluSubstraction = '0'
        else
        std_logic_vector(shift_right(signed(rs1_v), shift_amount));


    czero_eqz_s <= (others => '0') when rs2_v = x"00000000" else rs1_v;
    czero_nez_s <= (others => '0') when rs2_v /= x"00000000" else rs1_v;


    aluOut_v <=

        czero_nez_s when (func3 = "111" and func7 = "0000111") else
        czero_eqz_s  when (func3 = "101" and func7 = "0000111") else

        sub_s when (isALUreg ='1' and isAluSubstraction ='1' and func3="000") else
        add_s when (isALUreg ='1' and func3="000") else

        xor_s when (isALUreg ='1' and func3="100") else
        or_s  when (isALUreg ='1' and func3="110") else
        and_s when (isALUreg ='1' and func3="111") else

        shift_res when (isALUreg ='1' and (func3="001" or func3="101")) else

        slt_s  when (isALUreg ='1' and func3="010") else
        sltu_s when (isALUreg ='1' and func3="011") else

        add_s when (isALUreg ='0' and func3="000") else
        xor_s when (isALUreg ='0' and func3="100") else
        or_s  when (isALUreg ='0' and func3="110") else
        and_s when (isALUreg ='0' and func3="111") else

        shift_res when (isALUreg ='0' and (func3="001" or func3="101")) else

        slt_s  when (isALUreg ='0' and func3="010") else
        sltu_s when (isALUreg ='0' and func3="011") else

        (others => '0');

   
    
    takeBranch <=
        eq_s  when isBranch = '1' and func3 = "000" else
        not eq_s when isBranch = '1' and func3 = "001" else
        lt_s  when isBranch = '1' and func3 = "100" else
        not lt_s when isBranch = '1' and func3 = "101" else
        ltu_s when isBranch = '1' and func3 = "110" else
        not ltu_s when isBranch = '1' and func3 = "111" else
        '0';

end arch;
