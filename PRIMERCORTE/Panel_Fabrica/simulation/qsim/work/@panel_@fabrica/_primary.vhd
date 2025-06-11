library verilog;
use verilog.vl_types.all;
entity Panel_Fabrica is
    port(
        silo_a          : in     vl_logic;
        silo_b          : in     vl_logic;
        luz_c           : out    vl_logic;
        luz_d           : out    vl_logic;
        alarma          : out    vl_logic
    );
end Panel_Fabrica;
