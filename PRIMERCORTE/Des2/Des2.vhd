library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Des2 is
    generic(INPUT_WIDTH : integer := 4);
    port(
        entrada  : in  STD_LOGIC_VECTOR(INPUT_WIDTH - 1 downto 0);
        unidades : out STD_LOGIC_VECTOR(3 downto 0);
        decenas  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Des2;

architecture Behavioral of Des2 is
    signal valor_entrada : unsigned(INPUT_WIDTH - 1 downto 0);
    signal valor_unidades : unsigned(3 downto 0);
    signal valor_decenas : unsigned(3 downto 0);
begin
    valor_entrada <= unsigned(entrada);
    valor_unidades <= valor_entrada mod 10;
    valor_decenas <= valor_entrada / 10;

    unidades <= std_logic_vector(valor_unidades);
    decenas <= std_logic_vector(valor_decenas);
end Behavioral;