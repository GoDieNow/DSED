
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY TEACH_LOGIC_LIB;
USE TEACH_LOGIC_LIB.logic_components.ALL;

ENTITY mi_mux IS       
  PORT(a: in std_logic;
       b: in std_logic;
       sel: in std_logic;
       z: out std_logic);
END;

ARCHITECTURE estructural OF mi_mux IS

    signal inv_or, or_nand, nand_nand : std_logic;
    
BEGIN
    
    puerta_inv : inv
        port map (a => a, y => inv_or);
    
    puerta_or : or2
        port map (a => inv_or, b => sel, y => or_nand);
    
    puerta_nand1 : nand2
        port map (a => sel, b => b, y => nand_nand);
    
    puerta_nand2 : nand2
        port map (a => or_nand, b => nand_nand, y => z);

END estructural;

