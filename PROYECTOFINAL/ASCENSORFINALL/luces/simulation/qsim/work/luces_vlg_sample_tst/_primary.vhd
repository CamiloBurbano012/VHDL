library verilog;
use verilog.vl_types.all;
entity luces_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sensor_inactivo : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end luces_vlg_sample_tst;
