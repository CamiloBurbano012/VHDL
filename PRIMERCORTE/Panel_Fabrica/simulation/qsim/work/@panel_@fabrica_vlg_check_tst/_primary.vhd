library verilog;
use verilog.vl_types.all;
entity Panel_Fabrica_vlg_check_tst is
    port(
        alarma          : in     vl_logic;
        luz_c           : in     vl_logic;
        luz_d           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Panel_Fabrica_vlg_check_tst;
