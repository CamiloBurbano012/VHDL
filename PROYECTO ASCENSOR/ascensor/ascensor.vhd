library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ascensor is
    Port (
        clk              : in STD_LOGIC;
        reset            : in STD_LOGIC;
        llamada_piso     : in STD_LOGIC_VECTOR(4 downto 0);
        seleccion_piso   : in STD_LOGIC_VECTOR(4 downto 0);
        personas         : in INTEGER range 0 to 10;
        falla_energia    : in STD_LOGIC;
        piso_actual      : buffer STD_LOGIC_VECTOR(2 downto 0);
        luz_puerta       : out STD_LOGIC;
        alarma_sonora    : out STD_LOGIC;
        destino_piso     : out STD_LOGIC_VECTOR(2 downto 0)
    );
end ascensor;

architecture Behavioral of ascensor is

    -- Señales internas
    signal destino_cabina    : STD_LOGIC_VECTOR(2 downto 0);
    signal llamada_activada  : STD_LOGIC;
    signal en_movimiento     : STD_LOGIC;
    signal luz_puerta_int    : STD_LOGIC;
    signal alarma_sonora_int : STD_LOGIC;
    signal alarma_personas   : STD_LOGIC;
    signal energia_estable   : STD_LOGIC;
    signal alarma_falla      : STD_LOGIC;
    signal puertas_estado    : STD_LOGIC_VECTOR(1 downto 0); -- Estado de la puerta

begin

    -- Instancia de gestionllamadas
    gestion_llamadas_inst : entity work.gestionllamadas
        port map (clk,reset,llamada_piso,seleccion_piso,piso_actual,destino_piso,llamada_activada);

    -- Instancia de controlpuertas
    control_puertas_inst : entity work.controlpuertas
        port map (
            clk,reset,llamada_activada, llamada_activada,en_movimiento,puertas_estado,alarma_sonora_int,luz_puerta_int);

    -- Instancia de controlmovimiento
    control_movimiento_inst : entity work.sensormovimiento
        port map (clk,reset,destino_cabina,piso_actual,en_movimiento);

    -- Instancia de seguridad
    seguridad_inst : entity work.seguridad
        port map (clk,reset,personas,energia_estable,alarma_personas,alarma_falla);

    -- Integración de la alarma general
    alarma_sonora <= alarma_sonora_int or alarma_personas;

    -- Salidas finales
    luz_puerta <= luz_puerta_int;
	 

end Behavioral;

