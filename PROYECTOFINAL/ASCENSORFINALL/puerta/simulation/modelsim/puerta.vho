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

-- DATE "05/06/2025 17:56:56"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	puerta IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	enable : IN std_logic;
	abrir : IN std_logic;
	cerrar : IN std_logic;
	fallo_energia : IN std_logic;
	puerta_abierta : OUT std_logic;
	puerta_cerrada : OUT std_logic;
	alarma_sonora : OUT std_logic;
	alarma_visual : OUT std_logic
	);
END puerta;

-- Design Ports Information
-- puerta_abierta	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_cerrada	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_sonora	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_visual	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF puerta IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL ww_cerrar : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_puerta_abierta : std_logic;
SIGNAL ww_puerta_cerrada : std_logic;
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_alarma_visual : std_logic;
SIGNAL \cerrar~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \abrir~input_o\ : std_logic;
SIGNAL \puerta_abierta~output_o\ : std_logic;
SIGNAL \puerta_cerrada~output_o\ : std_logic;
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \alarma_visual~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \estado_actual.BLOQUEO~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \estado_actual.BLOQUEO~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_enable <= enable;
ww_abrir <= abrir;
ww_cerrar <= cerrar;
ww_fallo_energia <= fallo_energia;
puerta_abierta <= ww_puerta_abierta;
puerta_cerrada <= ww_puerta_cerrada;
alarma_sonora <= ww_alarma_sonora;
alarma_visual <= ww_alarma_visual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X35_Y0_N16
\puerta_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \puerta_abierta~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\puerta_cerrada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \puerta_cerrada~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\alarma_sonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.BLOQUEO~q\,
	devoe => ww_devoe,
	o => \alarma_sonora~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\alarma_visual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estado_actual.BLOQUEO~q\,
	devoe => ww_devoe,
	o => \alarma_visual~output_o\);

-- Location: IOIBUF_X1_Y0_N29
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: LCCOMB_X2_Y4_N16
\estado_actual.BLOQUEO~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual.BLOQUEO~feeder_combout\ = \fallo_energia~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fallo_energia~input_o\,
	combout => \estado_actual.BLOQUEO~feeder_combout\);

-- Location: IOIBUF_X0_Y26_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X2_Y4_N17
\estado_actual.BLOQUEO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \estado_actual.BLOQUEO~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual.BLOQUEO~q\);

-- Location: IOIBUF_X0_Y25_N1
\cerrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar,
	o => \cerrar~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\abrir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir,
	o => \abrir~input_o\);

ww_puerta_abierta <= \puerta_abierta~output_o\;

ww_puerta_cerrada <= \puerta_cerrada~output_o\;

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_alarma_visual <= \alarma_visual~output_o\;
END structure;


