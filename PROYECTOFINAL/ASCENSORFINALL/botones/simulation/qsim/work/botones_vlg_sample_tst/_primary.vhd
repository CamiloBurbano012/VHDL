library verilog;
use verilog.vl_types.all;
entity botones_vlg_sample_tst is
    port(
        boton_abrir     : in     vl_logic;
        boton_cerrar    : in     vl_logic;
        boton_notificar : in     vl_logic;
        botones_bajar   : in     vl_logic_vector(4 downto 0);
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        botones_subir   : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end botones_vlg_sample_tst;
