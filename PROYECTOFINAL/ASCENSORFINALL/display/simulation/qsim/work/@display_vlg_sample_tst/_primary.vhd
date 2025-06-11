library verilog;
use verilog.vl_types.all;
entity Display_vlg_sample_tst is
    port(
        piso            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Display_vlg_sample_tst;
