library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity identificador_direccion is
    port(
        clk_1Hz           : in  STD_LOGIC;
        rst               : in  STD_LOGIC;
        motor_subir       : buffer STD_LOGIC;
        motor_bajar       : buffer STD_LOGIC;
        solicitudes_subir : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_bajar : in  STD_LOGIC_VECTOR(3 downto 0);
        solicitudes_cabina: in  STD_LOGIC_VECTOR(4 downto 0);
        piso_destino      : out STD_LOGIC_VECTOR(2 downto 0)
    );
end identificador_direccion;

architecture Behavioral of identificador_direccion is
    signal destino_int          : integer range 1 to 5 := 1;
    signal direccion_actual     : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal solicitudes_combinadas: STD_LOGIC_VECTOR(4 downto 0);
    signal reg_piso_destino     : STD_LOGIC_VECTOR(2 downto 0) := "001";
    signal ultimo_piso_atendido : integer range 1 to 5 := 1;
    signal load_reg_destino     : STD_LOGIC := '0';

    component generic_register
        generic(WIDTH : integer);
        port(
            clk  : in  STD_LOGIC;
            rst  : in  STD_LOGIC;
            load : in  STD_LOGIC;
            din  : in  STD_LOGIC_VECTOR(WIDTH - 1 downto 0);
            dout : out STD_LOGIC_VECTOR(WIDTH - 1 downto 0)
        );
    end component;

begin

    RegistroDestino: generic_register
        generic map(WIDTH => 3)
        port map(
            clk  => clk_1Hz,
            rst  => rst,
            load => load_reg_destino,
            din  => std_logic_vector(to_unsigned(destino_int, 3)),
            dout => reg_piso_destino
        );

    process(clk_1Hz, rst)
    begin
        if rst = '1' then
            direccion_actual <= "00";
        elsif rising_edge(clk_1Hz) then
            if motor_subir = '1' then
                direccion_actual <= "01";
            elsif motor_bajar = '1' then
                direccion_actual <= "10";
            else
                direccion_actual <= "00";
            end if;
        end if;
    end process;

    solicitudes_combinadas <= solicitudes_cabina or ("0" & solicitudes_subir) or (solicitudes_bajar & "0");

    process(clk_1Hz)
        variable found          : boolean := false;
        variable piso_actual_sim: integer range 1 to 5;
    begin
        if rising_edge(clk_1Hz) then
            found := false;
            piso_actual_sim := to_integer(unsigned(reg_piso_destino));

            case direccion_actual is
                when "01" =>
                    for i in 1 to 5 loop
                        if i > piso_actual_sim and solicitudes_combinadas(i - 1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
                    if not found then
                        for i in 1 to 5 loop
                            if i < piso_actual_sim and solicitudes_combinadas(i - 1) = '1' then
                                destino_int <= i;
                                found := true;
                                exit;
                            end if;
                        end loop;
                    end if;

                when "10" =>
                    for i in 1 to 5 loop
                        if i < piso_actual_sim and solicitudes_combinadas(i - 1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
                    if not found then
                        for i in 1 to 5 loop
                            if i > piso_actual_sim and solicitudes_combinadas(i - 1) = '1' then
                                destino_int <= i;
                                found := true;
                                exit;
                            end if;
                        end loop;
                    end if;

                when others =>
                    for i in 1 to 5 loop
                        if solicitudes_combinadas(i - 1) = '1' then
                            destino_int <= i;
                            found := true;
                            exit;
                        end if;
                    end loop;
            end case;

            if not found then
                destino_int <= ultimo_piso_atendido;
                load_reg_destino <= '0';
            else
                ultimo_piso_atendido <= destino_int;
                load_reg_destino <= '1';
            end if;
        end if;
    end process;

    piso_destino <= reg_piso_destino;
end Behavioral;