library verilog;
use verilog.vl_types.all;
entity luces is
    port(
        clk             : in     vl_logic;
        sensor_inactivo : in     vl_logic;
        luz_cabina      : out    vl_logic
    );
end luces;
