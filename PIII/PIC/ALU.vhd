----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

-- Libreria para ALU_OP
use work.PIC_pkg.all;

entity ALU is
	
	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
	generic (
		DBus : natural := 8
	);

	port(
		Reset 		: in 		std_logic;
		Clk 			: in 		std_logic;
		Alu_op 		: in 		alu_op;
		Databus		: inout  std_logic_vector(DBus-1 downto 0);
		Index_Reg	: out 	std_logic_vector(DBus-1 downto 0);
		FlagZ 		: out 	std_logic;
		FlagC 		: out 	std_logic;
		FlagN			: out 	std_logic;
		FlagE 		: out 	std_logic);
end ALU;

architecture Behavioral of ALU is
	
	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	
	-- DBus-registros:
	signal A			: std_logic_vector(7 downto 0) 		:= (others => '0');
	signal B			: std_logic_vector(DBus-1 downto 0) := (others => '0');
	signal ACC		: std_logic_vector(DBus-1 downto 0) := (others => '0');
	signal Index	: std_logic_vector(DBus-1 downto 0) := (others => '0');
		
begin
	
	------------------------------------------------------------------------
	-- Logica del componente
	------------------------------------------------------------------------
	
	-- Operaciones ALU
	ALU_Core : process (Reset, Clk, Alu_op)
	begin
		-- Reset asincrono (active low)
		if Reset = '0' then
			A 			<= (OTHERS => '0');
			B 			<= (OTHERS => '0');
			ACC 		<= (OTHERS => '0');
			Index 	<= (OTHERS => '0');
					
		-- Llegada de flanco de reloj
		elsif Clk'event and Clk='1' then
			
			-- Operaciones
			case Alu_op is
				
				-- No Operacion:
				when nop => --Nada por aqui (y nada por alla¡ xD)
				
				-- Carga de datos (externos):
				when op_lda =>
					A 		<= Databus;
				when op_ldb =>
					B 		<= Databus;
				when op_ldacc =>
					ACC	<= Databus;
				when op_ldid =>
					Index <= Databus;
				
				-- Carga de datos (internos):
				when op_mvacc2id =>
					Index <= ACC;
				when op_mvacc2a =>
					A		<= ACC;
				when op_mvacc2b =>
					B		<= ACC;
				
				-- Activar salida
				when op_oeacc =>
				
				-- Aritmeticas:
				when op_add =>
					ACC <= A+B;
					
					if (A+B) = "00000000" then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				when op_sub =>
					ACC <= A-B;
					
					if (A-B) = "00000000" then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				when op_shiftl =>
					ACC <= ACC(6 downto 0) & '0'; --ACC sll 1 no funciona u.u'
					
				when op_shiftr =>
					ACC <= '0' & ACC(7 downto 1); --ACC srl 1 no funciona u.u'
				
				-- Logicas:
				when op_and =>
					Index <= (A and B);
					
					if (A and B) = "00000000" then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				when op_or =>
					Index <= (A or B);
					
					if (A or B) = "00000000" then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
				
				when op_xor =>
					Index <= (A xor B);
					
					if (A xor B) = "00000000" then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				-- Comparaciones:
				when op_cmpe =>
					if (A = B) then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				when op_cmpl =>
					if (A < B) then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
					
				when op_cmpg =>
					if (A > B) then
						FlagZ <= '1'; 	  --Z
					else
						FlagZ <= '0'; 	  --Z
					end if;
				
				-- Conversiones:
				when op_ascii2bin =>
					case A is 
						when "00110000" => 
							ACC <= "00000000";		-- numero 0
						when "00110001" => 
							ACC <= "00000001";		-- numero 1
						when "00110010" => 
							ACC <= "00000010";		-- numero 2
						when "00110011" => 
							ACC <= "00000011";		-- numero 3
						when "00110100" => 
							ACC <= "00000100";		-- numero 4
						when "00110101" => 
							ACC <= "00000101";		-- numero 5
						when "00110110" => 
							ACC <= "00000110";		-- numero 6
						when "00110111" =>
							ACC <= "00000111";		-- numero 7
						when "00111000" =>
							ACC <= "00001000";		-- numero 8
						when "00111001" =>
							ACC <= "00001001";		-- numero 9
						when others => 
							FlagE <= '1'; 	  --E
							ACC 	<= "11111111"; -- Error
					end case;
					
				when op_bin2ascii =>
					case A is
						when "00000000" => 
							ACC <= "00110000";
						when "00000001" => 
							ACC <= "00110001";
						when "00000010" => 
							ACC <= "00110010";
						when "00000011" => 
							ACC <= "00110011";
						when "00000100" => 
							ACC <= "00110100";
						when "00000101" => 
							ACC <= "00110101";
						when "00000110" => 
							ACC <= "00110110";
						when "00000111" => 
							ACC <= "00110111";
						when "00001000" => 
							ACC <= "00111000";
						when "00001001" => 
							ACC <= "00111001";
						when others => 
							FlagE <= '1'; 	  --E
							ACC 	<= "11111111";
					end case;
					
			end case;
		
		end if;
		
	end process ALU_Core;
	
	-- Salidas de la ALU:
	Index_Reg <= Index;
	Databus   <= ACC when (Alu_op = op_oeacc) else
					 (others => 'Z');
	
end Behavioral;
