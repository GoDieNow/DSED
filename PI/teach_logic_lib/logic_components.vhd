
library IEEE;
use IEEE.std_logic_1164.all;
  
PACKAGE logic_components IS

component inv
  port (a : in std_logic;
        y : out std_logic);
end component;

component buf
  port (a : in std_logic;
        y : out std_logic);
end component;

component and2
  port (a, b : in std_logic;
        y : out std_logic);
end component;

component nand2
  port (a, b : in std_logic;
        y : out std_logic);
end component;

component or2
  port (a, b : in std_logic;
        y : out std_logic);
end component;

component nor2
  port (a, b : in std_logic;
        y : out std_logic);
end component;

END logic_components;

