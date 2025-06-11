library verilog;
use verilog.vl_types.all;
entity motores is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        piso_actual     : in     vl_logic_vector(4 downto 0);
        piso_destino    : in     vl_logic_vector(4 downto 0);
        puerta_cmd      : in     vl_logic;
        mover           : in     vl_logic;
        pwm_motor       : out    vl_logic;
        in1_motor       : out    vl_logic;
        in2_motor       : out    vl_logic;
        pwm_puerta      : out    vl_logic
    );
end motores;
