library verilog;
use verilog.vl_types.all;
entity botones is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        botones_subir   : in     vl_logic_vector(4 downto 0);
        botones_bajar   : in     vl_logic_vector(4 downto 0);
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        boton_abrir     : in     vl_logic;
        boton_cerrar    : in     vl_logic;
        boton_notificar : in     vl_logic;
        botones_subir_filtrados: out    vl_logic_vector(4 downto 0);
        botones_bajar_filtrados: out    vl_logic_vector(4 downto 0);
        botones_cabina_filtrados: out    vl_logic_vector(4 downto 0);
        boton_abrir_filtrado: out    vl_logic;
        boton_cerrar_filtrado: out    vl_logic;
        boton_notificar_filtrado: out    vl_logic
    );
end botones;
