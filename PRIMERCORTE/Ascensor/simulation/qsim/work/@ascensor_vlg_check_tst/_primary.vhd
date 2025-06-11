library verilog;
use verilog.vl_types.all;
entity Ascensor_vlg_check_tst is
    port(
        DISPLAY_EXTERNO : in     vl_logic_vector(6 downto 0);
        DISPLAY_INTERNO : in     vl_logic_vector(6 downto 0);
        DISPLAY_PERSONAS: in     vl_logic_vector(6 downto 0);
        LED_FALLO_EN    : in     vl_logic;
        LED_NOTIF       : in     vl_logic;
        LED_PUERTA_ABI  : in     vl_logic;
        LED_PUERTA_CIE  : in     vl_logic;
        LED_SOBRECARGA  : in     vl_logic;
        LLEGADA_PISO    : in     vl_logic;
        MOTOR_BAJAR     : in     vl_logic;
        MOTOR_SUBIR     : in     vl_logic;
        PUERTA          : in     vl_logic;
        SOBRECARGA      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Ascensor_vlg_check_tst;
