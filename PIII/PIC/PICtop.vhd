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

entity PICtop is
	
	------------------------------------------------------------------------
	-- Generic
	------------------------------------------------------------------------
	generic (
		DBus : natural := 8
	);
	
	port (
		Reset    : in  std_logic;        -- Asynchronous, active low
		Clk      : in  std_logic;        -- System clock, 20 MHz, rising_edge
		RS232_RX : in  std_logic;        -- RS232 RX line
		RS232_TX : out std_logic;        -- RS232 TX line
		Switches : out std_logic_vector(DBus-1 downto 0);  -- Switch status bargraph
		Temp_L   : out std_logic_vector(DBus-2 downto 0);  		-- Less significant figure of T_STAT
		Temp_H   : out std_logic_vector(DBus-2 downto 0));  		-- Most significant figure of T_STAT

end PICtop;

architecture behavior of PICtop is

	------------------------------------------------------------------------
	-- Descripcion Componentes
	------------------------------------------------------------------------

	component ALU
		port(
			Reset 		: in 		std_logic;
			Clk 			: in 		std_logic;
			Alu_op 		: in 		alu_op;
			Databus		: inout 	std_logic_vector(DBus-1 downto 0);
			Index_Reg	: out 	std_logic_vector(DBus-1 downto 0);
			FlagZ 		: out 	std_logic;
			FlagC 		: out 	std_logic;
			FlagN			: out 	std_logic;
			FlagE 		: out 	std_logic);
	end component;

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
	
	component CPU
		port(
			Reset			: in 		std_logic;
			Clk			: in 		std_logic;
			ROM_Data 	: in 		std_logic_vector(11 downto 0);
			ROM_Addr 	: out 	std_logic_vector(11 downto 0);
			RAM_Addr 	: out 	std_logic_vector(DBus-1  downto 0);
			RAM_Write 	: out 	std_logic;
			RAM_OE 		: out 	std_logic;
			Databus 		: inout 	std_logic_vector(DBus-1  downto 0);
			DMA_RQ 		: in 		std_logic;
			DMA_ACK 		: out 	std_logic;
			SEND_comm 	: out 	std_logic;
			DMA_READY 	: in 		std_logic;
			ALU_op 		: out 	alu_op;
			Index_reg	: in		std_logic_vector(DBus-1  downto 0);
			FlagZ 		: in 		std_logic;
			FlagC 		: in 		std_logic;
			FlagN 		: in 		std_logic;
			FlagE 		: in 		std_logic);
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

	component ROM
		port(
			Instruction			: out	std_logic_vector(11 downto 0);
			Program_counter 	: in 	std_logic_vector(11 downto 0));
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
	
	-- ALU
	signal ALU_Opr			: alu_op;
	signal Alu_Index		: std_logic_vector(DBus-1 downto 0);
	signal ALU_FZ			: std_logic;
	signal ALU_FC			: std_logic;
	signal ALU_FN			: std_logic;
	signal ALU_FE			: std_logic;
	
	-- Buses
	signal Data_Bus		: std_logic_vector(DBus-1 downto 0);
	signal Addr_Bus		: std_logic_vector(DBus-1 downto 0);
	signal RAddr_Bus		: std_logic_vector(11 downto 0);
	signal RData_Bus		: std_logic_vector(11 downto 0);
	
	-- DMA
	signal DMA_RQ_1		: std_logic;
	signal DMA_ACK_1		: std_logic;
	signal DMA_Send		: std_logic;
	signal DMA_Ready 		: std_logic;
	
	-- CPU
	
	-- RAM
	signal RA_Write		: std_logic;
	signal RA_OE			: std_logic;
	
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

	IntALU: ALU
		port map (
			Reset 		=> Reset,
			Clk 			=> Clk,
			Alu_op 		=> ALU_Opr,
			Databus		=> Data_Bus,
			Index_Reg	=> ALU_Index,
			FlagZ 		=> ALU_FZ,
			FlagC 		=> ALU_FC,
			FlagN			=> ALU_FN,
			FlagE 		=> ALU_FE
			);

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
			Address 		=> Addr_Bus,
			Databus		=> Data_Bus,
			Write_en 	=> RA_Write,
			OE 			=> RA_OE,
			DMA_RQ 		=> DMA_RQ_1,
			DMA_ACK 		=> DMA_ACK_1,
			Send_comm 	=> DMA_Send,
			READY 		=> DMA_Ready
			);

	IntCPU: CPU
		port map (
			Reset 		=> Reset,
			Clk 			=> Clk,
			ROM_Data 	=> RData_Bus,
			ROM_Addr 	=> RAddr_Bus,
			RAM_Addr 	=> Addr_Bus,
			RAM_Write 	=> RA_Write,
			RAM_OE 		=> RA_OE,
			Databus 		=> Data_Bus,
			DMA_RQ 		=> DMA_RQ_1,
			DMA_ACK 		=> DMA_ACK_1,
			SEND_comm 	=> DMA_Send,
			DMA_READY 	=> DMA_Ready,
			ALU_op 		=> ALU_Opr,
			Index_reg	=> ALU_Index,
			FlagZ 		=> ALU_FZ,
			FlagC 		=> ALU_FC,
			FlagN			=> ALU_FN,
			FlagE 		=> ALU_FE
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
			
	IntROM: ROM
		port map (
			Instruction 		=> RData_Bus,
			Program_counter 	=> RAddr_Bus
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
	
end behavior;