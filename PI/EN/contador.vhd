
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter is
    generic ( size: integer:= 8
    );
    port ( clk, reset: in std_logic;
           q: out std_logic_vector (size-1 downto 0)
    );
end counter;

architecture behavior of counter is

    signal q_i: unsigned (size-1 downto 0);
	 
begin

    process (clk, reset)
    begin
        if reset = '1' then
            q_i <= (others => '0');

        elsif  clk'event and clk = '1' then

            if q_i = 2**size-1 then
                q_i <= conv_unsigned (0, size);
            else
                q_i <= q_i + 1;
            end if;

        end if;
    end process;

    q <= conv_std_logic_vector (q_i, size);

end behavior;

