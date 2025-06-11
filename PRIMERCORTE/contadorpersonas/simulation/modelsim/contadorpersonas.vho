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

-- DATE "03/31/2025 13:32:02"

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

ENTITY 	ContadorPersonas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	entrar_persona : IN std_logic;
	salir_persona : IN std_logic;
	num_personas : OUT std_logic_vector(3 DOWNTO 0);
	luces : OUT std_logic;
	sobrecarga : OUT std_logic
	);
END ContadorPersonas;

-- Design Ports Information
-- num_personas[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- num_personas[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luces	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrar_persona	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salir_persona	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorPersonas IS
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
SIGNAL ww_entrar_persona : std_logic;
SIGNAL ww_salir_persona : std_logic;
SIGNAL ww_num_personas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_luces : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \num_personas[0]~output_o\ : std_logic;
SIGNAL \num_personas[1]~output_o\ : std_logic;
SIGNAL \num_personas[2]~output_o\ : std_logic;
SIGNAL \num_personas[3]~output_o\ : std_logic;
SIGNAL \luces~output_o\ : std_logic;
SIGNAL \sobrecarga~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entrar_persona~input_o\ : std_logic;
SIGNAL \contador[1]~5_cout\ : std_logic;
SIGNAL \contador[1]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \salir_persona~input_o\ : std_logic;
SIGNAL \contador[0]~8_combout\ : std_logic;
SIGNAL \contador[1]~7\ : std_logic;
SIGNAL \contador[2]~9_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \contador[2]~10\ : std_logic;
SIGNAL \contador[3]~11_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \contador[0]~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_entrar_persona <= entrar_persona;
ww_salir_persona <= salir_persona;
num_personas <= ww_num_personas;
luces <= ww_luces;
sobrecarga <= ww_sobrecarga;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y4_N2
\num_personas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \num_personas[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\num_personas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \num_personas[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\num_personas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \num_personas[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\num_personas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \num_personas[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\luces~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~0_combout\,
	devoe => ww_devoe,
	o => \luces~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sobrecarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \sobrecarga~output_o\);

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

-- Location: IOIBUF_X0_Y5_N1
\entrar_persona~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrar_persona,
	o => \entrar_persona~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\contador[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~5_cout\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	cout => \contador[1]~5_cout\);

-- Location: LCCOMB_X1_Y4_N18
\contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~6_combout\ = (\process_0~0_combout\ & ((contador(1) & (!\contador[1]~5_cout\)) # (!contador(1) & ((\contador[1]~5_cout\) # (GND))))) # (!\process_0~0_combout\ & ((contador(1) & (\contador[1]~5_cout\ & VCC)) # (!contador(1) & 
-- (!\contador[1]~5_cout\))))
-- \contador[1]~7\ = CARRY((\process_0~0_combout\ & ((!\contador[1]~5_cout\) # (!contador(1)))) # (!\process_0~0_combout\ & (!contador(1) & !\contador[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => contador(1),
	datad => VCC,
	cin => \contador[1]~5_cout\,
	combout => \contador[1]~6_combout\,
	cout => \contador[1]~7\);

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

-- Location: IOIBUF_X0_Y3_N1
\salir_persona~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_salir_persona,
	o => \salir_persona~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\contador[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~8_combout\ = (\process_0~0_combout\) # ((\salir_persona~input_o\ & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salir_persona~input_o\,
	datac => \LessThan1~0_combout\,
	datad => \process_0~0_combout\,
	combout => \contador[0]~8_combout\);

-- Location: FF_X1_Y4_N19
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y4_N20
\contador[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~9_combout\ = ((\process_0~0_combout\ $ (contador(2) $ (\contador[1]~7\)))) # (GND)
-- \contador[2]~10\ = CARRY((\process_0~0_combout\ & (contador(2) & !\contador[1]~7\)) # (!\process_0~0_combout\ & ((contador(2)) # (!\contador[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~7\,
	combout => \contador[2]~9_combout\,
	cout => \contador[2]~10\);

-- Location: FF_X1_Y4_N21
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y4_N10
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\entrar_persona~input_o\ & (((!contador(1) & !contador(2))) # (!contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrar_persona~input_o\,
	datab => contador(1),
	datac => contador(3),
	datad => contador(2),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\contador[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~11_combout\ = \process_0~0_combout\ $ (\contador[2]~10\ $ (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \process_0~0_combout\,
	datad => contador(3),
	cin => \contador[2]~10\,
	combout => \contador[3]~11_combout\);

-- Location: FF_X1_Y4_N23
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X1_Y4_N14
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (contador(3)) # ((contador(0)) # ((contador(2)) # (contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(2),
	datad => contador(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\contador[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~3_combout\ = contador(0) $ (((\process_0~0_combout\) # ((\LessThan1~0_combout\ & \salir_persona~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \process_0~0_combout\,
	datac => contador(0),
	datad => \salir_persona~input_o\,
	combout => \contador[0]~3_combout\);

-- Location: FF_X1_Y4_N9
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X1_Y4_N28
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (contador(3) & ((contador(2)) # ((contador(0) & contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(3),
	datac => contador(2),
	datad => contador(1),
	combout => \LessThan2~0_combout\);

ww_num_personas(0) <= \num_personas[0]~output_o\;

ww_num_personas(1) <= \num_personas[1]~output_o\;

ww_num_personas(2) <= \num_personas[2]~output_o\;

ww_num_personas(3) <= \num_personas[3]~output_o\;

ww_luces <= \luces~output_o\;

ww_sobrecarga <= \sobrecarga~output_o\;
END structure;


