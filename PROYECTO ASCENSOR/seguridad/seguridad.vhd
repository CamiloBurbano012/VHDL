library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seguridad is
    Port (
        clk               : in STD_LOGIC;
        reset             : in STD_LOGIC;
        personas          : in INTEGER range 0 to 15;
        energia_estable   : buffer STD_LOGIC;
        alarma_personas   : out STD_LOGIC;
        alarma_falla      : out STD_LOGIC
    );
end seguridad;

architecture Behavioral of seguridad is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            alarma_personas <= '0';
            alarma_falla <= '0';
            energia_estable <= '1';
        elsif rising_edge(clk) then
            if personas > 10 then
                alarma_personas <= '1';
            else
                alarma_personas <= '0';
            end if;

            if energia_estable = '0' then
                alarma_falla <= '1';
            else
                alarma_falla <= '0';
            end if;
        end if;
    end process;
end Behavioral;

