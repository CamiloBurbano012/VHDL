library verilog;
use verilog.vl_types.all;
entity memoria_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(0 downto 0);
        reset           : in     vl_logic;
        we              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memoria_vlg_sample_tst;
