library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControladorPuertas is
    port(
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        llegada_piso    : buffer STD_LOGIC;
        abrir_manual    : in  STD_LOGIC;
        cerrar_manual   : in  STD_LOGIC;
        fallo_energia   : in  STD_LOGIC;
        notificacion    : in  STD_LOGIC;
        puerta          : out STD_LOGIC;
        estado_puerta   : out STD_LOGIC
    );
end ControladorPuertas;

architecture Behavioral of ControladorPuertas is
    signal puerta_abierta : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' or fallo_energia = '1' then
            puerta_abierta <= '0';
            estado_puerta <= '0';
        elsif rising_edge(clk) then
            if abrir_manual = '1' then
                puerta_abierta <= '1';
                estado_puerta <= '1';
            elsif llegada_piso = '1' and puerta_abierta = '0' then
                puerta_abierta <= '1';
                estado_puerta <= '1';
            elsif cerrar_manual = '1' and puerta_abierta = '1' then
                puerta_abierta <= '0';
                estado_puerta <= '0';
            end if;
        end if;
    end process;

    puerta <= puerta_abierta;
end Behavioral;