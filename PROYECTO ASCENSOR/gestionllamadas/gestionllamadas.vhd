library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity gestionllamadas is
    Port (
        clk               : in STD_LOGIC;
        reset             : in STD_LOGIC;
        llamada_piso      : in STD_LOGIC_VECTOR(4 downto 0); -- Botones de llamada exterior
        destino_cabina    : in STD_LOGIC_VECTOR(4 downto 0); -- Botones de destino dentro de la cabina
        piso_actual       : in STD_LOGIC_VECTOR(2 downto 0); -- Piso actual del ascensor
        piso_destino      : out STD_LOGIC_VECTOR(2 downto 0); -- Piso destino calculado
        llamada_activada  : out STD_LOGIC -- Señal de llamada activa
    );
end gestionllamadas;

architecture Behavioral of gestionllamadas is
    signal solicitudes : STD_LOGIC_VECTOR(4 downto 0) := "00000"; -- Solicitudes acumuladas
    signal piso_int : INTEGER := 0;
    signal destino_int : INTEGER := 0;

begin

    process(clk, reset)
    begin
        if reset = '1' then
            solicitudes <= "00000";
            llamada_activada <= '0';
            piso_destino <= "000";
        elsif rising_edge(clk) then

            -- Actualización de solicitudes
            solicitudes <= solicitudes or llamada_piso or destino_cabina;

            -- Determinar el destino más cercano
            piso_int <= conv_integer(piso_actual);

            -- Selección de destino
            destino_int <= piso_int;
            llamada_activada <= '0';

            for i in 0 to 4 loop
                if solicitudes(i) = '1' then
                    destino_int <= i;
                    llamada_activada <= '1';
                    exit; -- Prioriza la primera llamada encontrada
                end if;
            end loop;

            -- Enviar destino
            piso_destino <= conv_std_logic_vector(destino_int, 3);

            -- Limpiar solicitud si se alcanzó el destino
            if piso_int = destino_int then
                solicitudes(destino_int) <= '0';
            end if;
        end if;
    end process;

end Behavioral;