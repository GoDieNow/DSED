
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity buf is
  generic (tpd_buf : time := 0 ns);
  port (A : in std_logic;
        Y : out std_logic);
end buf;

architecture dataflow of buf is
begin
  Y <= A after tpd_buf;
end dataflow;

