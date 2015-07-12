----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.PIC_pkg.all;

ENTITY tb_RAM_PropGeneral IS
END tb_RAM_PropGeneral;
 
ARCHITECTURE behavior OF tb_RAM_PropGeneral IS 
 
    COMPONENT RAM_PropGen
    PORT(
         Clk 	: IN  	std_logic;
         w_en 	: IN  	std_logic;
         oe_pg : IN  	std_logic;
         addr 	: IN  	std_logic_vector(7 downto 0);
         datab : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   signal Clk 	 : std_logic := '0';
   signal w_en  : std_logic := '0';
   signal oe_pg : std_logic := '1';
   signal addr  : std_logic_vector(7 downto 0) := (others => '0');
   signal datab : std_logic_vector(7 downto 0):= (others => '0');

   constant periodo_reloj : time := 50 ns;
 
BEGIN

   uut: RAM_PropGen PORT MAP (
          Clk => Clk,
          w_en => w_en,
          oe_pg => oe_pg,
			 addr => addr,
          datab => datab
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
		
		-- Escribir en memoria 1
		datab <= "11110000";		
		addr 	<= "01000001";	-- X'41=B'65
		w_en 	<='1';		
		wait for periodo_reloj*2;
		w_en 	<='0';
		wait for periodo_reloj*10;
		
		-- Escribir en memoria 2
		addr 	<= "10000010";	-- X'82=B'130	
		w_en 	<='1';
		datab <= "10101010";
		wait for periodo_reloj*2;
		w_en 	<='0';
		wait for periodo_reloj*19;

		-- Escribir en memoria 3
		addr 	<= "11111010";	-- X'FA=B'250
		w_en 	<='1';
		datab <= "00000001";		
		wait for periodo_reloj*2;
		w_en 	<='0';
		wait for periodo_reloj*19;

		wait for periodo_reloj*30;
		datab <="ZZZZZZZZ";
		
		-- Leer de memoria 1
		addr 	<= "010000001";		
		oe_pg <='0';
		wait for periodo_reloj*20;

		-- Leer de memoria 2
		addr 	<= "01111001";		-- El UU...U se espera que aparezca
		wait for periodo_reloj*20;

		-- Leer de memoria 3
		addr 	<= "11111010";		
		wait for periodo_reloj*20;
		oe_pg <='1';
		wait;
		end process;
END;
