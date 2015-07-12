
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity or2 is
  generic (tpd_or : time := 0 ns);
  port (A, B : in std_logic;
        Y : out std_logic);
end or2;

architecture dataflow of or2 is
begin
  Y <= A or B after tpd_or;
end dataflow;

