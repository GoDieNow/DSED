----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.PIC_pkg.all;
USE work.RS232_test.all; 

ENTITY tb_RS232_RAM_DMA IS
END tb_RS232_RAM_DMA;
 
ARCHITECTURE behavior OF tb_RS232_RAM_DMA IS 
 
   COMPONENT RS232_RAM_DMA
   PORT ( Reset 		: in  	STD_LOGIC;
          Clk 			: in  	STD_LOGIC;
			 RS232_RX	: in		STD_LOGIC;
          DMA_ACK 	: in  	STD_LOGIC;
          SEND_comm 	: in  	STD_LOGIC;
			 RS232_TX	: out		STD_LOGIC;
          Switches 	: out 	STD_LOGIC_VECTOR (7 downto 0);
          Temp_L 		: out 	STD_LOGIC_VECTOR (6 downto 0);
          Temp_H 		: out  	STD_LOGIC_VECTOR (6 downto 0);
          DMA_RQ 		: out  	STD_LOGIC;
          DMA_READY 	: out  	STD_LOGIC;
          Databus 	: inout  STD_LOGIC_VECTOR(7 downto 0));
			  
   END COMPONENT;

   signal Reset 		: std_logic := '1';
   signal Clk 			: std_logic := '0';
   signal DMA_ACK 	: std_logic := '0';
   signal SEND_comm 	: std_logic := '0';
	signal RS232_RX	: std_logic := '1';
   signal Databus 	: std_logic_vector(7 downto 0) := (OTHERS => 'Z');
	signal RS232_TX	: std_logic := '1';
   signal Switches 	: std_logic_vector(7 downto 0) := (OTHERS => '0');
   signal Temp_L 		: std_logic_vector(6 downto 0) := (OTHERS => '0');
   signal Temp_H 		: std_logic_vector(6 downto 0) := (OTHERS => '0');
   signal DMA_RQ 		: std_logic := '0';
   signal DMA_READY 	: std_logic := '1';
	signal Data_rcv 	: STD_LOGIC_vector(7 downto 0) := (OTHERS => '0');

   -- Clock period definitions
   constant periodo_reloj : time := 50 ns;
	constant rs232_per : time := 8680.6 ns;
	
BEGIN
 
   uut: RS232_RAM_DMA PORT MAP (
          Reset 		=> Reset,
          Clk 			=> Clk,
			 RS232_RX 	=> RS232_RX,
          DMA_ACK 	=> DMA_ACK,
          SEND_comm 	=> SEND_comm,
			 RS232_TX 	=> RS232_TX,
          Switches 	=> Switches,
          Temp_L 		=> Temp_L,
          Temp_H 		=> Temp_H,
          DMA_RQ 		=> DMA_RQ,
          DMA_READY 	=> DMA_READY,
          Databus 	=> Databus
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
			DMA_ACK <= DMA_RQ;
			wait for RS232_per;
			
	end process;

	process
		begin		
			Reset <= '0';
			Send_comm <= '0';
			wait for periodo_reloj*4/5;
			wait for RS232_per;
			
			Reset <= '1';
			
			-- Transmision
			Transmit(RS232_RX, "10101010");
			Transmit(RS232_RX, "11001100");
			Transmit(RS232_RX, "11110000");

			wait for RS232_per*35;
			
			-- Recepcion
			SEND_comm <= '1';
			wait for periodo_reloj;
		   Receive(RS232_TX,Data_rcv);
		   Receive(RS232_TX,Data_rcv);
			wait for 22*RS232_per;
			SEND_comm <= not DMA_READY;
			wait;
			
   end process;

END;
