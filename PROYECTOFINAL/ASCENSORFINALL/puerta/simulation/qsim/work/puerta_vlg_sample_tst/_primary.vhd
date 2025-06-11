library verilog;
use verilog.vl_types.all;
entity puerta_vlg_sample_tst is
    port(
        abrir           : in     vl_logic;
        cerrar          : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        fallo_energia   : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end puerta_vlg_sample_tst;
