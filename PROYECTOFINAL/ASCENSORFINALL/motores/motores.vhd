library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity motores is
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC;
        piso_actual  : in  STD_LOGIC_VECTOR(2 downto 0); 
        piso_destino : in  STD_LOGIC_VECTOR(2 downto 0);
        pwm_motor    : out STD_LOGIC;
        in1_motor    : out STD_LOGIC;
        in2_motor    : out STD_LOGIC
    );
end motores;

architecture Behavioral of motores is
    signal pwm_int : STD_LOGIC := '0';
    signal in1_int : STD_LOGIC := '0';
    signal in2_int : STD_LOGIC := '0';
begin
    process(clk, reset, piso_actual, piso_destino)
    begin
        if reset = '1' then
            pwm_int <= '0';
            in1_int <= '0';
            in2_int <= '0';
        elsif rising_edge(clk) then
            pwm_int <= '0';
            in1_int <= '0';
            in2_int <= '0';

            if to_integer(unsigned(piso_actual)) < to_integer(unsigned(piso_destino)) then
                pwm_int <= '1';
                in1_int <= '1';
                in2_int <= '0';
            elsif to_integer(unsigned(piso_actual)) > to_integer(unsigned(piso_destino)) then
                pwm_int <= '1';
                in1_int <= '0';
                in2_int <= '1';
            else
                pwm_int <= '0';
                in1_int <= '0';
                in2_int <= '0';
            end if;
        end if;
    end process;

    pwm_motor <= pwm_int;
    in1_motor <= in1_int;
    in2_motor <= in2_int;

end Behavioral;