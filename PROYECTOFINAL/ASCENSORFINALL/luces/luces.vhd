library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity luces is
    Port (
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        estado_ascensor : in  STD_LOGIC_VECTOR(2 downto 0);
        luz_cabina      : out STD_LOGIC;
        luz_emergencia  : out STD_LOGIC
    );
end luces;

architecture Behavioral of luces is
    type state_type is (
        ACTIVO,
        INACTIVO,
        EMERGENCIA,
        MANTENIMIENTO
    );
    
    signal state_reg, state_next : state_type;
    signal timer_inactivo : integer range 0 to 50000000 := 0;
    signal luz_auto_off   : std_logic := '0';
    
begin
    process(clk, reset)
    begin
        if reset = '1' then
            state_reg <= INACTIVO;
            timer_inactivo <= 0;
        elsif rising_edge(clk) then
            state_reg <= state_next;

            if estado_ascensor = "000" then 
                if timer_inactivo < 50000000 then
                    timer_inactivo <= timer_inactivo + 1;
                else
                    luz_auto_off <= '1';
                end if;
            else
                timer_inactivo <= 0;
                luz_auto_off <= '0';
            end if;
        end if;
    end process;

    process(state_reg, estado_ascensor, luz_auto_off)
    begin
        state_next <= state_reg;
        
        case state_reg is
            when INACTIVO =>
                if estado_ascensor /= "000" then
                    state_next <= ACTIVO;
                end if;
                
            when ACTIVO =>
                if estado_ascensor = "100" then
                    state_next <= EMERGENCIA;
                elsif estado_ascensor = "000" then
                    state_next <= INACTIVO;
                end if;
                
            when EMERGENCIA =>
                if estado_ascensor /= "100" then
                    state_next <= ACTIVO;
                end if;
                
            when MANTENIMIENTO =>
                null;
        end case;
    end process;

    process(state_reg)
    begin
        case state_reg is
            when ACTIVO =>
                luz_cabina <= '1';
                luz_emergencia <= '0';
                
            when INACTIVO =>
                luz_cabina <= '1';
                luz_emergencia <= '0';
                
            when EMERGENCIA =>
                luz_cabina <= '1';
                luz_emergencia <= '1';
                
            when MANTENIMIENTO =>
                luz_cabina <= '1';
                luz_emergencia <= '0';
        end case;
    end process;
end Behavioral;