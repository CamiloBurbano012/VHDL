library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alarmas is
    Port(
        clk             : in std_logic;
        reset           : in std_logic;
        puerta_abriendo : in std_logic;
        puerta_cerrando : in std_logic;
        sobrecarga      : in std_logic;  
        fallo_energia   : in std_logic; 
        alarma_sonora   : out std_logic;
        alarma_visual   : out std_logic
    );
end alarmas;

architecture Behavioral of alarmas is
    signal contador_parpadeo : unsigned(22 downto 0) := (others => '0');
    signal toggle_visual     : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            alarma_sonora     <= '0';
            alarma_visual     <= '0';
            contador_parpadeo <= (others => '0');
            toggle_visual     <= '0';

        elsif rising_edge(clk) then
            if contador_parpadeo = 12_500_000 then
                toggle_visual     <= not toggle_visual;
                contador_parpadeo <= (others => '0');
            else
                contador_parpadeo <= contador_parpadeo + 1;
            end if;
				
            if fallo_energia = '1' then
                alarma_sonora <= '1';
                alarma_visual <= '1';

            elsif sobrecarga = '1' then
                alarma_sonora <= '1';
                alarma_visual <= toggle_visual;

            elsif puerta_abriendo = '1' or puerta_cerrando = '1' then
                alarma_sonora <= '1';
                alarma_visual <= '1';

            else
                alarma_sonora <= '0';
                alarma_visual <= '0';
            end if;
        end if;
    end process;
end Behavioral;



