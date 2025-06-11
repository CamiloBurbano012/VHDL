library verilog;
use verilog.vl_types.all;
entity puerta is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        enable          : in     vl_logic;
        abrir           : in     vl_logic;
        cerrar          : in     vl_logic;
        fallo_energia   : in     vl_logic;
        puerta_abierta  : out    vl_logic;
        puerta_cerrada  : out    vl_logic;
        alarma_sonora   : out    vl_logic;
        alarma_visual   : out    vl_logic
    );
end puerta;
