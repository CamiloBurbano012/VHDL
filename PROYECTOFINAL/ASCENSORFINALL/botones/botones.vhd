library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity botones is
    Port (
        clk             : in  std_logic;
        reset           : in  std_logic;
        botones_subir   : in  std_logic_vector(4 downto 0);
        botones_bajar   : in  std_logic_vector(4 downto 0);
        botones_cabina  : in  std_logic_vector(4 downto 0);
        subir_filtrado  : out std_logic_vector(4 downto 0);
        bajar_filtrado  : out std_logic_vector(4 downto 0);
        cabina_filtrado : out std_logic_vector(4 downto 0)
    );
end botones;

architecture Behavioral of botones is
    signal reg1_subir, reg2_subir : std_logic_vector(4 downto 0);
    signal reg1_bajar, reg2_bajar : std_logic_vector(4 downto 0);
    signal reg1_cabina, reg2_cabina : std_logic_vector(4 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg1_subir <= (others => '0');
            reg2_subir <= (others => '0');
            reg1_bajar <= (others => '0');
            reg2_bajar <= (others => '0');
            reg1_cabina <= (others => '0');
            reg2_cabina <= (others => '0');
        elsif rising_edge(clk) then
            reg1_subir <= botones_subir;
            reg2_subir <= reg1_subir;
            
            reg1_bajar <= botones_bajar;
            reg2_bajar <= reg1_bajar;
            
            reg1_cabina <= botones_cabina;
            reg2_cabina <= reg1_cabina;
        end if;
    end process;
	 
    subir_filtrado <= reg2_subir;
    bajar_filtrado <= reg2_bajar;
    cabina_filtrado <= reg2_cabina;
	 
end Behavioral;
