library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gestion_externas is
    port(
        clk_1Hz           : in  STD_LOGIC;
        reset             : in  STD_LOGIC;
        BOTON_SUBIR       : in  STD_LOGIC_VECTOR(3 downto 0);
        BOTON_BAJAR       : in  STD_LOGIC_VECTOR(3 downto 0);
        clear_request_subir : in  STD_LOGIC_VECTOR(3 downto 0);
        clear_request_bajar : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_subir   : out STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_bajar   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end gestion_externas;

architecture Behavioral of gestion_externas is
    signal solicitudes_subir_int : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal solicitudes_bajar_int : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin
    process(clk_1Hz, reset, BOTON_SUBIR, BOTON_BAJAR, clear_request_subir, clear_request_bajar)
    begin
        if reset = '1' then
            solicitudes_subir_int <= (others => '0');
            solicitudes_bajar_int <= (others => '0');
        elsif rising_edge(clk_1Hz) then
            for i in 0 to 3 loop
                if BOTON_SUBIR(i) = '1' then
                    solicitudes_subir_int(i) <= '1';
                end if;
                if BOTON_BAJAR(i) = '1' then
                    solicitudes_bajar_int(i) <= '1';
                end if;
                if clear_request_subir(i) = '1' then
                    solicitudes_subir_int(i) <= '0';
                end if;
                if clear_request_bajar(i) = '1' then
                    solicitudes_bajar_int(i) <= '0';
                end if;
            end loop;  -- Añadido end loop;
        end if;
    end process;

    solicitudes_subir <= solicitudes_subir_int;
    solicitudes_bajar <= solicitudes_bajar_int;
end Behavioral;