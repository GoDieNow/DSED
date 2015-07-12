--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:55:06 10/07/2014
-- Design Name:   
-- Module Name:   /home/neim/DSED/PI/mux/tb_mux4a1_8bits.vhd
-- Project Name:  mux4a1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4a1_8bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mux4a1_8bits IS
END tb_mux4a1_8bits;
 
ARCHITECTURE behavior OF tb_mux4a1_8bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4a1_8bits
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         c : IN  std_logic_vector(7 downto 0);
         d : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal c : std_logic_vector(7 downto 0) := (others => '0');
   signal d : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(7 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4a1_8bits PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          sel => sel,
          z => z
        );

    a <= "00000000", "00001111" after 5 ns;
    b <= "11110000", "11111111" after 15 ns;
	 c <= "01010101", "10101010" after 30 ns;
    d <= "11001100", "00110011" after 45 ns;
    sel <= "00", "01" after 10 ns, "10" after 20 ns, "11" after 35 ns;
END;
