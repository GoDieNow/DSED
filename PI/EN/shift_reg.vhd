----------------------------------------------------------------
--  RELLENAR POR EL ALUMNO
--
--  LOAD = '1':
--  L_R = '1' :
--  L_R = '0' :
--  FDB = '1' :
--  FDB = '0' :
----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

ENTITY shift_reg IS 
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
END shift_reg ;

ARCHITECTURE behavior OF shift_reg IS

    SIGNAL reg_int : STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

    SHREG : PROCESS (reset, clk)

        VARIABLE last_bit : STD_LOGIC;

    BEGIN

        IF reset = '0' THEN 
            reg_int <= "00000000";
            last_bit := '0';

        ELSIF clk'EVENT AND clk = '1' THEN

            IF load = '1' THEN
                reg_int <= par_in;

            ELSIF l_r = '1' then

                IF fdb = '1' THEN
                    last_bit := reg_int(7);
                ELSE 
                    last_bit := ser_in;
                END IF;

                reg_int(7 downto 1) <= reg_int(6 downto 0);
                reg_int(0) <= last_bit;

            ELSE
                IF fdb = '1' then
                    last_bit := reg_int(0);
                ELSE 
                    last_bit := ser_in;
                END IF;

                reg_int(6 downto 0) <= reg_int(7 downto 1);
                reg_int(7) <= last_bit;

            END IF;
        END IF;

    END PROCESS;

    shift_reg_hi <= reg_int(7);
    shift_reg_lo <= reg_int(0);

END behavior;

