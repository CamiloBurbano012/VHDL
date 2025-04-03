library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity generic_register is
    generic(WIDTH : integer := 8);
    port(
        clk  : in  STD_LOGIC;
        rst  : in  STD_LOGIC;
        load : in  STD_LOGIC;
        din  : in  STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
        dout : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
    );
end generic_register;

architecture Behavioral of generic_register is
    signal reg_data : STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            reg_data <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                reg_data <= din;
            end if;
        end if;
    end process;

    dout <= reg_data;
end Behavioral;