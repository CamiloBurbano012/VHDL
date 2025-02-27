library verilog;
use verilog.vl_types.all;
entity Panel_Fabrica_vlg_sample_tst is
    port(
        silo_a          : in     vl_logic;
        silo_b          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Panel_Fabrica_vlg_sample_tst;
