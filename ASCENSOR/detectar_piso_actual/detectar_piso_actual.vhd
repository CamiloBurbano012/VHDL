library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity detectar_piso_actual is
    port(
        clk_1Hz    : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        motor_subir : buffer  STD_LOGIC;
        motor_bajar : buffer  STD_LOGIC;
        piso_actual : out STD_LOGIC_VECTOR(2 downto 0)
    );
end detectar_piso_actual;

architecture Behavioral of detectar_piso_actual is
    signal piso : unsigned(2 downto 0) := "001";  -- Piso inicial 1
begin
    process(clk_1Hz, reset, motor_subir, motor_bajar)
    begin
        if reset = '1' then
            piso <= "001";
        elsif rising_edge(clk_1Hz) then
            if motor_subir = '1' and piso < 5 then
                piso <= piso + 1;
            elsif motor_bajar = '1' and piso > 1 then
                piso <= piso - 1;
            end if;
        end if;
    end process;

    piso_actual <= std_logic_vector(piso);
end Behavioral;