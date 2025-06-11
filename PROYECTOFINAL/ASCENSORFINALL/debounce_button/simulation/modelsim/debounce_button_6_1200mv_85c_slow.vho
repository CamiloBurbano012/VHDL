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

-- DATE "06/10/2025 13:37:00"

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

ENTITY 	Debounce_Button IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	button_in : IN std_logic;
	button_out : OUT std_logic
	);
END Debounce_Button;

-- Design Ports Information
-- button_out	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_in	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Debounce_Button IS
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
SIGNAL ww_button_in : std_logic;
SIGNAL ww_button_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button_in~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \button_sync_reg1~q\ : std_logic;
SIGNAL \button_sync_reg2~feeder_combout\ : std_logic;
SIGNAL \button_sync_reg2~q\ : std_logic;
SIGNAL \counter[0]~16_combout\ : std_logic;
SIGNAL \counter[15]~26_combout\ : std_logic;
SIGNAL \counter[0]~17\ : std_logic;
SIGNAL \counter[1]~18_combout\ : std_logic;
SIGNAL \counter[1]~19\ : std_logic;
SIGNAL \counter[2]~20_combout\ : std_logic;
SIGNAL \counter[2]~21\ : std_logic;
SIGNAL \counter[3]~22_combout\ : std_logic;
SIGNAL \counter[3]~23\ : std_logic;
SIGNAL \counter[4]~24_combout\ : std_logic;
SIGNAL \counter[4]~25\ : std_logic;
SIGNAL \counter[5]~27_combout\ : std_logic;
SIGNAL \counter[5]~28\ : std_logic;
SIGNAL \counter[6]~29_combout\ : std_logic;
SIGNAL \counter[6]~30\ : std_logic;
SIGNAL \counter[7]~31_combout\ : std_logic;
SIGNAL \counter[7]~32\ : std_logic;
SIGNAL \counter[8]~33_combout\ : std_logic;
SIGNAL \counter[8]~34\ : std_logic;
SIGNAL \counter[9]~35_combout\ : std_logic;
SIGNAL \counter[9]~36\ : std_logic;
SIGNAL \counter[10]~37_combout\ : std_logic;
SIGNAL \counter[10]~38\ : std_logic;
SIGNAL \counter[11]~39_combout\ : std_logic;
SIGNAL \counter[11]~40\ : std_logic;
SIGNAL \counter[12]~41_combout\ : std_logic;
SIGNAL \counter[12]~42\ : std_logic;
SIGNAL \counter[13]~43_combout\ : std_logic;
SIGNAL \counter[13]~44\ : std_logic;
SIGNAL \counter[14]~45_combout\ : std_logic;
SIGNAL \counter[14]~46\ : std_logic;
SIGNAL \counter[15]~47_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \button_state~0_combout\ : std_logic;
SIGNAL \button_state~q\ : std_logic;
SIGNAL counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_button_in <= button_in;
button_out <= ww_button_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X32_Y29_N9
\button_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button_state~q\,
	devoe => ww_devoe,
	o => \button_out~output_o\);

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

-- Location: IOIBUF_X41_Y22_N22
\button_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_in,
	o => \button_in~input_o\);

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

-- Location: FF_X33_Y22_N29
button_sync_reg1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \button_in~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_sync_reg1~q\);

-- Location: LCCOMB_X33_Y22_N22
\button_sync_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_sync_reg2~feeder_combout\ = \button_sync_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button_sync_reg1~q\,
	combout => \button_sync_reg2~feeder_combout\);

-- Location: FF_X33_Y22_N23
button_sync_reg2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button_sync_reg2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_sync_reg2~q\);

-- Location: LCCOMB_X32_Y22_N0
\counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~16_combout\ = counter(0) $ (VCC)
-- \counter[0]~17\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~16_combout\,
	cout => \counter[0]~17\);

-- Location: LCCOMB_X33_Y22_N28
\counter[15]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~26_combout\ = (\button_sync_reg2~q\ $ (!\button_state~q\)) # (!\LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_sync_reg2~q\,
	datab => \button_state~q\,
	datad => \LessThan0~3_combout\,
	combout => \counter[15]~26_combout\);

-- Location: FF_X32_Y22_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X32_Y22_N2
\counter[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~18_combout\ = (counter(1) & (!\counter[0]~17\)) # (!counter(1) & ((\counter[0]~17\) # (GND)))
-- \counter[1]~19\ = CARRY((!\counter[0]~17\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~17\,
	combout => \counter[1]~18_combout\,
	cout => \counter[1]~19\);

-- Location: FF_X32_Y22_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X32_Y22_N4
\counter[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[2]~20_combout\ = (counter(2) & (\counter[1]~19\ $ (GND))) # (!counter(2) & (!\counter[1]~19\ & VCC))
-- \counter[2]~21\ = CARRY((counter(2) & !\counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~19\,
	combout => \counter[2]~20_combout\,
	cout => \counter[2]~21\);

-- Location: FF_X32_Y22_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X32_Y22_N6
\counter[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[3]~22_combout\ = (counter(3) & (!\counter[2]~21\)) # (!counter(3) & ((\counter[2]~21\) # (GND)))
-- \counter[3]~23\ = CARRY((!\counter[2]~21\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~21\,
	combout => \counter[3]~22_combout\,
	cout => \counter[3]~23\);

-- Location: FF_X32_Y22_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X32_Y22_N8
\counter[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[4]~24_combout\ = (counter(4) & (\counter[3]~23\ $ (GND))) # (!counter(4) & (!\counter[3]~23\ & VCC))
-- \counter[4]~25\ = CARRY((counter(4) & !\counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~23\,
	combout => \counter[4]~24_combout\,
	cout => \counter[4]~25\);

-- Location: FF_X32_Y22_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X32_Y22_N10
\counter[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[5]~27_combout\ = (counter(5) & (!\counter[4]~25\)) # (!counter(5) & ((\counter[4]~25\) # (GND)))
-- \counter[5]~28\ = CARRY((!\counter[4]~25\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~25\,
	combout => \counter[5]~27_combout\,
	cout => \counter[5]~28\);

-- Location: FF_X32_Y22_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X32_Y22_N12
\counter[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[6]~29_combout\ = (counter(6) & (\counter[5]~28\ $ (GND))) # (!counter(6) & (!\counter[5]~28\ & VCC))
-- \counter[6]~30\ = CARRY((counter(6) & !\counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~28\,
	combout => \counter[6]~29_combout\,
	cout => \counter[6]~30\);

-- Location: FF_X32_Y22_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X32_Y22_N14
\counter[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[7]~31_combout\ = (counter(7) & (!\counter[6]~30\)) # (!counter(7) & ((\counter[6]~30\) # (GND)))
-- \counter[7]~32\ = CARRY((!\counter[6]~30\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~30\,
	combout => \counter[7]~31_combout\,
	cout => \counter[7]~32\);

-- Location: FF_X32_Y22_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X32_Y22_N16
\counter[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[8]~33_combout\ = (counter(8) & (\counter[7]~32\ $ (GND))) # (!counter(8) & (!\counter[7]~32\ & VCC))
-- \counter[8]~34\ = CARRY((counter(8) & !\counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~32\,
	combout => \counter[8]~33_combout\,
	cout => \counter[8]~34\);

-- Location: FF_X32_Y22_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X32_Y22_N18
\counter[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[9]~35_combout\ = (counter(9) & (!\counter[8]~34\)) # (!counter(9) & ((\counter[8]~34\) # (GND)))
-- \counter[9]~36\ = CARRY((!\counter[8]~34\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~34\,
	combout => \counter[9]~35_combout\,
	cout => \counter[9]~36\);

-- Location: FF_X32_Y22_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X32_Y22_N20
\counter[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[10]~37_combout\ = (counter(10) & (\counter[9]~36\ $ (GND))) # (!counter(10) & (!\counter[9]~36\ & VCC))
-- \counter[10]~38\ = CARRY((counter(10) & !\counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~36\,
	combout => \counter[10]~37_combout\,
	cout => \counter[10]~38\);

-- Location: FF_X32_Y22_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X32_Y22_N22
\counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[11]~39_combout\ = (counter(11) & (!\counter[10]~38\)) # (!counter(11) & ((\counter[10]~38\) # (GND)))
-- \counter[11]~40\ = CARRY((!\counter[10]~38\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~38\,
	combout => \counter[11]~39_combout\,
	cout => \counter[11]~40\);

-- Location: FF_X32_Y22_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X32_Y22_N24
\counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[12]~41_combout\ = (counter(12) & (\counter[11]~40\ $ (GND))) # (!counter(12) & (!\counter[11]~40\ & VCC))
-- \counter[12]~42\ = CARRY((counter(12) & !\counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~40\,
	combout => \counter[12]~41_combout\,
	cout => \counter[12]~42\);

-- Location: FF_X32_Y22_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X32_Y22_N26
\counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[13]~43_combout\ = (counter(13) & (!\counter[12]~42\)) # (!counter(13) & ((\counter[12]~42\) # (GND)))
-- \counter[13]~44\ = CARRY((!\counter[12]~42\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~42\,
	combout => \counter[13]~43_combout\,
	cout => \counter[13]~44\);

-- Location: FF_X32_Y22_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X32_Y22_N28
\counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[14]~45_combout\ = (counter(14) & (\counter[13]~44\ $ (GND))) # (!counter(14) & (!\counter[13]~44\ & VCC))
-- \counter[14]~46\ = CARRY((counter(14) & !\counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~44\,
	combout => \counter[14]~45_combout\,
	cout => \counter[14]~46\);

-- Location: FF_X32_Y22_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X32_Y22_N30
\counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~47_combout\ = counter(15) $ (\counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	cin => \counter[14]~46\,
	combout => \counter[15]~47_combout\);

-- Location: FF_X32_Y22_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \counter[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X33_Y22_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(13) & (!counter(10) & (!counter(12) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(10),
	datac => counter(12),
	datad => counter(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y22_N12
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!counter(5) & (!counter(4) & !counter(7)))) # (!counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(4),
	datac => counter(8),
	datad => counter(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y22_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((\LessThan0~0_combout\) # ((!counter(7) & !counter(6)))) # (!counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(9),
	datac => counter(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y22_N18
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((\LessThan0~2_combout\ & \LessThan0~1_combout\)) # (!counter(15))) # (!counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(15),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y22_N24
\button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_state~0_combout\ = (\LessThan0~3_combout\ & ((\button_state~q\))) # (!\LessThan0~3_combout\ & (\button_sync_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_sync_reg2~q\,
	datac => \button_state~q\,
	datad => \LessThan0~3_combout\,
	combout => \button_state~0_combout\);

-- Location: FF_X33_Y22_N25
button_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button_state~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \button_state~q\);

ww_button_out <= \button_out~output_o\;
END structure;


