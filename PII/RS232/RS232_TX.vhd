----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RS232_TX is
	 Generic ( V_Reloj : integer := 20000000;
				  V_Trans : integer := 115200;
				  C_BITS	 : integer := 8);
    
	 Port ( Reset 	: in  STD_LOGIC;
           Clk		: in  STD_LOGIC;
           Start 	: in  STD_LOGIC;
           Data 	: in  STD_LOGIC_VECTOR (C_BITS-1 downto 0);
           EOT 	: out STD_LOGIC;
           TX 		: out STD_LOGIC);
			  
end RS232_TX;

architecture Behavioral of RS232_TX is

	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	TYPE tipo_estados IS (Idle, StartBit, SendData, StopBit);
	signal e_actual, e_siguiente: tipo_estados;

	signal Data_count 		: Integer := 0;
	signal Data_count_tmp 	: Integer := 0;
	signal Pulse_width 		: Integer := 0;
	signal Cuenta				: Boolean := FALSE;

	CONSTANT PulseEndOfCount	: Integer := V_Reloj/V_Trans; 

begin
	
	Clocking: process (Clk, Reset)
	begin
		-- Reset asíncrono
		if Reset = '0' then
			e_actual 	<= Idle;
			Pulse_width <= 0;
			Data_count 	<= 0;
		-- Flanco de subida de Clk
		elsif Clk'event and Clk = '1' then
			e_actual 	<= e_siguiente;
			Data_count 	<= Data_count_tmp;
			
			if Cuenta then
				Pulse_width <= Pulse_width + 1;
			else
				Pulse_width <= 0;
			end if;
		end if;
		
	end process Clocking;
	
	TXing: process (e_actual, Start, Data, Pulse_width, Data_count)
	begin
		-- Asignaciones por defecto
		e_siguiente 	<= e_actual;
		Data_count_tmp <= Data_count;
		EOT				<= '0';
		TX 				<= '1'; -- Se entiende que la linea reposa a nivel alto
		Cuenta 			<= TRUE; -- Va a contar por defecto
		
		case e_actual is
			
			when Idle		=>
				EOT 	 <= '1';
				Cuenta <= FALSE; -- Reset de la cuenta, absurdo contar aqui
				
				if Start = '1' then
					e_siguiente 	<= StartBit;
					Data_count_tmp <= 0;
				end if;
			
			when StartBit	=>
				TX <= '0';
				
				if Pulse_width >= PulseEndOfCount then
					e_siguiente <= SendData;
					Cuenta 		<= FALSE; -- Reset cuenta ancho pulso
				end if;
			
			when SendData  =>
				case Data_Count is	
					when 0 => TX <= Data(0);									
					when 1 => TX <= Data(1);
					when 2 => TX <= Data(2);
					when 3 => TX <= Data(3);
					when 4 => TX <= Data(4);
					when 5 => TX <= Data(5);
					when 6 => TX <= Data(6);
					when 7 => TX <= Data(7);
					when others => TX <= 'X';	
				end case;
				
				if Pulse_width >= PulseEndOfCount then
					if Data_count >= (C_BITS - 1) then
						e_siguiente <= StopBit;
					end if;
					Data_count_tmp	<= Data_count + 1;
					Cuenta 			<= FALSE; -- Reset cuenta ancho pulso
				end if;
			
			when StopBit 	=>
				
				if Pulse_width >= PulseEndOfCount then
					e_siguiente <= Idle;
					Cuenta 		<= FALSE; -- Reset cuenta ancho pulso
				end if;
				
		end case;	
	end process TXing;
		
end Behavioral;




