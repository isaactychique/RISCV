library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.riscv_types.all;

entity mem_load is 
    Port ( 
        ADDR_R      : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
        DATA_R      : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
        is_byte     : IN  STD_LOGIC;
        is_half     : IN  STD_LOGIC;
        is_sign_ext : IN  STD_LOGIC;
        data_value : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
     );
end mem_load;


architecture arch of mem_load is

   SIGNAL M_LOAD_H    : STD_LOGIC_VECTOR (15 downto 0);
   SIGNAL M_LOAD_B    : STD_LOGIC_VECTOR ( 7 downto 0);
   SIGNAL M_LOAD_sign : STD_LOGIC;

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
