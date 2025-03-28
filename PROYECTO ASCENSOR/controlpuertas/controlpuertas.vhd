library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlpuertas is
    Port (
        clk              : in STD_LOGIC;
        reset            : in STD_LOGIC;
        abrir_puerta     : in STD_LOGIC;
        cerrar_puerta    : in STD_LOGIC;
        en_movimiento    : in STD_LOGIC;
        puertas_estado   : out STD_LOGIC_VECTOR(1 downto 0); -- 00: Cerrada, 01: Abriendo, 10: Abierta, 11: Cerrando
        alarma_sonora    : out STD_LOGIC;
        luz_puerta       : out STD_LOGIC
    );
end controlpuertas;

architecture arch of controlpuertas is
    signal estado_puerta : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal contador      : INTEGER := 0;

    constant TIEMPO_ESPERA : INTEGER := 10;
    constant TIEMPO_ABIERTA : INTEGER := 45;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            estado_puerta <= "00";
            contador <= 0;
            alarma_sonora <= '0';
            luz_puerta <= '0';
        elsif rising_edge(clk) then
            if en_movimiento = '1' then
                estado_puerta <= "00";
                alarma_sonora <= '0';
                luz_puerta <= '0';
                contador <= 0;
            else
                case estado_puerta is
                    when "00" =>
                        if abrir_puerta = '1' then
                            estado_puerta <= "01";
                        end if;

                    when "01" =>
                        contador <= contador + 1;
                        alarma_sonora <= '1';
                        luz_puerta <= '1';
                        if contador = TIEMPO_ESPERA then
                            estado_puerta <= "10";
                            contador <= 0;
                        end if;

                    when "10" =>
                        contador <= contador + 1;
                        if contador = TIEMPO_ABIERTA or cerrar_puerta = '1' then
                            estado_puerta <= "11";
                            contador <= 0;
                        end if;

                    when "11" =>
                        contador <= contador + 1;
                        alarma_sonora <= '1';
                        if contador = TIEMPO_ESPERA then
                            estado_puerta <= "00";
                            contador <= 0;
                        end if;

                    when others =>
                        estado_puerta <= "00";
                end case;
            end if;
        end if;
    end process;

    puertas_estado <= estado_puerta;

end arch;

