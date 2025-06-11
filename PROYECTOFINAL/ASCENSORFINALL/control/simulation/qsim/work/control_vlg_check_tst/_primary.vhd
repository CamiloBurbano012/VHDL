library verilog;
use verilog.vl_types.all;
entity control_vlg_check_tst is
    port(
        abrir_puerta    : in     vl_logic;
        alarma_sonora   : in     vl_logic;
        alarma_visual   : in     vl_logic;
        cerrar_puerta   : in     vl_logic;
        luz_interior    : in     vl_logic;
        mover_bajar     : in     vl_logic;
        mover_subir     : in     vl_logic;
        piso_actual     : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end control_vlg_check_tst;
