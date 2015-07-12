----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:18 10/07/2014 
-- Design Name: 
-- Module Name:    mux4a1_8bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4a1_8bits is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           c : in  STD_LOGIC_VECTOR (7 downto 0);
           d : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC_VECTOR (7 downto 0));
end mux4a1_8bits;

architecture Behavioral of mux4a1_8bits is

signal z_a, z_b : std_logic_vector (7 downto 0);
signal sel_a, sel_b: std_logic;

	component mux2a1_de8
		Port (a, b: in std_logic_vector (7 downto 0);
             sel: in std_logic;
               z: out std_logic_vector (7 downto 0));
   end component;

begin

UUT0 : mux2a1_de8 Port Map (a, b, sel_a, z_a);
UUT1 : mux2a1_de8 Port Map (c, d, sel_b, z_b);

	process (a, b, c, d, sel)
		begin
			if (sel = "00" or sel = "01") then
				z 		<= z_a;
				sel_a <= sel(0);
			else
				z 		<= z_b;
				sel_b <= sel(0);
			end if;
	end process;

end Behavioral;

