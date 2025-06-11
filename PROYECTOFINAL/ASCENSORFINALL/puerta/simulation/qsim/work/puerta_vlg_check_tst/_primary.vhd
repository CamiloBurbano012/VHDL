library verilog;
use verilog.vl_types.all;
entity puerta_vlg_check_tst is
    port(
        alarma_sonora   : in     vl_logic;
        alarma_visual   : in     vl_logic;
        puerta_abierta  : in     vl_logic;
        puerta_cerrada  : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end puerta_vlg_check_tst;
