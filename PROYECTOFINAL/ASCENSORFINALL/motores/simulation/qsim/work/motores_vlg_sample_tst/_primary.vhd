library verilog;
use verilog.vl_types.all;
entity motores_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        mover           : in     vl_logic;
        piso_actual     : in     vl_logic_vector(4 downto 0);
        piso_destino    : in     vl_logic_vector(4 downto 0);
        puerta_cmd      : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end motores_vlg_sample_tst;
