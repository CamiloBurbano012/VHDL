library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Timer is
    generic (
        TIMER_DURATION : INTEGER := 50_000_000 
    );
    Port (
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        start    : in  STD_LOGIC;
        done     : out STD_LOGIC
    );
end Timer;

architecture Behavioral of Timer is
    signal count : INTEGER range 0 to TIMER_DURATION := 0; 
    signal timer_running : STD_LOGIC := '0';
begin

    process(clk, rst)
    begin
        if rst = '1' then
            count <= 0;
            done <= '0';
            timer_running <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                count <= 0;           
                done <= '0';          
                timer_running <= '1'; 
            elsif timer_running = '1' then
                if count < TIMER_DURATION - 1 then 
                    count <= count + 1;
                    done <= '0';
                else
                    count <= TIMER_DURATION - 1; 
                    done <= '1';                 
                    timer_running <= '0';        
                end if;
            end if;
        end if;
    end process;

end Behavioral;