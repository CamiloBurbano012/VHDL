library verilog;
use verilog.vl_types.all;
entity Ascensor is
    port(
        CLK_50MHz       : in     vl_logic;
        RESET           : in     vl_logic;
        FALLO_ENERGIA   : in     vl_logic;
        BOTON_SUBIR     : in     vl_logic_vector(3 downto 0);
        BOTON_BAJAR     : in     vl_logic_vector(3 downto 0);
        BOTON_PISO_INT  : in     vl_logic_vector(4 downto 0);
        BOTON_ABRIR     : in     vl_logic;
        BOTON_CERRAR    : in     vl_logic;
        NOTIFICACION    : in     vl_logic;
        SENSOR_ENTRA    : in     vl_logic;
        SENSOR_SALE     : in     vl_logic;
        DISPLAY_INTERNO : out    vl_logic_vector(6 downto 0);
        DISPLAY_EXTERNO : out    vl_logic_vector(6 downto 0);
        DISPLAY_PERSONAS: out    vl_logic_vector(6 downto 0);
        MOTOR_SUBIR     : out    vl_logic;
        MOTOR_BAJAR     : out    vl_logic;
        PUERTA          : out    vl_logic;
        LLEGADA_PISO    : out    vl_logic;
        SOBRECARGA      : out    vl_logic;
        LED_PUERTA_ABI  : out    vl_logic;
        LED_PUERTA_CIE  : out    vl_logic;
        LED_FALLO_EN    : out    vl_logic;
        LED_NOTIF       : out    vl_logic;
        LED_SOBRECARGA  : out    vl_logic
    );
end Ascensor;
