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

-- DATE "04/01/2025 11:13:28"

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

ENTITY 	ControladorPuertas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	llegada_piso : BUFFER std_logic;
	abrir_manual : IN std_logic;
	cerrar_manual : IN std_logic;
	fallo_energia : IN std_logic;
	notificacion : IN std_logic;
	puerta : OUT std_logic
	);
END ControladorPuertas;

-- Design Ports Information
-- llegada_piso	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- notificacion	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_manual	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_manual	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControladorPuertas IS
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
SIGNAL ww_llegada_piso : std_logic;
SIGNAL ww_abrir_manual : std_logic;
SIGNAL ww_cerrar_manual : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_puerta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \notificacion~input_o\ : std_logic;
SIGNAL \llegada_piso~output_o\ : std_logic;
SIGNAL \puerta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \abrir_manual~input_o\ : std_logic;
SIGNAL \contador_apertura~2_combout\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \cerrar_manual~input_o\ : std_logic;
SIGNAL \contador_apertura[3]~1_combout\ : std_logic;
SIGNAL \contador_apertura~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \contador_apertura~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contador_apertura~0_combout\ : std_logic;
SIGNAL \puerta_estado~1_combout\ : std_logic;
SIGNAL \contador_cierre[0]~6_combout\ : std_logic;
SIGNAL \contador_cierre[0]~7\ : std_logic;
SIGNAL \contador_cierre[1]~8_combout\ : std_logic;
SIGNAL \contador_cierre[1]~9\ : std_logic;
SIGNAL \contador_cierre[2]~10_combout\ : std_logic;
SIGNAL \contador_cierre[2]~11\ : std_logic;
SIGNAL \contador_cierre[3]~12_combout\ : std_logic;
SIGNAL \contador_cierre[3]~13\ : std_logic;
SIGNAL \contador_cierre[4]~14_combout\ : std_logic;
SIGNAL \contador_cierre[4]~15\ : std_logic;
SIGNAL \contador_cierre[5]~16_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \puerta_estado~0_combout\ : std_logic;
SIGNAL \puerta_estado~2_combout\ : std_logic;
SIGNAL \puerta_estado~feeder_combout\ : std_logic;
SIGNAL \puerta_estado~q\ : std_logic;
SIGNAL contador_cierre : std_logic_vector(5 DOWNTO 0);
SIGNAL contador_apertura : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_abrir_manual~input_o\ : std_logic;
SIGNAL \ALT_INV_puerta_estado~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
llegada_piso <= ww_llegada_piso;
ww_abrir_manual <= abrir_manual;
ww_cerrar_manual <= cerrar_manual;
ww_fallo_energia <= fallo_energia;
ww_notificacion <= notificacion;
puerta <= ww_puerta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);
\ALT_INV_process_0~0clkctrl_outclk\ <= NOT \process_0~0clkctrl_outclk\;
\ALT_INV_abrir_manual~input_o\ <= NOT \abrir_manual~input_o\;
\ALT_INV_puerta_estado~0_combout\ <= NOT \puerta_estado~0_combout\;

-- Location: IOOBUF_X32_Y29_N16
\llegada_piso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \llegada_piso~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puerta_estado~q\,
	devoe => ww_devoe,
	o => \puerta~output_o\);

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

-- Location: IOIBUF_X41_Y10_N22
\abrir_manual~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir_manual,
	o => \abrir_manual~input_o\);

-- Location: LCCOMB_X39_Y9_N20
\contador_apertura~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_apertura~2_combout\ = (\abrir_manual~input_o\ & !contador_apertura(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datac => contador_apertura(0),
	combout => \contador_apertura~2_combout\);

-- Location: IOIBUF_X16_Y29_N8
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X16_Y28_N16
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\fallo_energia~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fallo_energia~input_o\,
	datad => \reset~input_o\,
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G13
\process_0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: IOIBUF_X41_Y9_N15
\cerrar_manual~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_manual,
	o => \cerrar_manual~input_o\);

-- Location: LCCOMB_X39_Y9_N26
\contador_apertura[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_apertura[3]~1_combout\ = ((!\abrir_manual~input_o\ & \cerrar_manual~input_o\)) # (!\puerta_estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datac => \cerrar_manual~input_o\,
	datad => \puerta_estado~q\,
	combout => \contador_apertura[3]~1_combout\);

-- Location: FF_X39_Y9_N21
\contador_apertura[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_apertura~2_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \contador_apertura[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_apertura(0));

-- Location: LCCOMB_X39_Y9_N4
\contador_apertura~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_apertura~4_combout\ = (\abrir_manual~input_o\ & (!\puerta_estado~1_combout\ & (contador_apertura(0) $ (contador_apertura(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datab => contador_apertura(0),
	datac => contador_apertura(1),
	datad => \puerta_estado~1_combout\,
	combout => \contador_apertura~4_combout\);

-- Location: FF_X39_Y9_N5
\contador_apertura[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_apertura~4_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \contador_apertura[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_apertura(1));

-- Location: LCCOMB_X39_Y9_N24
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = contador_apertura(2) $ (((contador_apertura(0) & contador_apertura(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_apertura(2),
	datab => contador_apertura(0),
	datac => contador_apertura(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X39_Y9_N22
\contador_apertura~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_apertura~3_combout\ = (\abrir_manual~input_o\ & (\Add0~1_combout\ & !\puerta_estado~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datab => \Add0~1_combout\,
	datad => \puerta_estado~1_combout\,
	combout => \contador_apertura~3_combout\);

-- Location: FF_X39_Y9_N23
\contador_apertura[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_apertura~3_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \contador_apertura[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_apertura(2));

-- Location: LCCOMB_X39_Y9_N28
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador_apertura(3) $ (((contador_apertura(2) & (contador_apertura(1) & contador_apertura(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_apertura(2),
	datab => contador_apertura(3),
	datac => contador_apertura(1),
	datad => contador_apertura(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X39_Y9_N18
\contador_apertura~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_apertura~0_combout\ = (\abrir_manual~input_o\ & (\Add0~0_combout\ & !\puerta_estado~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datab => \Add0~0_combout\,
	datad => \puerta_estado~1_combout\,
	combout => \contador_apertura~0_combout\);

-- Location: FF_X39_Y9_N19
\contador_apertura[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_apertura~0_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	ena => \contador_apertura[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_apertura(3));

-- Location: LCCOMB_X39_Y9_N6
\puerta_estado~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_estado~1_combout\ = (!contador_apertura(2) & (contador_apertura(0) & (!contador_apertura(1) & contador_apertura(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_apertura(2),
	datab => contador_apertura(0),
	datac => contador_apertura(1),
	datad => contador_apertura(3),
	combout => \puerta_estado~1_combout\);

-- Location: LCCOMB_X40_Y9_N14
\contador_cierre[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[0]~6_combout\ = contador_cierre(0) $ (VCC)
-- \contador_cierre[0]~7\ = CARRY(contador_cierre(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_cierre(0),
	datad => VCC,
	combout => \contador_cierre[0]~6_combout\,
	cout => \contador_cierre[0]~7\);

-- Location: FF_X40_Y9_N15
\contador_cierre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[0]~6_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(0));

-- Location: LCCOMB_X40_Y9_N16
\contador_cierre[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[1]~8_combout\ = (contador_cierre(1) & (!\contador_cierre[0]~7\)) # (!contador_cierre(1) & ((\contador_cierre[0]~7\) # (GND)))
-- \contador_cierre[1]~9\ = CARRY((!\contador_cierre[0]~7\) # (!contador_cierre(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_cierre(1),
	datad => VCC,
	cin => \contador_cierre[0]~7\,
	combout => \contador_cierre[1]~8_combout\,
	cout => \contador_cierre[1]~9\);

-- Location: FF_X40_Y9_N17
\contador_cierre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[1]~8_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(1));

-- Location: LCCOMB_X40_Y9_N18
\contador_cierre[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[2]~10_combout\ = (contador_cierre(2) & (\contador_cierre[1]~9\ $ (GND))) # (!contador_cierre(2) & (!\contador_cierre[1]~9\ & VCC))
-- \contador_cierre[2]~11\ = CARRY((contador_cierre(2) & !\contador_cierre[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_cierre(2),
	datad => VCC,
	cin => \contador_cierre[1]~9\,
	combout => \contador_cierre[2]~10_combout\,
	cout => \contador_cierre[2]~11\);

-- Location: FF_X40_Y9_N19
\contador_cierre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[2]~10_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(2));

-- Location: LCCOMB_X40_Y9_N20
\contador_cierre[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[3]~12_combout\ = (contador_cierre(3) & (!\contador_cierre[2]~11\)) # (!contador_cierre(3) & ((\contador_cierre[2]~11\) # (GND)))
-- \contador_cierre[3]~13\ = CARRY((!\contador_cierre[2]~11\) # (!contador_cierre(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_cierre(3),
	datad => VCC,
	cin => \contador_cierre[2]~11\,
	combout => \contador_cierre[3]~12_combout\,
	cout => \contador_cierre[3]~13\);

-- Location: FF_X40_Y9_N21
\contador_cierre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[3]~12_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(3));

-- Location: LCCOMB_X40_Y9_N22
\contador_cierre[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[4]~14_combout\ = (contador_cierre(4) & (\contador_cierre[3]~13\ $ (GND))) # (!contador_cierre(4) & (!\contador_cierre[3]~13\ & VCC))
-- \contador_cierre[4]~15\ = CARRY((contador_cierre(4) & !\contador_cierre[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_cierre(4),
	datad => VCC,
	cin => \contador_cierre[3]~13\,
	combout => \contador_cierre[4]~14_combout\,
	cout => \contador_cierre[4]~15\);

-- Location: FF_X40_Y9_N23
\contador_cierre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[4]~14_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(4));

-- Location: LCCOMB_X40_Y9_N24
\contador_cierre[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_cierre[5]~16_combout\ = contador_cierre(5) $ (\contador_cierre[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_cierre(5),
	cin => \contador_cierre[4]~15\,
	combout => \contador_cierre[5]~16_combout\);

-- Location: FF_X40_Y9_N25
\contador_cierre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_cierre[5]~16_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	sclr => \ALT_INV_puerta_estado~0_combout\,
	ena => \ALT_INV_abrir_manual~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_cierre(5));

-- Location: LCCOMB_X40_Y9_N26
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (contador_cierre(4)) # (!contador_cierre(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador_cierre(4),
	datad => contador_cierre(5),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X40_Y9_N12
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((contador_cierre(1)) # ((contador_cierre(0)) # (!contador_cierre(2)))) # (!contador_cierre(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_cierre(3),
	datab => contador_cierre(1),
	datac => contador_cierre(0),
	datad => contador_cierre(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X40_Y9_N28
\puerta_estado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_estado~0_combout\ = (\puerta_estado~q\ & (!\cerrar_manual~input_o\ & ((\Equal1~1_combout\) # (\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta_estado~q\,
	datab => \cerrar_manual~input_o\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \puerta_estado~0_combout\);

-- Location: LCCOMB_X40_Y9_N6
\puerta_estado~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_estado~2_combout\ = (\abrir_manual~input_o\ & ((\puerta_estado~q\) # ((\puerta_estado~1_combout\)))) # (!\abrir_manual~input_o\ & (((\puerta_estado~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_manual~input_o\,
	datab => \puerta_estado~q\,
	datac => \puerta_estado~1_combout\,
	datad => \puerta_estado~0_combout\,
	combout => \puerta_estado~2_combout\);

-- Location: LCCOMB_X39_Y9_N16
\puerta_estado~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_estado~feeder_combout\ = \puerta_estado~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \puerta_estado~2_combout\,
	combout => \puerta_estado~feeder_combout\);

-- Location: FF_X39_Y9_N17
puerta_estado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puerta_estado~feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puerta_estado~q\);

-- Location: IOIBUF_X5_Y0_N8
\notificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notificacion,
	o => \notificacion~input_o\);

ww_llegada_piso <= \llegada_piso~output_o\;

ww_puerta <= \puerta~output_o\;
END structure;


