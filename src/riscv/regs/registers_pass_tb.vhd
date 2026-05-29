library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity registers_pass_tb is
-- Un testbench n'a pas de ports d'entrée/sortie
end registers_pass_tb;

architecture sim of registers_pass_tb is

    -- 1. Déclaration du composant à tester (UUT)
    component registers_pass
    Port ( 
       CLOCK    : in   STD_LOGIC;
       RESET    : in   STD_LOGIC;
       e_hold   : in   STD_LOGIC;
       RS1_id   : in   STD_LOGIC_VECTOR( 4 DOWNTO 0);
       DATA_rs1 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
       RS2_id   : in   STD_LOGIC_VECTOR( 4 DOWNTO 0);
       DATA_rs2 : out  STD_LOGIC_VECTOR(31 DOWNTO 0);
       RD_id    : in   STD_LOGIC_VECTOR( 4 DOWNTO 0);
       RD_id_we : in   STD_LOGIC;
       DATA_rd  : in   STD_LOGIC_VECTOR(31 DOWNTO 0)
     );
    end component;

    -- 2. Signaux internes pour connecter l'UUT
    signal clk        : std_logic := '0';
    signal rst        : std_logic := '0';
    signal e_hold     : std_logic := '0';
    signal rs1_id     : std_logic_vector(4 downto 0) := (others => '0');
    signal rs2_id     : std_logic_vector(4 downto 0) := (others => '0');
    signal rd_id      : std_logic_vector(4 downto 0) := (others => '0');
    signal rd_id_we   : std_logic := '0';
    signal data_rd    : std_logic_vector(31 downto 0) := (others => '0');
    
    signal data_rs1   : std_logic_vector(31 downto 0);
    signal data_rs2   : std_logic_vector(31 downto 0);

    -- Constante pour la période de l'horloge (ex: 50 MHz -> 20 ns)
    constant CLK_PERIOD : time := 20 ns;

begin

    -- 3. Instanciation de l'Unité Sous Test (UUT)
    uut: registers_pass
        port map (
            CLOCK    => clk,
            RESET    => rst,
            e_hold   => e_hold,
            RS1_id   => rs1_id,
            DATA_rs1 => data_rs1,
            RS2_id   => rs2_id,
            DATA_rs2 => data_rs2,
            RD_id    => rd_id,
            RD_id_we => rd_id_we,
            DATA_rd  => data_rd
        );

    -- 4. Générateur d'horloge
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- 5. Processus de Stimulus (Le scénario de test)
    stim_proc: process
    begin		
        -- Initialisation du système
        rst <= '1';
        e_hold <= '0';
        rd_id_we <= '0';
        wait for CLK_PERIOD * 2;
        rst <= '0';
        wait for CLK_PERIOD;

        -----------------------------------------------------------------------
        -- CAS 1 : Écritures normales et vérification des lectures de base
        -----------------------------------------------------------------------
        -- Écriture de la valeur 0xAAAA_BBBB dans x1
        rd_id_we <= '1';
        rd_id    <= "00001"; -- x1
        data_rd  <= x"AAAABBBB";
        wait for CLK_PERIOD;

        -- Écriture de la valeur 0x1111_2222 dans x2
        rd_id    <= "00010"; -- x2
        data_rd  <= x"11112222";
        wait for CLK_PERIOD;
        
        rd_id_we <= '0'; -- On arrête d'écrire
        wait for CLK_PERIOD;

        -- Lecture de x1 sur RS1 et x2 sur RS2 (Vérification mémoire de base)
        rs1_id <= "00001"; -- Devrait lire xAAAABBBB
        rs2_id <= "00010"; -- Devrait lire x11112222
        wait for CLK_PERIOD;


        -----------------------------------------------------------------------
        -- CAS 2 : Immunité du registre x0 (Règle d'or RISC-V)
        -----------------------------------------------------------------------
        -- On tente d'écrire 0xFFFF_FFFF dans x0
        rd_id_we <= '1';
        rd_id    <= "00000"; -- x0
        data_rd  <= x"FFFFFFFF";
        wait for CLK_PERIOD;
        rd_id_we <= '0';

        -- On lit x0 sur les deux ports pour vérifier qu'il est resté à 0
        rs1_id <= "00000";
        rs2_id <= "00000";
        wait for CLK_PERIOD; -- data_rs1 et data_rs2 doivent afficher 0x00000000

        -----------------------------------------------------------------------
        -- CAS 3 : Bypass Asynchrone sur RS1 uniquement
        -----------------------------------------------------------------------
        -- On lit x3 (actuellement à 0)
        rs1_id <= "00011"; -- x3
        rs2_id <= "00001"; -- x1 (contient xAAAABBBB)
        wait for CLK_PERIOD/2; 
        
        -- Au milieu du cycle, une instruction veut écrire 0x5555_6666 dans x3
        rd_id_we <= '1';
        rd_id    <= "00011"; -- x3
        data_rd  <= x"55556666";
        
        wait for CLK_PERIOD/2; 
        -- À ce point précis (avant le front d'horloge), data_rs1 doit déjà être
        -- passé de 0 à 0x55556666 via le multiplexeur de bypass combinatoire !
        wait for CLK_PERIOD; -- L'écriture est validée sur le front montant

        -----------------------------------------------------------------------
        -- CAS 4 : Bypass Asynchrone sur RS2 uniquement
        -----------------------------------------------------------------------
        rd_id_we <= '0';
        wait for CLK_PERIOD;

        rs1_id <= "00001"; -- x1
        rs2_id <= "00100"; -- x4 (vaut 0)
        wait for CLK_PERIOD/2;

        -- On simule l'écriture dans x4 pendant qu'on le lit sur RS2
        rd_id_we <= '1';
        rd_id    <= "00100"; -- x4
        data_rd  <= x"77778888";
        wait for CLK_PERIOD/2;
        -- Vérifier que data_rs2 affiche instantanément 0x77778888
        wait for CLK_PERIOD;

        -----------------------------------------------------------------------
        -- CAS 5 : Double Bypass Simultané (RS1 et RS2 pointent sur RD)
        -----------------------------------------------------------------------
        -- On force la lecture de x5 sur les deux ports
        rs1_id <= "00101"; -- x5
        rs2_id <= "00101"; -- x5
        
        -- On écrit simultanément dans x5
        rd_id    <= "00101"; -- x5
        data_rd  <= x"99999999";
        wait for CLK_PERIOD; 
        -- data_rs1 et data_rs2 doivent afficher 0x99999999 en même temps

        -----------------------------------------------------------------------
        -- CAS 6 : Interdiction du Bypass sur le registre x0
        -----------------------------------------------------------------------
        -- Si l'adresse de destination est x0 et qu'on lit x0, le bypass ne doit
        -- pas transférer la valeur en cours d'écriture. x0 reste prioritaire à 0.
        rs1_id <= "00000"; -- x0
        rs2_id <= "00000"; -- x0
        rd_id    <= "00000"; -- Tentative d'écriture dans x0
        data_rd  <= x"EEEEEEEE";
        wait for CLK_PERIOD;
        -- data_rs1 et data_rs2 doivent impérativement rester à 0.

        -----------------------------------------------------------------------
        -- CAS 7 : Effet du signal de gel (e_hold = '1')
        -----------------------------------------------------------------------
        rd_id_we <= '1';
        rd_id    <= "00110"; -- x6
        data_rd  <= x"12345678";
        e_hold   <= '1'; -- On active le HOLD (Gel du pipeline)
        wait for CLK_PERIOD;
        
        -- On désactive l'écriture et le hold pour tester
        rd_id_we <= '0';
        e_hold   <= '0';
        
        -- On lit x6 pour voir si l'écriture a été bloquée par le hold
        rs1_id <= "00110"; -- x6
        wait for CLK_PERIOD;
        -- data_rs1 doit valoir 0x00000000 car l'écriture a été ignorée.

        -- Fin de la simulation
        rd_id_we <= '0';
        wait for CLK_PERIOD * 5;
        assert false report "Fin de simulation réussie"  ; std.env.stop;
        wait;
    end process;

end sim;