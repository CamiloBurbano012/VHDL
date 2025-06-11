library verilog;
use verilog.vl_types.all;
entity personas_vlg_check_tst is
    port(
        personas_actuales: in     vl_logic_vector(4 downto 0);
        sobrepeso       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end personas_vlg_check_tst;
