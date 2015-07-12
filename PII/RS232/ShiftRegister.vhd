----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRegister is
	 Generic ( C_BITS	 : integer := 8);
	 
    Port ( Reset 	: in  STD_LOGIC;
           Clk 	: in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           D 		: in  STD_LOGIC;
           Q 		: out STD_LOGIC_VECTOR (C_BITS-1 downto 0));
			  
end ShiftRegister;

architecture Behavioral of ShiftRegister is

  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------
	SIGNAL Q_AUX : STD_LOGIC_VECTOR(C_BITS-1 downto 0) := (others => '0');

begin

	Shifting: process (Clk, Reset)
	begin
		-- Reset asíncrono
		if Reset = '0' then
			 Q_AUX <= (others => '0');
		-- Flanco de subida de Clk
		elsif Clk'event and Clk = '1' then
			if Enable = '1' then
				Q_AUX(C_BITS-1 downto 0) <= D & Q_AUX(C_BITS-1 downto 1); 
			end if;
		end if;
		
	end process Shifting;
	
	Q <= Q_AUX;

end Behavioral;