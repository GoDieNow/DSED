
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY dec3to8 IS
    PORT (
        sel : IN std_logic_vector (2 downto 0);
        enable : IN STD_LOGIC;
        z : OUT STD_LOGIC_VECTOR (7 downto 0)
    );
END dec3to8;

ARCHITECTURE behavior OF dec3to8 IS
BEGIN

    PROCESS (sel, enable)
    BEGIN
        z <= "00000000";
        IF (enable = '1') THEN
            CASE sel IS
                WHEN "000" => z(0) <= '1';
                WHEN "001" => z(1) <= '1';
                WHEN "010" => z(2) <= '1';
                WHEN "011" => z(3) <= '1';
                WHEN "100" => z(4) <= '1';
                WHEN "101" => z(5) <= '1';
                WHEN "110" => z(6) <= '1';
                WHEN "111" => z(7) <= '1';
            END CASE;
        END IF;
    END PROCESS;

END behavior;

