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

-- DATE "04/01/2025 11:12:17"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Alarmas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	abrir_puerta : IN std_logic;
	cerrar_puerta : IN std_logic;
	fallo_energia : IN std_logic;
	notificacion : IN std_logic;
	sobrecarga : BUFFER std_logic;
	led_puerta_abi : OUT std_logic;
	led_puerta_cie : OUT std_logic;
	led_fallo_en : OUT std_logic;
	led_notif : OUT std_logic;
	led_sobrecarga : OUT std_logic
	);
END Alarmas;

-- Design Ports Information
-- clk	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_puerta_abi	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_puerta_cie	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_fallo_en	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_notif	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sobrecarga	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_puerta	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notificacion	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Alarmas IS
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
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_cerrar_puerta : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL ww_led_puerta_abi : std_logic;
SIGNAL ww_led_puerta_cie : std_logic;
SIGNAL ww_led_fallo_en : std_logic;
SIGNAL ww_led_notif : std_logic;
SIGNAL ww_led_sobrecarga : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sobrecarga~output_o\ : std_logic;
SIGNAL \led_puerta_abi~output_o\ : std_logic;
SIGNAL \led_puerta_cie~output_o\ : std_logic;
SIGNAL \led_fallo_en~output_o\ : std_logic;
SIGNAL \led_notif~output_o\ : std_logic;
SIGNAL \led_sobrecarga~output_o\ : std_logic;
SIGNAL \abrir_puerta~input_o\ : std_logic;
SIGNAL \cerrar_puerta~input_o\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \notificacion~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_abrir_puerta <= abrir_puerta;
ww_cerrar_puerta <= cerrar_puerta;
ww_fallo_energia <= fallo_energia;
ww_notificacion <= notificacion;
sobrecarga <= ww_sobrecarga;
led_puerta_abi <= ww_led_puerta_abi;
led_puerta_cie <= ww_led_puerta_cie;
led_fallo_en <= ww_led_fallo_en;
led_notif <= ww_led_notif;
led_sobrecarga <= ww_led_sobrecarga;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y29_N9
\sobrecarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sobrecarga~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_puerta_abi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \abrir_puerta~input_o\,
	devoe => ww_devoe,
	o => \led_puerta_abi~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\led_puerta_cie~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cerrar_puerta~input_o\,
	devoe => ww_devoe,
	o => \led_puerta_cie~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\led_fallo_en~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fallo_energia~input_o\,
	devoe => ww_devoe,
	o => \led_fallo_en~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\led_notif~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \notificacion~input_o\,
	devoe => ww_devoe,
	o => \led_notif~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\led_sobrecarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_sobrecarga~output_o\);

-- Location: IOIBUF_X0_Y23_N15
\abrir_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir_puerta,
	o => \abrir_puerta~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\cerrar_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_puerta,
	o => \cerrar_puerta~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: IOIBUF_X37_Y29_N8
\notificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notificacion,
	o => \notificacion~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_sobrecarga <= \sobrecarga~output_o\;

ww_led_puerta_abi <= \led_puerta_abi~output_o\;

ww_led_puerta_cie <= \led_puerta_cie~output_o\;

ww_led_fallo_en <= \led_fallo_en~output_o\;

ww_led_notif <= \led_notif~output_o\;

ww_led_sobrecarga <= \led_sobrecarga~output_o\;
END structure;


