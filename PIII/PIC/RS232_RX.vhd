----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RS232_RX is

	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
   Generic (  V_Reloj : integer := 20000000;
				  V_Trans : integer := 115200;
				  C_BITS	 : integer := 8);

	Port (  Reset 		: in  STD_LOGIC;
           Clk 		: in  STD_LOGIC;
           LineRD_in : in  STD_LOGIC;
           Valid_out : out STD_LOGIC;
           Code_out  : out STD_LOGIC;
           Store_out : out STD_LOGIC);
			  
end RS232_RX;

architecture Behavioral of RS232_RX is

  ------------------------------------------------------------------------
  -- Internal Signals
  ------------------------------------------------------------------------
	TYPE tipo_estados IS (Idle, StartBit, RcvData, StopBit);
	signal e_actual, e_siguiente: tipo_estados;

	signal Data_count 		: Integer := 0;
	signal Data_count_tmp 	: Integer := 0;
	signal BitCounter 		: Integer := 0;
	signal Cuenta				: Boolean := TRUE;

	CONSTANT PulsoMedio		: Integer := V_Reloj/V_Trans; 
	CONSTANT PulsoRetraso 	: Integer := PulsoMedio/2;

begin

	Code_out <= LineRD_in;
	
	Clocking: process (Clk, Reset)
	begin
		-- Reset asíncrono
		if Reset = '0' then
			e_actual 	<= Idle;
		-- Flanco de subida de Clk
		elsif Clk'event and Clk = '1' then
			e_actual 	<= e_siguiente;
			Data_count 	<= Data_count_tmp;
			
			if Cuenta then
				BitCounter <= BitCounter + 1;
			else
				BitCounter <= 0;
			end if;
		end if;
		
	end process Clocking;

	RXing: process (e_actual, LineRD_in, Data_count, BitCounter)
	begin
		-- Asignaciones por defecto
		e_siguiente 	<= e_actual;
		Data_count_tmp <= Data_count;
		Valid_out 		<= '0';
		Store_out 		<= '0';
		Cuenta 			<= TRUE; -- Va a contar por defecto
		
		case e_actual is
		
			when Idle		=>
				Cuenta 	<= FALSE; -- Reset de la cuenta, absurdo contar aqui
				
				if LineRD_in = '0' then
					e_siguiente <= StartBit;
				end if;
				
			when StartBit	=>
				if BitCounter >= PulsoRetraso then
					e_siguiente 	<= RcvData;
					Data_count_tmp	<= 0; -- Reset cuenta de bits
					Cuenta 			<= FALSE; -- Reset cuenta ancho pulso
				end if;
				
			when RcvData	=>
				if BitCounter >= PulsoMedio then
						Valid_out 		<= '1';
						Data_count_tmp	<= Data_count + 1;
						Cuenta 			<= FALSE; -- Reset cuenta ancho pulso
					if Data_count = (C_BITS - 1) then
						e_siguiente <= StopBit;
					end if;
				end if;
				
			when StopBit	=>			
				if BitCounter >= PulsoMedio then
					e_siguiente 	<= Idle;
					if LineRD_in = '1' then 
						Store_out 	<= '1';
					end if;
				end if;
				
		end case;
		
	end process RXing;

end Behavioral;