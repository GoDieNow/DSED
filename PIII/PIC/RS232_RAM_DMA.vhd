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

entity RS232_RAM_DMA is
	
	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
	generic (
		DBus : natural := 8
	);

	Port ( Reset 		: in  	STD_LOGIC;
          Clk 			: in  	STD_LOGIC;
          DMA_ACK 	: in  	STD_LOGIC;
          SEND_comm 	: in  	STD_LOGIC;
          RS232_TX 	: out  	STD_LOGIC;
          RS232_RX 	: in  	STD_LOGIC;
          Switches 	: out  	STD_LOGIC_VECTOR (DBus-1 downto 0);
          Temp_L 		: out  	STD_LOGIC_VECTOR (DBus-2 downto 0);
          Temp_H 		: out  	STD_LOGIC_VECTOR (DBus-2 downto 0);
          DMA_RQ 		: out 	STD_LOGIC;
          DMA_Ready 	: out  	STD_LOGIC;
          Databus 	: inout  STD_LOGIC_VECTOR (DBus-1 downto 0));

end RS232_RAM_DMA;

architecture Behavior of RS232_RAM_DMA is

	------------------------------------------------------------------------
	-- Descripcion Componentes
	------------------------------------------------------------------------

	component DMA
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
	end component;
	
	component RAM
		port(
			Reset 		: in 		std_logic;
			Clk 			: in 		std_logic;
			Databus		: inout 	std_logic_vector(DBus-1 downto 0);
			Address 		: in 		std_logic_vector(DBus-1 downto 0);
			Write_en 	: in 		std_logic;
			OE 			: in 		std_logic;
			Switches 	: out 	std_logic_vector(DBus-1 downto 0);
			Temp_L   	: out 	std_logic_vector(DBus-2 downto 0);
			Temp_H   	: out 	std_logic_vector(DBus-2 downto 0));
	end component;
	
	component RS232top
		port (
			Reset     : in  std_logic;
			Clk       : in  std_logic;
			Data_in   : in  std_logic_vector	(DBus-1 downto 0);
			Valid_D   : in  std_logic;
			Ack_in    : out std_logic;
			TX_RDY    : out std_logic;
			TD        : out std_logic;
			RD        : in  std_logic;
			Data_out  : out std_logic_vector	(DBus-1 downto 0);
			Data_read : in  std_logic;
			Full      : out std_logic;
			Empty     : out std_logic);
	end component;
	
	------------------------------------------------------------------------
	-- Internal Signals
	------------------------------------------------------------------------
	
		-- Buses
	signal Data_Bus		: std_logic_vector(DBus-1 downto 0);
	signal Addr_Bus		: std_logic_vector(DBus-1 downto 0);
	signal Addr_Bus_DMA	: std_logic_vector(DBus-1 downto 0);
	
	-- RAM
	signal RA_Write		: std_logic;
	signal RA_OE			: std_logic;
		--RAM-DMA-Bus
	signal RA_Write_DMA	: std_logic;
	signal RA_OE_DMA		: std_logic;
	
	-- RS232
	signal TX_Data			: std_logic_vector(DBus-1 downto 0);
	signal RS_Valid		: std_logic;
	signal RS_Ack			: std_logic;
	signal TX_RDY			: std_logic;
	signal RCVD_Data		: std_logic_vector(DBus-1 downto 0);
	signal Data_read 		: std_logic;
	signal RX_Full 		: std_logic;
	signal RX_Empty		: std_logic;
	
begin

	------------------------
	-- Mapeado componentes
	------------------------


	IntDMA: DMA
		port map (
			Reset 		=> Reset,
			Clk 			=> Clk,
			RCVD_Data 	=> RCVD_Data,
			RX_Full 		=> RX_Full,
			RX_Empty 	=> RX_Empty,
			Data_Read 	=> Data_Read,
			ACK_out 		=> RS_ACK,
			TX_RDY 		=> TX_RDY,
			Valid_D 		=> RS_Valid,
			TX_Data 		=> TX_Data,
			Address 		=> Addr_Bus_DMA,
			Databus		=> Data_Bus,
			Write_en 	=> RA_Write_DMA,
			OE 			=> RA_OE_DMA,
			DMA_RQ 		=> DMA_RQ,
			DMA_ACK 		=> DMA_ACK,
			Send_comm 	=> Send_comm,
			READY 		=> DMA_Ready
			);
			
	IntRAM: RAM
		port map (
			Reset 		=> Reset,
			Clk 			=> Clk,
			Databus		=> Data_Bus,
			Address 		=> Addr_Bus,
			Write_en 	=> RA_Write,
			OE 			=> RA_OE,
			Switches 	=> Switches,
			Temp_L   	=> Temp_L,
			Temp_H   	=> Temp_H
			);
			
	RS232: RS232top
		port map (
			Reset     => Reset,
			Clk       => Clk,
			Data_in   => TX_Data,
			Valid_D   => RS_Valid,
			Ack_in    => RS_Ack,
			TX_RDY    => TX_RDY,
			TD        => RS232_TX,
			RD        => RS232_RX,
			Data_out  => RCVD_Data,
			Data_read => Data_read,
			Full      => RX_Full,
			Empty     => RX_Empty);

	------------------------------------------------------------------------
	-- Logica del componente
	------------------------------------------------------------------------
	
	RAM_Bus: process (Send_comm, DMA_ACK, RA_Write_DMA, RA_OE_DMA, Addr_Bus_DMA) 
	begin
		
		-- DMA Power!
		if Send_comm = '1' or DMA_ACK = '1' then
			RA_Write	<= RA_Write_DMA;
			RA_OE		<= RA_OE_DMA;
			Addr_Bus <= Addr_Bus_DMA;
		
		-- CPU roolz
		else 
			RA_Write	<= 'Z';
			RA_OE		<= 'Z';
			Addr_Bus <= (others => 'Z');
		end if;

	end process RAM_Bus;

	
end Behavior;

