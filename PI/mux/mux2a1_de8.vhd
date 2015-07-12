
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2a1_de8 IS       
    PORT(a: in std_logic_vector (7 downto 0);
         b: in std_logic_vector (7 downto 0);
         sel: in std_logic;
         z: out std_logic_vector (7 downto 0));
END;

architecture behavior of mux2a1_de8 is
begin

    process (a, b, sel)
    begin
        if sel = '0' then
            z <= a;
        else
            z <= b;
        end if;
    end process;

end behavior;

