
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity reg2 is
    generic (
        reg_size: integer := 8  -- Valor por defecto
    );
    Port (
        d_in: in std_logic_vector (reg_size-1 downto 0);
        clk, rst: in std_logic;
        q: out std_logic_vector (reg_size-1 downto 0)
    );
end;

architecture dataflow of reg2 is
begin
    process (clk)
    begin
        if clk'event and clk = '1' then
            if rst = '0' then
                q <= (others => '0');
            else
                q <= d_in;
            end if;
        end if;
    end process;
end dataflow;

