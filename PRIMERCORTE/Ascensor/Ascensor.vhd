	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.NUMERIC_STD.ALL;

	entity Ascensor is
		 port(
			  -- Entradas principales
			  CLK_50MHz       : in  STD_LOGIC;      -- Reloj de 50 MHz
			  RESET           : in  STD_LOGIC;      -- Reset global
			  FALLO_ENERGIA   : in  STD_LOGIC;      -- Señal de fallo de energía

			  -- Botones externos (Piso 1 sin BAJAR, Piso 5 sin SUBIR)
			  BOTON_SUBIR     : in  STD_LOGIC_VECTOR(3 downto 0); -- SUBIR pisos 1-4 (bits 0-3)
			  BOTON_BAJAR     : in  STD_LOGIC_VECTOR(3 downto 0); -- BAJAR pisos 2-5 (bits 1-4)

			  -- Botones internos
			  BOTON_PISO_INT  : in  STD_LOGIC_VECTOR(4 downto 0); -- Botones de piso 1-5

			  -- Control de puertas
			  BOTON_ABRIR     : in  STD_LOGIC;      -- Abrir puerta manual
			  BOTON_CERRAR    : in  STD_LOGIC;      -- Cerrar puerta manual
			  NOTIFICACION    : in  STD_LOGIC;      -- Botón de notificación

			  -- Sensores de personas
			  SENSOR_ENTRA    : in  STD_LOGIC;      -- Persona entra
			  SENSOR_SALE     : in  STD_LOGIC;      -- Persona sale

			  -- Salidas de display (2 displays: interno y externo)
			  DISPLAY_INTERNO : out STD_LOGIC_VECTOR(6 downto 0); -- Display interno
			  DISPLAY_EXTERNO : out STD_LOGIC_VECTOR(6 downto 0); -- Display externo
			  DISPLAY_PERSONAS : out STD_LOGIC_VECTOR(6 downto 0);

			  -- Salidas de control
			  MOTOR_SUBIR     : out STD_LOGIC;
			  MOTOR_BAJAR     : out STD_LOGIC;
			  PUERTA          : out STD_LOGIC;
			  LLEGADA_PISO    : out STD_LOGIC;
			  SOBRECARGA      : out STD_LOGIC;

			  -- Salidas de alarmas
			  LED_PUERTA_ABI  : out STD_LOGIC;
			  LED_PUERTA_CIE  : out STD_LOGIC;
			  LED_FALLO_EN    : out STD_LOGIC;
			  LED_NOTIFVis		  : out STD_LOGIC;
			  led_notifaud    : out STD_LOGIC;
			  LED_SOBRECARGA  : out STD_LOGIC
		 );
	end Ascensor;

	architecture Behavioral of Ascensor is

		 -- Señales internas
		 signal clk_1Hz             : STD_LOGIC;
		 signal piso_actual         : STD_LOGIC_VECTOR(2 downto 0);
		 signal piso_destino        : STD_LOGIC_VECTOR(2 downto 0);
		 signal num_personas        : STD_LOGIC_VECTOR(3 downto 0);
		 signal solicitudes_subir    : STD_LOGIC_VECTOR(3 downto 0);
		 signal solicitudes_bajar    : STD_LOGIC_VECTOR(3 downto 0);
		 signal solicitudes_cabina : STD_LOGIC_VECTOR(4 downto 0);
		 signal clear_request       : STD_LOGIC_VECTOR(4 downto 0);
		 signal clear_request_subir: STD_LOGIC_VECTOR(3 downto 0);
		 signal clear_request_bajar: STD_LOGIC_VECTOR(3 downto 0);
		 signal cerrar_puerta_signal: STD_LOGIC := '0';
		 signal motor_subir_signal  : STD_LOGIC;
		 signal motor_bajar_signal  : STD_LOGIC;
		 signal sobrecarga_signal   : STD_LOGIC;
		 signal puerta_signal       : STD_LOGIC;
		 signal llegada_piso_signal: STD_LOGIC;
		 signal estado_puerta_signal : STD_LOGIC; -- Señal para el estado de la puerta

		 -- Componentes
		 component divisor
			  generic(DIVIDER : integer := 25000000);
			  port(
					CLK  : in  STD_LOGIC;
					out1 : out STD_LOGIC
			  );
		 end component;

		 component ContadorPersonas
			  port(
					clk           : in  STD_LOGIC;
					reset         : in  STD_LOGIC;
					entrar_persona: in  STD_LOGIC;
					salir_persona : in  STD_LOGIC;
					num_personas  : out STD_LOGIC_VECTOR(3 downto 0);
					luces         : out STD_LOGIC;
					sobrecarga    : out STD_LOGIC
			  );
		 end component;

		 component ControladorPuertas
			  port(
					clk          : in  STD_LOGIC;
					reset        : in  STD_LOGIC;
					llegada_piso : buffer STD_LOGIC;
					abrir_manual : in  STD_LOGIC;
					cerrar_manual: in  STD_LOGIC;
					fallo_energia: in  STD_LOGIC;
					notificacion : in  STD_LOGIC;
					puerta       : out STD_LOGIC;
					estado_puerta: out STD_LOGIC
			  );
		 end component;

		 component Alarmas
			  port(
					clk           : in  STD_LOGIC;
					reset         : in  STD_LOGIC;
					estado_puerta : in STD_LOGIC; 
					fallo_energia : in  STD_LOGIC;
					notificacion  : in  STD_LOGIC;
					sobrecarga    : in STD_LOGIC;
					led_puerta_abi: out STD_LOGIC;
					led_puerta_cie: out STD_LOGIC;
					led_fallo_en  : out STD_LOGIC;
					led_notifvis    : out STD_LOGIC;
					led_notifaud    : out STD_LOGIC;
					led_sobrecarga: out STD_LOGIC
			  );
		 end component;

		 component gestion_cabina
			  port(
					clk                : in  STD_LOGIC;
					reset              : in  STD_LOGIC;
					botones_cabina     : in  STD_LOGIC_VECTOR(4 downto 0);
					clear_request      : in  STD_LOGIC_VECTOR(4 downto 0);
					solicitudes_internas: out STD_LOGIC_VECTOR(4 downto 0)
			  );
		 end component;

		 component detectar_piso_actual
			  port(
					clk_1Hz    : in  STD_LOGIC;
					reset      : in  STD_LOGIC;
					motor_subir: buffer STD_LOGIC;
					motor_bajar: buffer STD_LOGIC;
					piso_actual: out STD_LOGIC_VECTOR(2 downto 0)
			  );
		 end component;

		 component gestion_externas
			  port(
					clk_1Hz           : in  STD_LOGIC;
					reset             : in  STD_LOGIC;
					BOTON_SUBIR       : in  STD_LOGIC_VECTOR(3 downto 0);
					BOTON_BAJAR       : in  STD_LOGIC_VECTOR(3 downto 0);
					clear_request_subir: in  STD_LOGIC_VECTOR(3 downto 0);
					clear_request_bajar: in  STD_LOGIC_VECTOR(3 downto 0);
					solicitudes_subir : out STD_LOGIC_VECTOR(3 downto 0);
					solicitudes_bajar : out STD_LOGIC_VECTOR(3 downto 0)
			  );
		 end component;

		 component identificador_direccion
			  port(
					clk_1Hz           : in  STD_LOGIC;
					rst             : in  STD_LOGIC;
					motor_subir       : buffer STD_LOGIC;
					motor_bajar       : buffer STD_LOGIC;
					solicitudes_subir : in  STD_LOGIC_VECTOR(3 downto 0);
					solicitudes_bajar : in  STD_LOGIC_VECTOR(3 downto 0);
					solicitudes_cabina: in  STD_LOGIC_VECTOR(4 downto 0);
					piso_destino      : out STD_LOGIC_VECTOR(2 downto 0)
			  );
		 end component;

		 component ControlAscensor
			  port(
					clk_1Hz           : in  STD_LOGIC;
					reset             : in  STD_LOGIC;
					piso_actual       : in  STD_LOGIC_VECTOR(2 downto 0);
					piso_destino      : in  STD_LOGIC_VECTOR(2 downto 0);
					fallo_energia     : in  STD_LOGIC;
					notificacion      : in  STD_LOGIC;
					sobrecarga        : in STD_LOGIC;
					puerta            : in STD_LOGIC;
					motor_subir       : out STD_LOGIC;
					motor_bajar       : out STD_LOGIC;
					llegada_piso      : out STD_LOGIC;
					clear_request     : out STD_LOGIC_VECTOR(4 downto 0);
					clear_request_subir: out STD_LOGIC_VECTOR(3 downto 0);
					clear_request_bajar: out STD_LOGIC_VECTOR(3 downto 0)
			  );
		 end component;

		 component Deco7seg
			  port(
					BCD : in  STD_LOGIC_VECTOR(3 downto 0);
					SEG : out STD_LOGIC_VECTOR(6 downto 0)
			  );
		 end component;

		 component Des2
			  generic(INPUT_WIDTH : integer := 4);
			  port(
					entrada : in  STD_LOGIC_VECTOR(INPUT_WIDTH - 1 downto 0);
					unidades: out STD_LOGIC_VECTOR(3 downto 0);
					decenas : out STD_LOGIC_VECTOR(3 downto 0)
			  );
		 end component;

	begin

		 -- Instancias de componentes
		 clk_divider: divisor port map (CLK => CLK_50MHz, out1 => clk_1Hz);

		 contador_personas: ContadorPersonas port map (clk_1Hz, RESET, SENSOR_ENTRA, SENSOR_SALE, num_personas, open, sobrecarga_signal);

		 controlador_puertas: ControladorPuertas port map (
			  clk => clk_1Hz,
			  reset => RESET,
			  llegada_piso => llegada_piso_signal,
			  abrir_manual => BOTON_ABRIR,
			  cerrar_manual => BOTON_CERRAR,
			  fallo_energia => FALLO_ENERGIA,
			  notificacion => NOTIFICACION,
			  puerta => puerta_signal,
			  estado_puerta => estado_puerta_signal
		 );

		 alarmas_inst: Alarmas port map (
			  clk => clk_1Hz,
			  reset => RESET,
			  estado_puerta => estado_puerta_signal, -- Corregido
			  fallo_energia => FALLO_ENERGIA,
			  notificacion => NOTIFICACION,
			  sobrecarga => sobrecarga_signal,
			  led_puerta_abi => LED_PUERTA_ABI,
			  led_puerta_cie => LED_PUERTA_CIE,
			  led_fallo_en => LED_FALLO_EN,
			  led_notifvis => LED_NOTIFvis,
			  led_notifaud => LED_NOTIFaud,
			  led_sobrecarga => LED_SOBRECARGA
		 );

		 gestion_cabina_inst: gestion_cabina port map (
			  clk => clk_1Hz,
			  reset => RESET,
			  botones_cabina => BOTON_PISO_INT,
			  clear_request => clear_request,
			  solicitudes_internas => solicitudes_cabina
		 );

		 detectar_piso_actual_inst: detectar_piso_actual port map (
			  clk_1Hz => clk_1Hz,
			  reset => RESET,
			  motor_subir => motor_subir_signal,
			  motor_bajar => motor_bajar_signal,
			  piso_actual => piso_actual
		 );

		 gestion_externas_inst: gestion_externas port map (
			  clk_1Hz => clk_1Hz,
			  reset => RESET,
			  BOTON_SUBIR => BOTON_SUBIR,
			  BOTON_BAJAR => BOTON_BAJAR,
			  clear_request_subir => clear_request_subir,
			  clear_request_bajar => clear_request_bajar,
			  solicitudes_subir => solicitudes_subir,
			  solicitudes_bajar => solicitudes_bajar
		 );

		 identificador_direccion_inst: identificador_direccion port map (
			  clk_1Hz => clk_1Hz,
			  rst => RESET,
			  motor_subir => motor_subir_signal,
			  motor_bajar => motor_bajar_signal,
			  solicitudes_subir => solicitudes_subir,
			  solicitudes_bajar => solicitudes_bajar,
			  solicitudes_cabina => solicitudes_cabina,
			  piso_destino => piso_destino
		 );

		 control_ascensor_inst: ControlAscensor port map (
			  clk_1Hz => clk_1Hz,
			  reset => RESET,
			  piso_actual => piso_actual,
			  piso_destino => piso_destino,
			  fallo_energia => FALLO_ENERGIA,
			  notificacion => NOT NOTIFICACION,
			  sobrecarga => sobrecarga_signal,
			  puerta => puerta_signal,
			  motor_subir => motor_subir_signal,
			  motor_bajar => motor_bajar_signal,
			  llegada_piso => llegada_piso_signal,
			  clear_request => clear_request,
			  clear_request_subir => clear_request_subir,
			  clear_request_bajar => clear_request_bajar
		 );

		 -- Instancias de displays
		 display_interno_inst: Deco7seg port map (
			  BCD => STD_LOGIC_VECTOR(resize(unsigned(piso_actual), 4)),
			  SEG => DISPLAY_INTERNO
		 );
		 display_externo_inst: Deco7seg port map (
			  BCD => STD_LOGIC_VECTOR(resize(unsigned(piso_destino), 4)),
			  SEG => DISPLAY_EXTERNO
		 );
		 display_personas_inst: Deco7seg port map (
			  BCD => num_personas,
			  SEG => DISPLAY_PERSONAS
		 );


	end Behavioral;