library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Alarmas is
    port(
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        abrir_puerta  : in  STD_LOGIC;
        cerrar_puerta : in  STD_LOGIC;
        fallo_energia : in  STD_LOGIC;
        notificacion  : in  STD_LOGIC;
        sobrecarga    : in  STD_LOGIC;
        estado_puerta : in  STD_LOGIC;
        led_puerta_abi : out STD_LOGIC;
        led_puerta_cie : out STD_LOGIC;
        led_fallo_en  : out STD_LOGIC;
        led_notifvis  : out STD_LOGIC;
        led_notifaud  : out STD_LOGIC;
        led_sobrecarga : out STD_LOGIC
    );
end Alarmas;

architecture Behavioral of Alarmas is
begin
    process(clk, reset, estado_puerta)
    begin
        if reset = '1' then
            led_puerta_abi <= '0';
            led_puerta_cie <= '1';
        elsif rising_edge(clk) then
            led_puerta_abi <= estado_puerta;
            led_puerta_cie <= NOT estado_puerta;
        end if;
    end process;

    led_fallo_en  <= fallo_energia;
    led_notifvis  <= NOT notificacion;
    led_sobrecarga <= sobrecarga;
	   led_notifaud  <= notificacion;
end Behavioral;