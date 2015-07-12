
library IEEE;
use IEEE.std_logic_1164.all;

entity TB_MUX2A1_DE8 is
end;
 
architecture TESTBENCH of TB_MUX2A1_DE8 is
 
    signal a, b, z : std_logic_vector (7 downto 0);
    signal sel : std_logic;
 
    component MUX2A1_DE8 
        Port (a, b: in std_logic_vector (7 downto 0);
              sel: std_logic;
              z: out std_logic_vector (7 downto 0));
    end component;

begin
 
    UUT : MUX2A1_DE8 Port Map (a, b, sel, z);

    a <= "00000000", "00001111" after 10 ns;
    b <= "11110000", "11111111" after 15 ns;
    sel <= '0', '1' after 5 ns, '0' after 35 ns;

end TESTBENCH;

