
library IEEE;
use IEEE.std_logic_1164.all;

entity TB_MI_MUX is
end;

architecture TESTBENCH of TB_MI_MUX is

    signal a, b, sel : std_logic;
    signal z : std_logic;

    component MI_MUX 
        Port (a, b, sel : in std_logic;
              z : out std_logic);
    end component;

begin

    UUT : MI_MUX Port Map (a, b, sel, z);

-------------------------------------------------------------------------------
-- primeros estimulos
-------------------------------------------------------------------------------

--    a <= '0', '1' after 10 ns;
--    b <= '1', '0' after 15 ns;
--    sel <= '0', '1' after 5 ns, '0' after 35 ns;

-------------------------------------------------------------------------------
-- segundos estimulos
-------------------------------------------------------------------------------

    a_stimuli: process
    begin
        a <= '0', '1' after 10 ns;
        wait for 20 ns;
    end process;

    b_stimuli: process
    begin
        b <= '1', '0' after 15 ns;
        wait for 20 ns;
    end process;

    sel_stimuli: process
    begin
        sel <= '0', '1' after 5 ns;
        wait for 20 ns;
    end process;

end TESTBENCH;
