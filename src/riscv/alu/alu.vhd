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
   func3             : in  STD_LOGIC_VECTOR ( 2 downto 0);  -- funct3 field
   func7             : in  STD_LOGIC_VECTOR ( 6 downto 0);  -- funct7 field
   imm_v             : in  STD_LOGIC_VECTOR (31 downto 0);  -- immediate value

   aluOut_v          : out STD_LOGIC_VECTOR (31 downto 0);  -- result of the ALU computation
   aluPlus_v         : out STD_LOGIC_VECTOR (31 downto 0);  -- result of the adder (rs_1 + (rs_2 or imm)), fast path for address computation
   takeBranch        : out STD_LOGIC
 );
end alu;


architecture arch of alu is

   ---------------------------------------------------------------------------------------------------

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
    
   ---------------------------------------------------------------------------------------------------

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
 
