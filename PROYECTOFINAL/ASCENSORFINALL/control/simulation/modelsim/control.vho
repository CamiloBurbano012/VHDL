-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/08/2025 15:29:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	control IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botones_subir : IN std_logic_vector(4 DOWNTO 0);
	botones_bajar : IN std_logic_vector(4 DOWNTO 0);
	botones_cabina : IN std_logic_vector(4 DOWNTO 0);
	boton_abrir : IN std_logic;
	boton_cerrar : IN std_logic;
	boton_notificar : IN std_logic;
	people_count : IN STD.STANDARD.integer range 0 TO 20;
	power_fail : IN std_logic;
	fin_timer : IN std_logic;
	abrir_puerta : OUT std_logic;
	cerrar_puerta : OUT std_logic;
	alarma_sonora : OUT std_logic;
	alarma_visual : OUT std_logic;
	luz_interior : OUT std_logic;
	mover_subir : OUT std_logic;
	mover_bajar : OUT std_logic;
	piso_actual : OUT STD.STANDARD.integer range 0 TO 4
	);
END control;

-- Design Ports Information
-- boton_abrir	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_cerrar	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_notificar	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_puerta	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_sonora	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_visual	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_interior	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mover_subir	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mover_bajar	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- people_count[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- people_count[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- power_fail	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- people_count[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- people_count[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- people_count[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[1]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin_timer	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_botones_subir : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_bajar : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_boton_abrir : std_logic;
SIGNAL ww_boton_cerrar : std_logic;
SIGNAL ww_boton_notificar : std_logic;
SIGNAL ww_people_count : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_power_fail : std_logic;
SIGNAL ww_fin_timer : std_logic;
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_cerrar_puerta : std_logic;
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_alarma_visual : std_logic;
SIGNAL ww_luz_interior : std_logic;
SIGNAL ww_mover_subir : std_logic;
SIGNAL ww_mover_bajar : std_logic;
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \boton_abrir~input_o\ : std_logic;
SIGNAL \boton_cerrar~input_o\ : std_logic;
SIGNAL \boton_notificar~input_o\ : std_logic;
SIGNAL \abrir_puerta~output_o\ : std_logic;
SIGNAL \cerrar_puerta~output_o\ : std_logic;
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \alarma_visual~output_o\ : std_logic;
SIGNAL \luz_interior~output_o\ : std_logic;
SIGNAL \mover_subir~output_o\ : std_logic;
SIGNAL \mover_bajar~output_o\ : std_logic;
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;
SIGNAL \power_fail~input_o\ : std_logic;
SIGNAL \people_count[3]~input_o\ : std_logic;
SIGNAL \people_count[2]~input_o\ : std_logic;
SIGNAL \people_count[1]~input_o\ : std_logic;
SIGNAL \people_count[0]~input_o\ : std_logic;
SIGNAL \people_count[4]~input_o\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones_subir[4]~input_o\ : std_logic;
SIGNAL \botones_bajar[4]~input_o\ : std_logic;
SIGNAL \botones_cabina[4]~input_o\ : std_logic;
SIGNAL \fin_timer~input_o\ : std_logic;
SIGNAL \botones_subir[3]~input_o\ : std_logic;
SIGNAL \hay_solicitud_subir~0_combout\ : std_logic;
SIGNAL \botones_cabina[3]~input_o\ : std_logic;
SIGNAL \botones_cabina[2]~input_o\ : std_logic;
SIGNAL \botones_cabina[0]~input_o\ : std_logic;
SIGNAL \botones_cabina[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \botones_bajar[3]~input_o\ : std_logic;
SIGNAL \botones_bajar[1]~input_o\ : std_logic;
SIGNAL \botones_bajar[2]~input_o\ : std_logic;
SIGNAL \botones_bajar[0]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \botones_subir[2]~input_o\ : std_logic;
SIGNAL \botones_subir[1]~input_o\ : std_logic;
SIGNAL \botones_subir[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_actual.ALARMA_SOBRECARGA~q\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \hay_solicitud_bajar~0_combout\ : std_logic;
SIGNAL \hay_solicitud_bajar~1_combout\ : std_logic;
SIGNAL \hay_solicitud_bajar~2_combout\ : std_logic;
SIGNAL \hay_solicitud_bajar~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \estado_actual.ALARMA_FALLA_ENERGIA~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \estado_actual.INACTIVO~q\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_actual.MOVIENDO_SUBIENDO~q\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \nuevo_piso[1]~3_combout\ : std_logic;
SIGNAL \hay_solicitud_subir~1_combout\ : std_logic;
SIGNAL \hay_solicitud_subir~2_combout\ : std_logic;
SIGNAL \s_mover_bajar~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \estado_actual.MOVIENDO_BAJANDO~q\ : std_logic;
SIGNAL \nuevo_piso[2]~2_combout\ : std_logic;
SIGNAL \nuevo_piso[0]~4_combout\ : std_logic;
SIGNAL \nuevo_piso[2]~0_combout\ : std_logic;
SIGNAL \nuevo_piso[2]~1_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Selector10~5_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \estado_actual.ABRIENDO_PUERTA~q\ : std_logic;
SIGNAL \estado_actual.PUERTA_ABIERTA_ESPERA~q\ : std_logic;
SIGNAL \estado_actual.CERRANDO_PUERTA~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \estado_actual.VERIFICANDO_SOLICITUDES~q\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \s_alarma_sonora~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL nuevo_piso : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_s_alarma_sonora~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botones_subir <= botones_subir;
ww_botones_bajar <= botones_bajar;
ww_botones_cabina <= botones_cabina;
ww_boton_abrir <= boton_abrir;
ww_boton_cerrar <= boton_cerrar;
ww_boton_notificar <= boton_notificar;
ww_people_count <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(people_count, 5);
ww_power_fail <= power_fail;
ww_fin_timer <= fin_timer;
abrir_puerta <= ww_abrir_puerta;
cerrar_puerta <= ww_cerrar_puerta;
alarma_sonora <= ww_alarma_sonora;
alarma_visual <= ww_alarma_visual;
luz_interior <= ww_luz_interior;
mover_subir <= ww_mover_subir;
mover_bajar <= ww_mover_bajar;
piso_actual <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_piso_actual));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_s_alarma_sonora~0_combout\ <= NOT \s_alarma_sonora~0_combout\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y24_N16
\abrir_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector10~4_combout\,
	devoe => ww_devoe,
	o => \abrir_puerta~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\cerrar_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector13~0_combout\,
	devoe => ww_devoe,
	o => \cerrar_puerta~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\alarma_sonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_alarma_sonora~0_combout\,
	devoe => ww_devoe,
	o => \alarma_sonora~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\alarma_visual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_alarma_sonora~0_combout\,
	devoe => ww_devoe,
	o => \alarma_visual~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\luz_interior~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.INACTIVO~q\,
	devoe => ww_devoe,
	o => \luz_interior~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\mover_subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector11~1_combout\,
	devoe => ww_devoe,
	o => \mover_subir~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\mover_bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector12~0_combout\,
	devoe => ww_devoe,
	o => \mover_bajar~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nuevo_piso(0),
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nuevo_piso(1),
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => nuevo_piso(2),
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\power_fail~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_power_fail,
	o => \power_fail~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\people_count[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_people_count(3),
	o => \people_count[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\people_count[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_people_count(2),
	o => \people_count[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\people_count[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_people_count(1),
	o => \people_count[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\people_count[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_people_count(0),
	o => \people_count[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\people_count[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_people_count(4),
	o => \people_count[4]~input_o\);

-- Location: LCCOMB_X1_Y23_N28
\LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (\people_count[4]~input_o\) # ((\people_count[1]~input_o\ & (\people_count[3]~input_o\ & \people_count[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \people_count[1]~input_o\,
	datab => \people_count[3]~input_o\,
	datac => \people_count[0]~input_o\,
	datad => \people_count[4]~input_o\,
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X2_Y22_N8
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\power_fail~input_o\ & (!\LessThan10~0_combout\ & ((!\people_count[2]~input_o\) # (!\people_count[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \power_fail~input_o\,
	datab => \people_count[3]~input_o\,
	datac => \people_count[2]~input_o\,
	datad => \LessThan10~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N22
\botones_subir[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(4),
	o => \botones_subir[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\botones_bajar[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(4),
	o => \botones_bajar[4]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\botones_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(4),
	o => \botones_cabina[4]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\fin_timer~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin_timer,
	o => \fin_timer~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\botones_subir[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(3),
	o => \botones_subir[3]~input_o\);

-- Location: LCCOMB_X4_Y22_N6
\hay_solicitud_subir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_subir~0_combout\ = (!nuevo_piso(2) & ((\botones_subir[4]~input_o\) # ((\botones_subir[3]~input_o\ & !nuevo_piso(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_subir[4]~input_o\,
	datab => \botones_subir[3]~input_o\,
	datac => nuevo_piso(2),
	datad => nuevo_piso(0),
	combout => \hay_solicitud_subir~0_combout\);

-- Location: IOIBUF_X0_Y20_N8
\botones_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(3),
	o => \botones_cabina[3]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\botones_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(2),
	o => \botones_cabina[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\botones_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(0),
	o => \botones_cabina[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\botones_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(1),
	o => \botones_cabina[1]~input_o\);

-- Location: LCCOMB_X4_Y22_N12
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (nuevo_piso(0) & (((\botones_cabina[1]~input_o\) # (nuevo_piso(1))))) # (!nuevo_piso(0) & (\botones_cabina[0]~input_o\ & ((!nuevo_piso(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_cabina[0]~input_o\,
	datab => \botones_cabina[1]~input_o\,
	datac => nuevo_piso(0),
	datad => nuevo_piso(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y22_N26
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (nuevo_piso(1) & ((\Mux2~0_combout\ & (\botones_cabina[3]~input_o\)) # (!\Mux2~0_combout\ & ((\botones_cabina[2]~input_o\))))) # (!nuevo_piso(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_cabina[3]~input_o\,
	datab => nuevo_piso(1),
	datac => \botones_cabina[2]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X3_Y29_N22
\botones_bajar[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(3),
	o => \botones_bajar[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\botones_bajar[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(1),
	o => \botones_bajar[1]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\botones_bajar[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(2),
	o => \botones_bajar[2]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\botones_bajar[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(0),
	o => \botones_bajar[0]~input_o\);

-- Location: LCCOMB_X4_Y22_N24
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (nuevo_piso(0) & (((nuevo_piso(1))))) # (!nuevo_piso(0) & ((nuevo_piso(1) & (\botones_bajar[2]~input_o\)) # (!nuevo_piso(1) & ((\botones_bajar[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_bajar[2]~input_o\,
	datab => \botones_bajar[0]~input_o\,
	datac => nuevo_piso(0),
	datad => nuevo_piso(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y22_N14
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (nuevo_piso(0) & ((\Mux1~0_combout\ & (\botones_bajar[3]~input_o\)) # (!\Mux1~0_combout\ & ((\botones_bajar[1]~input_o\))))) # (!nuevo_piso(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_bajar[3]~input_o\,
	datab => nuevo_piso(0),
	datac => \botones_bajar[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X3_Y29_N8
\botones_subir[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(2),
	o => \botones_subir[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\botones_subir[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(1),
	o => \botones_subir[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\botones_subir[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(0),
	o => \botones_subir[0]~input_o\);

-- Location: LCCOMB_X4_Y22_N16
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (nuevo_piso(0) & ((\botones_subir[1]~input_o\) # ((nuevo_piso(1))))) # (!nuevo_piso(0) & (((\botones_subir[0]~input_o\ & !nuevo_piso(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_subir[1]~input_o\,
	datab => \botones_subir[0]~input_o\,
	datac => nuevo_piso(0),
	datad => nuevo_piso(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X4_Y22_N18
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (nuevo_piso(1) & ((\Mux0~0_combout\ & ((\botones_subir[3]~input_o\))) # (!\Mux0~0_combout\ & (\botones_subir[2]~input_o\)))) # (!nuevo_piso(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_subir[2]~input_o\,
	datab => \botones_subir[3]~input_o\,
	datac => nuevo_piso(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X4_Y22_N4
\process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!nuevo_piso(2) & ((\Mux2~1_combout\) # ((\Mux1~1_combout\) # (\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => nuevo_piso(2),
	datac => \Mux1~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X4_Y22_N8
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\hay_solicitud_subir~2_combout\ & (!\process_2~0_combout\ & (!\process_2~1_combout\ & \Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hay_solicitud_subir~2_combout\,
	datab => \process_2~0_combout\,
	datac => \process_2~1_combout\,
	datad => \Selector10~2_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X2_Y22_N12
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado_actual.ALARMA_SOBRECARGA~q\) # ((!\power_fail~input_o\ & ((\estado_actual.VERIFICANDO_SOLICITUDES~q\) # (!\estado_actual.INACTIVO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \power_fail~input_o\,
	datab => \estado_actual.INACTIVO~q\,
	datac => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datad => \estado_actual.ALARMA_SOBRECARGA~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X2_Y22_N24
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & ((\LessThan10~0_combout\) # ((\people_count[2]~input_o\ & \people_count[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => \people_count[2]~input_o\,
	datac => \people_count[3]~input_o\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y22_N25
\estado_actual.ALARMA_SOBRECARGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.ALARMA_SOBRECARGA~q\);

-- Location: LCCOMB_X2_Y22_N16
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (!\LessThan10~0_combout\ & (\estado_actual.ALARMA_SOBRECARGA~q\ & ((!\people_count[3]~input_o\) # (!\people_count[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => \people_count[2]~input_o\,
	datac => \people_count[3]~input_o\,
	datad => \estado_actual.ALARMA_SOBRECARGA~q\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X5_Y22_N30
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (nuevo_piso(1)) # ((nuevo_piso(0)) # (nuevo_piso(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nuevo_piso(1),
	datac => nuevo_piso(0),
	datad => nuevo_piso(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y22_N22
\hay_solicitud_bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_bajar~0_combout\ = (nuevo_piso(1) & ((\botones_bajar[1]~input_o\) # ((\botones_bajar[2]~input_o\ & nuevo_piso(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_bajar[2]~input_o\,
	datab => \botones_bajar[1]~input_o\,
	datac => nuevo_piso(0),
	datad => nuevo_piso(1),
	combout => \hay_solicitud_bajar~0_combout\);

-- Location: LCCOMB_X4_Y22_N28
\hay_solicitud_bajar~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_bajar~1_combout\ = (\botones_bajar[1]~input_o\) # ((\botones_bajar[4]~input_o\ & ((nuevo_piso(0)) # (nuevo_piso(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_bajar[4]~input_o\,
	datab => \botones_bajar[1]~input_o\,
	datac => nuevo_piso(0),
	datad => nuevo_piso(1),
	combout => \hay_solicitud_bajar~1_combout\);

-- Location: LCCOMB_X4_Y22_N10
\hay_solicitud_bajar~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_bajar~2_combout\ = (nuevo_piso(2) & ((\botones_bajar[2]~input_o\) # ((\botones_bajar[3]~input_o\) # (\hay_solicitud_bajar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_bajar[2]~input_o\,
	datab => \botones_bajar[3]~input_o\,
	datac => nuevo_piso(2),
	datad => \hay_solicitud_bajar~1_combout\,
	combout => \hay_solicitud_bajar~2_combout\);

-- Location: LCCOMB_X4_Y22_N0
\hay_solicitud_bajar~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_bajar~3_combout\ = (\hay_solicitud_bajar~0_combout\) # ((\hay_solicitud_bajar~2_combout\) # ((\LessThan1~0_combout\ & \botones_bajar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \botones_bajar[0]~input_o\,
	datac => \hay_solicitud_bajar~0_combout\,
	datad => \hay_solicitud_bajar~2_combout\,
	combout => \hay_solicitud_bajar~3_combout\);

-- Location: LCCOMB_X3_Y22_N14
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estado_actual.VERIFICANDO_SOLICITUDES~q\ & (!\hay_solicitud_bajar~3_combout\ & !\s_mover_bajar~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datac => \hay_solicitud_bajar~3_combout\,
	datad => \s_mover_bajar~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y22_N26
\LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (\LessThan10~0_combout\) # ((\people_count[2]~input_o\ & \people_count[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \people_count[2]~input_o\,
	datac => \people_count[3]~input_o\,
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X3_Y22_N26
\Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (!\estado_actual.ABRIENDO_PUERTA~q\ & !\estado_actual.PUERTA_ABIERTA_ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_actual.ABRIENDO_PUERTA~q\,
	datac => \estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \Selector10~3_combout\);

-- Location: LCCOMB_X3_Y22_N2
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estado_actual.INACTIVO~q\ & (\fin_timer~input_o\ & ((!\Selector1~2_combout\) # (!\Selector10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.INACTIVO~q\,
	datab => \fin_timer~input_o\,
	datac => \Selector10~3_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X3_Y22_N18
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\power_fail~input_o\ & ((!\estado_actual.INACTIVO~q\))) # (!\power_fail~input_o\ & (\estado_actual.ALARMA_FALLA_ENERGIA~q\ & \estado_actual.INACTIVO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.ALARMA_FALLA_ENERGIA~q\,
	datab => \power_fail~input_o\,
	datac => \estado_actual.INACTIVO~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X3_Y22_N30
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((\estado_actual.INACTIVO~q\ & (\estado_actual.ALARMA_SOBRECARGA~q\ & !\LessThan10~1_combout\)) # (!\estado_actual.INACTIVO~q\ & ((\LessThan10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.INACTIVO~q\,
	datab => \estado_actual.ALARMA_SOBRECARGA~q\,
	datac => \LessThan10~1_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X2_Y22_N20
\process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (\botones_cabina[2]~input_o\) # ((\botones_cabina[3]~input_o\) # ((\botones_cabina[1]~input_o\) # (\botones_cabina[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_cabina[2]~input_o\,
	datab => \botones_cabina[3]~input_o\,
	datac => \botones_cabina[1]~input_o\,
	datad => \botones_cabina[0]~input_o\,
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X4_Y22_N2
\process_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (\process_2~2_combout\) # ((\botones_cabina[4]~input_o\) # ((\hay_solicitud_subir~2_combout\) # (\hay_solicitud_bajar~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~2_combout\,
	datab => \botones_cabina[4]~input_o\,
	datac => \hay_solicitud_subir~2_combout\,
	datad => \hay_solicitud_bajar~3_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X2_Y22_N10
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado_actual.ALARMA_FALLA_ENERGIA~q\ & (!\Selector2~2_combout\ & ((\estado_actual.INACTIVO~q\) # (!\process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.ALARMA_FALLA_ENERGIA~q\,
	datab => \estado_actual.INACTIVO~q\,
	datac => \Selector2~2_combout\,
	datad => \process_2~3_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X2_Y22_N14
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\estado_actual.VERIFICANDO_SOLICITUDES~q\ & (\power_fail~input_o\)) # (!\estado_actual.VERIFICANDO_SOLICITUDES~q\ & ((\Selector8~0_combout\) # ((\power_fail~input_o\ & !\estado_actual.INACTIVO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \power_fail~input_o\,
	datab => \estado_actual.INACTIVO~q\,
	datac => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X2_Y22_N15
\estado_actual.ALARMA_FALLA_ENERGIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.ALARMA_FALLA_ENERGIA~q\);

-- Location: LCCOMB_X3_Y22_N12
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\estado_actual.ALARMA_FALLA_ENERGIA~q\) # ((!\LessThan10~1_combout\ & (!\estado_actual.INACTIVO~q\ & !\process_2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.ALARMA_FALLA_ENERGIA~q\,
	datab => \LessThan10~1_combout\,
	datac => \estado_actual.INACTIVO~q\,
	datad => \process_2~3_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X3_Y22_N22
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector2~5_combout\ & (!\Selector0~0_combout\ & ((\power_fail~input_o\) # (!\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~5_combout\,
	datab => \power_fail~input_o\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X3_Y22_N23
\estado_actual.INACTIVO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.INACTIVO~q\);

-- Location: LCCOMB_X3_Y22_N20
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (!\estado_actual.VERIFICANDO_SOLICITUDES~q\ & ((\Selector2~2_combout\) # ((!\estado_actual.INACTIVO~q\ & \process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.INACTIVO~q\,
	datab => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datac => \Selector2~2_combout\,
	datad => \process_2~3_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X3_Y22_N6
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\Selector2~3_combout\ & ((\Selector11~0_combout\) # ((!\estado_actual.VERIFICANDO_SOLICITUDES~q\ & \estado_actual.MOVIENDO_SUBIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datab => \Selector11~0_combout\,
	datac => \estado_actual.MOVIENDO_SUBIENDO~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X3_Y22_N7
\estado_actual.MOVIENDO_SUBIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.MOVIENDO_SUBIENDO~q\);

-- Location: LCCOMB_X5_Y22_N12
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\fin_timer~input_o\ & (\estado_actual.MOVIENDO_SUBIENDO~q\ & !nuevo_piso(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fin_timer~input_o\,
	datac => \estado_actual.MOVIENDO_SUBIENDO~q\,
	datad => nuevo_piso(2),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X5_Y22_N28
\nuevo_piso[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevo_piso[1]~3_combout\ = nuevo_piso(1) $ (((\nuevo_piso[2]~2_combout\ & (nuevo_piso(0) $ (!\process_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nuevo_piso(0),
	datab => \process_1~2_combout\,
	datac => nuevo_piso(1),
	datad => \nuevo_piso[2]~2_combout\,
	combout => \nuevo_piso[1]~3_combout\);

-- Location: FF_X5_Y22_N29
\nuevo_piso[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nuevo_piso[1]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nuevo_piso(1));

-- Location: LCCOMB_X4_Y22_N20
\hay_solicitud_subir~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_subir~1_combout\ = (\botones_subir[3]~input_o\) # ((\botones_subir[2]~input_o\) # ((\botones_subir[1]~input_o\ & !nuevo_piso(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_subir[1]~input_o\,
	datab => \botones_subir[3]~input_o\,
	datac => nuevo_piso(0),
	datad => \botones_subir[2]~input_o\,
	combout => \hay_solicitud_subir~1_combout\);

-- Location: LCCOMB_X4_Y22_N30
\hay_solicitud_subir~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hay_solicitud_subir~2_combout\ = (\hay_solicitud_subir~0_combout\) # ((!nuevo_piso(2) & (!nuevo_piso(1) & \hay_solicitud_subir~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hay_solicitud_subir~0_combout\,
	datab => nuevo_piso(2),
	datac => nuevo_piso(1),
	datad => \hay_solicitud_subir~1_combout\,
	combout => \hay_solicitud_subir~2_combout\);

-- Location: LCCOMB_X3_Y22_N10
\s_mover_bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_mover_bajar~0_combout\ = ((\process_2~0_combout\) # ((\hay_solicitud_subir~2_combout\) # (\process_2~1_combout\))) # (!\Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \process_2~0_combout\,
	datac => \hay_solicitud_subir~2_combout\,
	datad => \process_2~1_combout\,
	combout => \s_mover_bajar~0_combout\);

-- Location: LCCOMB_X3_Y22_N28
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado_actual.VERIFICANDO_SOLICITUDES~q\ & (\hay_solicitud_bajar~3_combout\)) # (!\estado_actual.VERIFICANDO_SOLICITUDES~q\ & ((\estado_actual.MOVIENDO_BAJANDO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datab => \hay_solicitud_bajar~3_combout\,
	datad => \estado_actual.MOVIENDO_BAJANDO~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X3_Y22_N8
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\ & (!\Selector2~3_combout\ & ((!\estado_actual.VERIFICANDO_SOLICITUDES~q\) # (!\s_mover_bajar~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mover_bajar~0_combout\,
	datab => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datac => \Selector6~0_combout\,
	datad => \Selector2~3_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X3_Y22_N9
\estado_actual.MOVIENDO_BAJANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.MOVIENDO_BAJANDO~q\);

-- Location: LCCOMB_X5_Y22_N10
\nuevo_piso[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevo_piso[2]~2_combout\ = (\process_1~2_combout\) # ((\estado_actual.MOVIENDO_BAJANDO~q\ & (\fin_timer~input_o\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.MOVIENDO_BAJANDO~q\,
	datab => \fin_timer~input_o\,
	datac => \LessThan1~0_combout\,
	datad => \process_1~2_combout\,
	combout => \nuevo_piso[2]~2_combout\);

-- Location: LCCOMB_X5_Y22_N14
\nuevo_piso[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevo_piso[0]~4_combout\ = nuevo_piso(0) $ (\nuevo_piso[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nuevo_piso(0),
	datad => \nuevo_piso[2]~2_combout\,
	combout => \nuevo_piso[0]~4_combout\);

-- Location: FF_X5_Y22_N15
\nuevo_piso[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nuevo_piso[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nuevo_piso(0));

-- Location: LCCOMB_X5_Y22_N2
\nuevo_piso[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevo_piso[2]~0_combout\ = (nuevo_piso(1) & (!nuevo_piso(2) & ((\estado_actual.MOVIENDO_SUBIENDO~q\)))) # (!nuevo_piso(1) & (nuevo_piso(2) & (\estado_actual.MOVIENDO_BAJANDO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nuevo_piso(1),
	datab => nuevo_piso(2),
	datac => \estado_actual.MOVIENDO_BAJANDO~q\,
	datad => \estado_actual.MOVIENDO_SUBIENDO~q\,
	combout => \nuevo_piso[2]~0_combout\);

-- Location: LCCOMB_X5_Y22_N20
\nuevo_piso[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nuevo_piso[2]~1_combout\ = (\fin_timer~input_o\ & ((\nuevo_piso[2]~0_combout\ & (nuevo_piso(0))) # (!\nuevo_piso[2]~0_combout\ & ((nuevo_piso(2)))))) # (!\fin_timer~input_o\ & (((nuevo_piso(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_timer~input_o\,
	datab => nuevo_piso(0),
	datac => nuevo_piso(2),
	datad => \nuevo_piso[2]~0_combout\,
	combout => \nuevo_piso[2]~1_combout\);

-- Location: FF_X5_Y22_N21
\nuevo_piso[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nuevo_piso[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nuevo_piso(2));

-- Location: LCCOMB_X5_Y22_N26
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (nuevo_piso(2) & ((\botones_subir[4]~input_o\) # ((\botones_bajar[4]~input_o\) # (\botones_cabina[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_subir[4]~input_o\,
	datab => \botones_bajar[4]~input_o\,
	datac => \botones_cabina[4]~input_o\,
	datad => nuevo_piso(2),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X3_Y22_N16
\Selector10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~5_combout\ = (\Selector1~0_combout\ & (\estado_actual.VERIFICANDO_SOLICITUDES~q\ & ((\process_2~0_combout\) # (\process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \process_2~0_combout\,
	datac => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datad => \process_2~1_combout\,
	combout => \Selector10~5_combout\);

-- Location: LCCOMB_X3_Y22_N4
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (!\Selector2~3_combout\ & ((\Selector10~5_combout\) # ((!\estado_actual.VERIFICANDO_SOLICITUDES~q\ & \estado_actual.ABRIENDO_PUERTA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datab => \Selector10~5_combout\,
	datac => \estado_actual.ABRIENDO_PUERTA~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X3_Y22_N5
\estado_actual.ABRIENDO_PUERTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.ABRIENDO_PUERTA~q\);

-- Location: FF_X3_Y22_N27
\estado_actual.PUERTA_ABIERTA_ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_actual.ABRIENDO_PUERTA~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fin_timer~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.PUERTA_ABIERTA_ESPERA~q\);

-- Location: FF_X3_Y22_N29
\estado_actual.CERRANDO_PUERTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fin_timer~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.CERRANDO_PUERTA~q\);

-- Location: LCCOMB_X3_Y22_N24
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\estado_actual.CERRANDO_PUERTA~q\ & (!\estado_actual.MOVIENDO_BAJANDO~q\ & !\estado_actual.MOVIENDO_SUBIENDO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_actual.CERRANDO_PUERTA~q\,
	datac => \estado_actual.MOVIENDO_BAJANDO~q\,
	datad => \estado_actual.MOVIENDO_SUBIENDO~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X5_Y22_N16
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\estado_actual.INACTIVO~q\ & (\Selector1~0_combout\ & \process_2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.INACTIVO~q\,
	datac => \Selector1~0_combout\,
	datad => \process_2~3_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X5_Y22_N0
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~1_combout\) # ((!\Selector1~2_combout\ & ((\fin_timer~input_o\) # (\estado_actual.VERIFICANDO_SOLICITUDES~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \fin_timer~input_o\,
	datac => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X5_Y22_N1
\estado_actual.VERIFICANDO_SOLICITUDES\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.VERIFICANDO_SOLICITUDES~q\);

-- Location: LCCOMB_X5_Y22_N18
\Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector1~0_combout\ & \estado_actual.VERIFICANDO_SOLICITUDES~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	datad => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X2_Y22_N22
\Selector10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = ((\Selector10~2_combout\ & ((\process_2~1_combout\) # (\process_2~0_combout\)))) # (!\Selector10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~2_combout\,
	datab => \Selector10~3_combout\,
	datac => \process_2~1_combout\,
	datad => \process_2~0_combout\,
	combout => \Selector10~4_combout\);

-- Location: LCCOMB_X2_Y22_N0
\s_alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_alarma_sonora~0_combout\ = (!\estado_actual.ALARMA_FALLA_ENERGIA~q\ & !\estado_actual.ALARMA_SOBRECARGA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.ALARMA_FALLA_ENERGIA~q\,
	datad => \estado_actual.ALARMA_SOBRECARGA~q\,
	combout => \s_alarma_sonora~0_combout\);

-- Location: LCCOMB_X2_Y22_N2
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((\estado_actual.CERRANDO_PUERTA~q\) # ((\fin_timer~input_o\ & \estado_actual.PUERTA_ABIERTA_ESPERA~q\))) # (!\s_alarma_sonora~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_timer~input_o\,
	datab => \s_alarma_sonora~0_combout\,
	datac => \estado_actual.CERRANDO_PUERTA~q\,
	datad => \estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X5_Y22_N24
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\estado_actual.MOVIENDO_SUBIENDO~q\) # (\Selector11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_actual.MOVIENDO_SUBIENDO~q\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X3_Y22_N0
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado_actual.MOVIENDO_BAJANDO~q\) # ((\estado_actual.VERIFICANDO_SOLICITUDES~q\ & (\hay_solicitud_bajar~3_combout\ & !\s_mover_bajar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual.VERIFICANDO_SOLICITUDES~q\,
	datab => \estado_actual.MOVIENDO_BAJANDO~q\,
	datac => \hay_solicitud_bajar~3_combout\,
	datad => \s_mover_bajar~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: IOIBUF_X0_Y27_N8
\boton_abrir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_abrir,
	o => \boton_abrir~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\boton_cerrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_cerrar,
	o => \boton_cerrar~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\boton_notificar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_notificar,
	o => \boton_notificar~input_o\);

ww_abrir_puerta <= \abrir_puerta~output_o\;

ww_cerrar_puerta <= \cerrar_puerta~output_o\;

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_alarma_visual <= \alarma_visual~output_o\;

ww_luz_interior <= \luz_interior~output_o\;

ww_mover_subir <= \mover_subir~output_o\;

ww_mover_bajar <= \mover_bajar~output_o\;

ww_piso_actual(0) <= \piso_actual[0]~output_o\;

ww_piso_actual(1) <= \piso_actual[1]~output_o\;

ww_piso_actual(2) <= \piso_actual[2]~output_o\;
END structure;


