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

-- DATE "04/01/2025 11:10:54"

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

ENTITY 	detectar_piso_actual IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	motor_subir : BUFFER std_logic;
	motor_bajar : BUFFER std_logic;
	piso_actual : OUT std_logic_vector(2 DOWNTO 0)
	);
END detectar_piso_actual;

-- Design Ports Information
-- clk_1Hz	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_subir	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_bajar	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF detectar_piso_actual IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1Hz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \motor_subir~output_o\ : std_logic;
SIGNAL \motor_bajar~output_o\ : std_logic;
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
motor_subir <= ww_motor_subir;
motor_bajar <= ww_motor_bajar;
piso_actual <= ww_piso_actual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N23
\motor_subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_subir~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\motor_bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_bajar~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOIBUF_X41_Y19_N22
\clk_1Hz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1Hz,
	o => \clk_1Hz~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_motor_subir <= \motor_subir~output_o\;

ww_motor_bajar <= \motor_bajar~output_o\;

ww_piso_actual(0) <= \piso_actual[0]~output_o\;

ww_piso_actual(1) <= \piso_actual[1]~output_o\;

ww_piso_actual(2) <= \piso_actual[2]~output_o\;
END structure;


