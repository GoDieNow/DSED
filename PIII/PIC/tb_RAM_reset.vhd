----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.PIC_pkg.all;

ENTITY tb_RAM_reset IS
END tb_RAM_reset;
 
ARCHITECTURE behavior OF tb_RAM_reset IS 
 
 
    COMPONENT RAM
    PORT(
         Clk 		: IN  	std_logic;
         reset 	: IN  	std_logic;
         write_en : IN  	std_logic;
         oe 		: IN  	std_logic;
         address  : IN  	std_logic_vector(7 downto 0);
         databus  : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   signal Clk 		 : std_logic := '0';
   signal reset 	 : std_logic := '1';
   signal write_en : std_logic := '0';
   signal oe 		 : std_logic := '1';
   signal addr  	 : std_logic_vector(7 downto 0) := (others => '0');
   signal datab 	 : std_logic_vector(7 downto 0) := (others => '0');

   constant periodo_reloj : time := 50 ns;
 
BEGIN
 
   uut: RAM PORT MAP (
          Clk => Clk,
          reset => reset,
          write_en => write_en,
          oe => oe,
          address => addr,
          databus => datab
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
			wait for periodo_reloj*10;
			
		-- Memoria reset
			-- Reset inicial
			reset <= '0';
			wait for periodo_reloj*5;
			reset <= '1';
			
			-- Escribir en memoria 1
			datab 	<= "11110000";		
			addr 		<= "00000011";	-- X'03=B'3
			write_en <= '1';		
			wait for periodo_reloj*2;
			write_en <= '0';
			wait for periodo_reloj*10;
			
			-- Escribir en memoria SWITCHES
			addr 		<= SWITCH_BASE;
			write_en <= '1';
			datab 	<= "00000001";
			wait for periodo_reloj*2;
			addr 		<= "00010011"; -- SWITCH_BASE+3
			write_en <= '1';
			datab 	<= "00000001";
			wait for periodo_reloj*2;
			write_en <= '0';
			wait for periodo_reloj*19;
			
			wait for periodo_reloj*30;
			datab <="ZZZZZZZZ";
			
			-- Leer de memoria 
			addr 	<= "00000001";		-- X'01=B'1
			oe		<= '0';
			wait for periodo_reloj*20;

			-- Leer de memoria TERMOSTATO
			addr 	<= T_STAT;		-- "--" = "11111111"
			oe		<= '0';
			wait for periodo_reloj*20;
			
			-- Reset 2
			wait for periodo_reloj*30;
			reset 	<= '0';
			wait for periodo_reloj*4;
			reset 	<= '1';
			
			-- Leer de memoria tras reset
			addr 		<= "00110001";		
			wait for periodo_reloj*20;
			oe 		<= '1';
		
		-- Memoria de proposito general
			-- Escribir en memoria 1
			datab 	<= "11110000";		
			addr 		<= "01000001";	-- X'41=B'65
			write_en <= '1';		
			wait for periodo_reloj*2;
			write_en <= '0';
			wait for periodo_reloj*10;
			
			-- Escribir en memoria 2
			addr 		<= "10000010";	-- X'82=B'130	
			write_en <= '1';
			datab 	<= "10101010";
			wait for periodo_reloj*2;
			write_en <= '0';
			wait for periodo_reloj*19;

			-- Escribir en memoria 3
			addr 		<= "11111010";	-- X'FA=B'250
			write_en <= '1';
			datab 	<= "00000001";		
			wait for periodo_reloj*2;
			write_en <= '0';
			wait for periodo_reloj*19;

			wait for periodo_reloj*30;
			datab <="ZZZZZZZZ";
			
			-- Leer de memoria 1
			addr 	<= "01000001";		
			oe 	<= '0';
			wait for periodo_reloj*20;

			-- Leer de memoria 2
			addr 	<= "01111001";		-- El UU...U se espera que aparezca
			wait for periodo_reloj*20;

			-- Leer de memoria 3
			addr 	<= "11111010";		
			wait for periodo_reloj*20;
			oe 	<= '1';
			wait;
			end process;

END;
