
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity nor2 is
  generic (tpd_nor : time := 0 ns);
  port (A, B : in std_logic;
        Y : out std_logic);
end nor2;

architecture dataflow of nor2 is
begin
  Y <= A nor B after tpd_nor;
end dataflow;

