library verilog;
use verilog.vl_types.all;
entity ascensor_vlg_check_tst is
    port(
        alarma_sonora   : in     vl_logic;
        destino_piso    : in     vl_logic_vector(2 downto 0);
        luz_puerta      : in     vl_logic;
        piso_actual     : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end ascensor_vlg_check_tst;
