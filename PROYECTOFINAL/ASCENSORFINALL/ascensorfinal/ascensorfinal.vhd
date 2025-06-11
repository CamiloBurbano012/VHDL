library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ascensorfinal is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;

        botones_subir_piso : in STD_LOGIC_VECTOR(4 downto 0);
        botones_bajar_piso : in STD_LOGIC_VECTOR(4 downto 0);
        botones_cabina : in STD_LOGIC_VECTOR(4 downto 0);
        boton_abrir : in STD_LOGIC;
        boton_cerrar : in STD_LOGIC;
        boton_emergencia : in STD_LOGIC;

        switch_entrada_personas : in STD_LOGIC;
        switch_salida_personas : in STD_LOGIC;

        fallo_energia : in STD_LOGIC;
        ir_sensors : in STD_LOGIC_VECTOR(4 downto 0);

        pwm_motor : out STD_LOGIC;
        in1_motor : out STD_LOGIC;
        in2_motor : out STD_LOGIC;

        puerta_abierta : out STD_LOGIC;
        luces_cabina : out STD_LOGIC;
        alarma_sonora : out STD_LOGIC;
        alarma_visual : out STD_LOGIC;
        luz_emergencia_out : out STD_LOGIC;

        display_piso0 : out STD_LOGIC_VECTOR(6 downto 0);
        display_piso1 : out STD_LOGIC_VECTOR(6 downto 0);
        display_piso2 : out STD_LOGIC_VECTOR(6 downto 0);
        display_piso3 : out STD_LOGIC_VECTOR(6 downto 0);
        display_piso4 : out STD_LOGIC_VECTOR(6 downto 0);
        display_interno : out STD_LOGIC_VECTOR(6 downto 0)
    );
end ascensorfinal;

architecture Behavioral of ascensorfinal is

    constant CLK_FREQUENCY_HZ      : integer := 1_000_000;
    constant DEBOUNCE_DELAY_MS     : integer := 50;
    constant TIEMPO_ENTRE_PISOS_S  : integer := 5;
    constant TIEMPO_ESPERA_PUERTA_S: integer := 10;
    constant TIEMPO_CIERRE_PUERTA_S: integer := 45;
    constant TIEMPO_ENTRE_PISOS_COUNT  : integer := TIEMPO_ENTRE_PISOS_S * CLK_FREQUENCY_HZ;
    constant TIEMPO_ESPERA_PUERTA_COUNT: integer := TIEMPO_ESPERA_PUERTA_S * CLK_FREQUENCY_HZ;
    constant TIEMPO_CIERRE_PUERTA_COUNT: integer := TIEMPO_CIERRE_PUERTA_S * CLK_FREQUENCY_HZ;

    component control
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
    end component;

    component botones
    Port (
        clk : in std_logic;
        reset : in std_logic;
        botones_subir : in std_logic_vector(4 downto 0);
        botones_bajar : in std_logic_vector(4 downto 0);
        botones_cabina : in std_logic_vector(4 downto 0);
        subir_filtrado : out std_logic_vector(4 downto 0);
        bajar_filtrado : out std_logic_vector(4 downto 0);
        cabina_filtrado : out std_logic_vector(4 downto 0)
    );
    end component;

    component Debounce_Button
    generic (
        DEBOUNCE_TIME_MS : integer := 50;
        CLK_FREQ_HZ      : integer := 50_000_000
    );
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        button_in: in  STD_LOGIC;
        button_out: out STD_LOGIC
    );
    end component;

    component personas
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        personas_entraron  : in  INTEGER range 0 to 10;
        personas_salieron  : in  INTEGER range 0 to 10;
        sobrepeso : out STD_LOGIC;
        personas_actuales : out INTEGER range 0 to 10
    );
    end component;

    component motores
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC;
        piso_actual  : in  STD_LOGIC_VECTOR(2 downto 0); 
        piso_destino : in  STD_LOGIC_VECTOR(2 downto 0); 
        pwm_motor    : out STD_LOGIC;
        in1_motor    : out STD_LOGIC;
        in2_motor    : out STD_LOGIC
    );
    end component;

    component puerta
    Port (
        clk : in std_logic;
        reset : in std_logic;
        abrir : in std_logic;
        cerrar : in std_logic;
        fallo_energia : in std_logic;
        sobrecarga : in std_logic;
        puerta_abierta: out std_logic;
        alarma_sonora : out std_logic;
        alarma_visual : out std_logic
    );
    end component;

    component sensor
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        ir_sensors : in STD_LOGIC_VECTOR(4 downto 0);
        piso_actual : out STD_LOGIC_VECTOR(2 downto 0);
        error : out STD_LOGIC
    );
    end component;

    component alarmas
    Port(
        clk             : in std_logic;
        reset           : in std_logic;
        puerta_abriendo : in std_logic;
        puerta_cerrando : in std_logic;
        sobrecarga      : in std_logic;
        fallo_energia   : in std_logic;
        alarma_sonora   : out std_logic;
        alarma_visual   : out std_logic
    );
    end component;
    
    component luces
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        estado_ascensor : in STD_LOGIC_VECTOR(2 downto 0);
        luz_cabina : out STD_LOGIC;
        luz_emergencia : out STD_LOGIC
    );
    end component;

    component Display
    Port (
        piso : in INTEGER range 0 to 4;
        display : out STD_LOGIC_VECTOR(6 downto 0)
    );
    end component;

    component Timer
    generic (
        TIMER_DURATION : INTEGER
    );
    Port (
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        start    : in  STD_LOGIC;
        done     : out STD_LOGIC
    );
    end component;

    component memoria
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        we       : in  STD_LOGIC;
        re       : in  STD_LOGIC;
        data_in  : in  STD_LOGIC_VECTOR(2 downto 0);
        data_out : out STD_LOGIC_VECTOR(2 downto 0);
        empty    : out STD_LOGIC;
        full     : out STD_LOGIC
    );
    end component;

    signal timer_puerta_done_sig  : STD_LOGIC;
    signal timer_cierre_puerta_done_sig : STD_LOGIC;
    signal timer_piso_done_sig    : STD_LOGIC;

    signal piso_actual_int         : integer range 0 to 4 := 0;
    signal piso_destino_int        : integer range 0 to 4;
    signal cmd_abrir_puerta_ctrl   : STD_LOGIC;
    signal cmd_cerrar_puerta_ctrl  : STD_LOGIC;
    signal motor_subiendo_ctrl     : STD_LOGIC;
    signal motor_bajando_ctrl      : STD_LOGIC;
    signal ram_re_ctrl             : STD_LOGIC;
    signal alarma_sonora_fsm_ctrl  : STD_LOGIC;
    signal alarma_visual_fsm_ctrl  : STD_LOGIC;
    signal luces_cabina_fsm_ctrl   : STD_LOGIC;

    signal personas_actuales_sig   : INTEGER range 0 to 10;
    signal sobrepeso_sig           : STD_LOGIC;
    signal entrada_persona_pulso_reg : STD_LOGIC := '0';
    signal salida_persona_pulso_reg  : STD_LOGIC := '0';
    signal entrada_persona_pulso_int : INTEGER range 0 to 1 := 0;
    signal salida_persona_pulso_int  : INTEGER range 0 to 1 := 0;

    signal puerta_abierta_sig      : STD_LOGIC;
    signal puerta_abriendo_sig     : STD_LOGIC;
    signal puerta_cerrando_sig     : STD_LOGIC;
    signal sensor_ir_puerta_sig    : STD_LOGIC;

    signal botones_subir_filt      : STD_LOGIC_VECTOR(4 downto 0);
    signal botones_bajar_filt      : STD_LOGIC_VECTOR(4 downto 0);
    signal botones_cabina_filt     : STD_LOGIC_VECTOR(4 downto 0);
    signal boton_abrir_debounced   : STD_LOGIC;
    signal boton_cerrar_debounced  : STD_LOGIC;
    signal boton_emergencia_debounced : STD_LOGIC;

    signal ram_we_sig              : STD_LOGIC;
    signal ram_data_in_vec         : STD_LOGIC_VECTOR(2 downto 0);
    signal ram_data_out_vec        : STD_LOGIC_VECTOR(2 downto 0);
    signal ram_empty_sig           : STD_LOGIC;
    signal ram_full_sig            : STD_LOGIC;

    signal error_sensor            : STD_LOGIC;
    signal piso_sensor_vec         : STD_LOGIC_VECTOR(2 downto 0);

    signal estado_ascensor_luces   : STD_LOGIC_VECTOR(2 downto 0) := "000";


begin
    sensor_ir_puerta_sig <= ir_sensors(0);
    puerta_abierta <= puerta_abierta_sig;

    u_botones: botones port map (
        clk => clk,
        reset => reset,
        botones_subir => botones_subir_piso,
        botones_bajar => botones_bajar_piso,
        botones_cabina => botones_cabina,
        subir_filtrado => botones_subir_filt,
        bajar_filtrado => botones_bajar_filt,
        cabina_filtrado => botones_cabina_filt
    );

    u_debounce_abrir: Debounce_Button
        generic map (DEBOUNCE_TIME_MS => DEBOUNCE_DELAY_MS, CLK_FREQ_HZ => CLK_FREQUENCY_HZ)
        port map (
            clk => clk,
            reset => reset,
            button_in => boton_abrir,
            button_out => boton_abrir_debounced
        );

    u_debounce_cerrar: Debounce_Button
        generic map (DEBOUNCE_TIME_MS => DEBOUNCE_DELAY_MS, CLK_FREQ_HZ => CLK_FREQUENCY_HZ)
        port map (
            clk => clk,
            reset => reset,
            button_in => boton_cerrar,
            button_out => boton_cerrar_debounced
        );

    u_debounce_emergencia: Debounce_Button
        generic map (DEBOUNCE_TIME_MS => DEBOUNCE_DELAY_MS, CLK_FREQ_HZ => CLK_FREQUENCY_HZ)
        port map (
            clk => clk,
            reset => reset,
            button_in => boton_emergencia,
            button_out => boton_emergencia_debounced
        );

    process(clk, reset)
    begin
        if reset = '1' then
            ram_we_sig <= '0';
        elsif rising_edge(clk) then
            ram_we_sig <= '0';
            if ram_full_sig = '0' then
                for i in 0 to 4 loop
                    if botones_cabina_filt(i) = '1' then
                        ram_data_in_vec <= STD_LOGIC_VECTOR(to_unsigned(i, ram_data_in_vec'length));
                        ram_we_sig <= '1';
                        exit;
                    elsif botones_subir_filt(i) = '1' then
                        ram_data_in_vec <= STD_LOGIC_VECTOR(to_unsigned(i, ram_data_in_vec'length));
                        ram_we_sig <= '1';
                        exit;
                    elsif botones_bajar_filt(i) = '1' then
                        ram_data_in_vec <= STD_LOGIC_VECTOR(to_unsigned(i, ram_data_in_vec'length));
                        ram_we_sig <= '1';
                        exit;
                    end if;
                end loop;
            end if;
        end if;
    end process;


    u_memoria: memoria port map (
        clk => clk,
        reset => reset,
        we => ram_we_sig,
        re => ram_re_ctrl,
        data_in => ram_data_in_vec,
        data_out => ram_data_out_vec,
        empty => ram_empty_sig,
        full => ram_full_sig
    );

    u_control: control port map (
        clk => clk,
        reset => reset,
        ram_empty => ram_empty_sig,
        ram_data_out => ram_data_out_vec,
        personas_actuales => personas_actuales_sig,
        fallo_energia => fallo_energia,
        timer_puerta_done => timer_puerta_done_sig,
        timer_cierre_puerta_done => timer_cierre_puerta_done_sig, 
        timer_piso_done => timer_piso_done_sig,
        sensor_ir_puerta => sensor_ir_puerta_sig,

        piso_actual => piso_actual_int, 

        boton_abrir_debounced => boton_abrir_debounced,
        boton_cerrar_debounced => boton_cerrar_debounced, 
        boton_emergencia_debounced => boton_emergencia_debounced,

        cmd_abrir_puerta => cmd_abrir_puerta_ctrl,
        cmd_cerrar_puerta => cmd_cerrar_puerta_ctrl,
        motor_subir => motor_subiendo_ctrl,
        motor_bajar => motor_bajando_ctrl,
        piso_destino => piso_destino_int,
        ram_re => ram_re_ctrl,
        alarma_sonora_fsm => alarma_sonora_fsm_ctrl,
        alarma_visual_fsm => alarma_visual_fsm_ctrl,
        luces_cabina_fsm => luces_cabina_fsm_ctrl
    );

    process(clk, reset)
    begin
        if reset = '1' or fallo_energia = '1' then
            piso_actual_int <= 0;
        elsif rising_edge(clk) then
            if (motor_subiendo_ctrl = '1' or motor_bajando_ctrl = '1') and timer_piso_done_sig = '1' then
                if piso_actual_int < 4 and motor_subiendo_ctrl = '1' then
                    piso_actual_int <= piso_actual_int + 1;
                elsif piso_actual_int > 0 and motor_bajando_ctrl = '1' then
                    piso_actual_int <= piso_actual_int - 1;
                end if;
            end if;
        end if;
    end process;


    u_personas: personas port map (
        clk => clk,
        rst => reset,
        personas_entraron => entrada_persona_pulso_int,
        personas_salieron => salida_persona_pulso_int,
        sobrepeso => sobrepeso_sig,
        personas_actuales => personas_actuales_sig
    );

    process(clk, reset)
    begin
        if reset = '1' then
            entrada_persona_pulso_reg <= '0';
            salida_persona_pulso_reg <= '0';
            entrada_persona_pulso_int <= 0;
            salida_persona_pulso_int <= 0;
        elsif rising_edge(clk) then
            entrada_persona_pulso_int <= 0;
            salida_persona_pulso_int <= 0;

            if switch_entrada_personas = '1' and entrada_persona_pulso_reg = '0' then
                entrada_persona_pulso_int <= 1;
            end if;
            entrada_persona_pulso_reg <= switch_entrada_personas;

            if switch_salida_personas = '1' and salida_persona_pulso_reg = '0' then
                salida_persona_pulso_int <= 1;
            end if;
            salida_persona_pulso_reg <= switch_salida_personas;
        end if;
    end process;

    u_motores: motores port map (
        clk          => clk,
        reset        => reset or fallo_energia,
        piso_actual  => STD_LOGIC_VECTOR(to_unsigned(piso_actual_int, 3)), 
        piso_destino => STD_LOGIC_VECTOR(to_unsigned(piso_destino_int, 3)),
        pwm_motor    => pwm_motor,
        in1_motor    => in1_motor,
        in2_motor    => in2_motor
    );

    u_puerta: puerta port map (
        clk => clk,
        reset => reset,
        abrir => cmd_abrir_puerta_ctrl,
        cerrar => cmd_cerrar_puerta_ctrl,
        fallo_energia => fallo_energia,
        sobrecarga => sobrepeso_sig,
        puerta_abierta => puerta_abierta_sig,
        alarma_sonora => open,
        alarma_visual => open
    );
    puerta_abriendo_sig <= cmd_abrir_puerta_ctrl;
    puerta_cerrando_sig <= cmd_cerrar_puerta_ctrl;

    u_sensor: sensor port map (
        clk => clk,
        reset => reset,
        ir_sensors => ir_sensors,
        piso_actual => piso_sensor_vec,
        error => error_sensor
    );

    u_alarmas: alarmas port map (
        clk => clk,
        reset => reset,
        puerta_abriendo => puerta_abriendo_sig,
        puerta_cerrando => puerta_cerrando_sig,
        sobrecarga => sobrepeso_sig,
        fallo_energia => fallo_energia or boton_emergencia_debounced,
        alarma_sonora => alarma_sonora,
        alarma_visual => alarma_visual
    );

    process(piso_actual_int, motor_subiendo_ctrl, motor_bajando_ctrl, puerta_abierta_sig,
            fallo_energia, sobrepeso_sig, boton_emergencia_debounced, luces_cabina_fsm_ctrl)
    begin
        estado_ascensor_luces <= "000";

        if fallo_energia = '1' or boton_emergencia_debounced = '1' then
            estado_ascensor_luces <= "100";
        elsif sobrepeso_sig = '1' then
            estado_ascensor_luces <= "101";
        elsif motor_subiendo_ctrl = '1' then
            estado_ascensor_luces <= "010";
        elsif motor_bajando_ctrl = '1' then
            estado_ascensor_luces <= "001";
        elsif puerta_abierta_sig = '1' then
            estado_ascensor_luces <= "011";
        else
            estado_ascensor_luces <= "000";
        end if;
    end process;

    u_luces: luces port map (
        clk => clk,
        reset => reset,
        estado_ascensor => estado_ascensor_luces,
        luz_cabina => luces_cabina,
        luz_emergencia => luz_emergencia_out
    );

    u_display_piso0: Display port map (piso => 0, display => display_piso0);
    u_display_piso1: Display port map (piso => 1, display => display_piso1);
    u_display_piso2: Display port map (piso => 2, display => display_piso2);
    u_display_piso3: Display port map (piso => 3, display => display_piso3);
    u_display_piso4: Display port map (piso => 4, display => display_piso4);

    u_display_interno: Display port map (
        piso => piso_actual_int,
        display => display_interno
    );

    timer_espera_puerta: Timer
        generic map (TIMER_DURATION => TIEMPO_ESPERA_PUERTA_COUNT) 
        port map (
            clk => clk,
            rst => reset or fallo_energia,
            start => cmd_abrir_puerta_ctrl and puerta_abierta_sig,
            done => timer_puerta_done_sig
        );

    timer_cierre_puerta: Timer
        generic map (TIMER_DURATION => TIEMPO_CIERRE_PUERTA_COUNT)
        port map (
            clk => clk,
            rst => reset or fallo_energia,
            start => cmd_abrir_puerta_ctrl and puerta_abierta_sig,
            done => timer_cierre_puerta_done_sig
        );

    timer_movimiento_piso: Timer
        generic map (TIMER_DURATION => TIEMPO_ENTRE_PISOS_COUNT)
        port map (
            clk => clk,
            rst => reset or fallo_energia,
            start => (motor_subiendo_ctrl or motor_bajando_ctrl),
            done => timer_piso_done_sig
        );

end Behavioral;
