library verilog;
use verilog.vl_types.all;
entity memoria is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        we              : in     vl_logic;
        addr            : in     vl_logic_vector(2 downto 0);
        data_in         : in     vl_logic_vector(0 downto 0);
        data_out        : out    vl_logic_vector(0 downto 0)
    );
end memoria;
