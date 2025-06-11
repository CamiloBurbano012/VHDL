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

-- DATE "05/06/2025 18:17:32"

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

ENTITY 	luces IS
    PORT (
	clk : IN std_logic;
	sensor_inactivo : IN std_logic;
	luz_cabina : OUT std_logic
	);
END luces;

-- Design Ports Information
-- luz_cabina	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_inactivo	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF luces IS
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
SIGNAL ww_sensor_inactivo : std_logic;
SIGNAL ww_luz_cabina : std_logic;
SIGNAL \luz_cabina~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \sensor_inactivo~input_o\ : std_logic;
SIGNAL \state~feeder_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \ALT_INV_state~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sensor_inactivo <= sensor_inactivo;
luz_cabina <= ww_luz_cabina;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state~q\ <= NOT \state~q\;

-- Location: IOOBUF_X0_Y27_N9
\luz_cabina~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state~q\,
	devoe => ww_devoe,
	o => \luz_cabina~output_o\);

-- Location: IOIBUF_X21_Y29_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\sensor_inactivo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_inactivo,
	o => \sensor_inactivo~input_o\);

-- Location: LCCOMB_X22_Y28_N16
\state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~feeder_combout\ = \sensor_inactivo~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensor_inactivo~input_o\,
	combout => \state~feeder_combout\);

-- Location: FF_X22_Y28_N17
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

ww_luz_cabina <= \luz_cabina~output_o\;
END structure;


