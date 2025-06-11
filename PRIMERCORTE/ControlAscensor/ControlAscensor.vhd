library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ControlAscensor is
    port(
        clk_1Hz             : in  STD_LOGIC;
        reset               : in  STD_LOGIC;
        piso_actual         : in  STD_LOGIC_VECTOR(2 downto 0);
        piso_destino        : in  STD_LOGIC_VECTOR(2 downto 0);
        fallo_energia       : in  STD_LOGIC;
        notificacion        : in STD_LOGIC;
        sobrecarga          : in  STD_LOGIC;
        puerta              : in  STD_LOGIC;
        motor_subir         : out STD_LOGIC;
        motor_bajar         : out STD_LOGIC;
        llegada_piso        : out STD_LOGIC;
        clear_request       : out STD_LOGIC_VECTOR(4 downto 0);
        clear_request_subir : out STD_LOGIC_VECTOR(3 downto 0);
        clear_request_bajar : out STD_LOGIC_VECTOR(3 downto 0)
    );
end ControlAscensor;

architecture Behavioral of ControlAscensor is
    signal piso_actual_int  : unsigned(2 downto 0);
    signal piso_destino_int : unsigned(2 downto 0);
begin
    piso_actual_int  <= unsigned(piso_actual);
    piso_destino_int <= unsigned(piso_destino);

    process(clk_1Hz, reset, piso_actual_int, piso_destino_int, puerta)
    begin
        if reset = '1' or fallo_energia = '1' or sobrecarga = '1' then
            motor_subir         <= '0';
            motor_bajar         <= '0';
            llegada_piso        <= '0';
            clear_request       <= (others => '0');
            clear_request_subir <= (others => '0');
            clear_request_bajar <= (others => '0');
        elsif rising_edge(clk_1Hz) then
            if puerta = '1' then -- Ejemplo: No mover si la puerta está abierta
                motor_subir <= '0';
                motor_bajar <= '0';
                llegada_piso <= '0';
                clear_request <= (others => '0');
                clear_request_subir <= (others => '0');
                clear_request_bajar <= (others => '0');
            elsif piso_actual_int < piso_destino_int then
                motor_subir         <= '1';
                motor_bajar         <= '0';
                llegada_piso        <= '0';
                clear_request       <= (others => '0');
                clear_request_subir <= (others => '0');
                clear_request_bajar <= (others => '0');
            elsif piso_actual_int > piso_destino_int then
                motor_subir         <= '0';
                motor_bajar         <= '1';
                llegada_piso        <= '0';
                clear_request       <= (others => '0');
                clear_request_subir <= (others => '0');
                clear_request_bajar <= (others => '0');
            elsif piso_actual_int = piso_destino_int then
                motor_subir         <= '0';
                motor_bajar         <= '0';
                llegada_piso        <= '1';
                clear_request       <= (others => '1');
                clear_request_subir <= (others => '1');
                clear_request_bajar <= (others => '1');
            else
                motor_subir         <= '0';
                motor_bajar         <= '0';
                llegada_piso        <= '0';
                clear_request       <= (others => '0');
                clear_request_subir <= (others => '0');
                clear_request_bajar <= (others => '0');
            end if;
        end if;
    end process;
end Behavioral;