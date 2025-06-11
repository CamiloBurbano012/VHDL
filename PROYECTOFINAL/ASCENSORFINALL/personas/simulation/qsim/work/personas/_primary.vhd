library verilog;
use verilog.vl_types.all;
entity personas is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        personas_entraron: in     vl_logic_vector(3 downto 0);
        personas_salieron: in     vl_logic_vector(3 downto 0);
        sobrepeso       : out    vl_logic;
        personas_actuales: out    vl_logic_vector(4 downto 0)
    );
end personas;
