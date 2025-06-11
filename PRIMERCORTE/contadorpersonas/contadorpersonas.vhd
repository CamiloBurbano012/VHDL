library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ContadorPersonas is
    port(
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        entrar_persona : in  STD_LOGIC;
        salir_persona  : in  STD_LOGIC;
        num_personas   : out STD_LOGIC_VECTOR(3 downto 0);
        luces          : out STD_LOGIC;
        sobrecarga     : out STD_LOGIC
    );
end ContadorPersonas;

architecture Behavioral of ContadorPersonas is
    signal contador : unsigned(3 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            contador <= (others => '0');
            sobrecarga <= '0';
        elsif rising_edge(clk) then
            if entrar_persona = '1' then
                contador <= contador + 1;
            elsif salir_persona = '1' and contador > 0 then
                contador <= contador - 1;
            end if;

            if contador >= 10 then
                sobrecarga <= '1';
            else
                sobrecarga <= '0';
            end if;

            num_personas <= std_logic_vector(contador);
        end if;
    end process;

    luces <= '1' when contador > 0 else '0';
end Behavioral;