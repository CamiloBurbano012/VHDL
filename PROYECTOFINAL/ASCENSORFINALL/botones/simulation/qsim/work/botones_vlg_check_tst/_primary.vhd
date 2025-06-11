library verilog;
use verilog.vl_types.all;
entity botones_vlg_check_tst is
    port(
        boton_abrir_filtrado: in     vl_logic;
        boton_cerrar_filtrado: in     vl_logic;
        boton_notificar_filtrado: in     vl_logic;
        botones_bajar_filtrados: in     vl_logic_vector(4 downto 0);
        botones_cabina_filtrados: in     vl_logic_vector(4 downto 0);
        botones_subir_filtrados: in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end botones_vlg_check_tst;
