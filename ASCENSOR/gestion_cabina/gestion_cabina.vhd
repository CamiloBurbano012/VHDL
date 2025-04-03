library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gestion_cabina is
    port(
        clk                : in  STD_LOGIC;
        reset              : in  STD_LOGIC;
        botones_cabina     : in  STD_LOGIC_VECTOR(4 downto 0);
        clear_request      : in  STD_LOGIC_VECTOR(4 downto 0);
        solicitudes_internas : out STD_LOGIC_VECTOR(4 downto 0)
    );
end gestion_cabina;

architecture Behavioral of gestion_cabina is
    signal solicitudes : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
begin
    process(clk, reset, botones_cabina, clear_request)
    begin
        if reset = '1' then
            solicitudes <= (others => '0');
        elsif rising_edge(clk) then
            for i in 0 to 4 loop
                if botones_cabina(i) = '1' then
                    solicitudes(i) <= '1';
                end if;
                if clear_request(i) = '1' then
                    solicitudes(i) <= '0';
                end if;
            end loop;
        end if;
    end process;

    solicitudes_internas <= solicitudes;
end Behavioral;