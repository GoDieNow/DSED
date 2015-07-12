
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

ENTITY tb_regs IS
    generic (nbits : integer := 8);
END tb_regs;

architecture TESTBENCH of tb_regs is
    
    COMPONENT reg1
        generic (
            reg_size : integer := 8  -- Valor por defecto
        );
        Port(
            d_in : in std_logic_vector (reg_size-1 downto 0);
            clk, rst : in std_logic;
            q : out std_logic_vector (reg_size-1 downto 0)
        );
    END COMPONENT;

--    COMPONENT reg2
--        generic (
--            reg_size : integer := 8  -- Valor por defecto
--        );
--        Port(
--            d_in : in std_logic_vector (reg_size-1 downto 0);
--            clk, rst : in std_logic;
--            q : out std_logic_vector (reg_size-1 downto 0)
--        );
--    END COMPONENT;

    SIGNAL d_in : std_logic_vector (nbits-1 downto 0);
    SIGNAL clk  : std_logic;
    SIGNAL rst  : std_logic;
    SIGNAL q1   : std_logic_vector (nbits-1 downto 0);
    --SIGNAL q2   : std_logic_vector (nbits-1 downto 0);

begin  -- TESTBENCH

    TOP1: reg1 generic map (reg_size => nbits)  -- Valor actual
              port map (d_in => d_in,
                        clk => clk,
                        rst => rst,
                        q => q1);

--    TOP2: reg2 generic map (reg_size => nbits)  -- Valor actual
--              port map (d_in => d_in,
--                        clk => clk,
--                        rst => rst,
--                        q => q2);

    p_clk : PROCESS 
    BEGIN
        clk <= '1', '0' after 25 ns;
        wait for 50 ns;
    END PROCESS;

    rst <= '0' after 0 ns,
           '1' after 60 ns,
           '0' after 410 ns,
           '1' after 480 ns;

    d_in <= "00000010" after 10 ns,
            "11001100" after 110 ns,
            "11111111" after 310 ns,
            "01000000" after 610 ns;

end TESTBENCH;
