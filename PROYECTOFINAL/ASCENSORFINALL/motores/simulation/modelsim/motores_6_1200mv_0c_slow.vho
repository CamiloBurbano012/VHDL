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

-- DATE "05/30/2025 10:41:39"

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

ENTITY 	motores IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	piso_actual : IN std_logic_vector(4 DOWNTO 0);
	piso_destino : IN std_logic_vector(4 DOWNTO 0);
	puerta_cmd : IN std_logic;
	mover : IN std_logic;
	pwm_motor : OUT std_logic;
	in1_motor : OUT std_logic;
	in2_motor : OUT std_logic;
	pwm_puerta : OUT std_logic
	);
END motores;

-- Design Ports Information
-- piso_actual[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[4]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_motor	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1_motor	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2_motor	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_puerta	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mover	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_cmd	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motores IS
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
SIGNAL ww_piso_actual : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_puerta_cmd : std_logic;
SIGNAL ww_mover : std_logic;
SIGNAL ww_pwm_motor : std_logic;
SIGNAL ww_in1_motor : std_logic;
SIGNAL ww_in2_motor : std_logic;
SIGNAL ww_pwm_puerta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \piso_actual[3]~input_o\ : std_logic;
SIGNAL \piso_actual[4]~input_o\ : std_logic;
SIGNAL \piso_destino[3]~input_o\ : std_logic;
SIGNAL \piso_destino[4]~input_o\ : std_logic;
SIGNAL \pwm_motor~output_o\ : std_logic;
SIGNAL \in1_motor~output_o\ : std_logic;
SIGNAL \in2_motor~output_o\ : std_logic;
SIGNAL \pwm_puerta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \piso_destino[2]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \piso_destino[1]~input_o\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \piso_destino[0]~input_o\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \mover~input_o\ : std_logic;
SIGNAL \en_movimiento~0_combout\ : std_logic;
SIGNAL \en_movimiento~q\ : std_logic;
SIGNAL \duty_asc~0_combout\ : std_logic;
SIGNAL \cnt_pwm[0]~16_combout\ : std_logic;
SIGNAL \cnt_pwm[12]~48_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \cnt_pwm[12]~49_combout\ : std_logic;
SIGNAL \cnt_pwm[12]~50_combout\ : std_logic;
SIGNAL \cnt_pwm[0]~17\ : std_logic;
SIGNAL \cnt_pwm[1]~18_combout\ : std_logic;
SIGNAL \cnt_pwm[1]~19\ : std_logic;
SIGNAL \cnt_pwm[2]~20_combout\ : std_logic;
SIGNAL \cnt_pwm[2]~21\ : std_logic;
SIGNAL \cnt_pwm[3]~22_combout\ : std_logic;
SIGNAL \cnt_pwm[3]~23\ : std_logic;
SIGNAL \cnt_pwm[4]~24_combout\ : std_logic;
SIGNAL \cnt_pwm[4]~25\ : std_logic;
SIGNAL \cnt_pwm[5]~26_combout\ : std_logic;
SIGNAL \cnt_pwm[5]~27\ : std_logic;
SIGNAL \cnt_pwm[6]~28_combout\ : std_logic;
SIGNAL \cnt_pwm[6]~29\ : std_logic;
SIGNAL \cnt_pwm[7]~30_combout\ : std_logic;
SIGNAL \cnt_pwm[7]~31\ : std_logic;
SIGNAL \cnt_pwm[8]~32_combout\ : std_logic;
SIGNAL \cnt_pwm[8]~33\ : std_logic;
SIGNAL \cnt_pwm[9]~34_combout\ : std_logic;
SIGNAL \cnt_pwm[9]~35\ : std_logic;
SIGNAL \cnt_pwm[10]~36_combout\ : std_logic;
SIGNAL \cnt_pwm[10]~37\ : std_logic;
SIGNAL \cnt_pwm[11]~38_combout\ : std_logic;
SIGNAL \cnt_pwm[11]~39\ : std_logic;
SIGNAL \cnt_pwm[12]~40_combout\ : std_logic;
SIGNAL \cnt_pwm[12]~41\ : std_logic;
SIGNAL \cnt_pwm[13]~42_combout\ : std_logic;
SIGNAL \cnt_pwm[13]~43\ : std_logic;
SIGNAL \cnt_pwm[14]~44_combout\ : std_logic;
SIGNAL \cnt_pwm[14]~45\ : std_logic;
SIGNAL \cnt_pwm[15]~46_combout\ : std_logic;
SIGNAL \duty_asc~1_combout\ : std_logic;
SIGNAL \dir_actual~0_combout\ : std_logic;
SIGNAL \duty_asc~2_combout\ : std_logic;
SIGNAL \duty_asc~3_combout\ : std_logic;
SIGNAL \duty_asc~4_combout\ : std_logic;
SIGNAL \duty_asc~5_combout\ : std_logic;
SIGNAL \duty_asc~6_combout\ : std_logic;
SIGNAL \duty_asc~7_combout\ : std_logic;
SIGNAL \duty_asc~8_combout\ : std_logic;
SIGNAL \duty_asc~9_combout\ : std_logic;
SIGNAL \duty_asc~10_combout\ : std_logic;
SIGNAL \duty_asc~11_combout\ : std_logic;
SIGNAL \duty_asc~12_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~26_combout\ : std_logic;
SIGNAL \pwm_motor~0_combout\ : std_logic;
SIGNAL \pwm_motor~reg0_q\ : std_logic;
SIGNAL \dir_actual~1_combout\ : std_logic;
SIGNAL \dir_actual~q\ : std_logic;
SIGNAL \in1_motor~0_combout\ : std_logic;
SIGNAL \in1_motor~reg0_q\ : std_logic;
SIGNAL \in2_motor~0_combout\ : std_logic;
SIGNAL \in2_motor~reg0_q\ : std_logic;
SIGNAL \puerta_cmd~input_o\ : std_logic;
SIGNAL \duty_puerta~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \pwm_puerta~0_combout\ : std_logic;
SIGNAL \pwm_puerta~1_combout\ : std_logic;
SIGNAL \pwm_puerta~reg0_q\ : std_logic;
SIGNAL duty_puerta : std_logic_vector(15 DOWNTO 0);
SIGNAL duty_asc : std_logic_vector(15 DOWNTO 0);
SIGNAL cnt_pwm : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_piso_actual <= piso_actual;
ww_piso_destino <= piso_destino;
ww_puerta_cmd <= puerta_cmd;
ww_mover <= mover;
pwm_motor <= ww_pwm_motor;
in1_motor <= ww_in1_motor;
in2_motor <= ww_in2_motor;
pwm_puerta <= ww_pwm_puerta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X41_Y21_N16
\pwm_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_motor~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_motor~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\in1_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in1_motor~reg0_q\,
	devoe => ww_devoe,
	o => \in1_motor~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\in2_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \in2_motor~reg0_q\,
	devoe => ww_devoe,
	o => \in2_motor~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\pwm_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_puerta~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_puerta~output_o\);

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

-- Location: IOIBUF_X41_Y18_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X41_Y20_N15
\piso_destino[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(2),
	o => \piso_destino[2]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: IOIBUF_X41_Y18_N22
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(2),
	o => \piso_actual[2]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\piso_destino[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(1),
	o => \piso_destino[1]~input_o\);

-- Location: LCCOMB_X36_Y18_N10
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\piso_destino[2]~input_o\ & (((!\piso_actual[1]~input_o\ & \piso_destino[1]~input_o\)) # (!\piso_actual[2]~input_o\))) # (!\piso_destino[2]~input_o\ & (!\piso_actual[1]~input_o\ & (!\piso_actual[2]~input_o\ & 
-- \piso_destino[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \piso_destino[1]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: IOIBUF_X41_Y14_N8
\piso_destino[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(0),
	o => \piso_destino[0]~input_o\);

-- Location: LCCOMB_X36_Y18_N22
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\piso_destino[2]~input_o\ & (\piso_actual[2]~input_o\ & (\piso_actual[1]~input_o\ $ (!\piso_destino[1]~input_o\)))) # (!\piso_destino[2]~input_o\ & (!\piso_actual[2]~input_o\ & (\piso_actual[1]~input_o\ $ 
-- (!\piso_destino[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \piso_destino[1]~input_o\,
	combout => \LessThan4~1_combout\);

-- Location: IOIBUF_X41_Y18_N8
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(0),
	o => \piso_actual[0]~input_o\);

-- Location: LCCOMB_X36_Y18_N28
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\LessThan3~0_combout\) # ((\piso_destino[0]~input_o\ & (\LessThan4~1_combout\ & !\piso_actual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \piso_destino[0]~input_o\,
	datac => \LessThan4~1_combout\,
	datad => \piso_actual[0]~input_o\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X36_Y18_N12
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\piso_destino[2]~input_o\ & (\piso_actual[1]~input_o\ & (\piso_actual[2]~input_o\ & !\piso_destino[1]~input_o\))) # (!\piso_destino[2]~input_o\ & ((\piso_actual[2]~input_o\) # ((\piso_actual[1]~input_o\ & 
-- !\piso_destino[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_actual[1]~input_o\,
	datac => \piso_actual[2]~input_o\,
	datad => \piso_destino[1]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X36_Y18_N0
\LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~0_combout\) # ((!\piso_destino[0]~input_o\ & (\LessThan4~1_combout\ & \piso_actual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \piso_destino[0]~input_o\,
	datac => \LessThan4~1_combout\,
	datad => \piso_actual[0]~input_o\,
	combout => \LessThan4~2_combout\);

-- Location: IOIBUF_X41_Y19_N8
\mover~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mover,
	o => \mover~input_o\);

-- Location: LCCOMB_X35_Y18_N28
\en_movimiento~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \en_movimiento~0_combout\ = (!\reset~input_o\ & (\mover~input_o\ & ((\LessThan3~1_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan4~2_combout\,
	datad => \mover~input_o\,
	combout => \en_movimiento~0_combout\);

-- Location: FF_X35_Y17_N29
en_movimiento : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \en_movimiento~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en_movimiento~q\);

-- Location: LCCOMB_X35_Y17_N22
\duty_asc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~0_combout\ = (\en_movimiento~0_combout\ & ((\piso_destino[2]~input_o\) # ((\piso_destino[1]~input_o\ & \piso_destino[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[2]~input_o\,
	combout => \duty_asc~0_combout\);

-- Location: FF_X35_Y17_N23
\duty_asc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_asc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(15));

-- Location: LCCOMB_X37_Y17_N0
\cnt_pwm[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[0]~16_combout\ = cnt_pwm(0) $ (VCC)
-- \cnt_pwm[0]~17\ = CARRY(cnt_pwm(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(0),
	datad => VCC,
	combout => \cnt_pwm[0]~16_combout\,
	cout => \cnt_pwm[0]~17\);

-- Location: LCCOMB_X38_Y17_N18
\cnt_pwm[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[12]~48_combout\ = (!cnt_pwm(12) & (!\reset~input_o\ & (!cnt_pwm(13) & !cnt_pwm(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(12),
	datab => \reset~input_o\,
	datac => cnt_pwm(13),
	datad => cnt_pwm(11),
	combout => \cnt_pwm[12]~48_combout\);

-- Location: LCCOMB_X38_Y17_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!cnt_pwm(6) & !cnt_pwm(7))) # (!cnt_pwm(8))) # (!cnt_pwm(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(6),
	datab => cnt_pwm(9),
	datac => cnt_pwm(8),
	datad => cnt_pwm(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y17_N16
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!cnt_pwm(1)) # (!cnt_pwm(2))) # (!cnt_pwm(3))) # (!cnt_pwm(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(0),
	datab => cnt_pwm(3),
	datac => cnt_pwm(2),
	datad => cnt_pwm(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y17_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!cnt_pwm(4) & (!cnt_pwm(7) & (!cnt_pwm(5) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(4),
	datab => cnt_pwm(7),
	datac => cnt_pwm(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y17_N26
\cnt_pwm[12]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[12]~49_combout\ = (!cnt_pwm(10) & (\cnt_pwm[12]~48_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(10),
	datab => \cnt_pwm[12]~48_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \cnt_pwm[12]~49_combout\);

-- Location: LCCOMB_X38_Y17_N0
\cnt_pwm[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[12]~50_combout\ = (!\cnt_pwm[12]~49_combout\ & ((\reset~input_o\) # ((cnt_pwm(14) & cnt_pwm(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(14),
	datab => \reset~input_o\,
	datac => \cnt_pwm[12]~49_combout\,
	datad => cnt_pwm(15),
	combout => \cnt_pwm[12]~50_combout\);

-- Location: FF_X37_Y17_N1
\cnt_pwm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[0]~16_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(0));

-- Location: LCCOMB_X37_Y17_N2
\cnt_pwm[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[1]~18_combout\ = (cnt_pwm(1) & (!\cnt_pwm[0]~17\)) # (!cnt_pwm(1) & ((\cnt_pwm[0]~17\) # (GND)))
-- \cnt_pwm[1]~19\ = CARRY((!\cnt_pwm[0]~17\) # (!cnt_pwm(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(1),
	datad => VCC,
	cin => \cnt_pwm[0]~17\,
	combout => \cnt_pwm[1]~18_combout\,
	cout => \cnt_pwm[1]~19\);

-- Location: FF_X37_Y17_N3
\cnt_pwm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[1]~18_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(1));

-- Location: LCCOMB_X37_Y17_N4
\cnt_pwm[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[2]~20_combout\ = (cnt_pwm(2) & (\cnt_pwm[1]~19\ $ (GND))) # (!cnt_pwm(2) & (!\cnt_pwm[1]~19\ & VCC))
-- \cnt_pwm[2]~21\ = CARRY((cnt_pwm(2) & !\cnt_pwm[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(2),
	datad => VCC,
	cin => \cnt_pwm[1]~19\,
	combout => \cnt_pwm[2]~20_combout\,
	cout => \cnt_pwm[2]~21\);

-- Location: FF_X37_Y17_N5
\cnt_pwm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[2]~20_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(2));

-- Location: LCCOMB_X37_Y17_N6
\cnt_pwm[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[3]~22_combout\ = (cnt_pwm(3) & (!\cnt_pwm[2]~21\)) # (!cnt_pwm(3) & ((\cnt_pwm[2]~21\) # (GND)))
-- \cnt_pwm[3]~23\ = CARRY((!\cnt_pwm[2]~21\) # (!cnt_pwm(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(3),
	datad => VCC,
	cin => \cnt_pwm[2]~21\,
	combout => \cnt_pwm[3]~22_combout\,
	cout => \cnt_pwm[3]~23\);

-- Location: FF_X37_Y17_N7
\cnt_pwm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[3]~22_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(3));

-- Location: LCCOMB_X37_Y17_N8
\cnt_pwm[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[4]~24_combout\ = (cnt_pwm(4) & (\cnt_pwm[3]~23\ $ (GND))) # (!cnt_pwm(4) & (!\cnt_pwm[3]~23\ & VCC))
-- \cnt_pwm[4]~25\ = CARRY((cnt_pwm(4) & !\cnt_pwm[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(4),
	datad => VCC,
	cin => \cnt_pwm[3]~23\,
	combout => \cnt_pwm[4]~24_combout\,
	cout => \cnt_pwm[4]~25\);

-- Location: FF_X37_Y17_N9
\cnt_pwm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[4]~24_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(4));

-- Location: LCCOMB_X37_Y17_N10
\cnt_pwm[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[5]~26_combout\ = (cnt_pwm(5) & (!\cnt_pwm[4]~25\)) # (!cnt_pwm(5) & ((\cnt_pwm[4]~25\) # (GND)))
-- \cnt_pwm[5]~27\ = CARRY((!\cnt_pwm[4]~25\) # (!cnt_pwm(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(5),
	datad => VCC,
	cin => \cnt_pwm[4]~25\,
	combout => \cnt_pwm[5]~26_combout\,
	cout => \cnt_pwm[5]~27\);

-- Location: FF_X37_Y17_N11
\cnt_pwm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[5]~26_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(5));

-- Location: LCCOMB_X37_Y17_N12
\cnt_pwm[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[6]~28_combout\ = (cnt_pwm(6) & (\cnt_pwm[5]~27\ $ (GND))) # (!cnt_pwm(6) & (!\cnt_pwm[5]~27\ & VCC))
-- \cnt_pwm[6]~29\ = CARRY((cnt_pwm(6) & !\cnt_pwm[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(6),
	datad => VCC,
	cin => \cnt_pwm[5]~27\,
	combout => \cnt_pwm[6]~28_combout\,
	cout => \cnt_pwm[6]~29\);

-- Location: FF_X37_Y17_N13
\cnt_pwm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[6]~28_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(6));

-- Location: LCCOMB_X37_Y17_N14
\cnt_pwm[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[7]~30_combout\ = (cnt_pwm(7) & (!\cnt_pwm[6]~29\)) # (!cnt_pwm(7) & ((\cnt_pwm[6]~29\) # (GND)))
-- \cnt_pwm[7]~31\ = CARRY((!\cnt_pwm[6]~29\) # (!cnt_pwm(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(7),
	datad => VCC,
	cin => \cnt_pwm[6]~29\,
	combout => \cnt_pwm[7]~30_combout\,
	cout => \cnt_pwm[7]~31\);

-- Location: FF_X37_Y17_N15
\cnt_pwm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[7]~30_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(7));

-- Location: LCCOMB_X37_Y17_N16
\cnt_pwm[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[8]~32_combout\ = (cnt_pwm(8) & (\cnt_pwm[7]~31\ $ (GND))) # (!cnt_pwm(8) & (!\cnt_pwm[7]~31\ & VCC))
-- \cnt_pwm[8]~33\ = CARRY((cnt_pwm(8) & !\cnt_pwm[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(8),
	datad => VCC,
	cin => \cnt_pwm[7]~31\,
	combout => \cnt_pwm[8]~32_combout\,
	cout => \cnt_pwm[8]~33\);

-- Location: FF_X37_Y17_N17
\cnt_pwm[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[8]~32_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(8));

-- Location: LCCOMB_X37_Y17_N18
\cnt_pwm[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[9]~34_combout\ = (cnt_pwm(9) & (!\cnt_pwm[8]~33\)) # (!cnt_pwm(9) & ((\cnt_pwm[8]~33\) # (GND)))
-- \cnt_pwm[9]~35\ = CARRY((!\cnt_pwm[8]~33\) # (!cnt_pwm(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(9),
	datad => VCC,
	cin => \cnt_pwm[8]~33\,
	combout => \cnt_pwm[9]~34_combout\,
	cout => \cnt_pwm[9]~35\);

-- Location: FF_X37_Y17_N19
\cnt_pwm[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[9]~34_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(9));

-- Location: LCCOMB_X37_Y17_N20
\cnt_pwm[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[10]~36_combout\ = (cnt_pwm(10) & (\cnt_pwm[9]~35\ $ (GND))) # (!cnt_pwm(10) & (!\cnt_pwm[9]~35\ & VCC))
-- \cnt_pwm[10]~37\ = CARRY((cnt_pwm(10) & !\cnt_pwm[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(10),
	datad => VCC,
	cin => \cnt_pwm[9]~35\,
	combout => \cnt_pwm[10]~36_combout\,
	cout => \cnt_pwm[10]~37\);

-- Location: FF_X37_Y17_N21
\cnt_pwm[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[10]~36_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(10));

-- Location: LCCOMB_X37_Y17_N22
\cnt_pwm[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[11]~38_combout\ = (cnt_pwm(11) & (!\cnt_pwm[10]~37\)) # (!cnt_pwm(11) & ((\cnt_pwm[10]~37\) # (GND)))
-- \cnt_pwm[11]~39\ = CARRY((!\cnt_pwm[10]~37\) # (!cnt_pwm(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(11),
	datad => VCC,
	cin => \cnt_pwm[10]~37\,
	combout => \cnt_pwm[11]~38_combout\,
	cout => \cnt_pwm[11]~39\);

-- Location: FF_X37_Y17_N23
\cnt_pwm[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[11]~38_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(11));

-- Location: LCCOMB_X37_Y17_N24
\cnt_pwm[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[12]~40_combout\ = (cnt_pwm(12) & (\cnt_pwm[11]~39\ $ (GND))) # (!cnt_pwm(12) & (!\cnt_pwm[11]~39\ & VCC))
-- \cnt_pwm[12]~41\ = CARRY((cnt_pwm(12) & !\cnt_pwm[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(12),
	datad => VCC,
	cin => \cnt_pwm[11]~39\,
	combout => \cnt_pwm[12]~40_combout\,
	cout => \cnt_pwm[12]~41\);

-- Location: FF_X37_Y17_N25
\cnt_pwm[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[12]~40_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(12));

-- Location: LCCOMB_X37_Y17_N26
\cnt_pwm[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[13]~42_combout\ = (cnt_pwm(13) & (!\cnt_pwm[12]~41\)) # (!cnt_pwm(13) & ((\cnt_pwm[12]~41\) # (GND)))
-- \cnt_pwm[13]~43\ = CARRY((!\cnt_pwm[12]~41\) # (!cnt_pwm(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(13),
	datad => VCC,
	cin => \cnt_pwm[12]~41\,
	combout => \cnt_pwm[13]~42_combout\,
	cout => \cnt_pwm[13]~43\);

-- Location: FF_X37_Y17_N27
\cnt_pwm[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[13]~42_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(13));

-- Location: LCCOMB_X37_Y17_N28
\cnt_pwm[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[14]~44_combout\ = (cnt_pwm(14) & (\cnt_pwm[13]~43\ $ (GND))) # (!cnt_pwm(14) & (!\cnt_pwm[13]~43\ & VCC))
-- \cnt_pwm[14]~45\ = CARRY((cnt_pwm(14) & !\cnt_pwm[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(14),
	datad => VCC,
	cin => \cnt_pwm[13]~43\,
	combout => \cnt_pwm[14]~44_combout\,
	cout => \cnt_pwm[14]~45\);

-- Location: FF_X37_Y17_N29
\cnt_pwm[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[14]~44_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(14));

-- Location: LCCOMB_X37_Y17_N30
\cnt_pwm[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_pwm[15]~46_combout\ = cnt_pwm(15) $ (\cnt_pwm[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(15),
	cin => \cnt_pwm[14]~45\,
	combout => \cnt_pwm[15]~46_combout\);

-- Location: FF_X37_Y17_N31
\cnt_pwm[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt_pwm[15]~46_combout\,
	sclr => \cnt_pwm[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_pwm(15));

-- Location: LCCOMB_X36_Y18_N14
\duty_asc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~1_combout\ = (\en_movimiento~0_combout\ & (\piso_destino[0]~input_o\ $ (\piso_destino[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[1]~input_o\,
	combout => \duty_asc~1_combout\);

-- Location: FF_X36_Y17_N29
\duty_asc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(14));

-- Location: LCCOMB_X35_Y17_N12
\dir_actual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dir_actual~0_combout\ = (!\reset~input_o\ & \mover~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \mover~input_o\,
	combout => \dir_actual~0_combout\);

-- Location: LCCOMB_X35_Y17_N6
\duty_asc~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~2_combout\ = (\dir_actual~0_combout\ & (!\piso_destino[0]~input_o\ & ((\LessThan3~1_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir_actual~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \piso_destino[0]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \duty_asc~2_combout\);

-- Location: FF_X36_Y17_N27
\duty_asc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(13));

-- Location: LCCOMB_X35_Y17_N20
\duty_asc~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~3_combout\ = (\dir_actual~0_combout\ & (\piso_destino[2]~input_o\ & ((\LessThan3~1_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir_actual~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan4~2_combout\,
	datad => \piso_destino[2]~input_o\,
	combout => \duty_asc~3_combout\);

-- Location: FF_X36_Y17_N25
\duty_asc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(12));

-- Location: LCCOMB_X36_Y17_N0
\duty_asc~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~4_combout\ = (\duty_asc~2_combout\ & !\piso_destino[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \duty_asc~2_combout\,
	datad => \piso_destino[1]~input_o\,
	combout => \duty_asc~4_combout\);

-- Location: FF_X36_Y17_N23
\duty_asc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(11));

-- Location: LCCOMB_X35_Y17_N26
\duty_asc~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~5_combout\ = (\en_movimiento~0_combout\ & ((\piso_destino[2]~input_o\) # (\piso_destino[1]~input_o\ $ (\piso_destino[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[2]~input_o\,
	combout => \duty_asc~5_combout\);

-- Location: FF_X36_Y17_N21
\duty_asc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(10));

-- Location: LCCOMB_X36_Y17_N2
\duty_asc~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~6_combout\ = (\duty_asc~2_combout\ & \piso_destino[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \duty_asc~2_combout\,
	datad => \piso_destino[1]~input_o\,
	combout => \duty_asc~6_combout\);

-- Location: FF_X36_Y17_N19
\duty_asc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(9));

-- Location: LCCOMB_X35_Y17_N4
\duty_asc~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~7_combout\ = (\en_movimiento~0_combout\ & (!\piso_destino[2]~input_o\ & (\piso_destino[1]~input_o\ $ (!\piso_destino[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[2]~input_o\,
	combout => \duty_asc~7_combout\);

-- Location: FF_X36_Y17_N17
\duty_asc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(8));

-- Location: LCCOMB_X35_Y17_N30
\duty_asc~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~8_combout\ = (\piso_destino[1]~input_o\ & (\dir_actual~0_combout\ & ((\LessThan3~1_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan4~2_combout\,
	datad => \dir_actual~0_combout\,
	combout => \duty_asc~8_combout\);

-- Location: FF_X36_Y17_N15
\duty_asc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(7));

-- Location: LCCOMB_X36_Y18_N24
\duty_asc~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~9_combout\ = (\en_movimiento~0_combout\ & ((\piso_destino[2]~input_o\) # (\piso_destino[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[2]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	combout => \duty_asc~9_combout\);

-- Location: FF_X36_Y17_N13
\duty_asc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(6));

-- Location: LCCOMB_X36_Y18_N18
\duty_asc~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~10_combout\ = (\en_movimiento~0_combout\ & ((\piso_destino[0]~input_o\) # (\piso_destino[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[1]~input_o\,
	combout => \duty_asc~10_combout\);

-- Location: FF_X36_Y17_N11
\duty_asc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(5));

-- Location: LCCOMB_X35_Y17_N16
\duty_asc~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~11_combout\ = (\en_movimiento~0_combout\ & ((\piso_destino[1]~input_o\) # ((!\piso_destino[0]~input_o\ & !\piso_destino[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[1]~input_o\,
	datab => \piso_destino[0]~input_o\,
	datac => \en_movimiento~0_combout\,
	datad => \piso_destino[2]~input_o\,
	combout => \duty_asc~11_combout\);

-- Location: FF_X36_Y17_N9
\duty_asc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(4));

-- Location: FF_X36_Y17_N7
\duty_asc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(3));

-- Location: LCCOMB_X35_Y17_N10
\duty_asc~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_asc~12_combout\ = (\dir_actual~0_combout\ & (\piso_destino[0]~input_o\ & ((\LessThan3~1_combout\) # (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir_actual~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \piso_destino[0]~input_o\,
	datad => \LessThan4~2_combout\,
	combout => \duty_asc~12_combout\);

-- Location: FF_X36_Y17_N5
\duty_asc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_asc~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_asc(2));

-- Location: LCCOMB_X36_Y17_N4
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!cnt_pwm(2) & duty_asc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(2),
	datab => duty_asc(2),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X36_Y17_N6
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((cnt_pwm(3) & ((duty_asc(3)) # (!\LessThan1~1_cout\))) # (!cnt_pwm(3) & (duty_asc(3) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(3),
	datab => duty_asc(3),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X36_Y17_N8
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((duty_asc(4) & ((!\LessThan1~3_cout\) # (!cnt_pwm(4)))) # (!duty_asc(4) & (!cnt_pwm(4) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_asc(4),
	datab => cnt_pwm(4),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X36_Y17_N10
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((duty_asc(5) & (cnt_pwm(5) & !\LessThan1~5_cout\)) # (!duty_asc(5) & ((cnt_pwm(5)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_asc(5),
	datab => cnt_pwm(5),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X36_Y17_N12
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((duty_asc(6) & ((!\LessThan1~7_cout\) # (!cnt_pwm(6)))) # (!duty_asc(6) & (!cnt_pwm(6) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_asc(6),
	datab => cnt_pwm(6),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X36_Y17_N14
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((cnt_pwm(7) & ((duty_asc(7)) # (!\LessThan1~9_cout\))) # (!cnt_pwm(7) & (duty_asc(7) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(7),
	datab => duty_asc(7),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X36_Y17_N16
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((cnt_pwm(8) & (!duty_asc(8) & !\LessThan1~11_cout\)) # (!cnt_pwm(8) & ((!\LessThan1~11_cout\) # (!duty_asc(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(8),
	datab => duty_asc(8),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X36_Y17_N18
\LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((cnt_pwm(9) & ((duty_asc(9)) # (!\LessThan1~13_cout\))) # (!cnt_pwm(9) & (duty_asc(9) & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(9),
	datab => duty_asc(9),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X36_Y17_N20
\LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((cnt_pwm(10) & (duty_asc(10) & !\LessThan1~15_cout\)) # (!cnt_pwm(10) & ((duty_asc(10)) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(10),
	datab => duty_asc(10),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X36_Y17_N22
\LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((duty_asc(11) & (cnt_pwm(11) & !\LessThan1~17_cout\)) # (!duty_asc(11) & ((cnt_pwm(11)) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_asc(11),
	datab => cnt_pwm(11),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X36_Y17_N24
\LessThan1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((cnt_pwm(12) & (!duty_asc(12) & !\LessThan1~19_cout\)) # (!cnt_pwm(12) & ((!\LessThan1~19_cout\) # (!duty_asc(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(12),
	datab => duty_asc(12),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X36_Y17_N26
\LessThan1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((duty_asc(13) & (cnt_pwm(13) & !\LessThan1~21_cout\)) # (!duty_asc(13) & ((cnt_pwm(13)) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_asc(13),
	datab => cnt_pwm(13),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X36_Y17_N28
\LessThan1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((cnt_pwm(14) & (duty_asc(14) & !\LessThan1~23_cout\)) # (!cnt_pwm(14) & ((duty_asc(14)) # (!\LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(14),
	datab => duty_asc(14),
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X36_Y17_N30
\LessThan1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~26_combout\ = (duty_asc(15) & ((\LessThan1~25_cout\) # (!cnt_pwm(15)))) # (!duty_asc(15) & (\LessThan1~25_cout\ & !cnt_pwm(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => duty_asc(15),
	datad => cnt_pwm(15),
	cin => \LessThan1~25_cout\,
	combout => \LessThan1~26_combout\);

-- Location: LCCOMB_X35_Y17_N24
\pwm_motor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_motor~0_combout\ = (\en_movimiento~q\ & (\LessThan1~26_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_movimiento~q\,
	datac => \LessThan1~26_combout\,
	datad => \reset~input_o\,
	combout => \pwm_motor~0_combout\);

-- Location: FF_X35_Y17_N25
\pwm_motor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_motor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_motor~reg0_q\);

-- Location: LCCOMB_X35_Y17_N14
\dir_actual~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dir_actual~1_combout\ = (\dir_actual~0_combout\ & ((\LessThan3~1_combout\) # ((!\LessThan4~2_combout\ & \dir_actual~q\)))) # (!\dir_actual~0_combout\ & (((\dir_actual~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \LessThan3~1_combout\,
	datac => \dir_actual~q\,
	datad => \dir_actual~0_combout\,
	combout => \dir_actual~1_combout\);

-- Location: FF_X35_Y17_N15
dir_actual : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dir_actual~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dir_actual~q\);

-- Location: LCCOMB_X35_Y17_N2
\in1_motor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in1_motor~0_combout\ = (\en_movimiento~q\ & (\dir_actual~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_movimiento~q\,
	datac => \dir_actual~q\,
	datad => \reset~input_o\,
	combout => \in1_motor~0_combout\);

-- Location: FF_X35_Y17_N3
\in1_motor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in1_motor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in1_motor~reg0_q\);

-- Location: LCCOMB_X35_Y17_N0
\in2_motor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \in2_motor~0_combout\ = (\en_movimiento~q\ & (!\dir_actual~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_movimiento~q\,
	datac => \dir_actual~q\,
	datad => \reset~input_o\,
	combout => \in2_motor~0_combout\);

-- Location: FF_X35_Y17_N1
\in2_motor~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \in2_motor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in2_motor~reg0_q\);

-- Location: IOIBUF_X41_Y17_N8
\puerta_cmd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_puerta_cmd,
	o => \puerta_cmd~input_o\);

-- Location: LCCOMB_X40_Y17_N12
\duty_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_puerta~0_combout\ = (\puerta_cmd~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \puerta_cmd~input_o\,
	datad => \reset~input_o\,
	combout => \duty_puerta~0_combout\);

-- Location: FF_X38_Y17_N23
\duty_puerta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_puerta~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_puerta(11));

-- Location: FF_X38_Y17_N9
\duty_puerta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \duty_puerta~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_puerta(13));

-- Location: LCCOMB_X39_Y17_N4
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((!duty_puerta(13) & ((!cnt_pwm(8)) # (!cnt_pwm(9))))) # (!cnt_pwm(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_puerta(13),
	datab => cnt_pwm(9),
	datac => cnt_pwm(8),
	datad => cnt_pwm(10),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X38_Y17_N12
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!cnt_pwm(4) & (!cnt_pwm(7) & (!cnt_pwm(5) & !duty_puerta(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(4),
	datab => cnt_pwm(7),
	datac => cnt_pwm(5),
	datad => duty_puerta(13),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X38_Y17_N14
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~3_combout\ & ((duty_puerta(11)) # (!cnt_pwm(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(6),
	datac => duty_puerta(11),
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X38_Y17_N6
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = cnt_pwm(13) $ (!duty_puerta(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt_pwm(13),
	datad => duty_puerta(13),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y17_N22
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!\LessThan2~0_combout\ & ((cnt_pwm(12) & (cnt_pwm(11) & duty_puerta(11))) # (!cnt_pwm(12) & (!cnt_pwm(11) & !duty_puerta(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(12),
	datab => cnt_pwm(11),
	datac => duty_puerta(11),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X38_Y17_N8
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((!cnt_pwm(8) & !cnt_pwm(9))) # (!duty_puerta(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(8),
	datac => duty_puerta(13),
	datad => cnt_pwm(9),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X38_Y17_N20
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (duty_puerta(11) & (!cnt_pwm(7) & (\LessThan2~5_combout\ & !cnt_pwm(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_puerta(11),
	datab => cnt_pwm(7),
	datac => \LessThan2~5_combout\,
	datad => cnt_pwm(6),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X38_Y17_N30
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~1_combout\ & ((\LessThan2~2_combout\) # ((\LessThan2~4_combout\) # (\LessThan2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~4_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X38_Y17_N28
\LessThan2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (duty_puerta(11) & ((!cnt_pwm(12)) # (!cnt_pwm(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_pwm(11),
	datac => duty_puerta(11),
	datad => cnt_pwm(12),
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X39_Y17_N2
\LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (duty_puerta(13) & (!cnt_pwm(13) & \LessThan2~8_combout\)) # (!duty_puerta(13) & ((\LessThan2~8_combout\) # (!cnt_pwm(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_puerta(13),
	datac => cnt_pwm(13),
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X38_Y17_N10
\pwm_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_puerta~0_combout\ = (!cnt_pwm(14) & (!\reset~input_o\ & ((\LessThan2~7_combout\) # (\LessThan2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_pwm(14),
	datab => \reset~input_o\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~9_combout\,
	combout => \pwm_puerta~0_combout\);

-- Location: LCCOMB_X38_Y17_N24
\pwm_puerta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_puerta~1_combout\ = (!\reset~input_o\ & ((cnt_pwm(15) & (duty_puerta(11) & \pwm_puerta~0_combout\)) # (!cnt_pwm(15) & ((duty_puerta(11)) # (\pwm_puerta~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => cnt_pwm(15),
	datac => duty_puerta(11),
	datad => \pwm_puerta~0_combout\,
	combout => \pwm_puerta~1_combout\);

-- Location: FF_X38_Y17_N25
\pwm_puerta~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_puerta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_puerta~reg0_q\);

-- Location: IOIBUF_X41_Y26_N22
\piso_actual[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(3),
	o => \piso_actual[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\piso_actual[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(4),
	o => \piso_actual[4]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\piso_destino[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(3),
	o => \piso_destino[3]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\piso_destino[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(4),
	o => \piso_destino[4]~input_o\);

ww_pwm_motor <= \pwm_motor~output_o\;

ww_in1_motor <= \in1_motor~output_o\;

ww_in2_motor <= \in2_motor~output_o\;

ww_pwm_puerta <= \pwm_puerta~output_o\;
END structure;


