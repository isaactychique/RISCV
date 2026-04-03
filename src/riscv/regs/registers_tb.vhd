-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity registers_tb is
end;

architecture bench of registers_tb is

  component registers
  Port ( 
     CLOCK    : in   STD_LOGIC;
     RS1_id   : IN   STD_LOGIC_VECTOR( 4 DOWNTO 0);
     RS2_id   : IN   STD_LOGIC_VECTOR( 4 DOWNTO 0);
     RD_id    : IN   STD_LOGIC_VECTOR( 4 DOWNTO 0);
     RD_id_we : IN   STD_LOGIC;
     DATA_rd  : IN   STD_LOGIC_VECTOR(31 DOWNTO 0);
     DATA_rs1 : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
     DATA_rs2 : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
   );
  end component;

  signal CLOCK: STD_LOGIC;
  signal RESET: STD_LOGIC;
  signal RS1_id: STD_LOGIC_VECTOR( 4 DOWNTO 0);
  signal RS2_id: STD_LOGIC_VECTOR( 4 DOWNTO 0);
  signal RD_id: STD_LOGIC_VECTOR( 4 DOWNTO 0);
  signal RD_id_we: STD_LOGIC;
  signal DATA_rd: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal DATA_rs1: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal DATA_rs2: STD_LOGIC_VECTOR(31 DOWNTO 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: registers port map ( CLOCK    => CLOCK,
                            RS1_id   => RS1_id,
                            RS2_id   => RS2_id,
                            RD_id    => RD_id,
                            RD_id_we => RD_id_we,
                            DATA_rd  => DATA_rd,
                            DATA_rs1 => DATA_rs1,
                            DATA_rs2 => DATA_rs2 );

  stimulus: process
  begin
  
    -- Put initialisation code here
    RESET <= '1';
    wait for 20 ns;
    RESET <= '0';
    wait for clock_period;

    rs1_id <= "00000";
    rs2_id <= "00000";
    rd_id <= "00000";
    rd_id_we <= '0';
    data_rd <= (others => '0');
    wait for clock_period;

    assert(DATA_rs1 = x"00000000") report "Test failed (initial value of x0)" severity error;

    -- Put test bench stimulus code here
    
    -- Write to all registers
    for i in 1 to 31 loop
      rd_id <= std_logic_vector(to_unsigned(i, 5));
      data_rd <= std_logic_vector(to_unsigned(i, 32));
      rd_id_we <= '1';
      wait for clock_period;
    end loop;

    -- we = 0
    rd_id_we <= '0';
    wait for clock_period;

    -- Read back from all registers and check values
    for i in 1 to 15 loop
      rs1_id <= std_logic_vector(to_unsigned(i, 5));
      rs2_id <= std_logic_vector(to_unsigned(i+1, 5));
      wait for clock_period;
      assert(DATA_rs1 = std_logic_vector(to_unsigned(i, 32))) report "Test failed (read back from x" & integer'image(i) & ")" severity error;
      assert(DATA_rs2 = std_logic_vector(to_unsigned(i+1, 32))) report "Test failed (read back from x" & integer'image(i+1) & ")" severity error;
    end loop;
    


    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      CLOCK <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;

