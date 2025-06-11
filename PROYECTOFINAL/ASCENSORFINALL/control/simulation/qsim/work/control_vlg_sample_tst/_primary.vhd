library verilog;
use verilog.vl_types.all;
entity control_vlg_sample_tst is
    port(
        boton_abrir     : in     vl_logic;
        boton_cerrar    : in     vl_logic;
        boton_notificar : in     vl_logic;
        botones_bajar   : in     vl_logic_vector(4 downto 0);
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        botones_subir   : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        fin_timer       : in     vl_logic;
        people_count    : in     vl_logic_vector(4 downto 0);
        power_fail      : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end control_vlg_sample_tst;
