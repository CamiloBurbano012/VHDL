library verilog;
use verilog.vl_types.all;
entity ascensor_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        falla_energia   : in     vl_logic;
        llamada_piso    : in     vl_logic_vector(4 downto 0);
        personas        : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        seleccion_piso  : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end ascensor_vlg_sample_tst;
