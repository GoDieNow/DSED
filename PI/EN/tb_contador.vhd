
library ieee;
use ieee.std_logic_1164.all;

entity tb_counter is
end;

architecture testbench of tb_counter is

    component counter 
        generic (size: integer := 8);
        port ( 
            clk, reset: in std_logic;
            q: out std_logic_vector (size-1 downto 0)
        );
    end component;

    signal clk, reset : std_logic;

begin
 
	UUT : counter generic map (size => 8) port map ( clk, reset, open );

-------------------------------------------------------------------------------
--  estimulos
-------------------------------------------------------------------------------

    CLOCK: process
    begin
        clk <= '0', '1' after 50 ns;
        wait for 100 ns;
    end process;
 
    reset_estimulo: process
    begin
        reset <= '1', '0' after 100 ns;
        wait;
    end process;
 
end testbench;

