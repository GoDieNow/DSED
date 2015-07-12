
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2a1_de8 IS       
    PORT(a: in std_logic_vector (7 downto 0);
         b: in std_logic_vector (7 downto 0);
         sel: in std_logic;
         z: out std_logic_vector (7 downto 0));
END;

architecture behavior of mux2a1_de8 is

    component mi_mux
        Port (a, b: in std_logic;
              sel: in std_logic;
              z: out std_logic);
    end component;

begin

UUT0 : mi_mux Port Map (a(0), b(0), sel, z(0));
UUT1 : mi_mux Port Map (a(1), b(1), sel, z(1));
UUT2 : mi_mux Port Map (a(2), b(2), sel, z(2));
UUT3 : mi_mux Port Map (a(3), b(3), sel, z(3));
UUT4 : mi_mux Port Map (a(4), b(4), sel, z(4));
UUT5 : mi_mux Port Map (a(5), b(5), sel, z(5));
UUT6 : mi_mux Port Map (a(6), b(6), sel, z(6));
UUT7 : mi_mux Port Map (a(7), b(7), sel, z(7));

end behavior;