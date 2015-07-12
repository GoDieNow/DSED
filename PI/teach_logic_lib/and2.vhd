
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity and2 is
  generic (tpd_and : time := 0 ns);
  port (A, B : in std_logic;
        Y : out std_logic);
end and2;

architecture dataflow of and2 is
begin
  Y <= A and B after tpd_and;
end dataflow;

