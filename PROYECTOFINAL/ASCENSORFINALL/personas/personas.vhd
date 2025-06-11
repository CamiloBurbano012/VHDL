library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity personas is
    Port (
        clk                : in  STD_LOGIC;
        rst                : in  STD_LOGIC;
        personas_entraron  : in  INTEGER range 0 to 10;
        personas_salieron  : in  INTEGER range 0 to 10;
        sobrepeso          : out STD_LOGIC;
        personas_actuales  : out INTEGER range 0 to 10 
    );
end personas;

architecture Behavioral of personas is
    signal total : INTEGER range 0 to 10 := 0; 
begin
    process(clk, rst)
        variable temp : INTEGER; 
    begin
        if rst = '1' then
            total <= 0;
        elsif rising_edge(clk) then
            temp := total + personas_entraron - personas_salieron;
            
            if temp < 0 then
                total <= 0;
            elsif temp > 10 then  
                total <= 10;
            else
                total <= temp;
            end if;
        end if;
    end process;

    personas_actuales <= total;
    sobrepeso <= '1' when total > 10 else '0';
end Behavioral;
