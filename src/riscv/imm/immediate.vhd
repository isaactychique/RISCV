library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity immediate is
Port ( 
   INSTR    : in  STD_LOGIC_VECTOR (31 downto 0);
   isStore  : in  STD_LOGIC;
   isLoad   : in  STD_LOGIC;
   isbranch : in  STD_LOGIC;
   isJAL    : in  STD_LOGIC;
   isAuipc  : in  STD_LOGIC;
   isLui    : in  STD_LOGIC;
   imm      : out STD_LOGIC_VECTOR (31 downto 0)
 );
end immediate;


architecture arch of immediate is

    function repeat_bit(B: std_logic; N: natural) return std_logic_vector is
        variable result: std_logic_vector(1 to N);
    begin
        for i in 1 to N loop
            result(i) := B;
        end loop;
        return result;
    end;  

    function to_stdl(L: BOOLEAN) return std_ulogic is
    begin
        if L then
            return('1');
        else
            return('0');
        end if;
    end;

   SIGNAL Iimm : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL Simm : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL Uimm : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL Jimm : STD_LOGIC_VECTOR (31 downto 0);
   SIGNAL Bimm : STD_LOGIC_VECTOR (31 downto 0);

begin
    process(INSTR, isLoad, isStore, isbranch, isLui, isAuipc, isJAL)
        variable sign : std_logic;
    begin 
        sign := INSTR(31); -- Le bit 31 est le bit de signe pour tous les types (sauf U)

        if isStore = '1' then   -- Type S
            imm <= repeat_bit(sign, 20) & INSTR(31 downto 25) & INSTR(11 downto 7);
    
        elsif isLui = '1' or isAuipc = '1' then -- Type U
            -- Pas d'extension de signe au sens strict, on place l'immédiat en haut
            imm <= INSTR(31 downto 12) & x"000"; 

        elsif isJAL = '1' then -- Type J
            imm <= repeat_bit(sign, 11) & INSTR(31) & INSTR(19 downto 12) & INSTR(20) & INSTR(30 downto 21) & '0';

        elsif isbranch = '1' then -- Type B
            imm <= repeat_bit(sign, 19) & INSTR(31) & INSTR(7) & INSTR(30 downto 25) & INSTR(11 downto 8) & '0';

        else -- Type I (Load, ADDI, ...)
            imm <= repeat_bit(sign, 20) & INSTR(31 downto 20);
        end if ;

    end process; 
end arch;
