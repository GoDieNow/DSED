----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.PIC_pkg.all;

ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS  
    COMPONENT ALU
    PORT(
         Reset 	 : IN  	std_logic;
         Clk 		 : IN  	std_logic;
			Alu_op 	 : IN 	alu_op;
         Databus 	 : INOUT std_logic_vector(7 downto 0);
         Index_reg : OUT  	std_logic_vector(7 downto 0);
         FlagZ 	 : OUT  	std_logic;
         FlagC 	 : OUT  	std_logic;
         FlagN 	 : OUT  	std_logic;
         FlagE 	 : OUT  	std_logic
        );
    END COMPONENT;
	 
   signal Reset 		: std_logic := '0';
   signal Clk 			: std_logic := '0';
   signal op_code 	: alu_op 	:= nop;
   signal Databus 	: std_logic_vector(7 downto 0) := (others => '0');
   signal Index_reg 	: std_logic_vector(7 downto 0);
   signal FlagZ 		: std_logic;
   signal FlagC 		: std_logic;
   signal FlagN 		: std_logic;
   signal FlagE 		: std_logic;
   constant periodo_reloj : time := 50 ns;
 
BEGIN

   uut: ALU PORT MAP (
          Reset 		=> Reset,
          Clk 			=> Clk,
          Alu_op 		=> op_code,
          Databus 	=> Databus,
          Index_reg 	=> Index_reg,
          FlagZ 		=> FlagZ,
          FlagC 		=> FlagC,
          FlagN 		=> FlagN,
          FlagE 		=> FlagE
        );

	process
		begin
			Clk <= '0';
			wait for periodo_reloj/2;
			Clk <= '1';
			wait for periodo_reloj/2;
		end process;
 
	process
		begin
			Reset <= '0';
			wait for 10*periodo_reloj;
			Reset <= '1';

			-- Carga en registros
			Databus <= "00001111"; --X'0F
			op_code <= op_ldb;
			wait for periodo_reloj;
			
			Databus <= "11110000"; --X'F0
			op_code <= op_lda;
			wait for periodo_reloj;
			
			Databus <= "10101010"; --X'AA
			op_code <= op_ldacc;
			wait for periodo_reloj;
			
			Databus <= "01010101"; --X'55
			op_code <= op_ldid;
			wait for periodo_reloj;
			
			-- Aritmetica
			op_code <= op_sub;
			wait for periodo_reloj;		

			op_code <= op_add;
			wait for periodo_reloj;

			op_code <= op_shiftl;
			wait for periodo_reloj;

			op_code <= op_shiftr;
			wait for periodo_reloj;

			op_code <= op_and;
			wait for periodo_reloj;
			
			op_code <= op_or;
			wait for periodo_reloj;

			op_code <= op_xor;
			wait for periodo_reloj;

			op_code <= op_cmpe;
			wait for periodo_reloj;

			op_code <= op_cmpg;
			wait for periodo_reloj;

			op_code <= op_cmpl;
			wait for periodo_reloj;

			-- Movimiento entre registros
			Databus <= (OTHERS => 'Z');
			op_code <= op_mvacc2id; --INDEX=X'AA
			wait for periodo_reloj;

			op_code <= op_mvacc2a; --A=X'AA
			wait for periodo_reloj;

			op_code <= op_mvacc2b; --B=X'AA
			wait for periodo_reloj;

			-- Conversiones
			DataBus <= x"30"; --D'0
			op_code <= op_lda;
			wait for periodo_reloj;
			DataBus <= (OTHERS => 'Z');
			op_code <= op_ascii2bin;
			wait for periodo_reloj;

			DataBus <= x"00"; --ASCII'00110000
			op_code <= op_lda;
			wait for periodo_reloj;
			DataBus <= (OTHERS => 'Z');
			op_code <= op_bin2ascii;
			wait for periodo_reloj;
			
			-- Fin
			op_code <= nop;
			wait;
		end process;
END;