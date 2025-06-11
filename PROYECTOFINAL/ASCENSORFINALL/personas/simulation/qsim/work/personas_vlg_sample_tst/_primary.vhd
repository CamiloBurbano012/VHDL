library verilog;
use verilog.vl_types.all;
entity personas_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        personas_entraron: in     vl_logic_vector(3 downto 0);
        personas_salieron: in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end personas_vlg_sample_tst;
