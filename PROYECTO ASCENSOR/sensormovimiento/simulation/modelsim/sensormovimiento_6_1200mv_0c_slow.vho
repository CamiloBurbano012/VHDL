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

-- DATE "03/27/2025 20:52:26"

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

ENTITY 	sensormovimiento IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	piso_actual : INOUT std_logic_vector(2 DOWNTO 0);
	piso_destino : IN std_logic_vector(2 DOWNTO 0);
	en_movimiento : OUT std_logic
	);
END sensormovimiento;

-- Design Ports Information
-- en_movimiento	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sensormovimiento IS
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
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_en_movimiento : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;
SIGNAL \en_movimiento~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_int[0]~32_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_int[0]~33\ : std_logic;
SIGNAL \piso_int[1]~34_combout\ : std_logic;
SIGNAL \piso_actual[1]~reg0_q\ : std_logic;
SIGNAL \piso_int[1]~35\ : std_logic;
SIGNAL \piso_int[2]~36_combout\ : std_logic;
SIGNAL \piso_actual[2]~reg0feeder_combout\ : std_logic;
SIGNAL \piso_actual[2]~reg0_q\ : std_logic;
SIGNAL \piso_destino[2]~input_o\ : std_logic;
SIGNAL \destino_int[2]~feeder_combout\ : std_logic;
SIGNAL \piso_destino[0]~input_o\ : std_logic;
SIGNAL \destino_int[0]~feeder_combout\ : std_logic;
SIGNAL \piso_destino[1]~input_o\ : std_logic;
SIGNAL \destino_int[1]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \piso_int[2]~37\ : std_logic;
SIGNAL \piso_int[3]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \piso_int[3]~39\ : std_logic;
SIGNAL \piso_int[4]~44_combout\ : std_logic;
SIGNAL \piso_int[4]~45\ : std_logic;
SIGNAL \piso_int[5]~46_combout\ : std_logic;
SIGNAL \piso_int[5]~47\ : std_logic;
SIGNAL \piso_int[6]~48_combout\ : std_logic;
SIGNAL \piso_int[6]~49\ : std_logic;
SIGNAL \piso_int[7]~50_combout\ : std_logic;
SIGNAL \piso_int[7]~51\ : std_logic;
SIGNAL \piso_int[8]~52_combout\ : std_logic;
SIGNAL \piso_int[8]~53\ : std_logic;
SIGNAL \piso_int[9]~54_combout\ : std_logic;
SIGNAL \piso_int[9]~55\ : std_logic;
SIGNAL \piso_int[10]~56_combout\ : std_logic;
SIGNAL \piso_int[10]~57\ : std_logic;
SIGNAL \piso_int[11]~58_combout\ : std_logic;
SIGNAL \piso_int[11]~59\ : std_logic;
SIGNAL \piso_int[12]~60_combout\ : std_logic;
SIGNAL \piso_int[12]~61\ : std_logic;
SIGNAL \piso_int[13]~62_combout\ : std_logic;
SIGNAL \piso_int[13]~63\ : std_logic;
SIGNAL \piso_int[14]~64_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \piso_int[14]~65\ : std_logic;
SIGNAL \piso_int[15]~66_combout\ : std_logic;
SIGNAL \piso_int[15]~67\ : std_logic;
SIGNAL \piso_int[16]~68_combout\ : std_logic;
SIGNAL \piso_int[16]~69\ : std_logic;
SIGNAL \piso_int[17]~70_combout\ : std_logic;
SIGNAL \piso_int[17]~71\ : std_logic;
SIGNAL \piso_int[18]~72_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \piso_int[18]~73\ : std_logic;
SIGNAL \piso_int[19]~74_combout\ : std_logic;
SIGNAL \piso_int[19]~75\ : std_logic;
SIGNAL \piso_int[20]~76_combout\ : std_logic;
SIGNAL \piso_int[20]~77\ : std_logic;
SIGNAL \piso_int[21]~78_combout\ : std_logic;
SIGNAL \piso_int[21]~79\ : std_logic;
SIGNAL \piso_int[22]~80_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \piso_int[22]~81\ : std_logic;
SIGNAL \piso_int[23]~82_combout\ : std_logic;
SIGNAL \piso_int[23]~83\ : std_logic;
SIGNAL \piso_int[24]~84_combout\ : std_logic;
SIGNAL \piso_int[24]~85\ : std_logic;
SIGNAL \piso_int[25]~86_combout\ : std_logic;
SIGNAL \piso_int[25]~87\ : std_logic;
SIGNAL \piso_int[26]~88_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \piso_int[26]~89\ : std_logic;
SIGNAL \piso_int[27]~90_combout\ : std_logic;
SIGNAL \piso_int[27]~91\ : std_logic;
SIGNAL \piso_int[28]~92_combout\ : std_logic;
SIGNAL \piso_int[28]~93\ : std_logic;
SIGNAL \piso_int[29]~94_combout\ : std_logic;
SIGNAL \piso_int[29]~95\ : std_logic;
SIGNAL \piso_int[30]~96_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \piso_int[30]~97\ : std_logic;
SIGNAL \piso_int[31]~98_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \piso_int[2]~40_combout\ : std_logic;
SIGNAL \piso_int[2]~41_combout\ : std_logic;
SIGNAL \piso_int[2]~42_combout\ : std_logic;
SIGNAL \piso_int[2]~43_combout\ : std_logic;
SIGNAL \piso_actual[0]~reg0_q\ : std_logic;
SIGNAL \en_movimiento~reg0feeder_combout\ : std_logic;
SIGNAL \en_movimiento~reg0_q\ : std_logic;
SIGNAL piso_int : std_logic_vector(31 DOWNTO 0);
SIGNAL destino_int : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_piso_destino <= piso_destino;
en_movimiento <= ww_en_movimiento;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X16_Y29_N23
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\en_movimiento~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \en_movimiento~reg0_q\,
	devoe => ww_devoe,
	o => \en_movimiento~output_o\);

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

-- Location: LCCOMB_X16_Y21_N0
\piso_int[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[0]~32_combout\ = piso_int(0) $ (VCC)
-- \piso_int[0]~33\ = CARRY(piso_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_int(0),
	datad => VCC,
	combout => \piso_int[0]~32_combout\,
	cout => \piso_int[0]~33\);

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

-- Location: LCCOMB_X16_Y21_N2
\piso_int[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[1]~34_combout\ = (\LessThan0~2_combout\ & ((piso_int(1) & (\piso_int[0]~33\ & VCC)) # (!piso_int(1) & (!\piso_int[0]~33\)))) # (!\LessThan0~2_combout\ & ((piso_int(1) & (!\piso_int[0]~33\)) # (!piso_int(1) & ((\piso_int[0]~33\) # (GND)))))
-- \piso_int[1]~35\ = CARRY((\LessThan0~2_combout\ & (!piso_int(1) & !\piso_int[0]~33\)) # (!\LessThan0~2_combout\ & ((!\piso_int[0]~33\) # (!piso_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(1),
	datad => VCC,
	cin => \piso_int[0]~33\,
	combout => \piso_int[1]~34_combout\,
	cout => \piso_int[1]~35\);

-- Location: FF_X15_Y21_N21
\piso_actual[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => piso_int(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[1]~reg0_q\);

-- Location: FF_X16_Y21_N3
\piso_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[1]~34_combout\,
	asdata => \piso_actual[1]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(1));

-- Location: LCCOMB_X16_Y21_N4
\piso_int[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~36_combout\ = ((\LessThan0~2_combout\ $ (piso_int(2) $ (!\piso_int[1]~35\)))) # (GND)
-- \piso_int[2]~37\ = CARRY((\LessThan0~2_combout\ & ((piso_int(2)) # (!\piso_int[1]~35\))) # (!\LessThan0~2_combout\ & (piso_int(2) & !\piso_int[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(2),
	datad => VCC,
	cin => \piso_int[1]~35\,
	combout => \piso_int[2]~36_combout\,
	cout => \piso_int[2]~37\);

-- Location: LCCOMB_X15_Y21_N12
\piso_actual[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual[2]~reg0feeder_combout\ = piso_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => piso_int(2),
	combout => \piso_actual[2]~reg0feeder_combout\);

-- Location: FF_X15_Y21_N13
\piso_actual[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[2]~reg0_q\);

-- Location: FF_X16_Y21_N5
\piso_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[2]~36_combout\,
	asdata => \piso_actual[2]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(2));

-- Location: IOIBUF_X14_Y29_N22
\piso_destino[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(2),
	o => \piso_destino[2]~input_o\);

-- Location: LCCOMB_X15_Y21_N6
\destino_int[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[2]~feeder_combout\ = \piso_destino[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \piso_destino[2]~input_o\,
	combout => \destino_int[2]~feeder_combout\);

-- Location: FF_X15_Y21_N7
\destino_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destino_int[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(2));

-- Location: IOIBUF_X16_Y29_N1
\piso_destino[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(0),
	o => \piso_destino[0]~input_o\);

-- Location: LCCOMB_X17_Y21_N20
\destino_int[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[0]~feeder_combout\ = \piso_destino[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \piso_destino[0]~input_o\,
	combout => \destino_int[0]~feeder_combout\);

-- Location: FF_X17_Y21_N21
\destino_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destino_int[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(0));

-- Location: IOIBUF_X14_Y29_N29
\piso_destino[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(1),
	o => \piso_destino[1]~input_o\);

-- Location: LCCOMB_X15_Y21_N28
\destino_int[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int[1]~feeder_combout\ = \piso_destino[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \piso_destino[1]~input_o\,
	combout => \destino_int[1]~feeder_combout\);

-- Location: FF_X15_Y21_N29
\destino_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \destino_int[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(1));

-- Location: LCCOMB_X15_Y21_N20
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (piso_int(1) & (!piso_int(0) & (destino_int(0) & destino_int(1)))) # (!piso_int(1) & ((destino_int(1)) # ((!piso_int(0) & destino_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(0),
	datab => destino_int(0),
	datac => piso_int(1),
	datad => destino_int(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y21_N26
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (piso_int(2) & (destino_int(2) & \LessThan0~0_combout\)) # (!piso_int(2) & ((destino_int(2)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(2),
	datab => destino_int(2),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y21_N6
\piso_int[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[3]~38_combout\ = (\LessThan0~2_combout\ & ((piso_int(3) & (\piso_int[2]~37\ & VCC)) # (!piso_int(3) & (!\piso_int[2]~37\)))) # (!\LessThan0~2_combout\ & ((piso_int(3) & (!\piso_int[2]~37\)) # (!piso_int(3) & ((\piso_int[2]~37\) # (GND)))))
-- \piso_int[3]~39\ = CARRY((\LessThan0~2_combout\ & (!piso_int(3) & !\piso_int[2]~37\)) # (!\LessThan0~2_combout\ & ((!\piso_int[2]~37\) # (!piso_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(3),
	datad => VCC,
	cin => \piso_int[2]~37\,
	combout => \piso_int[3]~38_combout\,
	cout => \piso_int[3]~39\);

-- Location: LCCOMB_X17_Y20_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y21_N7
\piso_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[3]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(3));

-- Location: LCCOMB_X16_Y21_N8
\piso_int[4]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[4]~44_combout\ = ((\LessThan0~2_combout\ $ (piso_int(4) $ (!\piso_int[3]~39\)))) # (GND)
-- \piso_int[4]~45\ = CARRY((\LessThan0~2_combout\ & ((piso_int(4)) # (!\piso_int[3]~39\))) # (!\LessThan0~2_combout\ & (piso_int(4) & !\piso_int[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(4),
	datad => VCC,
	cin => \piso_int[3]~39\,
	combout => \piso_int[4]~44_combout\,
	cout => \piso_int[4]~45\);

-- Location: FF_X16_Y21_N9
\piso_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[4]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(4));

-- Location: LCCOMB_X16_Y21_N10
\piso_int[5]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[5]~46_combout\ = (\LessThan0~2_combout\ & ((piso_int(5) & (\piso_int[4]~45\ & VCC)) # (!piso_int(5) & (!\piso_int[4]~45\)))) # (!\LessThan0~2_combout\ & ((piso_int(5) & (!\piso_int[4]~45\)) # (!piso_int(5) & ((\piso_int[4]~45\) # (GND)))))
-- \piso_int[5]~47\ = CARRY((\LessThan0~2_combout\ & (!piso_int(5) & !\piso_int[4]~45\)) # (!\LessThan0~2_combout\ & ((!\piso_int[4]~45\) # (!piso_int(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(5),
	datad => VCC,
	cin => \piso_int[4]~45\,
	combout => \piso_int[5]~46_combout\,
	cout => \piso_int[5]~47\);

-- Location: FF_X16_Y21_N11
\piso_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[5]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(5));

-- Location: LCCOMB_X16_Y21_N12
\piso_int[6]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[6]~48_combout\ = ((\LessThan0~2_combout\ $ (piso_int(6) $ (!\piso_int[5]~47\)))) # (GND)
-- \piso_int[6]~49\ = CARRY((\LessThan0~2_combout\ & ((piso_int(6)) # (!\piso_int[5]~47\))) # (!\LessThan0~2_combout\ & (piso_int(6) & !\piso_int[5]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(6),
	datad => VCC,
	cin => \piso_int[5]~47\,
	combout => \piso_int[6]~48_combout\,
	cout => \piso_int[6]~49\);

-- Location: FF_X16_Y21_N13
\piso_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[6]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(6));

-- Location: LCCOMB_X16_Y21_N14
\piso_int[7]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[7]~50_combout\ = (\LessThan0~2_combout\ & ((piso_int(7) & (\piso_int[6]~49\ & VCC)) # (!piso_int(7) & (!\piso_int[6]~49\)))) # (!\LessThan0~2_combout\ & ((piso_int(7) & (!\piso_int[6]~49\)) # (!piso_int(7) & ((\piso_int[6]~49\) # (GND)))))
-- \piso_int[7]~51\ = CARRY((\LessThan0~2_combout\ & (!piso_int(7) & !\piso_int[6]~49\)) # (!\LessThan0~2_combout\ & ((!\piso_int[6]~49\) # (!piso_int(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(7),
	datad => VCC,
	cin => \piso_int[6]~49\,
	combout => \piso_int[7]~50_combout\,
	cout => \piso_int[7]~51\);

-- Location: FF_X16_Y21_N15
\piso_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[7]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(7));

-- Location: LCCOMB_X16_Y21_N16
\piso_int[8]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[8]~52_combout\ = ((piso_int(8) $ (\LessThan0~2_combout\ $ (!\piso_int[7]~51\)))) # (GND)
-- \piso_int[8]~53\ = CARRY((piso_int(8) & ((\LessThan0~2_combout\) # (!\piso_int[7]~51\))) # (!piso_int(8) & (\LessThan0~2_combout\ & !\piso_int[7]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(8),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[7]~51\,
	combout => \piso_int[8]~52_combout\,
	cout => \piso_int[8]~53\);

-- Location: FF_X16_Y21_N17
\piso_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[8]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(8));

-- Location: LCCOMB_X16_Y21_N18
\piso_int[9]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[9]~54_combout\ = (\LessThan0~2_combout\ & ((piso_int(9) & (\piso_int[8]~53\ & VCC)) # (!piso_int(9) & (!\piso_int[8]~53\)))) # (!\LessThan0~2_combout\ & ((piso_int(9) & (!\piso_int[8]~53\)) # (!piso_int(9) & ((\piso_int[8]~53\) # (GND)))))
-- \piso_int[9]~55\ = CARRY((\LessThan0~2_combout\ & (!piso_int(9) & !\piso_int[8]~53\)) # (!\LessThan0~2_combout\ & ((!\piso_int[8]~53\) # (!piso_int(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(9),
	datad => VCC,
	cin => \piso_int[8]~53\,
	combout => \piso_int[9]~54_combout\,
	cout => \piso_int[9]~55\);

-- Location: FF_X16_Y21_N19
\piso_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[9]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(9));

-- Location: LCCOMB_X16_Y21_N20
\piso_int[10]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[10]~56_combout\ = ((piso_int(10) $ (\LessThan0~2_combout\ $ (!\piso_int[9]~55\)))) # (GND)
-- \piso_int[10]~57\ = CARRY((piso_int(10) & ((\LessThan0~2_combout\) # (!\piso_int[9]~55\))) # (!piso_int(10) & (\LessThan0~2_combout\ & !\piso_int[9]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(10),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[9]~55\,
	combout => \piso_int[10]~56_combout\,
	cout => \piso_int[10]~57\);

-- Location: FF_X16_Y21_N21
\piso_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[10]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(10));

-- Location: LCCOMB_X16_Y21_N22
\piso_int[11]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[11]~58_combout\ = (piso_int(11) & ((\LessThan0~2_combout\ & (\piso_int[10]~57\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[10]~57\)))) # (!piso_int(11) & ((\LessThan0~2_combout\ & (!\piso_int[10]~57\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[10]~57\) # (GND)))))
-- \piso_int[11]~59\ = CARRY((piso_int(11) & (!\LessThan0~2_combout\ & !\piso_int[10]~57\)) # (!piso_int(11) & ((!\piso_int[10]~57\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(11),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[10]~57\,
	combout => \piso_int[11]~58_combout\,
	cout => \piso_int[11]~59\);

-- Location: FF_X16_Y21_N23
\piso_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[11]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(11));

-- Location: LCCOMB_X16_Y21_N24
\piso_int[12]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[12]~60_combout\ = ((piso_int(12) $ (\LessThan0~2_combout\ $ (!\piso_int[11]~59\)))) # (GND)
-- \piso_int[12]~61\ = CARRY((piso_int(12) & ((\LessThan0~2_combout\) # (!\piso_int[11]~59\))) # (!piso_int(12) & (\LessThan0~2_combout\ & !\piso_int[11]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(12),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[11]~59\,
	combout => \piso_int[12]~60_combout\,
	cout => \piso_int[12]~61\);

-- Location: FF_X16_Y21_N25
\piso_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[12]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(12));

-- Location: LCCOMB_X16_Y21_N26
\piso_int[13]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[13]~62_combout\ = (piso_int(13) & ((\LessThan0~2_combout\ & (\piso_int[12]~61\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[12]~61\)))) # (!piso_int(13) & ((\LessThan0~2_combout\ & (!\piso_int[12]~61\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[12]~61\) # (GND)))))
-- \piso_int[13]~63\ = CARRY((piso_int(13) & (!\LessThan0~2_combout\ & !\piso_int[12]~61\)) # (!piso_int(13) & ((!\piso_int[12]~61\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(13),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[12]~61\,
	combout => \piso_int[13]~62_combout\,
	cout => \piso_int[13]~63\);

-- Location: FF_X16_Y21_N27
\piso_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[13]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(13));

-- Location: LCCOMB_X16_Y21_N28
\piso_int[14]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[14]~64_combout\ = ((piso_int(14) $ (\LessThan0~2_combout\ $ (!\piso_int[13]~63\)))) # (GND)
-- \piso_int[14]~65\ = CARRY((piso_int(14) & ((\LessThan0~2_combout\) # (!\piso_int[13]~63\))) # (!piso_int(14) & (\LessThan0~2_combout\ & !\piso_int[13]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(14),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[13]~63\,
	combout => \piso_int[14]~64_combout\,
	cout => \piso_int[14]~65\);

-- Location: FF_X16_Y21_N29
\piso_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[14]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(14));

-- Location: LCCOMB_X15_Y21_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!piso_int(11) & (!piso_int(13) & (!piso_int(12) & !piso_int(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(11),
	datab => piso_int(13),
	datac => piso_int(12),
	datad => piso_int(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y21_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!piso_int(10) & (!piso_int(9) & (!piso_int(7) & !piso_int(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(10),
	datab => piso_int(9),
	datac => piso_int(7),
	datad => piso_int(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y21_N14
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!piso_int(4) & (!piso_int(3) & (!piso_int(5) & !piso_int(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(4),
	datab => piso_int(3),
	datac => piso_int(5),
	datad => piso_int(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N30
\piso_int[15]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[15]~66_combout\ = (piso_int(15) & ((\LessThan0~2_combout\ & (\piso_int[14]~65\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[14]~65\)))) # (!piso_int(15) & ((\LessThan0~2_combout\ & (!\piso_int[14]~65\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[14]~65\) # (GND)))))
-- \piso_int[15]~67\ = CARRY((piso_int(15) & (!\LessThan0~2_combout\ & !\piso_int[14]~65\)) # (!piso_int(15) & ((!\piso_int[14]~65\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(15),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[14]~65\,
	combout => \piso_int[15]~66_combout\,
	cout => \piso_int[15]~67\);

-- Location: FF_X16_Y21_N31
\piso_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[15]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(15));

-- Location: LCCOMB_X16_Y20_N0
\piso_int[16]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[16]~68_combout\ = ((\LessThan0~2_combout\ $ (piso_int(16) $ (!\piso_int[15]~67\)))) # (GND)
-- \piso_int[16]~69\ = CARRY((\LessThan0~2_combout\ & ((piso_int(16)) # (!\piso_int[15]~67\))) # (!\LessThan0~2_combout\ & (piso_int(16) & !\piso_int[15]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(16),
	datad => VCC,
	cin => \piso_int[15]~67\,
	combout => \piso_int[16]~68_combout\,
	cout => \piso_int[16]~69\);

-- Location: FF_X16_Y20_N1
\piso_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[16]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(16));

-- Location: LCCOMB_X16_Y20_N2
\piso_int[17]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[17]~70_combout\ = (\LessThan0~2_combout\ & ((piso_int(17) & (\piso_int[16]~69\ & VCC)) # (!piso_int(17) & (!\piso_int[16]~69\)))) # (!\LessThan0~2_combout\ & ((piso_int(17) & (!\piso_int[16]~69\)) # (!piso_int(17) & ((\piso_int[16]~69\) # 
-- (GND)))))
-- \piso_int[17]~71\ = CARRY((\LessThan0~2_combout\ & (!piso_int(17) & !\piso_int[16]~69\)) # (!\LessThan0~2_combout\ & ((!\piso_int[16]~69\) # (!piso_int(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(17),
	datad => VCC,
	cin => \piso_int[16]~69\,
	combout => \piso_int[17]~70_combout\,
	cout => \piso_int[17]~71\);

-- Location: FF_X16_Y20_N3
\piso_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[17]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(17));

-- Location: LCCOMB_X16_Y20_N4
\piso_int[18]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[18]~72_combout\ = ((\LessThan0~2_combout\ $ (piso_int(18) $ (!\piso_int[17]~71\)))) # (GND)
-- \piso_int[18]~73\ = CARRY((\LessThan0~2_combout\ & ((piso_int(18)) # (!\piso_int[17]~71\))) # (!\LessThan0~2_combout\ & (piso_int(18) & !\piso_int[17]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(18),
	datad => VCC,
	cin => \piso_int[17]~71\,
	combout => \piso_int[18]~72_combout\,
	cout => \piso_int[18]~73\);

-- Location: FF_X16_Y20_N5
\piso_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[18]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(18));

-- Location: LCCOMB_X15_Y21_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!piso_int(15) & (!piso_int(16) & (!piso_int(17) & !piso_int(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(15),
	datab => piso_int(16),
	datac => piso_int(17),
	datad => piso_int(18),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y21_N14
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X16_Y20_N6
\piso_int[19]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[19]~74_combout\ = (\LessThan0~2_combout\ & ((piso_int(19) & (\piso_int[18]~73\ & VCC)) # (!piso_int(19) & (!\piso_int[18]~73\)))) # (!\LessThan0~2_combout\ & ((piso_int(19) & (!\piso_int[18]~73\)) # (!piso_int(19) & ((\piso_int[18]~73\) # 
-- (GND)))))
-- \piso_int[19]~75\ = CARRY((\LessThan0~2_combout\ & (!piso_int(19) & !\piso_int[18]~73\)) # (!\LessThan0~2_combout\ & ((!\piso_int[18]~73\) # (!piso_int(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(19),
	datad => VCC,
	cin => \piso_int[18]~73\,
	combout => \piso_int[19]~74_combout\,
	cout => \piso_int[19]~75\);

-- Location: FF_X16_Y20_N7
\piso_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[19]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(19));

-- Location: LCCOMB_X16_Y20_N8
\piso_int[20]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[20]~76_combout\ = ((\LessThan0~2_combout\ $ (piso_int(20) $ (!\piso_int[19]~75\)))) # (GND)
-- \piso_int[20]~77\ = CARRY((\LessThan0~2_combout\ & ((piso_int(20)) # (!\piso_int[19]~75\))) # (!\LessThan0~2_combout\ & (piso_int(20) & !\piso_int[19]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(20),
	datad => VCC,
	cin => \piso_int[19]~75\,
	combout => \piso_int[20]~76_combout\,
	cout => \piso_int[20]~77\);

-- Location: FF_X16_Y20_N9
\piso_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[20]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(20));

-- Location: LCCOMB_X16_Y20_N10
\piso_int[21]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[21]~78_combout\ = (\LessThan0~2_combout\ & ((piso_int(21) & (\piso_int[20]~77\ & VCC)) # (!piso_int(21) & (!\piso_int[20]~77\)))) # (!\LessThan0~2_combout\ & ((piso_int(21) & (!\piso_int[20]~77\)) # (!piso_int(21) & ((\piso_int[20]~77\) # 
-- (GND)))))
-- \piso_int[21]~79\ = CARRY((\LessThan0~2_combout\ & (!piso_int(21) & !\piso_int[20]~77\)) # (!\LessThan0~2_combout\ & ((!\piso_int[20]~77\) # (!piso_int(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(21),
	datad => VCC,
	cin => \piso_int[20]~77\,
	combout => \piso_int[21]~78_combout\,
	cout => \piso_int[21]~79\);

-- Location: FF_X16_Y20_N11
\piso_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[21]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(21));

-- Location: LCCOMB_X16_Y20_N12
\piso_int[22]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[22]~80_combout\ = ((\LessThan0~2_combout\ $ (piso_int(22) $ (!\piso_int[21]~79\)))) # (GND)
-- \piso_int[22]~81\ = CARRY((\LessThan0~2_combout\ & ((piso_int(22)) # (!\piso_int[21]~79\))) # (!\LessThan0~2_combout\ & (piso_int(22) & !\piso_int[21]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(22),
	datad => VCC,
	cin => \piso_int[21]~79\,
	combout => \piso_int[22]~80_combout\,
	cout => \piso_int[22]~81\);

-- Location: FF_X16_Y20_N13
\piso_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[22]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(22));

-- Location: LCCOMB_X15_Y21_N4
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!piso_int(20) & (!piso_int(22) & (!piso_int(19) & !piso_int(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(20),
	datab => piso_int(22),
	datac => piso_int(19),
	datad => piso_int(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X16_Y20_N14
\piso_int[23]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[23]~82_combout\ = (\LessThan0~2_combout\ & ((piso_int(23) & (\piso_int[22]~81\ & VCC)) # (!piso_int(23) & (!\piso_int[22]~81\)))) # (!\LessThan0~2_combout\ & ((piso_int(23) & (!\piso_int[22]~81\)) # (!piso_int(23) & ((\piso_int[22]~81\) # 
-- (GND)))))
-- \piso_int[23]~83\ = CARRY((\LessThan0~2_combout\ & (!piso_int(23) & !\piso_int[22]~81\)) # (!\LessThan0~2_combout\ & ((!\piso_int[22]~81\) # (!piso_int(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => piso_int(23),
	datad => VCC,
	cin => \piso_int[22]~81\,
	combout => \piso_int[23]~82_combout\,
	cout => \piso_int[23]~83\);

-- Location: FF_X16_Y20_N15
\piso_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[23]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(23));

-- Location: LCCOMB_X16_Y20_N16
\piso_int[24]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[24]~84_combout\ = ((piso_int(24) $ (\LessThan0~2_combout\ $ (!\piso_int[23]~83\)))) # (GND)
-- \piso_int[24]~85\ = CARRY((piso_int(24) & ((\LessThan0~2_combout\) # (!\piso_int[23]~83\))) # (!piso_int(24) & (\LessThan0~2_combout\ & !\piso_int[23]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(24),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[23]~83\,
	combout => \piso_int[24]~84_combout\,
	cout => \piso_int[24]~85\);

-- Location: FF_X16_Y20_N17
\piso_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[24]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(24));

-- Location: LCCOMB_X16_Y20_N18
\piso_int[25]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[25]~86_combout\ = (piso_int(25) & ((\LessThan0~2_combout\ & (\piso_int[24]~85\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[24]~85\)))) # (!piso_int(25) & ((\LessThan0~2_combout\ & (!\piso_int[24]~85\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[24]~85\) # (GND)))))
-- \piso_int[25]~87\ = CARRY((piso_int(25) & (!\LessThan0~2_combout\ & !\piso_int[24]~85\)) # (!piso_int(25) & ((!\piso_int[24]~85\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(25),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[24]~85\,
	combout => \piso_int[25]~86_combout\,
	cout => \piso_int[25]~87\);

-- Location: FF_X16_Y20_N19
\piso_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[25]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(25));

-- Location: LCCOMB_X16_Y20_N20
\piso_int[26]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[26]~88_combout\ = ((piso_int(26) $ (\LessThan0~2_combout\ $ (!\piso_int[25]~87\)))) # (GND)
-- \piso_int[26]~89\ = CARRY((piso_int(26) & ((\LessThan0~2_combout\) # (!\piso_int[25]~87\))) # (!piso_int(26) & (\LessThan0~2_combout\ & !\piso_int[25]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(26),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[25]~87\,
	combout => \piso_int[26]~88_combout\,
	cout => \piso_int[26]~89\);

-- Location: FF_X16_Y20_N21
\piso_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[26]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(26));

-- Location: LCCOMB_X15_Y21_N22
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!piso_int(24) & (!piso_int(26) & (!piso_int(25) & !piso_int(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(24),
	datab => piso_int(26),
	datac => piso_int(25),
	datad => piso_int(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X16_Y20_N22
\piso_int[27]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[27]~90_combout\ = (piso_int(27) & ((\LessThan0~2_combout\ & (\piso_int[26]~89\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[26]~89\)))) # (!piso_int(27) & ((\LessThan0~2_combout\ & (!\piso_int[26]~89\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[26]~89\) # (GND)))))
-- \piso_int[27]~91\ = CARRY((piso_int(27) & (!\LessThan0~2_combout\ & !\piso_int[26]~89\)) # (!piso_int(27) & ((!\piso_int[26]~89\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(27),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[26]~89\,
	combout => \piso_int[27]~90_combout\,
	cout => \piso_int[27]~91\);

-- Location: FF_X16_Y20_N23
\piso_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[27]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(27));

-- Location: LCCOMB_X16_Y20_N24
\piso_int[28]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[28]~92_combout\ = ((piso_int(28) $ (\LessThan0~2_combout\ $ (!\piso_int[27]~91\)))) # (GND)
-- \piso_int[28]~93\ = CARRY((piso_int(28) & ((\LessThan0~2_combout\) # (!\piso_int[27]~91\))) # (!piso_int(28) & (\LessThan0~2_combout\ & !\piso_int[27]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(28),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[27]~91\,
	combout => \piso_int[28]~92_combout\,
	cout => \piso_int[28]~93\);

-- Location: FF_X16_Y20_N25
\piso_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[28]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(28));

-- Location: LCCOMB_X16_Y20_N26
\piso_int[29]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[29]~94_combout\ = (piso_int(29) & ((\LessThan0~2_combout\ & (\piso_int[28]~93\ & VCC)) # (!\LessThan0~2_combout\ & (!\piso_int[28]~93\)))) # (!piso_int(29) & ((\LessThan0~2_combout\ & (!\piso_int[28]~93\)) # (!\LessThan0~2_combout\ & 
-- ((\piso_int[28]~93\) # (GND)))))
-- \piso_int[29]~95\ = CARRY((piso_int(29) & (!\LessThan0~2_combout\ & !\piso_int[28]~93\)) # (!piso_int(29) & ((!\piso_int[28]~93\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(29),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[28]~93\,
	combout => \piso_int[29]~94_combout\,
	cout => \piso_int[29]~95\);

-- Location: FF_X16_Y20_N27
\piso_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[29]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(29));

-- Location: LCCOMB_X16_Y20_N28
\piso_int[30]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[30]~96_combout\ = ((piso_int(30) $ (\LessThan0~2_combout\ $ (!\piso_int[29]~95\)))) # (GND)
-- \piso_int[30]~97\ = CARRY((piso_int(30) & ((\LessThan0~2_combout\) # (!\piso_int[29]~95\))) # (!piso_int(30) & (\LessThan0~2_combout\ & !\piso_int[29]~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(30),
	datab => \LessThan0~2_combout\,
	datad => VCC,
	cin => \piso_int[29]~95\,
	combout => \piso_int[30]~96_combout\,
	cout => \piso_int[30]~97\);

-- Location: FF_X16_Y20_N29
\piso_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[30]~96_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(30));

-- Location: LCCOMB_X15_Y21_N0
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!piso_int(27) & (!piso_int(28) & (!piso_int(29) & !piso_int(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(27),
	datab => piso_int(28),
	datac => piso_int(29),
	datad => piso_int(30),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y21_N18
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X15_Y21_N16
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!piso_int(31) & (((!\Equal0~8_combout\) # (!\Equal0~4_combout\)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => piso_int(31),
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y20_N30
\piso_int[31]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[31]~98_combout\ = piso_int(31) $ (\piso_int[30]~97\ $ (\LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(31),
	datad => \LessThan0~2_combout\,
	cin => \piso_int[30]~97\,
	combout => \piso_int[31]~98_combout\);

-- Location: FF_X16_Y20_N31
\piso_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[31]~98_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(31));

-- Location: LCCOMB_X17_Y21_N18
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (piso_int(0) & (destino_int(0) & (destino_int(1) $ (!piso_int(1))))) # (!piso_int(0) & (!destino_int(0) & (destino_int(1) $ (!piso_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(0),
	datab => destino_int(0),
	datac => destino_int(1),
	datad => piso_int(1),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y21_N24
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (destino_int(2) $ (!piso_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => destino_int(2),
	datab => piso_int(2),
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X17_Y21_N30
\Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (piso_int(31)) # (((!\Equal0~4_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(31),
	datab => \Equal0~10_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X17_Y21_N16
\piso_int[2]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~40_combout\ = (destino_int(1) & (piso_int(0) & (!destino_int(0) & piso_int(1)))) # (!destino_int(1) & ((piso_int(1)) # ((piso_int(0) & !destino_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(0),
	datab => destino_int(0),
	datac => destino_int(1),
	datad => piso_int(1),
	combout => \piso_int[2]~40_combout\);

-- Location: LCCOMB_X17_Y21_N26
\piso_int[2]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~41_combout\ = (destino_int(2) & (piso_int(2) & \piso_int[2]~40_combout\)) # (!destino_int(2) & ((piso_int(2)) # (\piso_int[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => destino_int(2),
	datac => piso_int(2),
	datad => \piso_int[2]~40_combout\,
	combout => \piso_int[2]~41_combout\);

-- Location: LCCOMB_X15_Y21_N10
\piso_int[2]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~42_combout\ = (piso_int(31)) # (((\LessThan0~1_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(31),
	datab => \Equal0~4_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~8_combout\,
	combout => \piso_int[2]~42_combout\);

-- Location: LCCOMB_X17_Y21_N4
\piso_int[2]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~43_combout\ = ((!\piso_int[2]~41_combout\ & !\piso_int[2]~42_combout\)) # (!\Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datac => \piso_int[2]~41_combout\,
	datad => \piso_int[2]~42_combout\,
	combout => \piso_int[2]~43_combout\);

-- Location: FF_X16_Y21_N1
\piso_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[0]~32_combout\,
	asdata => \piso_actual[0]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \piso_int[2]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(0));

-- Location: FF_X15_Y21_N27
\piso_actual[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => piso_int(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[0]~reg0_q\);

-- Location: LCCOMB_X17_Y21_N0
\en_movimiento~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \en_movimiento~reg0feeder_combout\ = \Equal0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~11_combout\,
	combout => \en_movimiento~reg0feeder_combout\);

-- Location: FF_X17_Y21_N1
\en_movimiento~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \en_movimiento~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_movimiento~reg0_q\);

-- Location: IOIBUF_X16_Y29_N22
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => piso_actual(0),
	o => \piso_actual[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => piso_actual(2),
	o => \piso_actual[2]~input_o\);

ww_en_movimiento <= \en_movimiento~output_o\;

piso_actual(0) <= \piso_actual[0]~output_o\;

piso_actual(1) <= \piso_actual[1]~output_o\;

piso_actual(2) <= \piso_actual[2]~output_o\;
END structure;


