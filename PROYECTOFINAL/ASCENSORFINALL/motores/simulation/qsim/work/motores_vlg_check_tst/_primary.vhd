library verilog;
use verilog.vl_types.all;
entity motores_vlg_check_tst is
    port(
        in1_motor       : in     vl_logic;
        in2_motor       : in     vl_logic;
        pwm_motor       : in     vl_logic;
        pwm_puerta      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end motores_vlg_check_tst;
