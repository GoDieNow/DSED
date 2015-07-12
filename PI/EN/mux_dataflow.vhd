
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mi_mux IS       
  PORT(a: in std_logic;
       b: in std_logic;
       sel: in std_logic;
       z: out std_logic);
END;

ARCHITECTURE dataflow OF mi_mux IS
BEGIN
    z <= a WHEN sel = '0' ELSE b;
END dataflow;
