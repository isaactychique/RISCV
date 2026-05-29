library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity fetch is
Port ( 
   CLK                 : in  STD_LOGIC;
   resetn              : in  STD_LOGIC;
   enable_f            : in  STD_LOGIC;
   enable_m            : in  STD_LOGIC;
   jumpOrBranchAddress : in  STD_LOGIC_VECTOR (31 downto 0);
   jumpOrBranch        : in  STD_LOGIC;
   pc_value            : out STD_LOGIC_VECTOR (31 downto 0)
 );
end fetch;


architecture arch of fetch is

   SIGNAL pc_addr : UNSIGNED (31 downto 0);

begin
   process(CLK)
   begin 
      if rising_edge(CLK) then 
            if resetn = '0' then
               pc_addr <= (others  => '0'); 

            elsif  (enable_f = '1') then 
               pc_addr <= pc_addr + 4 ; 
            else 
               if (jumpOrBranch = '1' and enable_m = '1') then
                  pc_addr <= unsigned(jumpOrBranchAddress) ;  
               end if ;  
            end if; 
      end if ; 
   end process; 

   pc_value <= std_logic_vector(pc_addr) ; 
end arch;
 



