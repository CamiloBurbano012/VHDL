library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity puerta is
    Port (
        clk           : in  std_logic;
        reset         : in  std_logic;
        abrir         : in  std_logic;
        cerrar        : in  std_logic;
        fallo_energia : in  std_logic;
        sobrecarga    : in  std_logic;
        puerta_abierta: out std_logic;
        alarma_sonora : out std_logic;
        alarma_visual : out std_logic
    );
end puerta;

architecture Behavioral of puerta is
    type estado_t is (
        CERRADA,
        ESPERA_ABRIR,
        ABRIENDO,
        ABIERTA,
        ESPERA_CERRAR,
        CERRANDO,
        EMERGENCIA
    );
    
    signal estado_actual, prox_estado : estado_t;
    constant FREC_DIV : natural := 50_000;
    signal contador_div : natural range 0 to FREC_DIV-1 := 0;
    signal clk_1kHz    : std_logic := '0';
    signal contador_ms : natural range 0 to 45_000 := 0; 
    signal contador_10s : natural range 0 to 10_000 := 0;
    signal contador_45s : natural range 0 to 45_000 := 0;
    signal contador_05s : natural range 0 to 500 := 0;  
    signal toggle_alarma : std_logic := '0';
    signal evento_abriendo : std_logic := '0';
    signal evento_cerrando : std_logic := '0';
    signal emergencia_activa : std_logic := '0';

begin

    process(clk, reset)
    begin
        if reset = '1' then
            contador_div <= 0;
            clk_1kHz <= '0';
        elsif rising_edge(clk) then
            if contador_div < FREC_DIV-1 then
                contador_div <= contador_div + 1;
            else
                contador_div <= 0;
                clk_1kHz <= not clk_1kHz;
            end if;
        end if;
    end process;

    process(clk_1kHz, reset)
    begin
        if reset = '1' then
            estado_actual <= CERRADA;
            contador_ms <= 0;
            contador_10s <= 0;
            contador_45s <= 0;
            contador_05s <= 0;
            toggle_alarma <= '0';
        elsif rising_edge(clk_1kHz) then
            contador_ms <= contador_ms + 1;
            if contador_05s < 500 then
                contador_05s <= contador_05s + 1;
            else
                contador_05s <= 0;
                toggle_alarma <= not toggle_alarma;
            end if;
            
            estado_actual <= prox_estado;
            case estado_actual is
                when ESPERA_ABRIR =>
                    if contador_10s < 10_000 then 
                        contador_10s <= contador_10s + 1;
                    end if;
                
                when ESPERA_CERRAR =>
                    if contador_45s < 45_000 then
                        contador_45s <= contador_45s + 1;
                    end if;
                
                when others =>
                    contador_10s <= 0;
                    contador_45s <= 0;
            end case;
        end if;
    end process;

    process(estado_actual, abrir, cerrar, fallo_energia, sobrecarga, contador_10s, contador_45s)
    begin
        prox_estado <= estado_actual;
        puerta_abierta <= '0';
        evento_abriendo <= '0';
        evento_cerrando <= '0';
        emergencia_activa <= '0';
        
        case estado_actual is
            when CERRADA =>
                if abrir = '1' and fallo_energia = '0' and sobrecarga = '0' then
                    prox_estado <= ESPERA_ABRIR;
                end if;
                
            when ESPERA_ABRIR =>
                if fallo_energia = '1' or sobrecarga = '1' then
                    prox_estado <= EMERGENCIA;
                elsif contador_10s >= 10_000 then
                    prox_estado <= ABRIENDO;
                end if;
                
            when ABRIENDO =>
                puerta_abierta <= '1';
                evento_abriendo <= '1';
                prox_estado <= ABIERTA;
                
            when ABIERTA =>
                puerta_abierta <= '1';
                if fallo_energia = '1' or sobrecarga = '1' then
                    prox_estado <= CERRANDO;
                else
                    prox_estado <= ESPERA_CERRAR;
                end if;
                
            when ESPERA_CERRAR =>
                puerta_abierta <= '1';
                if fallo_energia = '1' or sobrecarga = '1' or cerrar = '1' or contador_45s >= 45_000 then
                    prox_estado <= CERRANDO;
                end if;
                
            when CERRANDO =>
                evento_cerrando <= '1';
                prox_estado <= CERRADA;
                
            when EMERGENCIA =>
                emergencia_activa <= '1';
                if fallo_energia = '0' and sobrecarga = '0' then
                    prox_estado <= CERRADA;
                end if;
        end case;
    end process;

    alarma_sonora <= '1' when 
        (evento_abriendo = '1') or 
        (evento_cerrando = '1') or 
        (emergencia_activa = '1' and toggle_alarma = '1')
    else '0';
    
    alarma_visual <= '1' when 
        (evento_abriendo = '1') or 
        (evento_cerrando = '1') or 
        (emergencia_activa = '1' and toggle_alarma = '1')
    else '0';

end Behavioral;

