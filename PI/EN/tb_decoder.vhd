
library IEEE;
use IEEE.std_logic_1164.all;

entity TB_DEC3TO8 is
end;
 
architecture TESTBENCH of TB_DEC3TO8 is
 
    signal enable : std_logic;
    signal sel : std_logic_vector (2 downto 0);
    signal z : STD_LOGIC_VECTOR (7 downto 0);
 
    component DEC3TO8 
        Port (sel : IN std_logic_vector (2 downto 0);
              enable : IN STD_LOGIC;
              z : OUT STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

begin
 
    UUT : DEC3TO8 Port Map (sel, enable, z);

-------------------------------------------------------------------------------
--  estimulos
-------------------------------------------------------------------------------

    sel <= "000", "001" after 10 ns, "010" after 20 ns, "011" after 30 ns, "100" after 40 ns;   
    enable <= '0', '1' after 5 ns;

end TESTBENCH;

