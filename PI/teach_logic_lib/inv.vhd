
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity inv is
  generic (tpd_inv : time := 0 ns);
  port (A : in std_logic;
        Y : out std_logic);
end inv;

architecture dataflow of inv is
begin
  Y <= not A after tpd_inv;
end dataflow;

