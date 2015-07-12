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

entity RAM is
	
	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
	generic (
		DBus 	 : natural := 8;
		SWITCH : natural := 16; --0x10
		TSTAT  : natural := 49); --0x31

	port ( 
		Reset	 	 : in 	std_logic;
		Clk		 : in 	std_logic;
		Databus	 : inout std_logic_vector(DBus-1 downto 0);
		Address	 : in 	std_logic_vector(DBus-1 downto 0);
		Write_en  : in 	std_logic;
		OE		 	 : in 	std_logic;
		Switches  : out 	std_logic_vector(DBus-1 downto 0);
		Temp_L	 : out 	std_logic_vector(DBus-2 downto 0);
		Temp_H	 : out 	std_logic_vector(DBus-2 downto 0));

end RAM;

architecture Behavioral of RAM is

	------------------------------------------------------------------------
	-- Descripcion Componentes
	------------------------------------------------------------------------
	component RAM_PropGen 
		port (
			Clk 	: in 		std_logic;
			W_en 	: in 		std_logic;
			OE_PG	: in		std_logic;
			addr	: in 		std_logic_vector (DBus-1 downto 0);
			datab	: inout 	std_logic_vector (DBus-1 downto 0));
			
	end component;
	
	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	signal contents_ram : array8_ram(63 downto 0); -- posiciones de la RAM, de 0x00 a 0x3F
	
	--RAM interna
	signal W_en_s 	: std_logic;
	signal OE_PG_s : std_logic;
--	signal datab_s	: std_logic_vector (DBus-1 downto 0);
	
begin

	------------------------------------------------------------------------
	-- Mapeado componentes
	------------------------------------------------------------------------

	RAMpg : RAM_PropGen
		port map (
			Clk	=> Clk,
			W_en	=> W_en_s,
			OE_PG	=> OE_PG_s,
			addr	=> Address,
			datab	=> Databus);

	------------------------------------------------------------------------
	-- Logica del componente
	------------------------------------------------------------------------

	Clocking : process (Clk, Reset, OE, Write_en, Address, contents_ram)  
	begin
		-- Reset
		if (Reset = '0') then
			-- A "0"
			Switches 		<= (others => '0');
			Temp_L			<= "1000000"; 
			Temp_H			<= "1000000";
			
			-- Array memoria a "0"
			for i in 0 to 63 loop
				contents_ram(i) <= (others => '0');
			end loop;
			
--			-- Activar cuando testing
--			contents_ram(4) <= "11001010";
--			contents_ram(5) <= "00101011";
			
			-- Termostato en reset "--"
			contents_ram(TSTAT) <= (others => '1');
			
		-- Clk
		elsif Clk'event and Clk = '1' then
			if (Write_en = '1') then
				-- Estamos en memoria específica
				if (Address < 64) then
					contents_ram(Conv_Integer(Address)) <= Databus; --guardamos los datos
				end if;
			end if;
			
			-- Salida switches
			for i in 0 to 7 loop
				Switches(i) <= contents_ram(SWITCH + i)(0);
			end loop; 
			
			-- Salidas Temp_H y Temp_L		
			case contents_ram(TSTAT)(7 downto 4) is 
				when "0000"	=>	Temp_H <="0111111";  -- 0
				when "0001"	=>	Temp_H <="0000110";  -- 1
				when "0010"	=>	Temp_H <="1011011";  -- 2
				when "0011"	=>	Temp_H <="1001111";  -- 3
				when "0100"	=>	Temp_H <="1100110";  -- 4
				when "0101"	=>	Temp_H <="1101101";  -- 5
				when "0110"	=>	Temp_H <="1111101";  -- 6
				when "0111"	=>	Temp_H <="0000111";  -- 7
				when "1000"	=>	Temp_H <="1111111";  -- 8
				when "1001"	=>	Temp_H <="1101111";  -- 9
				--Se ignoraon los valores A-F
				when others	=>	Temp_H <="1000000";  -- -
			end case;

			case contents_ram(TSTAT)(3 downto 0) is
				when "0000"	=>	Temp_L <="0111111";  -- 0
				when "0001"	=>	Temp_L <="0000110";  -- 1
				when "0010" =>	Temp_L <="1011011";  -- 2
				when "0011" =>	Temp_L <="1001111";  -- 3
				when "0100" =>	Temp_L <="1100110";  -- 4
				when "0101" =>	Temp_L <="1101101";  -- 5
				when "0110" =>	Temp_L <="1111101";  -- 6
				when "0111" =>	Temp_L <="0000111";  -- 7
				when "1000" =>	Temp_L <="1111111";  -- 8
				when "1001" =>	Temp_L <="1101111";  -- 9
				--Se ignoraon los valores A-F
				when others =>	Temp_L <="1000000";  -- -
			end case;
		
		end if;
	end process Clocking;

	RAM_PROC : process (Reset, Address, Write_en, OE)
	begin
		OE_PG_s 	<= '1';
		W_en_s 	<= '0';
		
		-- Estamos en la memoria de proposito general
		if (Address >= 64) then
			--Lectura
			if OE = '0' then
				W_en_s 	<= '0';
				OE_PG_s 	<= '0';
			
			--Escritura
			elsif Write_en = '1' then
				W_en_s 	<= '1';
				OE_PG_s 	<= '1';
				
			--Ni lo uno ni lo otro
			else
				W_en_s 	<= '0';
				OE_PG_s 	<= '1';
			end if;

		end if;
	end process RAM_PROC;

	-- Salida
	Databus <= contents_ram(Conv_integer(Address)) when (OE = '0') and (address < 64) else 
	--			  datab_s when (OE_PG_s = '0') and (address >= 64) else
				  (others => 'Z');

end Behavioral;