-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.numeric_std.all;
-- use work.riscv_types.all;

-- entity decoder_5stg is
-- Port ( 
--     instr_i       : in  STD_LOGIC_VECTOR (31 downto 0);
--     isLoad_o      : out STD_LOGIC;
--     isStore_o     : out STD_LOGIC;
--     isALUreg_o    : out STD_LOGIC;
--     isBranch_o    : out STD_LOGIC;
--     isSYSTEM_o    : out STD_LOGIC;
--     isJAL_o       : out STD_LOGIC;
--     isJALR_o      : out STD_LOGIC;
--     isJALorJALR_o : out STD_LOGIC;
--     isAuipc_o     : out STD_LOGIC;
--     isLui_o       : out STD_LOGIC;
--     isCustom_o    : out STD_LOGIC; -- custom instruction

--     isCSRRS_o     : out STD_LOGIC;
--     isEBreak_o    : out STD_LOGIC;

--     isByte_o      : out STD_LOGIC;
--     isHalf_o      : out STD_LOGIC;

--     isRV32M_o     : out STD_LOGIC;
--     isMUL_o       : out STD_LOGIC;
--     isDIV_o       : out STD_LOGIC;

--     -- sign extension pour le load 

--     funct3_o      : out STD_LOGIC_VECTOR ( 2 downto 0);
--     funct7_o      : out STD_LOGIC_VECTOR ( 6 downto 0);

--     csrId_o       : out STD_LOGIC_VECTOR ( 1 downto 0);

--     rs1_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
--     isRs1Used_o   : out STD_LOGIC;
--     rs2_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
--     isRs2Used_o   : out STD_LOGIC;
--     rdId_o        : out STD_LOGIC_VECTOR ( 4 downto 0)
--  );
-- end decoder_5stg;


-- architecture arch of decoder_5stg is
--     SIGNAL isJAL_s    : STD_LOGIC;
--     SIGNAL isJALR_s   : STD_LOGIC;
--     SIGNAL isALUreg_s : STD_LOGIC;
--     SIGNAL isAuipc_s  : STD_LOGIC;
--     SIGNAL isLui_s    : STD_LOGIC;
--     SIGNAL isBranch_s : STD_LOGIC;
--     SIGNAL isStore_s  : STD_LOGIC;
--     SIGNAL isSystem_s : STD_LOGIC;
--     SIGNAL isLoad_s   : STD_LOGIC;
--     SIGNAL isRV32M_s  : STD_LOGIC;
    
-- begin
        
--     isLoad_s    <= '1' when instr_i(6 downto 0) = "0000011" else '0';
--     isStore_s   <= '1' when instr_i(6 downto 0) = "0100011" else '0';
--     isALUreg_s  <= '1' when instr_i(6 downto 0) = "0110011" else '0';
--     isBranch_s  <= '1' when instr_i(6 downto 0) = "1100011" else '0';
--     isSystem_s  <= '1' when instr_i(6 downto 0) = "1110011" else '0';
--     isJAL_s     <= '1' when instr_i(6 downto 0) = "1101111" else '0';
--     isJALR_s    <= '1' when instr_i(6 downto 0) = "1100111" else '0';
--     isAuipc_s   <= '1' when instr_i(6 downto 0) = "0010111" else '0';
--     isLui_s     <= '1' when instr_i(6 downto 0) = "0110111" else '0';

--     rs1_o    <= instr_i(19 downto 15);
--     rs2_o    <= instr_i(24 downto 20);
--     rdId_o   <= instr_i(11 downto  7);
--     funct3_o <= instr_i(14 downto 12);
--     funct7_o <= instr_i(31 downto 25);
--     csrId_o  <= instr_csr_id(instr_i);

--     isLoad_o      <= isLoad_s;
--     isStore_o     <= isStore_s;
--     isALUreg_o    <= isALUreg_s;
--     isBranch_o    <= isBranch_s;
--     isSYSTEM_o    <= isSystem_s;
--     isJAL_o       <= isJAL_s;
--     isJALR_o      <= isJALR_s;
--     isJALorJALR_o <= isJAL_s or isJALR_s;
--     isAuipc_o     <= isAuipc_s;
--     isLui_o       <= isLui_s;
--     isCustom_o    <= '1' when instr_i(6 downto 0) = "0101111" else '0';
--     isCSRRS_o     <= instr_is_csrrs(instr_i);
    
--     isEBreak_o <=  '1' when  (instr_i(6 downto 0) = "1110011"  and instr_i(14 downto 12)= "000" 
--                                 and instr_i(31 downto 20) = "000000000001") else '0' ; 
    
--     isByte_o <= '1' when instr_i(13 downto 12) = "00" else '0';
--     isHalf_o <= '1' when instr_i(13 downto 12) = "01" else '0';

--     isRV32M_s  <= '1' when (instr_i(6  downto 0) = "0110011" and  instr_i(31 downto 25) = "0000001") else '0';
    
--     isRV32M_o  <= isRV32M_s;

--     isMUL_o    <= '1' when (isRV32M_s = '1' and  instr_i(14) = '0') else '0';
  
--     isDIV_o    <= '1' when (isRV32M_s = '1' and  instr_i(14) = '1') else '0';


--     isRs1Used_o <= '1' when ( isALUreg_s = '1'  or instr_i(6 downto 0) = "0010011"  or isLoad_s  = '1'  
--                             or isStore_s = '1'or isBranch_s = '1'or isJALR_s  = '1' or instr_is_csrrs(instr_i) = '1') else '0';
--     isRs2Used_o <= '1' when (isALUreg_s  = '1'  or isStore_s  = '1'  or isBranch_s  = '1') else '0';

-- end arch;





library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.riscv_types.all;

entity decoder_5stg is
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
    isCustom_o    : out STD_LOGIC; -- custom instruction

    isCSRRS_o     : out STD_LOGIC;
    isEBreak_o    : out STD_LOGIC;

    isByte_o      : out STD_LOGIC;
    isHalf_o      : out STD_LOGIC;

    isRV32M_o     : out STD_LOGIC;
    isMUL_o       : out STD_LOGIC;
    isDIV_o       : out STD_LOGIC;

    -- sign extension pour le load 

    funct3_o      : out STD_LOGIC_VECTOR ( 2 downto 0);
    funct7_o      : out STD_LOGIC_VECTOR ( 6 downto 0);

    csrId_o       : out STD_LOGIC_VECTOR ( 1 downto 0);

    rs1_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
    isRs1Used_o   : out STD_LOGIC;
    rs2_o         : out STD_LOGIC_VECTOR ( 4 downto 0);
    isRs2Used_o   : out STD_LOGIC;
    rdId_o        : out STD_LOGIC_VECTOR ( 4 downto 0)
 );
end decoder_5stg;

architecture arch of decoder_5stg is

    SIGNAL isJAL_s    : STD_LOGIC;
    SIGNAL isJALR_s   : STD_LOGIC;
    SIGNAL isALUreg_s : STD_LOGIC;
    SIGNAL isAuipc_s  : STD_LOGIC;
    SIGNAL isLui_s    : STD_LOGIC;
    SIGNAL isBranch_s : STD_LOGIC;
    SIGNAL isStore_s  : STD_LOGIC;
    SIGNAL isSystem_s : STD_LOGIC;

begin

-- localparam OpcodeCustom0 = 7'b00_010_11;
-- localparam OpcodeCustom1 = 7'b01_010_11;
-- localparam OpcodeCustom2 = 7'b10_110_11;
-- localparam OpcodeCustom3 = 7'b11_110_11;
   
    isLoad_o       <= instr_is_load   ( instr_i ); -- '1' when FD_instr(6 downto 2) = "00000" ELSE '0'; -- type I
    isStore_s      <= instr_is_store  ( instr_i ); -- '1' when FD_instr(6 downto 2) = "01000" ELSE '0';
    isStore_o      <= isStore_s;
    isByte_o       <= funct3_is_byte( instr_funct3( instr_i ) ); --'1' when FD_instr(13 downto 12) = "00" ELSE '0';
    isHalf_o       <= funct3_is_half( instr_funct3( instr_i ) ); --'1' when FD_instr(13 downto 12) = "01" ELSE '0';
    
    isALUreg_s     <= instr_is_alu_reg( instr_i ); -- '1' when FD_instr(6 downto 2) = "01100" ELSE '0'; -- type R
    isALUreg_o     <= isALUreg_s;
    
    isBranch_s     <= instr_is_branch ( instr_i ); -- '1' when FD_instr(6 downto 2) = "11000" ELSE '0';
    isBranch_o     <= isBranch_s;
    isSYSTEM_s     <= instr_is_system ( instr_i ); -- '1' when FD_instr(6 downto 2) = "11100" ELSE '0';
    isSYSTEM_o     <= isSYSTEM_s;

    isJAL_s        <= instr_is_jal    ( instr_i ); -- '1' when FD_instr(3)          = '1'     ELSE '0';
    isJALR_s       <= instr_is_jalr   ( instr_i ); -- '1' when FD_instr(3)          = '1'     ELSE '0';
    isJAL_o        <= isJAL_s;
    isJALR_o       <= isJALR_s;
    isJALorJALR_o  <= isJAL_s OR isJALR_s;

    isAuipc_s      <= instr_is_auipc ( instr_i ); -- '1' when FD_instr(6 downto 2) = "11100" ELSE '0';
    isAuipc_o      <= isAuipc_s;
    isLui_s        <= instr_is_lui   ( instr_i ); -- '1' when FD_instr(6 downto 2) = "11100" ELSE '0';
    isLui_o        <= isLui_s;

    isCustom_o     <= instr_is_custom( instr_i ); -- custom instruction

    isCSRRS_o      <= instr_is_csrrs ( instr_i );
    isEBreak_o     <= instr_is_ebreak( instr_i );

    funct3_o       <= instr_funct3( instr_i );
    funct7_o       <= instr_funct7( instr_i );

    csrId_o        <= instr_csr_id( instr_i );

    rs1_o          <= instr_rs1_id( instr_i );
    rs2_o          <= instr_rs2_id( instr_i );
    rdId_o         <= instr_rd_id ( instr_i );

    isRs1Used_o    <= NOT (isJAL_s OR isLui_s OR isAuipc_s);

    isRs2Used_o    <=  '1' WHEN isALUreg_s = '1'
                  ELSE '1' WHEN isBranch_s = '1'
                  ELSE '1' WHEN isStore_s  = '1'
                  ELSE '1' WHEN isSYSTEM_s = '1'
                  ELSE '0';
 
    isRV32M_o <= instr_is_m_ext( instr_i );
    isMUL_o   <= isALUreg_s AND instr_i(25) AND NOT instr_i(14);
    isDIV_o   <= isALUreg_s AND instr_i(25) AND     instr_i(14);
    
end arch;
 
