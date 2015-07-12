----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

USE work.PIC_pkg.all;

entity RAM_PropGen is

	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
	generic (
		DBus : natural := 8
	);
	
	port (
		Clk	: in 	  std_logic;
		W_en	: in 	  std_logic;
		OE_PG : in 	  std_logic;
		addr	: in	  std_logic_vector(DBus-1 downto 0);
		datab	: inout std_logic_vector(DBus-1 downto 0));
	
end RAM_PropGen;

architecture Behavioral of RAM_PropGen is

	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	signal contents_ram : array8_ram(255 downto 64); -- de 0x40 a 0xFF

begin
	
	------------------------------------------------------------------------
	-- Logica del componente
	------------------------------------------------------------------------
	
	Clocking  : process (clk)  -- no reset
	begin
		if Clk'event and Clk = '1' then
			if W_en = '1' then
				contents_ram(Conv_Integer(addr)) <= datab;
			end if;
		end if;
	end process Clocking;
	
	-- Salida
	datab <= contents_ram(Conv_integer(addr)) when (OE_PG = '0') and (addr >= 64) else (others => 'Z');

end Behavioral;