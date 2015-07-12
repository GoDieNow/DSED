
library IEEE;
  use IEEE.std_logic_1164.all;
  
entity nand2 is
  generic (tpd_nand : time := 0 ns);
  port (A, B : in std_logic;
        Y : out std_logic);
end nand2;

architecture dataflow of nand2 is
begin
  Y <= A nand B after tpd_nand;
end dataflow;

