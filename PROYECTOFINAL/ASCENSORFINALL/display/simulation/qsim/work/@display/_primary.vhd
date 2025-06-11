library verilog;
use verilog.vl_types.all;
entity Display is
    port(
        piso            : in     vl_logic_vector(2 downto 0);
        display         : out    vl_logic_vector(6 downto 0)
    );
end Display;
