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

-- DATE "03/27/2025 22:28:24"

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

ENTITY 	controlpuertas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	abrir_puerta : IN std_logic;
	cerrar_puerta : IN std_logic;
	en_movimiento : IN std_logic;
	puertas_estado : OUT std_logic_vector(1 DOWNTO 0);
	alarma_sonora : OUT std_logic;
	luz_puerta : OUT std_logic
	);
END controlpuertas;

-- Design Ports Information
-- puertas_estado[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puertas_estado[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_sonora	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_puerta	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrar_puerta	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_movimiento	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abrir_puerta	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlpuertas IS
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
SIGNAL ww_abrir_puerta : std_logic;
SIGNAL ww_cerrar_puerta : std_logic;
SIGNAL ww_en_movimiento : std_logic;
SIGNAL ww_puertas_estado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_luz_puerta : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \puertas_estado[0]~output_o\ : std_logic;
SIGNAL \puertas_estado[1]~output_o\ : std_logic;
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \luz_puerta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \abrir_puerta~input_o\ : std_logic;
SIGNAL \en_movimiento~input_o\ : std_logic;
SIGNAL \contador[0]~34_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[1]~37\ : std_logic;
SIGNAL \contador[2]~38_combout\ : std_logic;
SIGNAL \contador[2]~39\ : std_logic;
SIGNAL \contador[3]~40_combout\ : std_logic;
SIGNAL \contador[3]~41\ : std_logic;
SIGNAL \contador[4]~43_combout\ : std_logic;
SIGNAL \contador[4]~44\ : std_logic;
SIGNAL \contador[5]~45_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \cerrar_puerta~input_o\ : std_logic;
SIGNAL \contador[5]~46\ : std_logic;
SIGNAL \contador[6]~47_combout\ : std_logic;
SIGNAL \contador[6]~48\ : std_logic;
SIGNAL \contador[7]~49_combout\ : std_logic;
SIGNAL \contador[7]~50\ : std_logic;
SIGNAL \contador[8]~51_combout\ : std_logic;
SIGNAL \contador[8]~52\ : std_logic;
SIGNAL \contador[9]~53_combout\ : std_logic;
SIGNAL \contador[9]~54\ : std_logic;
SIGNAL \contador[10]~55_combout\ : std_logic;
SIGNAL \contador[10]~56\ : std_logic;
SIGNAL \contador[11]~57_combout\ : std_logic;
SIGNAL \contador[11]~58\ : std_logic;
SIGNAL \contador[12]~59_combout\ : std_logic;
SIGNAL \contador[12]~60\ : std_logic;
SIGNAL \contador[13]~61_combout\ : std_logic;
SIGNAL \contador[13]~62\ : std_logic;
SIGNAL \contador[14]~63_combout\ : std_logic;
SIGNAL \contador[14]~64\ : std_logic;
SIGNAL \contador[15]~65_combout\ : std_logic;
SIGNAL \contador[15]~66\ : std_logic;
SIGNAL \contador[16]~67_combout\ : std_logic;
SIGNAL \contador[16]~68\ : std_logic;
SIGNAL \contador[17]~69_combout\ : std_logic;
SIGNAL \contador[17]~70\ : std_logic;
SIGNAL \contador[18]~71_combout\ : std_logic;
SIGNAL \contador[18]~72\ : std_logic;
SIGNAL \contador[19]~73_combout\ : std_logic;
SIGNAL \contador[19]~74\ : std_logic;
SIGNAL \contador[20]~75_combout\ : std_logic;
SIGNAL \contador[20]~76\ : std_logic;
SIGNAL \contador[21]~77_combout\ : std_logic;
SIGNAL \contador[21]~78\ : std_logic;
SIGNAL \contador[22]~79_combout\ : std_logic;
SIGNAL \contador[22]~80\ : std_logic;
SIGNAL \contador[23]~81_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \contador[23]~82\ : std_logic;
SIGNAL \contador[24]~83_combout\ : std_logic;
SIGNAL \contador[24]~84\ : std_logic;
SIGNAL \contador[25]~85_combout\ : std_logic;
SIGNAL \contador[25]~86\ : std_logic;
SIGNAL \contador[26]~87_combout\ : std_logic;
SIGNAL \contador[26]~88\ : std_logic;
SIGNAL \contador[27]~89_combout\ : std_logic;
SIGNAL \contador[27]~90\ : std_logic;
SIGNAL \contador[28]~91_combout\ : std_logic;
SIGNAL \contador[28]~92\ : std_logic;
SIGNAL \contador[29]~93_combout\ : std_logic;
SIGNAL \contador[29]~94\ : std_logic;
SIGNAL \contador[30]~95_combout\ : std_logic;
SIGNAL \contador[30]~96\ : std_logic;
SIGNAL \contador[31]~97_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \contador[17]~32_combout\ : std_logic;
SIGNAL \contador[17]~42_combout\ : std_logic;
SIGNAL \contador[0]~35\ : std_logic;
SIGNAL \contador[1]~36_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \contador[17]~33_combout\ : std_logic;
SIGNAL \estado_puerta~4_combout\ : std_logic;
SIGNAL \estado_puerta~2_combout\ : std_logic;
SIGNAL \estado_puerta~0_combout\ : std_logic;
SIGNAL \estado_puerta~1_combout\ : std_logic;
SIGNAL \estado_puerta~3_combout\ : std_logic;
SIGNAL \alarma_sonora~0_combout\ : std_logic;
SIGNAL \alarma_sonora~reg0_q\ : std_logic;
SIGNAL \luz_puerta~0_combout\ : std_logic;
SIGNAL \luz_puerta~reg0_q\ : std_logic;
SIGNAL estado_puerta : std_logic_vector(1 DOWNTO 0);
SIGNAL contador : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_estado_puerta~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_abrir_puerta <= abrir_puerta;
ww_cerrar_puerta <= cerrar_puerta;
ww_en_movimiento <= en_movimiento;
puertas_estado <= ww_puertas_estado;
alarma_sonora <= ww_alarma_sonora;
luz_puerta <= ww_luz_puerta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_estado_puerta~2_combout\ <= NOT \estado_puerta~2_combout\;

-- Location: IOOBUF_X32_Y29_N30
\puertas_estado[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => estado_puerta(0),
	devoe => ww_devoe,
	o => \puertas_estado[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\puertas_estado[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => estado_puerta(1),
	devoe => ww_devoe,
	o => \puertas_estado[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\alarma_sonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarma_sonora~reg0_q\,
	devoe => ww_devoe,
	o => \alarma_sonora~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\luz_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz_puerta~reg0_q\,
	devoe => ww_devoe,
	o => \luz_puerta~output_o\);

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

-- Location: IOIBUF_X41_Y22_N15
\abrir_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_abrir_puerta,
	o => \abrir_puerta~input_o\);

-- Location: IOIBUF_X32_Y29_N15
\en_movimiento~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_movimiento,
	o => \en_movimiento~input_o\);

-- Location: LCCOMB_X31_Y22_N0
\contador[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~34_combout\ = contador(0) $ (VCC)
-- \contador[0]~35\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \contador[0]~34_combout\,
	cout => \contador[0]~35\);

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

-- Location: LCCOMB_X31_Y22_N2
\contador[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~36_combout\ = (contador(1) & (!\contador[0]~35\)) # (!contador(1) & ((\contador[0]~35\) # (GND)))
-- \contador[1]~37\ = CARRY((!\contador[0]~35\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \contador[0]~35\,
	combout => \contador[1]~36_combout\,
	cout => \contador[1]~37\);

-- Location: LCCOMB_X31_Y22_N4
\contador[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~38_combout\ = (contador(2) & (\contador[1]~37\ $ (GND))) # (!contador(2) & (!\contador[1]~37\ & VCC))
-- \contador[2]~39\ = CARRY((contador(2) & !\contador[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~37\,
	combout => \contador[2]~38_combout\,
	cout => \contador[2]~39\);

-- Location: FF_X31_Y22_N5
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X31_Y22_N6
\contador[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~40_combout\ = (contador(3) & (!\contador[2]~39\)) # (!contador(3) & ((\contador[2]~39\) # (GND)))
-- \contador[3]~41\ = CARRY((!\contador[2]~39\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~39\,
	combout => \contador[3]~40_combout\,
	cout => \contador[3]~41\);

-- Location: FF_X31_Y22_N7
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X31_Y22_N8
\contador[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~43_combout\ = (contador(4) & (\contador[3]~41\ $ (GND))) # (!contador(4) & (!\contador[3]~41\ & VCC))
-- \contador[4]~44\ = CARRY((contador(4) & !\contador[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~41\,
	combout => \contador[4]~43_combout\,
	cout => \contador[4]~44\);

-- Location: FF_X31_Y22_N9
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X31_Y22_N10
\contador[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~45_combout\ = (contador(5) & (!\contador[4]~44\)) # (!contador(5) & ((\contador[4]~44\) # (GND)))
-- \contador[5]~46\ = CARRY((!\contador[4]~44\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datad => VCC,
	cin => \contador[4]~44\,
	combout => \contador[5]~45_combout\,
	cout => \contador[5]~46\);

-- Location: FF_X31_Y22_N11
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[5]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X32_Y22_N28
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (contador(0) & (contador(5) & (contador(2) & !contador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(5),
	datac => contador(2),
	datad => contador(1),
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X32_Y29_N22
\cerrar_puerta~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrar_puerta,
	o => \cerrar_puerta~input_o\);

-- Location: LCCOMB_X31_Y22_N12
\contador[6]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[6]~47_combout\ = (contador(6) & (\contador[5]~46\ $ (GND))) # (!contador(6) & (!\contador[5]~46\ & VCC))
-- \contador[6]~48\ = CARRY((contador(6) & !\contador[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datad => VCC,
	cin => \contador[5]~46\,
	combout => \contador[6]~47_combout\,
	cout => \contador[6]~48\);

-- Location: FF_X31_Y22_N13
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[6]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X31_Y22_N14
\contador[7]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[7]~49_combout\ = (contador(7) & (!\contador[6]~48\)) # (!contador(7) & ((\contador[6]~48\) # (GND)))
-- \contador[7]~50\ = CARRY((!\contador[6]~48\) # (!contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \contador[6]~48\,
	combout => \contador[7]~49_combout\,
	cout => \contador[7]~50\);

-- Location: FF_X31_Y22_N15
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[7]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X31_Y22_N16
\contador[8]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[8]~51_combout\ = (contador(8) & (\contador[7]~50\ $ (GND))) # (!contador(8) & (!\contador[7]~50\ & VCC))
-- \contador[8]~52\ = CARRY((contador(8) & !\contador[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(8),
	datad => VCC,
	cin => \contador[7]~50\,
	combout => \contador[8]~51_combout\,
	cout => \contador[8]~52\);

-- Location: FF_X31_Y22_N17
\contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[8]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(8));

-- Location: LCCOMB_X31_Y22_N18
\contador[9]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[9]~53_combout\ = (contador(9) & (!\contador[8]~52\)) # (!contador(9) & ((\contador[8]~52\) # (GND)))
-- \contador[9]~54\ = CARRY((!\contador[8]~52\) # (!contador(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(9),
	datad => VCC,
	cin => \contador[8]~52\,
	combout => \contador[9]~53_combout\,
	cout => \contador[9]~54\);

-- Location: FF_X31_Y22_N19
\contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[9]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(9));

-- Location: LCCOMB_X31_Y22_N20
\contador[10]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[10]~55_combout\ = (contador(10) & (\contador[9]~54\ $ (GND))) # (!contador(10) & (!\contador[9]~54\ & VCC))
-- \contador[10]~56\ = CARRY((contador(10) & !\contador[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(10),
	datad => VCC,
	cin => \contador[9]~54\,
	combout => \contador[10]~55_combout\,
	cout => \contador[10]~56\);

-- Location: FF_X31_Y22_N21
\contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[10]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(10));

-- Location: LCCOMB_X31_Y22_N22
\contador[11]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[11]~57_combout\ = (contador(11) & (!\contador[10]~56\)) # (!contador(11) & ((\contador[10]~56\) # (GND)))
-- \contador[11]~58\ = CARRY((!\contador[10]~56\) # (!contador(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(11),
	datad => VCC,
	cin => \contador[10]~56\,
	combout => \contador[11]~57_combout\,
	cout => \contador[11]~58\);

-- Location: FF_X31_Y22_N23
\contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[11]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(11));

-- Location: LCCOMB_X31_Y22_N24
\contador[12]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[12]~59_combout\ = (contador(12) & (\contador[11]~58\ $ (GND))) # (!contador(12) & (!\contador[11]~58\ & VCC))
-- \contador[12]~60\ = CARRY((contador(12) & !\contador[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(12),
	datad => VCC,
	cin => \contador[11]~58\,
	combout => \contador[12]~59_combout\,
	cout => \contador[12]~60\);

-- Location: FF_X31_Y22_N25
\contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[12]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(12));

-- Location: LCCOMB_X31_Y22_N26
\contador[13]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[13]~61_combout\ = (contador(13) & (!\contador[12]~60\)) # (!contador(13) & ((\contador[12]~60\) # (GND)))
-- \contador[13]~62\ = CARRY((!\contador[12]~60\) # (!contador(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(13),
	datad => VCC,
	cin => \contador[12]~60\,
	combout => \contador[13]~61_combout\,
	cout => \contador[13]~62\);

-- Location: FF_X31_Y22_N27
\contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[13]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(13));

-- Location: LCCOMB_X31_Y22_N28
\contador[14]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[14]~63_combout\ = (contador(14) & (\contador[13]~62\ $ (GND))) # (!contador(14) & (!\contador[13]~62\ & VCC))
-- \contador[14]~64\ = CARRY((contador(14) & !\contador[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(14),
	datad => VCC,
	cin => \contador[13]~62\,
	combout => \contador[14]~63_combout\,
	cout => \contador[14]~64\);

-- Location: FF_X31_Y22_N29
\contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[14]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(14));

-- Location: LCCOMB_X31_Y22_N30
\contador[15]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[15]~65_combout\ = (contador(15) & (!\contador[14]~64\)) # (!contador(15) & ((\contador[14]~64\) # (GND)))
-- \contador[15]~66\ = CARRY((!\contador[14]~64\) # (!contador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(15),
	datad => VCC,
	cin => \contador[14]~64\,
	combout => \contador[15]~65_combout\,
	cout => \contador[15]~66\);

-- Location: FF_X31_Y22_N31
\contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[15]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(15));

-- Location: LCCOMB_X31_Y21_N0
\contador[16]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[16]~67_combout\ = (contador(16) & (\contador[15]~66\ $ (GND))) # (!contador(16) & (!\contador[15]~66\ & VCC))
-- \contador[16]~68\ = CARRY((contador(16) & !\contador[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(16),
	datad => VCC,
	cin => \contador[15]~66\,
	combout => \contador[16]~67_combout\,
	cout => \contador[16]~68\);

-- Location: FF_X32_Y22_N9
\contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[16]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	sload => VCC,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(16));

-- Location: LCCOMB_X31_Y21_N2
\contador[17]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[17]~69_combout\ = (contador(17) & (!\contador[16]~68\)) # (!contador(17) & ((\contador[16]~68\) # (GND)))
-- \contador[17]~70\ = CARRY((!\contador[16]~68\) # (!contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(17),
	datad => VCC,
	cin => \contador[16]~68\,
	combout => \contador[17]~69_combout\,
	cout => \contador[17]~70\);

-- Location: FF_X31_Y21_N3
\contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[17]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(17));

-- Location: LCCOMB_X31_Y21_N4
\contador[18]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[18]~71_combout\ = (contador(18) & (\contador[17]~70\ $ (GND))) # (!contador(18) & (!\contador[17]~70\ & VCC))
-- \contador[18]~72\ = CARRY((contador(18) & !\contador[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(18),
	datad => VCC,
	cin => \contador[17]~70\,
	combout => \contador[18]~71_combout\,
	cout => \contador[18]~72\);

-- Location: FF_X31_Y21_N5
\contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[18]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(18));

-- Location: LCCOMB_X31_Y21_N6
\contador[19]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[19]~73_combout\ = (contador(19) & (!\contador[18]~72\)) # (!contador(19) & ((\contador[18]~72\) # (GND)))
-- \contador[19]~74\ = CARRY((!\contador[18]~72\) # (!contador(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datad => VCC,
	cin => \contador[18]~72\,
	combout => \contador[19]~73_combout\,
	cout => \contador[19]~74\);

-- Location: FF_X31_Y21_N7
\contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[19]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(19));

-- Location: LCCOMB_X31_Y21_N8
\contador[20]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[20]~75_combout\ = (contador(20) & (\contador[19]~74\ $ (GND))) # (!contador(20) & (!\contador[19]~74\ & VCC))
-- \contador[20]~76\ = CARRY((contador(20) & !\contador[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(20),
	datad => VCC,
	cin => \contador[19]~74\,
	combout => \contador[20]~75_combout\,
	cout => \contador[20]~76\);

-- Location: FF_X32_Y21_N5
\contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[20]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	sload => VCC,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(20));

-- Location: LCCOMB_X31_Y21_N10
\contador[21]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[21]~77_combout\ = (contador(21) & (!\contador[20]~76\)) # (!contador(21) & ((\contador[20]~76\) # (GND)))
-- \contador[21]~78\ = CARRY((!\contador[20]~76\) # (!contador(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datad => VCC,
	cin => \contador[20]~76\,
	combout => \contador[21]~77_combout\,
	cout => \contador[21]~78\);

-- Location: FF_X31_Y21_N11
\contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[21]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(21));

-- Location: LCCOMB_X31_Y21_N12
\contador[22]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[22]~79_combout\ = (contador(22) & (\contador[21]~78\ $ (GND))) # (!contador(22) & (!\contador[21]~78\ & VCC))
-- \contador[22]~80\ = CARRY((contador(22) & !\contador[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datad => VCC,
	cin => \contador[21]~78\,
	combout => \contador[22]~79_combout\,
	cout => \contador[22]~80\);

-- Location: FF_X31_Y21_N13
\contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[22]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(22));

-- Location: LCCOMB_X31_Y21_N14
\contador[23]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[23]~81_combout\ = (contador(23) & (!\contador[22]~80\)) # (!contador(23) & ((\contador[22]~80\) # (GND)))
-- \contador[23]~82\ = CARRY((!\contador[22]~80\) # (!contador(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(23),
	datad => VCC,
	cin => \contador[22]~80\,
	combout => \contador[23]~81_combout\,
	cout => \contador[23]~82\);

-- Location: FF_X31_Y21_N15
\contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[23]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(23));

-- Location: LCCOMB_X32_Y21_N22
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!contador(21) & (!contador(20) & (!contador(23) & !contador(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datab => contador(20),
	datac => contador(23),
	datad => contador(22),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y21_N16
\contador[24]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[24]~83_combout\ = (contador(24) & (\contador[23]~82\ $ (GND))) # (!contador(24) & (!\contador[23]~82\ & VCC))
-- \contador[24]~84\ = CARRY((contador(24) & !\contador[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(24),
	datad => VCC,
	cin => \contador[23]~82\,
	combout => \contador[24]~83_combout\,
	cout => \contador[24]~84\);

-- Location: FF_X31_Y21_N17
\contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[24]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(24));

-- Location: LCCOMB_X31_Y21_N18
\contador[25]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[25]~85_combout\ = (contador(25) & (!\contador[24]~84\)) # (!contador(25) & ((\contador[24]~84\) # (GND)))
-- \contador[25]~86\ = CARRY((!\contador[24]~84\) # (!contador(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(25),
	datad => VCC,
	cin => \contador[24]~84\,
	combout => \contador[25]~85_combout\,
	cout => \contador[25]~86\);

-- Location: FF_X31_Y21_N19
\contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[25]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(25));

-- Location: LCCOMB_X31_Y21_N20
\contador[26]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[26]~87_combout\ = (contador(26) & (\contador[25]~86\ $ (GND))) # (!contador(26) & (!\contador[25]~86\ & VCC))
-- \contador[26]~88\ = CARRY((contador(26) & !\contador[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(26),
	datad => VCC,
	cin => \contador[25]~86\,
	combout => \contador[26]~87_combout\,
	cout => \contador[26]~88\);

-- Location: FF_X31_Y21_N21
\contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[26]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(26));

-- Location: LCCOMB_X31_Y21_N22
\contador[27]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[27]~89_combout\ = (contador(27) & (!\contador[26]~88\)) # (!contador(27) & ((\contador[26]~88\) # (GND)))
-- \contador[27]~90\ = CARRY((!\contador[26]~88\) # (!contador(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(27),
	datad => VCC,
	cin => \contador[26]~88\,
	combout => \contador[27]~89_combout\,
	cout => \contador[27]~90\);

-- Location: FF_X31_Y21_N23
\contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[27]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(27));

-- Location: LCCOMB_X31_Y21_N24
\contador[28]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[28]~91_combout\ = (contador(28) & (\contador[27]~90\ $ (GND))) # (!contador(28) & (!\contador[27]~90\ & VCC))
-- \contador[28]~92\ = CARRY((contador(28) & !\contador[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(28),
	datad => VCC,
	cin => \contador[27]~90\,
	combout => \contador[28]~91_combout\,
	cout => \contador[28]~92\);

-- Location: FF_X31_Y21_N25
\contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[28]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(28));

-- Location: LCCOMB_X31_Y21_N26
\contador[29]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[29]~93_combout\ = (contador(29) & (!\contador[28]~92\)) # (!contador(29) & ((\contador[28]~92\) # (GND)))
-- \contador[29]~94\ = CARRY((!\contador[28]~92\) # (!contador(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(29),
	datad => VCC,
	cin => \contador[28]~92\,
	combout => \contador[29]~93_combout\,
	cout => \contador[29]~94\);

-- Location: FF_X31_Y21_N27
\contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[29]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(29));

-- Location: LCCOMB_X31_Y21_N28
\contador[30]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[30]~95_combout\ = (contador(30) & (\contador[29]~94\ $ (GND))) # (!contador(30) & (!\contador[29]~94\ & VCC))
-- \contador[30]~96\ = CARRY((contador(30) & !\contador[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(30),
	datad => VCC,
	cin => \contador[29]~94\,
	combout => \contador[30]~95_combout\,
	cout => \contador[30]~96\);

-- Location: FF_X31_Y21_N29
\contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[30]~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(30));

-- Location: LCCOMB_X31_Y21_N30
\contador[31]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[31]~97_combout\ = contador(31) $ (\contador[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(31),
	cin => \contador[30]~96\,
	combout => \contador[31]~97_combout\);

-- Location: FF_X31_Y21_N31
\contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[31]~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(31));

-- Location: LCCOMB_X32_Y22_N16
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!contador(29) & (!contador(31) & (!contador(28) & !contador(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(29),
	datab => contador(31),
	datac => contador(28),
	datad => contador(30),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X32_Y21_N16
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!contador(24) & (!contador(25) & (!contador(26) & !contador(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(24),
	datab => contador(25),
	datac => contador(26),
	datad => contador(27),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador(7) & (!contador(6) & (contador(3) & !contador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	datab => contador(6),
	datac => contador(3),
	datad => contador(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!contador(8) & (!contador(11) & (!contador(9) & !contador(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => contador(11),
	datac => contador(9),
	datad => contador(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y22_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!contador(13) & (!contador(15) & (!contador(12) & !contador(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(13),
	datab => contador(15),
	datac => contador(12),
	datad => contador(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X32_Y22_N12
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!contador(16) & (!contador(17) & (!contador(18) & !contador(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(16),
	datab => contador(17),
	datac => contador(18),
	datad => contador(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X32_Y22_N6
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X32_Y22_N2
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X32_Y22_N26
\contador[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[17]~32_combout\ = (!estado_puerta(0) & ((\cerrar_puerta~input_o\) # ((\Equal0~9_combout\ & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => estado_puerta(0),
	datac => \cerrar_puerta~input_o\,
	datad => \Equal0~8_combout\,
	combout => \contador[17]~32_combout\);

-- Location: LCCOMB_X32_Y22_N30
\contador[17]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[17]~42_combout\ = (\en_movimiento~input_o\) # ((\contador[17]~32_combout\) # (\contador[17]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_movimiento~input_o\,
	datac => \contador[17]~32_combout\,
	datad => \contador[17]~33_combout\,
	combout => \contador[17]~42_combout\);

-- Location: FF_X31_Y22_N1
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: FF_X31_Y22_N3
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \contador[17]~42_combout\,
	ena => \ALT_INV_estado_puerta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X32_Y22_N20
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (contador(1) & (!contador(2) & (!contador(0) & !contador(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(2),
	datac => contador(0),
	datad => contador(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X32_Y22_N0
\contador[17]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[17]~33_combout\ = (\Equal1~0_combout\ & (estado_puerta(0) & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => estado_puerta(0),
	datad => \Equal0~8_combout\,
	combout => \contador[17]~33_combout\);

-- Location: LCCOMB_X32_Y22_N24
\estado_puerta~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_puerta~4_combout\ = (!\en_movimiento~input_o\ & (estado_puerta(1) $ (\contador[17]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_movimiento~input_o\,
	datac => estado_puerta(1),
	datad => \contador[17]~33_combout\,
	combout => \estado_puerta~4_combout\);

-- Location: FF_X32_Y22_N25
\estado_puerta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_puerta~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_puerta(1));

-- Location: LCCOMB_X32_Y21_N18
\estado_puerta~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_puerta~2_combout\ = (!\en_movimiento~input_o\ & (!estado_puerta(0) & !estado_puerta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_movimiento~input_o\,
	datab => estado_puerta(0),
	datac => estado_puerta(1),
	combout => \estado_puerta~2_combout\);

-- Location: LCCOMB_X32_Y22_N8
\estado_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_puerta~0_combout\ = (\contador[17]~32_combout\ & (!\en_movimiento~input_o\ & estado_puerta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador[17]~32_combout\,
	datab => \en_movimiento~input_o\,
	datad => estado_puerta(1),
	combout => \estado_puerta~0_combout\);

-- Location: LCCOMB_X32_Y22_N10
\estado_puerta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_puerta~1_combout\ = (!\en_movimiento~input_o\ & (estado_puerta(0) & ((!\Equal1~0_combout\) # (!\Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_movimiento~input_o\,
	datab => \Equal0~8_combout\,
	datac => estado_puerta(0),
	datad => \Equal1~0_combout\,
	combout => \estado_puerta~1_combout\);

-- Location: LCCOMB_X32_Y22_N18
\estado_puerta~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_puerta~3_combout\ = (\estado_puerta~0_combout\) # ((\estado_puerta~1_combout\) # ((\abrir_puerta~input_o\ & \estado_puerta~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abrir_puerta~input_o\,
	datab => \estado_puerta~2_combout\,
	datac => \estado_puerta~0_combout\,
	datad => \estado_puerta~1_combout\,
	combout => \estado_puerta~3_combout\);

-- Location: FF_X32_Y22_N19
\estado_puerta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_puerta~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => estado_puerta(0));

-- Location: LCCOMB_X32_Y21_N14
\alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma_sonora~0_combout\ = (!\en_movimiento~input_o\ & ((estado_puerta(0)) # (\alarma_sonora~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => estado_puerta(0),
	datac => \alarma_sonora~reg0_q\,
	datad => \en_movimiento~input_o\,
	combout => \alarma_sonora~0_combout\);

-- Location: FF_X32_Y21_N15
\alarma_sonora~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarma_sonora~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarma_sonora~reg0_q\);

-- Location: LCCOMB_X32_Y21_N0
\luz_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_puerta~0_combout\ = (!\en_movimiento~input_o\ & ((\luz_puerta~reg0_q\) # ((!estado_puerta(1) & estado_puerta(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_movimiento~input_o\,
	datab => estado_puerta(1),
	datac => \luz_puerta~reg0_q\,
	datad => estado_puerta(0),
	combout => \luz_puerta~0_combout\);

-- Location: FF_X32_Y21_N1
\luz_puerta~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \luz_puerta~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \luz_puerta~reg0_q\);

ww_puertas_estado(0) <= \puertas_estado[0]~output_o\;

ww_puertas_estado(1) <= \puertas_estado[1]~output_o\;

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_luz_puerta <= \luz_puerta~output_o\;
END structure;


