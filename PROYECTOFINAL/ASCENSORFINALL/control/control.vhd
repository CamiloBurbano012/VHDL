library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
Port (
    clk : in std_logic;
    reset : in std_logic;
    ram_empty : in std_logic;
    ram_data_out : in STD_LOGIC_VECTOR(2 downto 0);
    personas_actuales: in integer range 0 to 10;
    fallo_energia : in std_logic;
    timer_puerta_done : in std_logic;
    timer_cierre_puerta_done : in std_logic;
    timer_piso_done : in std_logic;
    sensor_ir_puerta : in std_logic; 
    piso_actual : in integer range 0 to 4;
    boton_abrir_debounced : in std_logic;
    boton_cerrar_debounced : in std_logic;
    boton_emergencia_debounced : in std_logic; 
    cmd_abrir_puerta : out std_logic;
    cmd_cerrar_puerta: out std_logic;
    motor_subir : out std_logic;
    motor_bajar : out std_logic;
    piso_destino : out integer range 0 to 4;
    ram_re : out std_logic;
    alarma_sonora_fsm : out std_logic;
    alarma_visual_fsm : out std_logic;
    luces_cabina_fsm : out std_logic
);
end control;

architecture Behavioral of control is

    type estado_ascensor_fsm is (
        INICIO,
        ESPERANDO_LLAMADA,
        LEYENDO_DESTINO,
        CALCULANDO_DIRECCION,
        MOVIENDO,
        LLEGADA_PISO,
        PUERTA_ABRIENDO,
        PUERTA_ABIERTA_ESPERA,
        PUERTA_CERRANDO,
        SOBREPESO,
        EMERGENCIA
    );
    signal estado_actual, siguiente_estado : estado_ascensor_fsm;
    signal reg_piso_destino : integer range 0 to 4 := 0;
    signal next_piso_destino : integer range 0 to 4;
    signal motor_subir_int : STD_LOGIC;
    signal motor_bajar_int : STD_LOGIC;

begin

    process(clk, reset)
    begin
        if reset = '1' then
            estado_actual <= INICIO;
            reg_piso_destino <= 0;
        elsif rising_edge(clk) then
            estado_actual <= siguiente_estado;
            reg_piso_destino <= next_piso_destino;
        end if;
    end process;
	 
    process(estado_actual, ram_empty, ram_data_out, piso_actual, reg_piso_destino, 
            personas_actuales, fallo_energia, timer_puerta_done, timer_cierre_puerta_done,
            timer_piso_done, sensor_ir_puerta,
            boton_abrir_debounced, boton_cerrar_debounced, boton_emergencia_debounced)
    begin
        siguiente_estado <= estado_actual;
        cmd_abrir_puerta <= '0';
        cmd_cerrar_puerta <= '0';
        motor_subir_int <= '0';
        motor_bajar_int <= '0';
        ram_re <= '0';
        alarma_sonora_fsm <= '0';
        alarma_visual_fsm <= '0';
        luces_cabina_fsm <= '0';

        next_piso_destino <= reg_piso_destino;

        if fallo_energia = '1' or boton_emergencia_debounced = '1' then
            siguiente_estado <= EMERGENCIA;
            cmd_abrir_puerta <= '0';
            cmd_cerrar_puerta <= '0';
            motor_subir_int <= '0';
            motor_bajar_int <= '0';
            ram_re <= '0';
            alarma_sonora_fsm <= '1';
            alarma_visual_fsm <= '1';
            luces_cabina_fsm <= '0';
        else 
            case estado_actual is
                when INICIO =>
                    siguiente_estado <= ESPERANDO_LLAMADA;
                    luces_cabina_fsm <= '1';

                when ESPERANDO_LLAMADA =>
                    luces_cabina_fsm <= '1';
                    if personas_actuales > 10 then
                        siguiente_estado <= SOBREPESO;
                    elsif ram_empty = '0' then
                        siguiente_estado <= LEYENDO_DESTINO;
                    elsif boton_abrir_debounced = '1' and piso_actual = reg_piso_destino then
                        siguiente_estado <= PUERTA_ABRIENDO;
                    else
                        siguiente_estado <= ESPERANDO_LLAMADA;
                    end if;

                when LEYENDO_DESTINO =>
                    ram_re <= '1';
                    next_piso_destino <= to_integer(unsigned(ram_data_out));
                    siguiente_estado <= CALCULANDO_DIRECCION;
                    luces_cabina_fsm <= '1';

                when CALCULANDO_DIRECCION =>
                    luces_cabina_fsm <= '1';
                    if piso_actual < reg_piso_destino then
                        motor_subir_int <= '1';
                        siguiente_estado <= MOVIENDO;
                    elsif piso_actual > reg_piso_destino then
                        motor_bajar_int <= '1';
                        siguiente_estado <= MOVIENDO;
                    else
                        siguiente_estado <= PUERTA_ABRIENDO;
                    end if;

                when MOVIENDO =>
                    luces_cabina_fsm <= '1';
                    if personas_actuales > 10 then
                        siguiente_estado <= SOBREPESO;
                    elsif timer_piso_done = '1' then
                        if piso_actual = reg_piso_destino then
                           siguiente_estado <= LLEGADA_PISO;
                        else
                           siguiente_estado <= CALCULANDO_DIRECCION;
                        end if;
                    else
                        if piso_actual < reg_piso_destino then
                            motor_subir_int <= '1';
                        elsif piso_actual > reg_piso_destino then
                            motor_bajar_int <= '1';
                        end if;
                        siguiente_estado <= MOVIENDO;
                    end if;

                when LLEGADA_PISO =>
                    luces_cabina_fsm <= '1';
                    siguiente_estado <= PUERTA_ABRIENDO;

                when PUERTA_ABRIENDO =>
                    cmd_abrir_puerta <= '1';
                    luces_cabina_fsm <= '1';
                    siguiente_estado <= PUERTA_ABIERTA_ESPERA;

                when PUERTA_ABIERTA_ESPERA =>
                    cmd_abrir_puerta <= '1';
                    luces_cabina_fsm <= '1';
                    if personas_actuales > 10 then
                        siguiente_estado <= SOBREPESO;
                    elsif boton_cerrar_debounced = '1' and sensor_ir_puerta = '1' then 
                        siguiente_estado <= PUERTA_CERRANDO;
                    elsif timer_cierre_puerta_done = '1' and sensor_ir_puerta = '1' then
                        siguiente_estado <= PUERTA_CERRANDO;
                    elsif sensor_ir_puerta = '0' then 
                        siguiente_estado <= PUERTA_ABIERTA_ESPERA;
                    else
                        siguiente_estado <= PUERTA_ABIERTA_ESPERA;
                    end if;

                when PUERTA_CERRANDO =>
                    cmd_cerrar_puerta <= '1';
                    luces_cabina_fsm <= '1';
                    siguiente_estado <= ESPERANDO_LLAMADA;

                when SOBREPESO =>
                    motor_subir_int <= '0';
                    motor_bajar_int <= '0';
                    cmd_abrir_puerta <= '1';
                    alarma_sonora_fsm <= '1';
                    alarma_visual_fsm <= '1';
                    luces_cabina_fsm <= '1';
                    if personas_actuales <= 10 then
                        alarma_sonora_fsm <= '0';
                        alarma_visual_fsm <= '0';
                        siguiente_estado <= PUERTA_ABIERTA_ESPERA; 
                    else
                        siguiente_estado <= SOBREPESO;
                    end if;

                when EMERGENCIA =>
                    if fallo_energia = '0' and boton_emergencia_debounced = '0' then
                        siguiente_estado <= INICIO;
                    else
                        siguiente_estado <= EMERGENCIA;
                    end if;

                when others =>
                    siguiente_estado <= INICIO;
            end case;
        end if; 
    end process;

    piso_destino <= reg_piso_destino;
    motor_subir <= motor_subir_int;
    motor_bajar <= motor_bajar_int;

end Behavioral;