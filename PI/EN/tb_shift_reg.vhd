
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

ENTITY tb_shift_reg IS
END tb_shift_reg;

architecture TESTBENCH of tb_shift_reg is
    
    COMPONENT shift_reg
        PORT(
            reset : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            fdb : IN STD_LOGIC;
            l_r : IN STD_LOGIC;
            ser_in : IN STD_LOGIC;
            par_in : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            load : IN STD_LOGIC;
            shift_reg_lo : OUT STD_LOGIC;  
            shift_reg_hi : OUT STD_LOGIC   
        );  
    END COMPONENT;

    SIGNAL reset_stim : STD_LOGIC; 
    SIGNAL l_r_stim : STD_LOGIC;
    SIGNAL fdb_stim : STD_LOGIC;
    SIGNAL ser_in_stim : STD_LOGIC;
    SIGNAL par_in_stim : STD_LOGIC_VECTOR (7 DOWNTO 0);
    SIGNAL load_stim : STD_LOGIC;
    SIGNAL clk_stim : STD_LOGIC := '0';  -- Inicialización sólo válida para simulación
    SIGNAL shift_reg_lo : STD_LOGIC;
    SIGNAL shift_reg_hi : STD_LOGIC;

begin  -- TESTBENCH

    TOP: shift_reg
         port map (
             reset => reset_stim,           
             clk => clk_stim,
             fdb => fdb_stim,
             l_r => l_r_stim,
             ser_in => ser_in_stim,
             par_in => par_in_stim,
             load => load_stim,
             shift_reg_lo => shift_reg_lo,   
             shift_reg_hi => shift_reg_hi
         );

    clock: PROCESS 
    BEGIN
        WAIT FOR 50 ns;
        clk_stim <= NOT clk_stim;
    END PROCESS;

    reset_stim <= '0' AFTER 0 ns,
                  '1' AFTER 120 ns;

    l_r_stim <= '0' AFTER 0 ns,
                '1' AFTER 2200 ns;

    fdb_stim <= '0' AFTER 0 ns,
                '1' AFTER 50 ns,
                '0' AFTER 1300 ns,
                '1' AFTER 3900 ns;

    ser_in_stim <= '0' AFTER 0 ns,
                   '1' AFTER 1400 ns,
                   '0' AFTER 1500 ns,
                   '1' AFTER 2700 ns,
                   '0' AFTER 2800 ns;
             
    par_in_stim <= "00000010" AFTER 0 ns,
                   "01000000" AFTER 4000 ns;
             
    load_stim <= '0' AFTER 0 ns,
                 '1' AFTER 100 ns,
                 '0' AFTER 200 ns,
                 '1' AFTER 4100 ns,
                 '0' AFTER 4200 ns;

end TESTBENCH;

