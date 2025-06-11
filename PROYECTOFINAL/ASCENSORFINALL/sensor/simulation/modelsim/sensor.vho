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

-- DATE "05/22/2025 19:37:48"

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

ENTITY 	sensor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ir_sensors : IN std_logic_vector(4 DOWNTO 0);
	piso_actual : OUT std_logic_vector(2 DOWNTO 0);
	error : OUT std_logic
	);
END sensor;

-- Design Ports Information
-- piso_actual[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sensor IS
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
SIGNAL ww_ir_sensors : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ir_sensors[1]~input_o\ : std_logic;
SIGNAL \debounced_ir[1]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ir_sensors[0]~input_o\ : std_logic;
SIGNAL \prev_ir[1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ir_sensors[3]~input_o\ : std_logic;
SIGNAL \ir_sensors[2]~input_o\ : std_logic;
SIGNAL \prev_ir[3]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count_debounce[0]~7_combout\ : std_logic;
SIGNAL \ir_sensors[4]~input_o\ : std_logic;
SIGNAL \prev_ir[4]~feeder_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \count_debounce[0]~8\ : std_logic;
SIGNAL \count_debounce[1]~9_combout\ : std_logic;
SIGNAL \count_debounce[1]~10\ : std_logic;
SIGNAL \count_debounce[2]~11_combout\ : std_logic;
SIGNAL \count_debounce[2]~12\ : std_logic;
SIGNAL \count_debounce[3]~13_combout\ : std_logic;
SIGNAL \count_debounce[3]~14\ : std_logic;
SIGNAL \count_debounce[4]~15_combout\ : std_logic;
SIGNAL \debounced_ir[4]~0_combout\ : std_logic;
SIGNAL \count_debounce[4]~16\ : std_logic;
SIGNAL \count_debounce[5]~17_combout\ : std_logic;
SIGNAL \count_debounce[5]~18\ : std_logic;
SIGNAL \count_debounce[6]~19_combout\ : std_logic;
SIGNAL \debounced_ir[4]~1_combout\ : std_logic;
SIGNAL \debounced_ir[4]~2_combout\ : std_logic;
SIGNAL \debounced_ir[2]~feeder_combout\ : std_logic;
SIGNAL \debounced_ir[3]~feeder_combout\ : std_logic;
SIGNAL \debounced_ir[4]~feeder_combout\ : std_logic;
SIGNAL \piso_actual~0_combout\ : std_logic;
SIGNAL \debounced_ir[0]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \piso_actual~1_combout\ : std_logic;
SIGNAL \piso_actual[0]~reg0_q\ : std_logic;
SIGNAL \piso_actual~2_combout\ : std_logic;
SIGNAL \piso_actual~3_combout\ : std_logic;
SIGNAL \piso_actual[1]~reg0_q\ : std_logic;
SIGNAL \piso_actual~4_combout\ : std_logic;
SIGNAL \piso_actual[2]~reg0_q\ : std_logic;
SIGNAL \error~reg0_q\ : std_logic;
SIGNAL prev_ir : std_logic_vector(4 DOWNTO 0);
SIGNAL debounced_ir : std_logic_vector(4 DOWNTO 0);
SIGNAL count_debounce : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_debounced_ir[4]~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ir_sensors <= ir_sensors;
piso_actual <= ww_piso_actual;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_debounced_ir[4]~2_combout\ <= NOT \debounced_ir[4]~2_combout\;

-- Location: IOOBUF_X0_Y7_N16
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[0]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[1]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_actual[2]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error~reg0_q\,
	devoe => ww_devoe,
	o => \error~output_o\);

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

-- Location: IOIBUF_X0_Y6_N8
\ir_sensors[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(1),
	o => \ir_sensors[1]~input_o\);

-- Location: LCCOMB_X2_Y6_N30
\debounced_ir[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[1]~feeder_combout\ = \ir_sensors[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[1]~input_o\,
	combout => \debounced_ir[1]~feeder_combout\);

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

-- Location: IOIBUF_X0_Y6_N15
\ir_sensors[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(0),
	o => \ir_sensors[0]~input_o\);

-- Location: FF_X1_Y6_N17
\prev_ir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_sensors[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_ir(0));

-- Location: LCCOMB_X1_Y6_N10
\prev_ir[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_ir[1]~feeder_combout\ = \ir_sensors[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[1]~input_o\,
	combout => \prev_ir[1]~feeder_combout\);

-- Location: FF_X1_Y6_N11
\prev_ir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_ir[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_ir(1));

-- Location: LCCOMB_X1_Y6_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ir_sensors[0]~input_o\ & (prev_ir(0) & (\ir_sensors[1]~input_o\ $ (!prev_ir(1))))) # (!\ir_sensors[0]~input_o\ & (!prev_ir(0) & (\ir_sensors[1]~input_o\ $ (!prev_ir(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sensors[0]~input_o\,
	datab => \ir_sensors[1]~input_o\,
	datac => prev_ir(0),
	datad => prev_ir(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\ir_sensors[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(3),
	o => \ir_sensors[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\ir_sensors[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(2),
	o => \ir_sensors[2]~input_o\);

-- Location: FF_X1_Y6_N7
\prev_ir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ir_sensors[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_ir(2));

-- Location: LCCOMB_X1_Y6_N20
\prev_ir[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_ir[3]~feeder_combout\ = \ir_sensors[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[3]~input_o\,
	combout => \prev_ir[3]~feeder_combout\);

-- Location: FF_X1_Y6_N21
\prev_ir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_ir[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_ir(3));

-- Location: LCCOMB_X1_Y6_N6
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\ir_sensors[3]~input_o\ & (prev_ir(3) & (\ir_sensors[2]~input_o\ $ (!prev_ir(2))))) # (!\ir_sensors[3]~input_o\ & (!prev_ir(3) & (\ir_sensors[2]~input_o\ $ (!prev_ir(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sensors[3]~input_o\,
	datab => \ir_sensors[2]~input_o\,
	datac => prev_ir(2),
	datad => prev_ir(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y6_N12
\count_debounce[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[0]~7_combout\ = count_debounce(0) $ (VCC)
-- \count_debounce[0]~8\ = CARRY(count_debounce(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_debounce(0),
	datad => VCC,
	combout => \count_debounce[0]~7_combout\,
	cout => \count_debounce[0]~8\);

-- Location: IOIBUF_X0_Y5_N1
\ir_sensors[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(4),
	o => \ir_sensors[4]~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\prev_ir[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_ir[4]~feeder_combout\ = \ir_sensors[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[4]~input_o\,
	combout => \prev_ir[4]~feeder_combout\);

-- Location: FF_X1_Y6_N13
\prev_ir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_ir[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_ir(4));

-- Location: LCCOMB_X2_Y6_N6
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ((prev_ir(4) $ (\ir_sensors[4]~input_o\)) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_ir(4),
	datab => \ir_sensors[4]~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X2_Y6_N13
\count_debounce[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(0));

-- Location: LCCOMB_X2_Y6_N14
\count_debounce[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[1]~9_combout\ = (count_debounce(1) & (!\count_debounce[0]~8\)) # (!count_debounce(1) & ((\count_debounce[0]~8\) # (GND)))
-- \count_debounce[1]~10\ = CARRY((!\count_debounce[0]~8\) # (!count_debounce(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_debounce(1),
	datad => VCC,
	cin => \count_debounce[0]~8\,
	combout => \count_debounce[1]~9_combout\,
	cout => \count_debounce[1]~10\);

-- Location: FF_X2_Y6_N15
\count_debounce[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[1]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(1));

-- Location: LCCOMB_X2_Y6_N16
\count_debounce[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[2]~11_combout\ = (count_debounce(2) & (\count_debounce[1]~10\ $ (GND))) # (!count_debounce(2) & (!\count_debounce[1]~10\ & VCC))
-- \count_debounce[2]~12\ = CARRY((count_debounce(2) & !\count_debounce[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_debounce(2),
	datad => VCC,
	cin => \count_debounce[1]~10\,
	combout => \count_debounce[2]~11_combout\,
	cout => \count_debounce[2]~12\);

-- Location: FF_X2_Y6_N17
\count_debounce[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(2));

-- Location: LCCOMB_X2_Y6_N18
\count_debounce[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[3]~13_combout\ = (count_debounce(3) & (!\count_debounce[2]~12\)) # (!count_debounce(3) & ((\count_debounce[2]~12\) # (GND)))
-- \count_debounce[3]~14\ = CARRY((!\count_debounce[2]~12\) # (!count_debounce(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_debounce(3),
	datad => VCC,
	cin => \count_debounce[2]~12\,
	combout => \count_debounce[3]~13_combout\,
	cout => \count_debounce[3]~14\);

-- Location: FF_X2_Y6_N19
\count_debounce[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[3]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(3));

-- Location: LCCOMB_X2_Y6_N20
\count_debounce[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[4]~15_combout\ = (count_debounce(4) & (\count_debounce[3]~14\ $ (GND))) # (!count_debounce(4) & (!\count_debounce[3]~14\ & VCC))
-- \count_debounce[4]~16\ = CARRY((count_debounce(4) & !\count_debounce[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_debounce(4),
	datad => VCC,
	cin => \count_debounce[3]~14\,
	combout => \count_debounce[4]~15_combout\,
	cout => \count_debounce[4]~16\);

-- Location: FF_X2_Y6_N21
\count_debounce[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[4]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(4));

-- Location: LCCOMB_X2_Y6_N26
\debounced_ir[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[4]~0_combout\ = (count_debounce(2)) # ((count_debounce(4)) # (count_debounce(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_debounce(2),
	datac => count_debounce(4),
	datad => count_debounce(3),
	combout => \debounced_ir[4]~0_combout\);

-- Location: LCCOMB_X2_Y6_N22
\count_debounce[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[5]~17_combout\ = (count_debounce(5) & (!\count_debounce[4]~16\)) # (!count_debounce(5) & ((\count_debounce[4]~16\) # (GND)))
-- \count_debounce[5]~18\ = CARRY((!\count_debounce[4]~16\) # (!count_debounce(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_debounce(5),
	datad => VCC,
	cin => \count_debounce[4]~16\,
	combout => \count_debounce[5]~17_combout\,
	cout => \count_debounce[5]~18\);

-- Location: FF_X2_Y6_N23
\count_debounce[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[5]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(5));

-- Location: LCCOMB_X2_Y6_N24
\count_debounce[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_debounce[6]~19_combout\ = \count_debounce[5]~18\ $ (!count_debounce(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_debounce(6),
	cin => \count_debounce[5]~18\,
	combout => \count_debounce[6]~19_combout\);

-- Location: FF_X2_Y6_N25
\count_debounce[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_debounce[6]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Equal0~2_combout\,
	ena => \ALT_INV_debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_debounce(6));

-- Location: LCCOMB_X2_Y6_N2
\debounced_ir[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[4]~1_combout\ = (count_debounce(6) & (count_debounce(5) & (\ir_sensors[4]~input_o\ $ (!prev_ir(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sensors[4]~input_o\,
	datab => count_debounce(6),
	datac => count_debounce(5),
	datad => prev_ir(4),
	combout => \debounced_ir[4]~1_combout\);

-- Location: LCCOMB_X2_Y6_N4
\debounced_ir[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[4]~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\debounced_ir[4]~0_combout\ & \debounced_ir[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \debounced_ir[4]~0_combout\,
	datad => \debounced_ir[4]~1_combout\,
	combout => \debounced_ir[4]~2_combout\);

-- Location: FF_X2_Y6_N31
\debounced_ir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounced_ir[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounced_ir(1));

-- Location: LCCOMB_X2_Y6_N28
\debounced_ir[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[2]~feeder_combout\ = \ir_sensors[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[2]~input_o\,
	combout => \debounced_ir[2]~feeder_combout\);

-- Location: FF_X2_Y6_N29
\debounced_ir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounced_ir[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounced_ir(2));

-- Location: LCCOMB_X2_Y6_N8
\debounced_ir[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[3]~feeder_combout\ = \ir_sensors[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[3]~input_o\,
	combout => \debounced_ir[3]~feeder_combout\);

-- Location: FF_X2_Y6_N9
\debounced_ir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounced_ir[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounced_ir(3));

-- Location: LCCOMB_X2_Y6_N10
\debounced_ir[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[4]~feeder_combout\ = \ir_sensors[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[4]~input_o\,
	combout => \debounced_ir[4]~feeder_combout\);

-- Location: FF_X2_Y6_N11
\debounced_ir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounced_ir[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounced_ir(4));

-- Location: LCCOMB_X1_Y6_N8
\piso_actual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual~0_combout\ = (debounced_ir(4)) # ((!debounced_ir(3) & ((debounced_ir(2)) # (!debounced_ir(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounced_ir(1),
	datab => debounced_ir(2),
	datac => debounced_ir(3),
	datad => debounced_ir(4),
	combout => \piso_actual~0_combout\);

-- Location: LCCOMB_X2_Y6_N0
\debounced_ir[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounced_ir[0]~feeder_combout\ = \ir_sensors[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ir_sensors[0]~input_o\,
	combout => \debounced_ir[0]~feeder_combout\);

-- Location: FF_X2_Y6_N1
\debounced_ir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounced_ir[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \debounced_ir[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounced_ir(0));

-- Location: LCCOMB_X1_Y6_N22
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (debounced_ir(3) & (!debounced_ir(4) & !debounced_ir(2))) # (!debounced_ir(3) & (debounced_ir(4) $ (debounced_ir(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounced_ir(3),
	datac => debounced_ir(4),
	datad => debounced_ir(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y6_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!debounced_ir(4) & (!debounced_ir(3) & !debounced_ir(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounced_ir(4),
	datac => debounced_ir(3),
	datad => debounced_ir(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y6_N18
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (debounced_ir(1) & ((debounced_ir(0)) # ((!\Equal1~0_combout\)))) # (!debounced_ir(1) & ((debounced_ir(0) & ((!\Equal1~0_combout\))) # (!debounced_ir(0) & (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounced_ir(1),
	datab => debounced_ir(0),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X1_Y6_N0
\piso_actual~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual~1_combout\ = (\piso_actual~0_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso_actual~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \piso_actual~1_combout\);

-- Location: FF_X1_Y6_N1
\piso_actual[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[0]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N26
\piso_actual~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual~2_combout\ = (!debounced_ir(3) & (!debounced_ir(4) & ((debounced_ir(1)) # (debounced_ir(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounced_ir(1),
	datab => debounced_ir(2),
	datac => debounced_ir(3),
	datad => debounced_ir(4),
	combout => \piso_actual~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\piso_actual~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual~3_combout\ = (\piso_actual~2_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso_actual~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \piso_actual~3_combout\);

-- Location: FF_X1_Y6_N31
\piso_actual[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[1]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N28
\piso_actual~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual~4_combout\ = (!\Equal1~2_combout\ & ((debounced_ir(4)) # (debounced_ir(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounced_ir(4),
	datac => debounced_ir(3),
	datad => \Equal1~2_combout\,
	combout => \piso_actual~4_combout\);

-- Location: FF_X1_Y6_N29
\piso_actual[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_actual[2]~reg0_q\);

-- Location: FF_X1_Y6_N19
\error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error~reg0_q\);

ww_piso_actual(0) <= \piso_actual[0]~output_o\;

ww_piso_actual(1) <= \piso_actual[1]~output_o\;

ww_piso_actual(2) <= \piso_actual[2]~output_o\;

ww_error <= \error~output_o\;
END structure;


