LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Panel_Fabrica IS
    PORT (
        silo_a : IN STD_LOGIC; 
        silo_b : IN STD_LOGIC; 
        luz_c  : OUT STD_LOGIC;
        luz_d  : OUT STD_LOGIC;
        alarma : OUT STD_LOGIC  
    );
END Panel_Fabrica;

ARCHITECTURE comportamiento OF Panel_Fabrica IS
BEGIN
    PROCESS (silo_a, silo_b)
    BEGIN
        
        IF (silo_a = '0' OR silo_b = '0') THEN
            luz_c <= '1';
        ELSE
            luz_c <= '0';
        END IF;

        
        IF (silo_a = '0' AND silo_b = '0') THEN
            luz_d <= '1';
            alarma <= '1';
        ELSE
            luz_d <= '0';
            alarma <= '0';
        END IF;
    END PROCESS;

END comportamiento;