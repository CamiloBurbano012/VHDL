library verilog;
use verilog.vl_types.all;
entity Ascensor_vlg_sample_tst is
    port(
        BOTON_ABRIR     : in     vl_logic;
        BOTON_BAJAR     : in     vl_logic_vector(3 downto 0);
        BOTON_CERRAR    : in     vl_logic;
        BOTON_PISO_INT  : in     vl_logic_vector(4 downto 0);
        BOTON_SUBIR     : in     vl_logic_vector(3 downto 0);
        CLK_50MHz       : in     vl_logic;
        FALLO_ENERGIA   : in     vl_logic;
        NOTIFICACION    : in     vl_logic;
        RESET           : in     vl_logic;
        SENSOR_ENTRA    : in     vl_logic;
        SENSOR_SALE     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Ascensor_vlg_sample_tst;
