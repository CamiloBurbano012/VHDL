library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sensor is
    Port (
        clk         : in STD_LOGIC;      
        reset       : in STD_LOGIC;      
        ir_sensors  : in STD_LOGIC_VECTOR(4 downto 0);  
        piso_actual : out STD_LOGIC_VECTOR(2 downto 0); 
        error      : out STD_LOGIC 
    );
end sensor;

architecture Behavioral of sensor is
    signal debounced_ir : STD_LOGIC_VECTOR(4 downto 0);
    signal prev_ir     : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal count_debounce : integer range 0 to 100 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            debounced_ir <= (others => '0');
            prev_ir <= (others => '0');
            count_debounce <= 0;
        elsif rising_edge(clk) then
            prev_ir <= ir_sensors;
            if ir_sensors /= prev_ir then
                count_debounce <= 0;
            elsif count_debounce < 100 then  
                count_debounce <= count_debounce + 1;
            else
                debounced_ir <= ir_sensors;  
            end if;
        end if;
    end process;

    process(clk, reset)
        variable num_active : integer range 0 to 5 := 0;
    begin
        if reset = '1' then
            piso_actual <= (others => '0');
            error <= '0';
        elsif rising_edge(clk) then
            num_active := 0;
            for i in 0 to 4 loop
                if debounced_ir(i) = '1' then
                    num_active := num_active + 1;
                end if;
            end loop;

            if num_active = 1 then
                error <= '0';
                case debounced_ir is
                    when "00001" => piso_actual <= "001";  -- Piso 1
                    when "00010" => piso_actual <= "010";  -- Piso 2
                    when "00100" => piso_actual <= "011";  -- Piso 3
                    when "01000" => piso_actual <= "100";  -- Piso 4
                    when "10000" => piso_actual <= "101";  -- Piso 5
                    when others => null;
                end case;
            else
                error <= '1';  
                piso_actual <= (others => '0');
            end if;
        end if;
    end process;
end Behavioral;