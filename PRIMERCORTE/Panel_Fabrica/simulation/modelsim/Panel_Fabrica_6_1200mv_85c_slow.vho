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

-- DATE "02/25/2025 21:39:57"

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

ENTITY 	Panel_Fabrica IS
    PORT (
	silo_a : IN std_logic;
	silo_b : IN std_logic;
	luz_c : OUT std_logic;
	luz_d : OUT std_logic;
	alarma : OUT std_logic
	);
END Panel_Fabrica;

-- Design Ports Information
-- luz_c	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_d	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- silo_a	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- silo_b	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Panel_Fabrica IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_silo_a : std_logic;
SIGNAL ww_silo_b : std_logic;
SIGNAL ww_luz_c : std_logic;
SIGNAL ww_luz_d : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL \luz_c~output_o\ : std_logic;
SIGNAL \luz_d~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \silo_a~input_o\ : std_logic;
SIGNAL \silo_b~input_o\ : std_logic;
SIGNAL \luz_c~0_combout\ : std_logic;
SIGNAL \luz_d~0_combout\ : std_logic;
SIGNAL \ALT_INV_luz_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_luz_d~0_combout\ : std_logic;

BEGIN

ww_silo_a <= silo_a;
ww_silo_b <= silo_b;
luz_c <= ww_luz_c;
luz_d <= ww_luz_d;
alarma <= ww_alarma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_luz_c~0_combout\ <= NOT \luz_c~0_combout\;
\ALT_INV_luz_d~0_combout\ <= NOT \luz_d~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\luz_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_luz_c~0_combout\,
	devoe => ww_devoe,
	o => \luz_c~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\luz_d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_luz_d~0_combout\,
	devoe => ww_devoe,
	o => \luz_d~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_luz_d~0_combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\silo_a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_silo_a,
	o => \silo_a~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\silo_b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_silo_b,
	o => \silo_b~input_o\);

-- Location: LCCOMB_X2_Y20_N16
\luz_c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_c~0_combout\ = (\silo_a~input_o\ & \silo_b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \silo_a~input_o\,
	datad => \silo_b~input_o\,
	combout => \luz_c~0_combout\);

-- Location: LCCOMB_X2_Y20_N26
\luz_d~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_d~0_combout\ = (\silo_a~input_o\) # (\silo_b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \silo_a~input_o\,
	datad => \silo_b~input_o\,
	combout => \luz_d~0_combout\);

ww_luz_c <= \luz_c~output_o\;

ww_luz_d <= \luz_d~output_o\;

ww_alarma <= \alarma~output_o\;
END structure;


