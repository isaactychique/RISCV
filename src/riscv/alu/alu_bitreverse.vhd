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


    function reverse_bit(b: std_logic_vector(31 downto 0))  return std_logic_vector is 
        variable result : std_logic_vector(31 downto 0);
    begin
        for i in 0 to 31 loop 
            result(i):= b(31-i); 
        end loop;
        return result; 
    end; 
    
    
    function general_shift(b : std_logic_vector(31 downto 0);
                            l : std_logic ; 
                            s : std_logic ;
                            decal_val : integer ) return std_logic_vector is

        variable result: std_logic_vector(31 downto 0); 
        variable result_inter : std_logic_vector(31 downto 0); 
        variable reverse_value : std_logic_vector(31 downto 0); 
       
    begin
         
        if (l = '0') then -- on est à gauche  
            reverse_value := reverse_bit(b);
        else -- on est à droite 
            reverse_value := b ; 
        end if ;
        
    
        if(l ='1' and s = '1') then --  signed data  end decalage à droite 
            
            result := std_logic_vector(shift_right(signed(reverse_value), decal_val));
        else 
            result := std_logic_vector(shift_right(unsigned(reverse_value), decal_val)); 
         
        end if ; 

        if(l = '0') then 
            return reverse_bit(result); 
        else
            return result ;
        end if;
    end; 
   ---------------------------------------------------------------------------------------------------

    -- Signaux internes pour les calculs de type R 
    signal  add_s : std_logic_vector(31 downto 0) ; 
    signal  sub_s : std_logic_vector(31 downto 0) ; 
    signal  xor_s : std_logic_vector(31 downto 0) ; 
    signal  or_s : std_logic_vector(31 downto 0) ; 
    signal  and_s : std_logic_vector(31 downto 0) ; 
    signal  sll_s : std_logic_vector(31 downto 0) ; 
    signal  srl_s : std_logic_vector(31 downto 0) ; 
    signal  sra_s : std_logic_vector(31 downto 0) ; 
    signal  slt_s : std_logic_vector(31 downto 0) ; 
    signal  sltu_s : std_logic_vector(31 downto 0) ; 

    -- Signaux internes pour les calculs de type I
    signal  addi_s : std_logic_vector(31 downto 0) ; 
    signal  xori_s : std_logic_vector(31 downto 0) ; 
    signal  ori_s : std_logic_vector(31 downto 0) ; 
    signal  andi_s : std_logic_vector(31 downto 0) ; 
    signal  slli_s : std_logic_vector(31 downto 0) ; 
    signal  srli_s : std_logic_vector(31 downto 0) ; 
    signal  srai_s : std_logic_vector(31 downto 0) ; 
    signal  slti_s : std_logic_vector(31 downto 0) ; 
    signal  sltiu_s : std_logic_vector(31 downto 0) ;

    signal decal_val: integer range 0 to 31 ;   
    signal shift_amount : integer range 0 to 31;
    signal czero_eqz_s : std_logic_vector(31 downto 0) ;
    signal czero_neqz_s : std_logic_vector(31 downto 0) ; 

begin
    
    process(rs2_v, imm_v, isALUreg)
    begin
        if isALUreg = '1' then
            shift_amount <= to_integer(unsigned(rs2_v(4 downto 0)));
        else
            shift_amount <= to_integer(unsigned(imm_v(4 downto 0)));
        end if;
    end process;


    -- Les calculs de types R 
    czero_eqz_s <= repeat_bit('0', 32) when rs2_v = x"00000000"  else rs1_v ; 
    czero_neqz_s <= repeat_bit('0', 32) when rs2_v /= x"00000000"  else rs1_v ; 


    add_s <= std_logic_vector( signed(rs1_v) + signed(rs2_v)) ; 
    sub_s <= std_logic_vector( signed(rs1_v) - signed(rs2_v)) ; 

    xor_s <= rs1_v xor rs2_v ; 
    or_s  <= rs1_v or rs2_v ; 
    and_s <= rs1_v and rs2_v ; 

    sll_s <= general_shift(rs1_v, '0', '0' , shift_amount) ; 
    srl_s <= general_shift(rs1_v, '1', '0', shift_amount) ; 
    sra_s <= general_shift(rs1_v, '1' , '1', shift_amount) ; 

    slt_s <= std_logic_vector(to_unsigned(1 , 32)) when signed(rs1_v) < signed(rs2_v)  else   std_logic_vector(to_unsigned(0 , 32)) ; 
    sltu_s <= std_logic_vector(to_unsigned(1 , 32)) when unsigned(rs1_v) < unsigned(rs2_v)  else   std_logic_vector(to_unsigned(0 , 32)) ;

    -- Les calculs de type I 
    addi_s <= std_logic_vector(signed(rs1_v) + signed(imm_v))  ; 
    xori_s <= rs1_v xor imm_v ; 
    ori_s <= rs1_v or imm_v ; 
    andi_s <= rs1_v and imm_v ; 

    slli_s <= general_shift(rs1_v, '0', '0' , shift_amount) ; 
    srli_s <= general_shift(rs1_v, '1', '0', shift_amount) ; 
    srai_s <= general_shift(rs1_v, '1' , '1', shift_amount) ; 


    slti_s <= std_logic_vector(to_unsigned(1 , 32))  when signed(rs1_v) < signed(imm_v)  else   std_logic_vector(to_unsigned(0 , 32)) ; 
    sltiu_s <=std_logic_vector(to_unsigned(1 , 32))  when unsigned(rs1_v) < unsigned(imm_v)  else   std_logic_vector(to_unsigned(0 , 32)) ; 


    aluOut_v <= reverse_bit(rs1_v)   when(isCustom ='1') else
                czero_neqz_s when (func3 = "111" and func7 = "0000111")  else 
                czero_eqz_s when (func3 = "101" and func7 = "0000111")  else 
                sub_s when (isALUreg ='1' and isAluSubstraction ='1' and func3="000") else  
                add_s when (isALUreg ='1' and                            func3="000") else 
                xor_s when (isALUreg ='1' and func3="100" ) else 
                or_s  when (isALUreg ='1' and func3="110") else 
                and_s when (isALUreg ='1' and func3="111" ) else 
                sll_s  when (isALUreg ='1' and func3="001") else 
                srl_s  when (isALUreg ='1' and func3="101" and isAluSubstraction='0') else 
                sra_s  when (isALUreg ='1' and func3="101" and isAluSubstraction='1') else 
                slt_s  when (isALUreg ='1' and func3="010") else 
                sltu_s when (isALUreg ='1' and func3="011") else 
                
                addi_s  when (isALUreg ='0' and func3="000") else 
                xori_s  when (isALUreg ='0' and func3="100") else 
                ori_s   when (isALUreg ='0' and func3="110") else 
                andi_s  when (isALUreg ='0' and func3="111") else 
                slli_s  when (isALUreg ='0' and func3="001") else 
                srli_s  when (isALUreg ='0' and func3="101" and isAluSubstraction='0') else 
                srai_s  when (isALUreg ='0' and func3="101" and isAluSubstraction='1' ) else  
                slti_s  when (isALUreg ='0' and func3="010") else 
                sltiu_s when (isALUreg ='0' and func3="011"); 


                
    

     takeBranch <=
        to_stdl(rs1_v = rs2_v)                      when isBranch = '1' and func3 = "000" else -- BEQ
        to_stdl(rs1_v /= rs2_v)                     when isBranch = '1' and func3 = "001" else -- BNE
        to_stdl(signed(rs1_v) < signed(rs2_v))      when isBranch = '1' and func3 = "100" else -- BLT
        to_stdl(signed(rs1_v) >= signed(rs2_v))     when isBranch = '1' and func3 = "101" else -- BGE
        to_stdl(unsigned(rs1_v) < unsigned(rs2_v))  when isBranch = '1' and func3 = "110" else -- BLTU
        to_stdl(unsigned(rs1_v) >= unsigned(rs2_v)) when isBranch = '1' and func3 = "111" else -- BGEU
        '0';

end arch;

