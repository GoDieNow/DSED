----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

USE work.PIC_pkg.all;

entity DMA is
	
	------------
	-- Generic
	------------
	generic (
		DBus : natural := 8
	);
	
	port(
		Reset 		: in 		std_logic;
		Clk 			: in 		std_logic;
		RCVD_Data 	: in 		std_logic_vector(DBus-1 downto 0);
		RX_Full 		: in 		std_logic;
		RX_Empty 	: in 		std_logic;
		Data_Read 	: out 	std_logic;
		ACK_out 		: in 		std_logic;
		TX_RDY 		: in 		std_logic;
		Valid_D 		: out 	std_logic;
		TX_Data 		: out 	std_logic_vector(DBus-1 downto 0);
		Address 		: out 	std_logic_vector(DBus-1 downto 0);
		Databus		: inout 	std_logic_vector(DBus-1 downto 0);
		Write_en 	: out 	std_logic;
		OE 			: out 	std_logic;
		DMA_RQ 		: out 	std_logic;
		DMA_ACK 		: in 		std_logic;
		Send_comm 	: in 		std_logic;
		READY 		: out 	std_logic);
		
end DMA;

architecture Behavioral of DMA is

	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	type tipo_estados is (Idle, RX_EsperaBus, RX_PideDato1, RX_EsperaDato1, RX_EscribeDato1,
								RX_PideDato2, RX_EsperaDato2, RX_EscribeDato2, RX_PideDato3,
								RX_EsperaDato3, RX_EscribeDato3, RX_Flag, RX_Fin, TX_Envia1,
								TX_Ack1, TX_Envia2, TX_Ack2, TX_Fin);
	signal e_actual		: tipo_estados	:= Idle;
	signal e_siguiente	: tipo_estados	:= Idle;
	
begin
	
	------------------------------------------------------------------------
	-- Logica del componente
	------------------------------------------------------------------------
	
		-- Recepcion
	Working : process (e_actual, Send_comm, TX_RDY, RX_Empty, RCVD_Data, DMA_ACK, Databus, ACK_out)
	begin
	
		-- Asignaciones por defecto
		e_siguiente <= e_actual;
			--Bus & RAM
		DMA_RQ 		<= '1';
		Databus 		<= (others => 'Z');
		Address 		<= (others => 'Z');
		Write_en 	<= 'Z';
		OE 			<= 'Z';
			--RS232 protocolo
		Data_Read 	<= '0';
		Valid_D 		<= '1';
		TX_Data 		<= (others => '0');
		
		-- Check de estado actual
		case e_actual is
		
			when Idle =>
				DMA_RQ 	<= '0';
			-- TX ON
				if (Send_comm = '1') then
					e_siguiente <= TX_Envia1;
			-- RX ON
				elsif (RX_EMPTY = '0') then
					DMA_RQ 		<= '1';
					e_siguiente <= RX_EsperaBus;
				end if;
	--------
	-- RX --
	--------
			-- Dato 1
			when RX_EsperaBus =>
				if (DMA_ACK = '1') then							
					e_siguiente <= RX_PideDato1;
				end if;
				
			when RX_PideDato1 =>
				Data_Read 	<= '1';
				e_siguiente <= RX_EsperaDato1;

			when RX_EsperaDato1 =>
				-- Espera un ciclo
				e_siguiente <= RX_EscribeDato1;
				
			when RX_EscribeDato1 =>
				Databus 		<= RCVD_Data;
				Address 		<= DMA_RX_BUFFER_MSB;
				Write_en 	<= '1';
				OE 			<= '1';
				e_siguiente <= RX_PideDato2;

			-- Dato 2
			when RX_PideDato2 =>
				if (RX_EMPTY = '0') then
					Data_Read 	<= '1';
					e_siguiente <= RX_EsperaDato2;
				end if;
				
			when RX_EsperaDato2 =>
				-- Espera un ciclo
				e_siguiente <= RX_EscribeDato2;
				
			when RX_EscribeDato2 =>
				Databus 		<= RCVD_Data;
				Address 		<= DMA_RX_BUFFER_MID;
				Write_en 	<= '1';
				OE 			<= '1';
				e_siguiente <= RX_PideDato3;
		
		-- Dato 3	
			when RX_PideDato3 =>
				if (RX_EMPTY = '0') then
					Data_Read 	<= '1';
					e_siguiente <= RX_EsperaDato3;
				end if;
				
			when RX_EsperaDato3 =>
				-- Espera un ciclo
				e_siguiente <= RX_EscribeDato3;
				
			when RX_EscribeDato3 =>
				Databus 		<= RCVD_Data;
				Address 		<= DMA_RX_BUFFER_LSB;
				Write_en 	<= '1';
				OE 			<= '1';
				e_siguiente <= RX_Flag;
				
		-- Flag Fin
			when RX_Flag =>
				Databus 		<= x"FF";
				Address 		<= NEW_INST;
				Write_en 	<= '1';
				OE 			<= '1';
				e_siguiente <= RX_Fin;
		
		-- Fin		
			when RX_Fin =>
				DMA_RQ 		<= '0';
				-- RX terminada
				if (DMA_ACK = '0') then
					e_siguiente <= Idle;
				end if;
	--------
	-- TX	--
	--------
		-- Dato 1
			when TX_Envia1 =>
				-- RAM: W->0/R->0
				Write_en	 <= '0';
				OE 		 <= '0';
				-- RS232 listo
				if (TX_RDY = '1') then
					Address 	<= DMA_TX_BUFFER_MSB;
					TX_Data 	<= Databus;
					Valid_D 	<= '0';
					e_siguiente <= TX_Ack1;
				end if;
				
			when TX_Ack1 =>
				-- RAM: W->0/R->0
				Write_en  <= '0';
				OE 		 <= '0';
				Address   <= DMA_TX_BUFFER_MSB;
				-- RS232: Datos/Validos
				TX_Data <= databus;
				Valid_D <= '0';
				if (ACK_out = '0') then
					e_siguiente <= TX_Envia2;
				end if;
				
		-- Dato 2
			when TX_Envia2 =>
				-- RAM: W->0/R->0
				Write_en  <= '0';
				OE 		 <= '0';
				-- RS232 listo
				if (TX_RDY = '1') then
					Address 	<= DMA_TX_BUFFER_LSB;
					TX_Data 	<= databus;
					Valid_D 	<= '0';
					e_siguiente <= TX_Ack2;
				end if;
				
			when TX_Ack2 =>
				-- RAM: W->0/R->0
				Write_en  <= '0';
				OE 		 <= '0';
				Address   <= DMA_TX_BUFFER_LSB;
				-- RS232: Datos/Validos
				TX_Data <= databus;
				Valid_D <= '0';
				if (ACK_out = '0') then
					e_siguiente <= TX_Fin;
				end if;
		
		-- Fin		
			when TX_Fin =>
				-- TX terminada
				if Send_comm = '0' then
					e_siguiente <= Idle;
				end if;
				
		end case;
		
	end process Working;
	
	-- Actualizacion CLK/RST
	Clocking : process (Clk,Reset)
	begin
	
		-- Reset asi­ncrono (active low)
		if Reset = '0' then
			e_actual <= Idle;
					
		-- Llegada de flanco de reloj
		elsif Clk'event and Clk='1' then
			e_actual <= e_siguiente;
		end if;
		
	end process Clocking;
	
	-- Salida
	READY <= '0' when ((Send_comm = '1') and (e_actual /= TX_Fin)) else 
				'1';
	
end Behavioral;