-- =============================================================================
--  tb_decoder_5stg.vhd
--  Full testbench for the 5-stage RISC-V decoder (decoder_5stg)
--
--  Tests :
--    1.  R-type  ALU       (ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND)
--    2.  RV32M             (MUL, MULH, MULHSU, MULHU, DIV, DIVU, REM, REMU)
--    3.  I-type  ALU-imm   (ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI)
--    4.  Load              (LB, LH, LW, LBU, LHU)
--    5.  Store             (SB, SH, SW)
--    6.  Branch            (BEQ, BNE, BLT, BGE, BLTU, BGEU)
--    7.  JAL
--    8.  JALR
--    9.  LUI
--   10.  AUIPC
--   11.  SYSTEM / CSRRS / EBREAK
--   12.  Custom            (opcode 0101111)
--   13.  Bypass signals    (isRs1Used, isRs2Used) checked for each group
-- =============================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.riscv_types.all;

entity  decoder_5stg_tb is
end decoder_5stg_tb;

architecture sim of decoder_5stg_tb is

    -- -------------------------------------------------------------------------
    --  Component declaration
    -- -------------------------------------------------------------------------
    component decoder_5stg is
        Port (
            instr_i       : in  STD_LOGIC_VECTOR (31 downto 0);
            isLoad_o      : out STD_LOGIC;
            isStore_o     : out STD_LOGIC;
            isALUreg_o    : out STD_LOGIC;
            isBranch_o    : out STD_LOGIC;
            isSYSTEM_o    : out STD_LOGIC;
            isJAL_o       : out STD_LOGIC;
            isJALR_o      : out STD_LOGIC;
            isJALorJALR_o : out STD_LOGIC;
            isAuipc_o     : out STD_LOGIC;
            isLui_o       : out STD_LOGIC;
            isCustom_o    : out STD_LOGIC;
            isCSRRS_o     : out STD_LOGIC;
            isEBreak_o    : out STD_LOGIC;
            isByte_o      : out STD_LOGIC;
            isHalf_o      : out STD_LOGIC;
            isRV32M_o     : out STD_LOGIC;
            isMUL_o       : out STD_LOGIC;
            isDIV_o       : out STD_LOGIC;
            funct3_o      : out STD_LOGIC_VECTOR ( 2 downto 0);
            funct7_o      : out STD_LOGIC_VECTOR ( 6 downto 0);
            csrId_o       : out STD_LOGIC_VECTOR ( 1 downto 0);
            rs1_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
            isRs1Used_o   : out STD_LOGIC;
            rs2_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
            isRs2Used_o   : out STD_LOGIC;
            rdId_o        : out STD_LOGIC_VECTOR ( 4 downto 0)
        );
    end component;

    -- -------------------------------------------------------------------------
    --  DUT signals
    -- -------------------------------------------------------------------------
    signal instr_i       : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal isLoad_o      : STD_LOGIC;
    signal isStore_o     : STD_LOGIC;
    signal isALUreg_o    : STD_LOGIC;
    signal isBranch_o    : STD_LOGIC;
    signal isSYSTEM_o    : STD_LOGIC;
    signal isJAL_o       : STD_LOGIC;
    signal isJALR_o      : STD_LOGIC;
    signal isJALorJALR_o : STD_LOGIC;
    signal isAuipc_o     : STD_LOGIC;
    signal isLui_o       : STD_LOGIC;
    signal isCustom_o    : STD_LOGIC;
    signal isCSRRS_o     : STD_LOGIC;
    signal isEBreak_o    : STD_LOGIC;
    signal isByte_o      : STD_LOGIC;
    signal isHalf_o      : STD_LOGIC;
    signal isRV32M_o     : STD_LOGIC;
    signal isMUL_o       : STD_LOGIC;
    signal isDIV_o       : STD_LOGIC;
    signal funct3_o      : STD_LOGIC_VECTOR ( 2 downto 0);
    signal funct7_o      : STD_LOGIC_VECTOR ( 6 downto 0);
    signal csrId_o       : STD_LOGIC_VECTOR ( 1 downto 0);
    signal rs1_o         : STD_LOGIC_VECTOR ( 4 downto 0);
    signal isRs1Used_o   : STD_LOGIC;
    signal rs2_o         : STD_LOGIC_VECTOR ( 4 downto 0);
    signal isRs2Used_o   : STD_LOGIC;
    signal rdId_o        : STD_LOGIC_VECTOR ( 4 downto 0);

    -- -------------------------------------------------------------------------
    --  Testbench globals
    -- -------------------------------------------------------------------------
    signal test_nb   : integer := 0;
    signal pass_cnt  : integer := 0;
    signal fail_cnt  : integer := 0;

    -- -------------------------------------------------------------------------
    --  Helper : build a standard 32-bit RISC-V instruction word
    --
    --  R-type  : funct7 | rs2 | rs1 | funct3 | rd | opcode
    --  I-type  : imm[11:0]   | rs1 | funct3 | rd | opcode
    --  S-type  : imm[11:5]   | rs2 | rs1 | funct3 | imm[4:0] | opcode
    --  B-type  : imm[12|10:5]| rs2 | rs1 | funct3 | imm[4:1|11] | opcode
    --  U-type  : imm[31:12]  | rd  | opcode
    --  J-type  : imm[20|10:1|11|19:12] | rd | opcode
    -- -------------------------------------------------------------------------
    function R_instr(funct7 : std_logic_vector(6 downto 0);
                     rs2    : std_logic_vector(4 downto 0);
                     rs1    : std_logic_vector(4 downto 0);
                     funct3 : std_logic_vector(2 downto 0);
                     rd     : std_logic_vector(4 downto 0);
                     opcode : std_logic_vector(6 downto 0))
        return std_logic_vector is
    begin
        return funct7 & rs2 & rs1 & funct3 & rd & opcode;
    end function;

    function I_instr(imm12  : std_logic_vector(11 downto 0);
                     rs1    : std_logic_vector(4 downto 0);
                     funct3 : std_logic_vector(2 downto 0);
                     rd     : std_logic_vector(4 downto 0);
                     opcode : std_logic_vector(6 downto 0))
        return std_logic_vector is
    begin
        return imm12 & rs1 & funct3 & rd & opcode;
    end function;

    function S_instr(imm11_5 : std_logic_vector(6 downto 0);
                     rs2     : std_logic_vector(4 downto 0);
                     rs1     : std_logic_vector(4 downto 0);
                     funct3  : std_logic_vector(2 downto 0);
                     imm4_0  : std_logic_vector(4 downto 0);
                     opcode  : std_logic_vector(6 downto 0))
        return std_logic_vector is
    begin
        return imm11_5 & rs2 & rs1 & funct3 & imm4_0 & opcode;
    end function;

    function B_instr(rs1    : std_logic_vector(4 downto 0);
                     rs2    : std_logic_vector(4 downto 0);
                     funct3 : std_logic_vector(2 downto 0);
                     opcode : std_logic_vector(6 downto 0))
        return std_logic_vector is
        -- immediate = 0 (just testing the opcode / funct3 decode)
        variable imm : std_logic_vector(11 downto 0) := (others => '0');
    begin
        return imm(11) & imm(9 downto 4) & rs2 & rs1 & funct3 &
               imm(3 downto 0) & imm(10) & opcode;
    end function;

    function U_instr(imm20  : std_logic_vector(19 downto 0);
                     rd     : std_logic_vector(4 downto 0);
                     opcode : std_logic_vector(6 downto 0))
        return std_logic_vector is
    begin
        return imm20 & rd & opcode;
    end function;

    -- -------------------------------------------------------------------------
    --  Check procedure — prints PASS / FAIL with context
    -- -------------------------------------------------------------------------
    procedure check(
        signal   cnt_pass : inout integer;
        signal   cnt_fail : inout integer;
        signal   nb       : inout integer;
        constant tag      : in    string;
        constant got      : in    std_logic;
        constant exp      : in    std_logic) is
    begin
        nb <= nb + 1;
        if got = exp then
            report "[PASS] " & tag & "  got=" & std_logic'image(got)
                severity note;
            cnt_pass <= cnt_pass + 1;
        else
            report "[FAIL] " & tag & "  got=" & std_logic'image(got) &
                   "  exp=" & std_logic'image(exp)
                severity error;
            cnt_fail <= cnt_fail + 1;
        end if;
    end procedure;

    procedure check_slv(
        signal   cnt_pass : inout integer;
        signal   cnt_fail : inout integer;
        signal   nb       : inout integer;
        constant tag      : in    string;
        constant got      : in    std_logic_vector;
        constant exp      : in    std_logic_vector) is
    begin
        nb <= nb + 1;
        if got = exp then
            report "[PASS] " & tag severity note;
            cnt_pass <= cnt_pass + 1;
        else
            report "[FAIL] " & tag &
                   "  got=" & integer'image(to_integer(unsigned(got))) &
                   "  exp=" & integer'image(to_integer(unsigned(exp)))
                severity error;
            cnt_fail <= cnt_fail + 1;
        end if;
    end procedure;

begin

    -- -------------------------------------------------------------------------
    --  DUT instantiation
    -- -------------------------------------------------------------------------
    UUT : decoder_5stg
        port map (
            instr_i       => instr_i,
            isLoad_o      => isLoad_o,
            isStore_o     => isStore_o,
            isALUreg_o    => isALUreg_o,
            isBranch_o    => isBranch_o,
            isSYSTEM_o    => isSYSTEM_o,
            isJAL_o       => isJAL_o,
            isJALR_o      => isJALR_o,
            isJALorJALR_o => isJALorJALR_o,
            isAuipc_o     => isAuipc_o,
            isLui_o       => isLui_o,
            isCustom_o    => isCustom_o,
            isCSRRS_o     => isCSRRS_o,
            isEBreak_o    => isEBreak_o,
            isByte_o      => isByte_o,
            isHalf_o      => isHalf_o,
            isRV32M_o     => isRV32M_o,
            isMUL_o       => isMUL_o,
            isDIV_o       => isDIV_o,
            funct3_o      => funct3_o,
            funct7_o      => funct7_o,
            csrId_o       => csrId_o,
            rs1_o         => rs1_o,
            isRs1Used_o   => isRs1Used_o,
            rs2_o         => rs2_o,
            isRs2Used_o   => isRs2Used_o,
            rdId_o        => rdId_o
        );

    -- -------------------------------------------------------------------------
    --  Stimulus
    -- -------------------------------------------------------------------------
    stim : process
        -- Reused register fields for readability
        constant RS1  : std_logic_vector(4 downto 0) := "00001";  -- x1
        constant RS2  : std_logic_vector(4 downto 0) := "00010";  -- x2
        constant RD   : std_logic_vector(4 downto 0) := "00011";  -- x3
        constant IMM  : std_logic_vector(11 downto 0):= "000000000100"; -- imm=4
    begin

        -- =====================================================================
        --  1.  R-type ALU instructions  (opcode = 0110011)
        -- =====================================================================
        report "===== R-TYPE ALU =====" severity note;

        -- ADD  (funct7=0000000, funct3=000)
        instr_i <= R_instr("0000000", RS2, RS1, "000", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "ADD  isALUreg",  isALUreg_o,    '1');
        check(pass_cnt, fail_cnt, test_nb, "ADD  isLoad",    isLoad_o,      '0');
        check(pass_cnt, fail_cnt, test_nb, "ADD  isRV32M",   isRV32M_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "ADD  isRs1Used", isRs1Used_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "ADD  isRs2Used", isRs2Used_o,   '1');
        check_slv(pass_cnt, fail_cnt, test_nb, "ADD  rs1",  rs1_o, RS1);
        check_slv(pass_cnt, fail_cnt, test_nb, "ADD  rs2",  rs2_o, RS2);
        check_slv(pass_cnt, fail_cnt, test_nb, "ADD  rd",   rdId_o, RD);

        -- SUB  (funct7=0100000, funct3=000)
        instr_i <= R_instr("0100000", RS2, RS1, "000", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SUB  isALUreg",  isALUreg_o,  '1');
        check_slv(pass_cnt, fail_cnt, test_nb, "SUB  funct7", funct7_o, "0100000");

        -- SLL  (funct7=0000000, funct3=001)
        instr_i <= R_instr("0000000", RS2, RS1, "001", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SLL  isALUreg",  isALUreg_o,  '1');
        check_slv(pass_cnt, fail_cnt, test_nb, "SLL  funct3", funct3_o, "001");

        -- SLT  (funct3=010)
        instr_i <= R_instr("0000000", RS2, RS1, "010", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SLT  isALUreg",  isALUreg_o,  '1');

        -- SLTU (funct3=011)
        instr_i <= R_instr("0000000", RS2, RS1, "011", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SLTU isALUreg",  isALUreg_o,  '1');

        -- XOR  (funct3=100)
        instr_i <= R_instr("0000000", RS2, RS1, "100", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "XOR  isALUreg",  isALUreg_o,  '1');

        -- SRL  (funct3=101, funct7=0000000)
        instr_i <= R_instr("0000000", RS2, RS1, "101", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SRL  isALUreg",  isALUreg_o,  '1');

        -- SRA  (funct3=101, funct7=0100000)
        instr_i <= R_instr("0100000", RS2, RS1, "101", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SRA  isALUreg",  isALUreg_o,  '1');
        check_slv(pass_cnt, fail_cnt, test_nb, "SRA  funct7", funct7_o, "0100000");

        -- OR   (funct3=110)
        instr_i <= R_instr("0000000", RS2, RS1, "110", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "OR   isALUreg",  isALUreg_o,  '1');

        -- AND  (funct3=111)
        instr_i <= R_instr("0000000", RS2, RS1, "111", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "AND  isALUreg",  isALUreg_o,  '1');

        -- =====================================================================
        --  2.  RV32M  (opcode = 0110011, funct7 = 0000001)
        -- =====================================================================
        report "===== RV32M =====" severity note;

        -- MUL   funct3=000
        instr_i <= R_instr("0000001", RS2, RS1, "000", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "MUL  isRV32M",   isRV32M_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "MUL  isMUL",     isMUL_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "MUL  isDIV",     isDIV_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "MUL  isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "MUL  isRs2Used", isRs2Used_o, '1');

        -- MULH  funct3=001
        instr_i <= R_instr("0000001", RS2, RS1, "001", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "MULH  isRV32M",  isRV32M_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "MULH  isMUL",    isMUL_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "MULH  isDIV",    isDIV_o,     '0');

        -- MULHSU funct3=010
        instr_i <= R_instr("0000001", RS2, RS1, "010", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "MULHSU isMUL",   isMUL_o,     '1');

        -- MULHU funct3=011
        instr_i <= R_instr("0000001", RS2, RS1, "011", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "MULHU isMUL",    isMUL_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "MULHU isDIV",    isDIV_o,     '0');

        -- DIV   funct3=100
        instr_i <= R_instr("0000001", RS2, RS1, "100", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "DIV  isRV32M",   isRV32M_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "DIV  isMUL",     isMUL_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "DIV  isDIV",     isDIV_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "DIV  isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "DIV  isRs2Used", isRs2Used_o, '1');

        -- DIVU  funct3=101
        instr_i <= R_instr("0000001", RS2, RS1, "101", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "DIVU isDIV",     isDIV_o,     '1');

        -- REM   funct3=110
        instr_i <= R_instr("0000001", RS2, RS1, "110", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "REM  isDIV",     isDIV_o,     '1');

        -- REMU  funct3=111
        instr_i <= R_instr("0000001", RS2, RS1, "111", RD, "0110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "REMU isDIV",     isDIV_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "REMU isMUL",     isMUL_o,     '0');

        -- =====================================================================
        --  3.  I-type  ALU-immediate  (opcode = 0010011)
        -- =====================================================================
        report "===== ALU-IMMEDIATE =====" severity note;

        -- ADDI  funct3=000
        instr_i <= I_instr(IMM, RS1, "000", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "ADDI isALUreg",  isALUreg_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "ADDI isLoad",    isLoad_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "ADDI isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "ADDI isRs2Used", isRs2Used_o, '0');
        check_slv(pass_cnt, fail_cnt, test_nb, "ADDI rs1",  rs1_o, RS1);
        check_slv(pass_cnt, fail_cnt, test_nb, "ADDI rd",   rdId_o, RD);

        -- SLTI  funct3=010
        instr_i <= I_instr(IMM, RS1, "010", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SLTI isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "SLTI isRs2Used", isRs2Used_o, '0');

        -- XORI  funct3=100
        instr_i <= I_instr(IMM, RS1, "100", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "XORI isRs1Used", isRs1Used_o, '1');

        -- ORI   funct3=110
        instr_i <= I_instr(IMM, RS1, "110", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "ORI  isRs1Used", isRs1Used_o, '1');

        -- ANDI  funct3=111
        instr_i <= I_instr(IMM, RS1, "111", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "ANDI isRs1Used", isRs1Used_o, '1');

        -- SLLI  (funct7=0000000, funct3=001, shamt in rs2 field)
        instr_i <= R_instr("0000000", "00100", RS1, "001", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SLLI isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "SLLI isRs2Used", isRs2Used_o, '0');

        -- SRLI  (funct7=0000000, funct3=101)
        instr_i <= R_instr("0000000", "00100", RS1, "101", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SRLI isRs1Used", isRs1Used_o, '1');

        -- SRAI  (funct7=0100000, funct3=101)
        instr_i <= R_instr("0100000", "00100", RS1, "101", RD, "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SRAI isRs1Used", isRs1Used_o, '1');

        -- =====================================================================
        --  4.  Load instructions  (opcode = 0000011)
        -- =====================================================================
        report "===== LOAD =====" severity note;

        -- LB  funct3=000
        instr_i <= I_instr(IMM, RS1, "000", RD, "0000011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LB  isLoad",    isLoad_o,    '1');
        check(pass_cnt, fail_cnt, test_nb, "LB  isStore",   isStore_o,   '0');
        check(pass_cnt, fail_cnt, test_nb, "LB  isByte",    isByte_o,    '1');
        check(pass_cnt, fail_cnt, test_nb, "LB  isHalf",    isHalf_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "LB  isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "LB  isRs2Used", isRs2Used_o, '0');

        -- LH  funct3=001
        instr_i <= I_instr(IMM, RS1, "001", RD, "0000011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LH  isLoad",  isLoad_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "LH  isByte",  isByte_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "LH  isHalf",  isHalf_o,  '1');

        -- LW  funct3=010
        instr_i <= I_instr(IMM, RS1, "010", RD, "0000011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LW  isLoad",  isLoad_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "LW  isByte",  isByte_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "LW  isHalf",  isHalf_o,  '0');

        -- LBU funct3=100
        instr_i <= I_instr(IMM, RS1, "100", RD, "0000011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LBU isLoad",  isLoad_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "LBU isByte",  isByte_o,  '1');

        -- LHU funct3=101
        instr_i <= I_instr(IMM, RS1, "101", RD, "0000011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LHU isLoad",  isLoad_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "LHU isHalf",  isHalf_o,  '1');

        -- =====================================================================
        --  5.  Store instructions  (opcode = 0100011)
        -- =====================================================================
        report "===== STORE =====" severity note;

        -- SB  funct3=000
        instr_i <= S_instr("0000000", RS2, RS1, "000", "00000", "0100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SB  isStore",   isStore_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "SB  isLoad",    isLoad_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "SB  isByte",    isByte_o,    '1');
        check(pass_cnt, fail_cnt, test_nb, "SB  isHalf",    isHalf_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "SB  isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "SB  isRs2Used", isRs2Used_o, '1');

        -- SH  funct3=001
        instr_i <= S_instr("0000000", RS2, RS1, "001", "00000", "0100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SH  isStore",  isStore_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "SH  isByte",   isByte_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "SH  isHalf",   isHalf_o,    '1');

        -- SW  funct3=010
        instr_i <= S_instr("0000000", RS2, RS1, "010", "00000", "0100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SW  isStore",  isStore_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "SW  isByte",   isByte_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "SW  isHalf",   isHalf_o,    '0');

        -- =====================================================================
        --  6.  Branch  (opcode = 1100011)
        -- =====================================================================
        report "===== BRANCH =====" severity note;

        -- BEQ  funct3=000
        instr_i <= B_instr(RS1, RS2, "000", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BEQ  isBranch",  isBranch_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "BEQ  isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "BEQ  isRs2Used", isRs2Used_o, '1');

        -- BNE  funct3=001
        instr_i <= B_instr(RS1, RS2, "001", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BNE  isBranch",  isBranch_o,  '1');

        -- BLT  funct3=100
        instr_i <= B_instr(RS1, RS2, "100", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BLT  isBranch",  isBranch_o,  '1');

        -- BGE  funct3=101
        instr_i <= B_instr(RS1, RS2, "101", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BGE  isBranch",  isBranch_o,  '1');

        -- BLTU funct3=110
        instr_i <= B_instr(RS1, RS2, "110", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BLTU isBranch",  isBranch_o,  '1');

        -- BGEU funct3=111
        instr_i <= B_instr(RS1, RS2, "111", "1100011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "BGEU isBranch",  isBranch_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "BGEU isRs2Used", isRs2Used_o, '1');

        -- =====================================================================
        --  7.  JAL  (opcode = 1101111)
        -- =====================================================================
        report "===== JAL =====" severity note;

        instr_i <= U_instr("00000000000000000100", RD, "1101111");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "JAL  isJAL",       isJAL_o,       '1');
        check(pass_cnt, fail_cnt, test_nb, "JAL  isJALR",      isJALR_o,      '0');
        check(pass_cnt, fail_cnt, test_nb, "JAL  isJALorJALR", isJALorJALR_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "JAL  isRs1Used",   isRs1Used_o,   '0');
        check(pass_cnt, fail_cnt, test_nb, "JAL  isRs2Used",   isRs2Used_o,   '0');
        check_slv(pass_cnt, fail_cnt, test_nb, "JAL  rd",  rdId_o, RD);

        -- =====================================================================
        --  8.  JALR  (opcode = 1100111, funct3=000)
        -- =====================================================================
        report "===== JALR =====" severity note;

        instr_i <= I_instr(IMM, RS1, "000", RD, "1100111");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "JALR isJALR",      isJALR_o,      '1');
        check(pass_cnt, fail_cnt, test_nb, "JALR isJAL",       isJAL_o,       '0');
        check(pass_cnt, fail_cnt, test_nb, "JALR isJALorJALR", isJALorJALR_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "JALR isRs1Used",   isRs1Used_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "JALR isRs2Used",   isRs2Used_o,   '0');
        check_slv(pass_cnt, fail_cnt, test_nb, "JALR rs1", rs1_o, RS1);
        check_slv(pass_cnt, fail_cnt, test_nb, "JALR rd",  rdId_o, RD);

        -- =====================================================================
        --  9.  LUI  (opcode = 0110111)
        -- =====================================================================
        report "===== LUI =====" severity note;

        instr_i <= U_instr("00000000000000000001", RD, "0110111");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LUI  isLui",     isLui_o,     '1');
        check(pass_cnt, fail_cnt, test_nb, "LUI  isAuipc",   isAuipc_o,   '0');
        check(pass_cnt, fail_cnt, test_nb, "LUI  isRs1Used", isRs1Used_o, '0');
        check(pass_cnt, fail_cnt, test_nb, "LUI  isRs2Used", isRs2Used_o, '0');
        check_slv(pass_cnt, fail_cnt, test_nb, "LUI  rd",  rdId_o, RD);

        -- =====================================================================
        --  10. AUIPC  (opcode = 0010111)
        -- =====================================================================
        report "===== AUIPC =====" severity note;

        instr_i <= U_instr("00000000000000000001", RD, "0010111");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "AUIPC isAuipc",   isAuipc_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "AUIPC isLui",     isLui_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "AUIPC isRs1Used", isRs1Used_o, '0');
        check(pass_cnt, fail_cnt, test_nb, "AUIPC isRs2Used", isRs2Used_o, '0');

        -- =====================================================================
        --  11. SYSTEM  (opcode = 1110011)
        --      CSRRS   funct3=010
        --      EBREAK  funct3=000, imm=000000000001
        -- =====================================================================
        report "===== SYSTEM / CSRRS / EBREAK =====" severity note;

        -- Generic SYSTEM (e.g. ECALL : imm=0, funct3=000)
        instr_i <= I_instr("000000000000", RS1, "000", RD, "1110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SYSTEM isSYSTEM",  isSYSTEM_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "SYSTEM isEBreak",  isEBreak_o,  '0');

        -- EBREAK  (funct3=000, imm=000000000001)
        instr_i <= I_instr("000000000001", "00000", "000", "00000", "1110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "EBREAK isSYSTEM",  isSYSTEM_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "EBREAK isEBreak",  isEBreak_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "EBREAK isRs1Used", isRs1Used_o, '0');
        check(pass_cnt, fail_cnt, test_nb, "EBREAK isRs2Used", isRs2Used_o, '0');

        -- CSRRS (funct3=010)  —  CSR ID in [31:20]
        -- e.g.  CSRRS x3, mstatus(0x300), x1
        instr_i <= I_instr("001100000000", RS1, "010", RD, "1110011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "CSRRS isSYSTEM",  isSYSTEM_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "CSRRS isCSRRS",   isCSRRS_o,   '1');
        check(pass_cnt, fail_cnt, test_nb, "CSRRS isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "CSRRS isRs2Used", isRs2Used_o, '0');

        -- =====================================================================
        --  12. Custom  (opcode = 0101111)
        -- =====================================================================
        report "===== CUSTOM =====" severity note;

        instr_i <= R_instr("0000000", RS2, RS1, "000", RD, "0101111");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "CUSTOM isCustom",  isCustom_o,  '1');
        check(pass_cnt, fail_cnt, test_nb, "CUSTOM isALUreg",  isALUreg_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "CUSTOM isLoad",    isLoad_o,    '0');

        -- =====================================================================
        --  13. Mutual-exclusion spot-checks
        --      Only one isXxx flag should be '1' at a time.
        -- =====================================================================
        report "===== MUTUAL EXCLUSION =====" severity note;

        -- When isLoad='1' all others must be '0'
        instr_i <= I_instr(IMM, RS1, "010", RD, "0000011"); -- LW
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "LW !isStore",   isStore_o,   '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isALUreg",  isALUreg_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isBranch",  isBranch_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isJAL",     isJAL_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isJALR",    isJALR_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isLui",     isLui_o,     '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isAuipc",   isAuipc_o,   '0');
        check(pass_cnt, fail_cnt, test_nb, "LW !isRV32M",   isRV32M_o,   '0');

        -- When isStore='1'
        instr_i <= S_instr("0000000", RS2, RS1, "010", "00000", "0100011"); -- SW
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "SW !isLoad",    isLoad_o,    '0');
        check(pass_cnt, fail_cnt, test_nb, "SW !isALUreg",  isALUreg_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "SW !isBranch",  isBranch_o,  '0');

        -- =====================================================================
        --  14. Register field isolation — different rs1/rs2/rd values
        -- =====================================================================
        report "===== REGISTER FIELD ISOLATION =====" severity note;

        -- ADD x5, x6, x7  => rs1=6, rs2=7, rd=5
        instr_i <= R_instr("0000000", "00111", "00110", "000", "00101", "0110011");
        wait for 10 ns;
        check_slv(pass_cnt, fail_cnt, test_nb, "REG rs1=6", rs1_o,  "00110");
        check_slv(pass_cnt, fail_cnt, test_nb, "REG rs2=7", rs2_o,  "00111");
        check_slv(pass_cnt, fail_cnt, test_nb, "REG rd=5",  rdId_o, "00101");

        -- ADDI x10, x15, 100 => rs1=15, rd=10, rs2 unused
        instr_i <= I_instr("000001100100", "01111", "000", "01010", "0010011");
        wait for 10 ns;
        check_slv(pass_cnt, fail_cnt, test_nb, "ADDI rs1=15", rs1_o,  "01111");
        check_slv(pass_cnt, fail_cnt, test_nb, "ADDI rd=10",  rdId_o, "01010");

        -- =====================================================================
        --  15. NOP  (ADDI x0, x0, 0) — canonical NOP
        -- =====================================================================
        report "===== NOP =====" severity note;

        instr_i <= I_instr("000000000000", "00000", "000", "00000", "0010011");
        wait for 10 ns;
        check(pass_cnt, fail_cnt, test_nb, "NOP isRs1Used", isRs1Used_o, '1');
        check(pass_cnt, fail_cnt, test_nb, "NOP isRs2Used", isRs2Used_o, '0');
        check(pass_cnt, fail_cnt, test_nb, "NOP isALUreg",  isALUreg_o,  '0');
        check(pass_cnt, fail_cnt, test_nb, "NOP isLoad",    isLoad_o,    '0');

        -- =====================================================================
        --  Summary
        -- =====================================================================
        wait for 10 ns;
        report "========================================" severity note;
        report "TESTBENCH COMPLETE" severity note;
        report "Tests run : " & integer'image(test_nb) severity note;
        report "PASSED    : " & integer'image(pass_cnt) severity note;
        report "FAILED    : " & integer'image(fail_cnt) severity note;
        report "========================================" severity note;

        if fail_cnt = 0 then
            report "ALL TESTS PASSED" severity note;
        else
            report "SOME TESTS FAILED SEE FAIL lines above" severity failure;
        end if;
        wait;
    end process stim;

end sim;