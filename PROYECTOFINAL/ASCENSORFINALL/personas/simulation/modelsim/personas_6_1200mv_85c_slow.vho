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

-- DATE "05/06/2025 18:00:09"

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

ENTITY 	personas IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	personas_entraron : IN STD.STANDARD.integer range 0 TO 10;
	personas_salieron : IN STD.STANDARD.integer range 0 TO 10;
	sobrepeso : OUT std_logic;
	personas_actuales : OUT STD.STANDARD.integer range 0 TO 20
	);
END personas;

-- Design Ports Information
-- sobrepeso	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_actuales[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_actuales[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_actuales[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_actuales[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_actuales[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_entraron[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_entraron[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_entraron[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_entraron[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_salieron[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_salieron[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_salieron[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas_salieron[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF personas IS
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
SIGNAL ww_personas_entraron : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_personas_salieron : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sobrepeso : std_logic;
SIGNAL ww_personas_actuales : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sobrepeso~output_o\ : std_logic;
SIGNAL \personas_actuales[0]~output_o\ : std_logic;
SIGNAL \personas_actuales[1]~output_o\ : std_logic;
SIGNAL \personas_actuales[2]~output_o\ : std_logic;
SIGNAL \personas_actuales[3]~output_o\ : std_logic;
SIGNAL \personas_actuales[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \personas_salieron[3]~input_o\ : std_logic;
SIGNAL \personas_entraron[3]~input_o\ : std_logic;
SIGNAL \personas_entraron[2]~input_o\ : std_logic;
SIGNAL \personas_entraron[1]~input_o\ : std_logic;
SIGNAL \personas_salieron[1]~input_o\ : std_logic;
SIGNAL \personas_entraron[0]~input_o\ : std_logic;
SIGNAL \personas_salieron[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \total[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \personas_salieron[2]~input_o\ : std_logic;
SIGNAL \total[0]~6\ : std_logic;
SIGNAL \total[1]~8\ : std_logic;
SIGNAL \total[2]~10\ : std_logic;
SIGNAL \total[3]~12\ : std_logic;
SIGNAL \total[4]~13_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \total[1]~7_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \total[2]~9_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \total[3]~11_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL total : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_personas_entraron <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(personas_entraron, 4);
ww_personas_salieron <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(personas_salieron, 4);
sobrepeso <= ww_sobrepeso;
personas_actuales <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_personas_actuales));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N23
\sobrepeso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan2~1_combout\,
	devoe => ww_devoe,
	o => \sobrepeso~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\personas_actuales[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total(0),
	devoe => ww_devoe,
	o => \personas_actuales[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\personas_actuales[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total(1),
	devoe => ww_devoe,
	o => \personas_actuales[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\personas_actuales[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total(2),
	devoe => ww_devoe,
	o => \personas_actuales[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\personas_actuales[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total(3),
	devoe => ww_devoe,
	o => \personas_actuales[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\personas_actuales[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total(4),
	devoe => ww_devoe,
	o => \personas_actuales[4]~output_o\);

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

-- Location: IOIBUF_X0_Y4_N22
\personas_salieron[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_salieron(3),
	o => \personas_salieron[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\personas_entraron[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_entraron(3),
	o => \personas_entraron[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\personas_entraron[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_entraron(2),
	o => \personas_entraron[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\personas_entraron[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_entraron(1),
	o => \personas_entraron[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\personas_salieron[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_salieron(1),
	o => \personas_salieron[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\personas_entraron[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_entraron(0),
	o => \personas_entraron[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\personas_salieron[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_salieron(0),
	o => \personas_salieron[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\personas_entraron[0]~input_o\ & (total(0) $ (VCC))) # (!\personas_entraron[0]~input_o\ & (total(0) & VCC))
-- \Add0~1\ = CARRY((\personas_entraron[0]~input_o\ & total(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \personas_entraron[0]~input_o\,
	datab => total(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y4_N0
\total[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total[0]~5_combout\ = (\personas_salieron[0]~input_o\ & (\Add0~0_combout\ $ (VCC))) # (!\personas_salieron[0]~input_o\ & ((\Add0~0_combout\) # (GND)))
-- \total[0]~6\ = CARRY((\Add0~0_combout\) # (!\personas_salieron[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \personas_salieron[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \total[0]~5_combout\,
	cout => \total[0]~6\);

-- Location: LCCOMB_X1_Y4_N12
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

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N24
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (total(3) & ((\personas_entraron[3]~input_o\ & (\Add0~5\ & VCC)) # (!\personas_entraron[3]~input_o\ & (!\Add0~5\)))) # (!total(3) & ((\personas_entraron[3]~input_o\ & (!\Add0~5\)) # (!\personas_entraron[3]~input_o\ & ((\Add0~5\) # 
-- (GND)))))
-- \Add0~7\ = CARRY((total(3) & (!\personas_entraron[3]~input_o\ & !\Add0~5\)) # (!total(3) & ((!\Add0~5\) # (!\personas_entraron[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => total(3),
	datab => \personas_entraron[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y4_N26
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = total(4) $ (!\Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => total(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: IOIBUF_X0_Y5_N15
\personas_salieron[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas_salieron(2),
	o => \personas_salieron[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N2
\total[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total[1]~7_combout\ = (\personas_salieron[1]~input_o\ & ((\Add0~2_combout\ & (!\total[0]~6\)) # (!\Add0~2_combout\ & ((\total[0]~6\) # (GND))))) # (!\personas_salieron[1]~input_o\ & ((\Add0~2_combout\ & (\total[0]~6\ & VCC)) # (!\Add0~2_combout\ & 
-- (!\total[0]~6\))))
-- \total[1]~8\ = CARRY((\personas_salieron[1]~input_o\ & ((!\total[0]~6\) # (!\Add0~2_combout\))) # (!\personas_salieron[1]~input_o\ & (!\Add0~2_combout\ & !\total[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \personas_salieron[1]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \total[0]~6\,
	combout => \total[1]~7_combout\,
	cout => \total[1]~8\);

-- Location: LCCOMB_X1_Y4_N4
\total[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total[2]~9_combout\ = ((\Add0~4_combout\ $ (\personas_salieron[2]~input_o\ $ (\total[1]~8\)))) # (GND)
-- \total[2]~10\ = CARRY((\Add0~4_combout\ & ((!\total[1]~8\) # (!\personas_salieron[2]~input_o\))) # (!\Add0~4_combout\ & (!\personas_salieron[2]~input_o\ & !\total[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \personas_salieron[2]~input_o\,
	datad => VCC,
	cin => \total[1]~8\,
	combout => \total[2]~9_combout\,
	cout => \total[2]~10\);

-- Location: LCCOMB_X1_Y4_N6
\total[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total[3]~11_combout\ = (\personas_salieron[3]~input_o\ & ((\Add0~6_combout\ & (!\total[2]~10\)) # (!\Add0~6_combout\ & ((\total[2]~10\) # (GND))))) # (!\personas_salieron[3]~input_o\ & ((\Add0~6_combout\ & (\total[2]~10\ & VCC)) # (!\Add0~6_combout\ & 
-- (!\total[2]~10\))))
-- \total[3]~12\ = CARRY((\personas_salieron[3]~input_o\ & ((!\total[2]~10\) # (!\Add0~6_combout\))) # (!\personas_salieron[3]~input_o\ & (!\Add0~6_combout\ & !\total[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \personas_salieron[3]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \total[2]~10\,
	combout => \total[3]~11_combout\,
	cout => \total[3]~12\);

-- Location: LCCOMB_X1_Y4_N8
\total[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total[4]~13_combout\ = \Add0~8_combout\ $ (\total[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	cin => \total[3]~12\,
	combout => \total[4]~13_combout\);

-- Location: FF_X1_Y4_N9
\total[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total[4]~13_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(4));

-- Location: LCCOMB_X1_Y4_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (total(4) & (total(2) & ((total(0)) # (total(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total(0),
	datab => total(4),
	datac => total(2),
	datad => total(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # ((total(3) & total(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total(3),
	datac => total(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X1_Y4_N1
\total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(0));

-- Location: LCCOMB_X1_Y4_N20
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\personas_entraron[1]~input_o\ & ((total(1) & (\Add0~1\ & VCC)) # (!total(1) & (!\Add0~1\)))) # (!\personas_entraron[1]~input_o\ & ((total(1) & (!\Add0~1\)) # (!total(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\personas_entraron[1]~input_o\ & (!total(1) & !\Add0~1\)) # (!\personas_entraron[1]~input_o\ & ((!\Add0~1\) # (!total(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \personas_entraron[1]~input_o\,
	datab => total(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X1_Y4_N3
\total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(1));

-- Location: LCCOMB_X1_Y4_N22
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\personas_entraron[2]~input_o\ $ (total(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\personas_entraron[2]~input_o\ & ((total(2)) # (!\Add0~3\))) # (!\personas_entraron[2]~input_o\ & (total(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \personas_entraron[2]~input_o\,
	datab => total(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X1_Y4_N5
\total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total[2]~9_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(2));

-- Location: FF_X1_Y4_N7
\total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total[3]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total(3));

-- Location: LCCOMB_X1_Y4_N30
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (total(4)) # ((total(3) & (total(0) & total(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total(3),
	datab => total(4),
	datac => total(0),
	datad => total(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan2~0_combout\) # ((total(2) & total(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datac => total(2),
	datad => total(3),
	combout => \LessThan2~1_combout\);

ww_sobrepeso <= \sobrepeso~output_o\;

ww_personas_actuales(0) <= \personas_actuales[0]~output_o\;

ww_personas_actuales(1) <= \personas_actuales[1]~output_o\;

ww_personas_actuales(2) <= \personas_actuales[2]~output_o\;

ww_personas_actuales(3) <= \personas_actuales[3]~output_o\;

ww_personas_actuales(4) <= \personas_actuales[4]~output_o\;
END structure;


