library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sensormovimiento is
    Port (
        clk               : in STD_LOGIC;
        reset             : in STD_LOGIC;
        piso_actual       : inout STD_LOGIC_VECTOR(2 downto 0); -- Piso donde está el ascensor
        piso_destino      : in STD_LOGIC_VECTOR(2 downto 0); -- Piso al que se quiere ir
        en_movimiento     : out STD_LOGIC -- Señal de movimiento
    );
end sensormovimiento;

architecture Behavioral of sensormovimiento is
    signal piso_int : INTEGER := 0;
    signal destino_int : INTEGER := 0;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            piso_int <= 0;
            destino_int <= 0;
            en_movimiento <= '0';
            piso_actual <= "000"; -- Piso 0 (planta baja)
        elsif rising_edge(clk) then
            piso_int <= conv_integer(piso_actual);
            destino_int <= conv_integer(piso_destino);

            -- Movimiento
            if piso_int /= destino_int then
                en_movimiento <= '1';
                if piso_int < destino_int then
                    piso_int <= piso_int + 1;
                elsif piso_int > destino_int then
                    piso_int <= piso_int - 1;
                end if;
            else
                en_movimiento <= '0';
            end if;

            -- Actualizar piso
            piso_actual <= conv_std_logic_vector(piso_int, 3);
        end if;
    end process;

end Behavioral;