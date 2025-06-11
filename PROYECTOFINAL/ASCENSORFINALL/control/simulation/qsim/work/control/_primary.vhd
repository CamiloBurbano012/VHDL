library verilog;
use verilog.vl_types.all;
entity control is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        botones_subir   : in     vl_logic_vector(4 downto 0);
        botones_bajar   : in     vl_logic_vector(4 downto 0);
        botones_cabina  : in     vl_logic_vector(4 downto 0);
        boton_abrir     : in     vl_logic;
        boton_cerrar    : in     vl_logic;
        boton_notificar : in     vl_logic;
        people_count    : in     vl_logic_vector(4 downto 0);
        power_fail      : in     vl_logic;
        fin_timer       : in     vl_logic;
        abrir_puerta    : out    vl_logic;
        cerrar_puerta   : out    vl_logic;
        alarma_sonora   : out    vl_logic;
        alarma_visual   : out    vl_logic;
        luz_interior    : out    vl_logic;
        mover_subir     : out    vl_logic;
        mover_bajar     : out    vl_logic;
        piso_actual     : out    vl_logic_vector(2 downto 0)
    );
end control;
