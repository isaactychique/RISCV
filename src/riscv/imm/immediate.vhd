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

   --
   --
   --
   --
   --
   --
   --
   --
   --
   
end arch;