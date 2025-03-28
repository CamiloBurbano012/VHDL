library verilog;
use verilog.vl_types.all;
entity ascensor is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        llamada_piso    : in     vl_logic_vector(4 downto 0);
        seleccion_piso  : in     vl_logic_vector(4 downto 0);
        personas        : in     vl_logic_vector(3 downto 0);
        falla_energia   : in     vl_logic;
        piso_actual     : out    vl_logic_vector(2 downto 0);
        luz_puerta      : out    vl_logic;
        alarma_sonora   : out    vl_logic;
        destino_piso    : out    vl_logic_vector(2 downto 0)
    );
end ascensor;
