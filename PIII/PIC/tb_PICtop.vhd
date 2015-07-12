----------------------------------------------------------------------------------
--
-- Engineer:  Diego Marti­n
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

--USE work.PIC_pkg.all;
USE work.RS232_test.all;

entity PICtop_tb is
end PICtop_tb;

architecture TestBench of PICtop_tb is

  component PICtop
    port (
      Reset    : in  std_logic;
      Clk      : in  std_logic;
      RS232_RX : in  std_logic;
      RS232_TX : out std_logic;
      switches : out std_logic_vector(7 downto 0);
      Temp_L   : out std_logic_vector(6 downto 0);
      Temp_H   : out std_logic_vector(6 downto 0));
  end component;

-----------------------------------------------------------------------------
-- Internal signals
-----------------------------------------------------------------------------

  signal Reset    : std_logic;
  signal Clk      : std_logic;
  signal RS232_RX : std_logic;
  signal RS232_TX : std_logic;
  signal switches : std_logic_vector(7 downto 0);
  signal Temp_L   : std_logic_vector(6 downto 0);
  signal Temp_H   : std_logic_vector(6 downto 0);
  signal Data_rcv : STD_LOGIC_vector(7 downto 0);
  signal Data_txt : STD_LOGIC_vector(7 downto 0);


begin  -- TestBench

  UUT: PICtop
    port map (
        Reset    => Reset,
        Clk      => Clk,
        RS232_RX => RS232_RX,
        RS232_TX => RS232_TX,
        switches => switches,
        Temp_L   => Temp_L,
        Temp_H   => Temp_H);

-----------------------------------------------------------------------------
-- Reset & clock generator
-----------------------------------------------------------------------------

  Reset <= '0', '1' after 75 ns;

  p_clk : PROCESS
  BEGIN
     clk <= '1', '0' after 25 ns;
     wait for 50 ns;
  END PROCESS;

-------------------------------------------------------------------------------
-- Sending some stuff through RS232 port
-------------------------------------------------------------------------------

  SEND_STUFF : process
  begin
     RS232_RX <= '1';
	  
	  -- I 4 1
     wait for 40 us;
     Transmit(RS232_RX, X"49");
     wait for 40 us;
     Transmit(RS232_RX, X"34");
     wait for 40 us;
     Transmit(RS232_RX, X"31");
     wait for 8800 ns;

	  -- A 7 7
	  wait for 40 us;
     Transmit(RS232_RX, X"41");
     wait for 40 us;
     Transmit(RS232_RX, X"37");
     wait for 40 us;
     Transmit(RS232_RX, X"37");
     wait for 8800 ns;
	  
	  -- T 2 3
	  wait for 40 us;
     Transmit(RS232_RX, X"54");
     wait for 40 us;
     Transmit(RS232_RX, X"32");
     wait for 40 us;
     Transmit(RS232_RX, X"33");
     wait for 8800 ns;
	  
	  -- S A 7
	  wait for 40 us;
     Transmit(RS232_RX, X"53");
     wait for 40 us;
     Transmit(RS232_RX, X"41");
     wait for 40 us;
     Transmit(RS232_RX, X"37");
     wait for 8800 ns;
	  
	  wait;
	  
  end process SEND_STUFF;
   	 
	  Receive(RS232_RX,Data_rcv);
	  Receive(RS232_TX,Data_txt);

	
	
end TestBench;

