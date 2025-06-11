library verilog;
use verilog.vl_types.all;
entity alarmas is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        puerta_abriendo : in     vl_logic;
        puerta_cerrando : in     vl_logic;
        sobrecarga      : in     vl_logic;
        fallo_energia   : in     vl_logic;
        alarma_sonora   : out    vl_logic;
        alarma_visual   : out    vl_logic
    );
end alarmas;
