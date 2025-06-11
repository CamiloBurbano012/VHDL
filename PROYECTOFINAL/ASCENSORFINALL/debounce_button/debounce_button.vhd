library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Debounce_Button is
    generic (
        DEBOUNCE_TIME_MS : integer := 50;
        CLK_FREQ_HZ      : integer := 1_000_000
    );
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        button_in: in  STD_LOGIC;
        button_out: out STD_LOGIC
    );
end Debounce_Button;

architecture Behavioral of Debounce_Button is
    constant DEBOUNCE_COUNT_MAX : integer := (DEBOUNCE_TIME_MS * CLK_FREQ_HZ) / 1000;

    signal button_sync_reg1 : STD_LOGIC := '0';
    signal button_sync_reg2 : STD_LOGIC := '0';
    signal counter          : integer range 0 to DEBOUNCE_COUNT_MAX := 0;
    signal button_state     : STD_LOGIC := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            button_sync_reg1 <= '0';
            button_sync_reg2 <= '0';
            counter <= 0;
            button_state <= '0';
        elsif rising_edge(clk) then
            button_sync_reg1 <= button_in;
            button_sync_reg2 <= button_sync_reg1;

            if button_sync_reg2 = button_state then
                counter <= 0;
            else
                if counter < DEBOUNCE_COUNT_MAX then
                    counter <= counter + 1;
                else
                    button_state <= button_sync_reg2;
                    counter <= 0; 
                end if;
            end if;
        end if;
    end process;

    button_out <= button_state;

end Behavioral;