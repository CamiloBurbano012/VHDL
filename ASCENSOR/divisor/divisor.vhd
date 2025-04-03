library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity divisor is
    generic(DIVIDER : integer := 25000000);
    port(
        CLK  : in  STD_LOGIC;
        out1 : out STD_LOGIC
    );
end divisor;

architecture Behavioral of divisor is
    signal count : integer range 0 to DIVIDER - 1 := 0;
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if count = DIVIDER - 1 then
                count <= 0;
                out1 <= '1';
            else
                count <= count + 1;
                out1 <= '0';
            end if;
        end if;
    end process;
end Behavioral;