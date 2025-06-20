library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Display is
    Port (
        piso    : in  INTEGER range 0 to 4;
        display : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Display;

architecture Behavioral of Display is
begin
    process(piso)
    begin
        case piso is
            when 0 =>
                display <= "1000000"; -- 0
            when 1 =>
                display <= "1111001"; -- 1
            when 2 =>
                display <= "0100100"; -- 2
            when 3 =>
                display <= "0110000"; -- 3
            when 4 =>
                display <= "0011001"; -- 4
            when others =>
                display <= "1111111"; -- Apagar display
        end case;
    end process;
end Behavioral;
