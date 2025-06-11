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

-- DATE "05/29/2025 18:13:28"

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

ENTITY 	Timer IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start : IN std_logic;
	duracion : IN STD.STANDARD.integer range 0 TO 500000000;
	done : OUT std_logic
	);
END Timer;

-- Design Ports Information
-- done	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[27]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[26]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[23]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[22]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[21]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[20]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[19]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[13]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[12]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[11]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[10]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[9]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duracion[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Timer IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_duracion : std_logic_vector(28 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \duracion[28]~input_o\ : std_logic;
SIGNAL \contador[0]~29_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \contador[0]~30\ : std_logic;
SIGNAL \contador[1]~31_combout\ : std_logic;
SIGNAL \contador[1]~32\ : std_logic;
SIGNAL \contador[2]~33_combout\ : std_logic;
SIGNAL \contador[2]~34\ : std_logic;
SIGNAL \contador[3]~35_combout\ : std_logic;
SIGNAL \contador[3]~36\ : std_logic;
SIGNAL \contador[4]~37_combout\ : std_logic;
SIGNAL \contador[4]~38\ : std_logic;
SIGNAL \contador[5]~39_combout\ : std_logic;
SIGNAL \contador[5]~40\ : std_logic;
SIGNAL \contador[6]~41_combout\ : std_logic;
SIGNAL \contador[6]~42\ : std_logic;
SIGNAL \contador[7]~43_combout\ : std_logic;
SIGNAL \contador[7]~44\ : std_logic;
SIGNAL \contador[8]~45_combout\ : std_logic;
SIGNAL \contador[8]~46\ : std_logic;
SIGNAL \contador[9]~47_combout\ : std_logic;
SIGNAL \contador[9]~48\ : std_logic;
SIGNAL \contador[10]~49_combout\ : std_logic;
SIGNAL \contador[10]~50\ : std_logic;
SIGNAL \contador[11]~51_combout\ : std_logic;
SIGNAL \contador[11]~52\ : std_logic;
SIGNAL \contador[12]~53_combout\ : std_logic;
SIGNAL \contador[12]~54\ : std_logic;
SIGNAL \contador[13]~55_combout\ : std_logic;
SIGNAL \contador[13]~56\ : std_logic;
SIGNAL \contador[14]~57_combout\ : std_logic;
SIGNAL \contador[14]~58\ : std_logic;
SIGNAL \contador[15]~59_combout\ : std_logic;
SIGNAL \contador[15]~60\ : std_logic;
SIGNAL \contador[16]~61_combout\ : std_logic;
SIGNAL \contador[16]~62\ : std_logic;
SIGNAL \contador[17]~63_combout\ : std_logic;
SIGNAL \contador[17]~64\ : std_logic;
SIGNAL \contador[18]~65_combout\ : std_logic;
SIGNAL \contador[18]~66\ : std_logic;
SIGNAL \contador[19]~67_combout\ : std_logic;
SIGNAL \contador[19]~68\ : std_logic;
SIGNAL \contador[20]~69_combout\ : std_logic;
SIGNAL \contador[20]~70\ : std_logic;
SIGNAL \contador[21]~71_combout\ : std_logic;
SIGNAL \contador[21]~72\ : std_logic;
SIGNAL \contador[22]~73_combout\ : std_logic;
SIGNAL \contador[22]~74\ : std_logic;
SIGNAL \contador[23]~75_combout\ : std_logic;
SIGNAL \contador[23]~76\ : std_logic;
SIGNAL \contador[24]~77_combout\ : std_logic;
SIGNAL \contador[24]~78\ : std_logic;
SIGNAL \contador[25]~79_combout\ : std_logic;
SIGNAL \contador[25]~80\ : std_logic;
SIGNAL \contador[26]~81_combout\ : std_logic;
SIGNAL \contador[26]~82\ : std_logic;
SIGNAL \contador[27]~83_combout\ : std_logic;
SIGNAL \contador[27]~84\ : std_logic;
SIGNAL \contador[28]~85_combout\ : std_logic;
SIGNAL \duracion[27]~input_o\ : std_logic;
SIGNAL \duracion[26]~input_o\ : std_logic;
SIGNAL \duracion[25]~input_o\ : std_logic;
SIGNAL \duracion[24]~input_o\ : std_logic;
SIGNAL \duracion[23]~input_o\ : std_logic;
SIGNAL \duracion[22]~input_o\ : std_logic;
SIGNAL \duracion[21]~input_o\ : std_logic;
SIGNAL \duracion[20]~input_o\ : std_logic;
SIGNAL \duracion[19]~input_o\ : std_logic;
SIGNAL \duracion[18]~input_o\ : std_logic;
SIGNAL \duracion[17]~input_o\ : std_logic;
SIGNAL \duracion[16]~input_o\ : std_logic;
SIGNAL \duracion[15]~input_o\ : std_logic;
SIGNAL \duracion[14]~input_o\ : std_logic;
SIGNAL \duracion[13]~input_o\ : std_logic;
SIGNAL \duracion[12]~input_o\ : std_logic;
SIGNAL \duracion[11]~input_o\ : std_logic;
SIGNAL \duracion[10]~input_o\ : std_logic;
SIGNAL \duracion[9]~input_o\ : std_logic;
SIGNAL \duracion[8]~input_o\ : std_logic;
SIGNAL \duracion[7]~input_o\ : std_logic;
SIGNAL \duracion[6]~input_o\ : std_logic;
SIGNAL \duracion[5]~input_o\ : std_logic;
SIGNAL \duracion[4]~input_o\ : std_logic;
SIGNAL \duracion[3]~input_o\ : std_logic;
SIGNAL \duracion[2]~input_o\ : std_logic;
SIGNAL \duracion[1]~input_o\ : std_logic;
SIGNAL \duracion[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~56_combout\ : std_logic;
SIGNAL \activo~0_combout\ : std_logic;
SIGNAL \activo~q\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL contador : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_duracion <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(duracion, 29);
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X37_Y0_N9
\done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

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

-- Location: IOIBUF_X39_Y0_N22
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\duracion[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(28),
	o => \duracion[28]~input_o\);

-- Location: LCCOMB_X39_Y3_N4
\contador[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~29_combout\ = contador(0) $ (VCC)
-- \contador[0]~30\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \contador[0]~29_combout\,
	cout => \contador[0]~30\);

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

-- Location: LCCOMB_X39_Y3_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\start~input_o\ & !\activo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \activo~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X40_Y3_N11
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[0]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X39_Y3_N6
\contador[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~31_combout\ = (contador(1) & (!\contador[0]~30\)) # (!contador(1) & ((\contador[0]~30\) # (GND)))
-- \contador[1]~32\ = CARRY((!\contador[0]~30\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datad => VCC,
	cin => \contador[0]~30\,
	combout => \contador[1]~31_combout\,
	cout => \contador[1]~32\);

-- Location: FF_X40_Y3_N21
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[1]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X39_Y3_N8
\contador[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~33_combout\ = (contador(2) & (\contador[1]~32\ $ (GND))) # (!contador(2) & (!\contador[1]~32\ & VCC))
-- \contador[2]~34\ = CARRY((contador(2) & !\contador[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~32\,
	combout => \contador[2]~33_combout\,
	cout => \contador[2]~34\);

-- Location: FF_X40_Y3_N7
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[2]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X39_Y3_N10
\contador[3]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~35_combout\ = (contador(3) & (!\contador[2]~34\)) # (!contador(3) & ((\contador[2]~34\) # (GND)))
-- \contador[3]~36\ = CARRY((!\contador[2]~34\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \contador[2]~34\,
	combout => \contador[3]~35_combout\,
	cout => \contador[3]~36\);

-- Location: FF_X40_Y3_N9
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[3]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X39_Y3_N12
\contador[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~37_combout\ = (contador(4) & (\contador[3]~36\ $ (GND))) # (!contador(4) & (!\contador[3]~36\ & VCC))
-- \contador[4]~38\ = CARRY((contador(4) & !\contador[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datad => VCC,
	cin => \contador[3]~36\,
	combout => \contador[4]~37_combout\,
	cout => \contador[4]~38\);

-- Location: FF_X39_Y3_N13
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X39_Y3_N14
\contador[5]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~39_combout\ = (contador(5) & (!\contador[4]~38\)) # (!contador(5) & ((\contador[4]~38\) # (GND)))
-- \contador[5]~40\ = CARRY((!\contador[4]~38\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datad => VCC,
	cin => \contador[4]~38\,
	combout => \contador[5]~39_combout\,
	cout => \contador[5]~40\);

-- Location: FF_X40_Y3_N5
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[5]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X39_Y3_N16
\contador[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[6]~41_combout\ = (contador(6) & (\contador[5]~40\ $ (GND))) # (!contador(6) & (!\contador[5]~40\ & VCC))
-- \contador[6]~42\ = CARRY((contador(6) & !\contador[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \contador[5]~40\,
	combout => \contador[6]~41_combout\,
	cout => \contador[6]~42\);

-- Location: FF_X40_Y3_N27
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[6]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X39_Y3_N18
\contador[7]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[7]~43_combout\ = (contador(7) & (!\contador[6]~42\)) # (!contador(7) & ((\contador[6]~42\) # (GND)))
-- \contador[7]~44\ = CARRY((!\contador[6]~42\) # (!contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	datad => VCC,
	cin => \contador[6]~42\,
	combout => \contador[7]~43_combout\,
	cout => \contador[7]~44\);

-- Location: FF_X40_Y3_N31
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[7]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X39_Y3_N20
\contador[8]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[8]~45_combout\ = (contador(8) & (\contador[7]~44\ $ (GND))) # (!contador(8) & (!\contador[7]~44\ & VCC))
-- \contador[8]~46\ = CARRY((contador(8) & !\contador[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(8),
	datad => VCC,
	cin => \contador[7]~44\,
	combout => \contador[8]~45_combout\,
	cout => \contador[8]~46\);

-- Location: FF_X40_Y3_N13
\contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[8]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(8));

-- Location: LCCOMB_X39_Y3_N22
\contador[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[9]~47_combout\ = (contador(9) & (!\contador[8]~46\)) # (!contador(9) & ((\contador[8]~46\) # (GND)))
-- \contador[9]~48\ = CARRY((!\contador[8]~46\) # (!contador(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(9),
	datad => VCC,
	cin => \contador[8]~46\,
	combout => \contador[9]~47_combout\,
	cout => \contador[9]~48\);

-- Location: FF_X40_Y3_N17
\contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[9]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(9));

-- Location: LCCOMB_X39_Y3_N24
\contador[10]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[10]~49_combout\ = (contador(10) & (\contador[9]~48\ $ (GND))) # (!contador(10) & (!\contador[9]~48\ & VCC))
-- \contador[10]~50\ = CARRY((contador(10) & !\contador[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(10),
	datad => VCC,
	cin => \contador[9]~48\,
	combout => \contador[10]~49_combout\,
	cout => \contador[10]~50\);

-- Location: FF_X40_Y3_N15
\contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[10]~49_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(10));

-- Location: LCCOMB_X39_Y3_N26
\contador[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[11]~51_combout\ = (contador(11) & (!\contador[10]~50\)) # (!contador(11) & ((\contador[10]~50\) # (GND)))
-- \contador[11]~52\ = CARRY((!\contador[10]~50\) # (!contador(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(11),
	datad => VCC,
	cin => \contador[10]~50\,
	combout => \contador[11]~51_combout\,
	cout => \contador[11]~52\);

-- Location: FF_X40_Y3_N19
\contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[11]~51_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(11));

-- Location: LCCOMB_X39_Y3_N28
\contador[12]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[12]~53_combout\ = (contador(12) & (\contador[11]~52\ $ (GND))) # (!contador(12) & (!\contador[11]~52\ & VCC))
-- \contador[12]~54\ = CARRY((contador(12) & !\contador[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(12),
	datad => VCC,
	cin => \contador[11]~52\,
	combout => \contador[12]~53_combout\,
	cout => \contador[12]~54\);

-- Location: FF_X40_Y3_N29
\contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador[12]~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	sload => VCC,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(12));

-- Location: LCCOMB_X39_Y3_N30
\contador[13]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[13]~55_combout\ = (contador(13) & (!\contador[12]~54\)) # (!contador(13) & ((\contador[12]~54\) # (GND)))
-- \contador[13]~56\ = CARRY((!\contador[12]~54\) # (!contador(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(13),
	datad => VCC,
	cin => \contador[12]~54\,
	combout => \contador[13]~55_combout\,
	cout => \contador[13]~56\);

-- Location: FF_X39_Y3_N31
\contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[13]~55_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(13));

-- Location: LCCOMB_X39_Y2_N0
\contador[14]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[14]~57_combout\ = (contador(14) & (\contador[13]~56\ $ (GND))) # (!contador(14) & (!\contador[13]~56\ & VCC))
-- \contador[14]~58\ = CARRY((contador(14) & !\contador[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(14),
	datad => VCC,
	cin => \contador[13]~56\,
	combout => \contador[14]~57_combout\,
	cout => \contador[14]~58\);

-- Location: FF_X39_Y2_N1
\contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[14]~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(14));

-- Location: LCCOMB_X39_Y2_N2
\contador[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[15]~59_combout\ = (contador(15) & (!\contador[14]~58\)) # (!contador(15) & ((\contador[14]~58\) # (GND)))
-- \contador[15]~60\ = CARRY((!\contador[14]~58\) # (!contador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(15),
	datad => VCC,
	cin => \contador[14]~58\,
	combout => \contador[15]~59_combout\,
	cout => \contador[15]~60\);

-- Location: FF_X39_Y2_N3
\contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[15]~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(15));

-- Location: LCCOMB_X39_Y2_N4
\contador[16]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[16]~61_combout\ = (contador(16) & (\contador[15]~60\ $ (GND))) # (!contador(16) & (!\contador[15]~60\ & VCC))
-- \contador[16]~62\ = CARRY((contador(16) & !\contador[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(16),
	datad => VCC,
	cin => \contador[15]~60\,
	combout => \contador[16]~61_combout\,
	cout => \contador[16]~62\);

-- Location: FF_X39_Y2_N5
\contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[16]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(16));

-- Location: LCCOMB_X39_Y2_N6
\contador[17]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[17]~63_combout\ = (contador(17) & (!\contador[16]~62\)) # (!contador(17) & ((\contador[16]~62\) # (GND)))
-- \contador[17]~64\ = CARRY((!\contador[16]~62\) # (!contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(17),
	datad => VCC,
	cin => \contador[16]~62\,
	combout => \contador[17]~63_combout\,
	cout => \contador[17]~64\);

-- Location: FF_X39_Y2_N7
\contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[17]~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(17));

-- Location: LCCOMB_X39_Y2_N8
\contador[18]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[18]~65_combout\ = (contador(18) & (\contador[17]~64\ $ (GND))) # (!contador(18) & (!\contador[17]~64\ & VCC))
-- \contador[18]~66\ = CARRY((contador(18) & !\contador[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(18),
	datad => VCC,
	cin => \contador[17]~64\,
	combout => \contador[18]~65_combout\,
	cout => \contador[18]~66\);

-- Location: FF_X39_Y2_N9
\contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[18]~65_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(18));

-- Location: LCCOMB_X39_Y2_N10
\contador[19]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[19]~67_combout\ = (contador(19) & (!\contador[18]~66\)) # (!contador(19) & ((\contador[18]~66\) # (GND)))
-- \contador[19]~68\ = CARRY((!\contador[18]~66\) # (!contador(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datad => VCC,
	cin => \contador[18]~66\,
	combout => \contador[19]~67_combout\,
	cout => \contador[19]~68\);

-- Location: FF_X39_Y2_N11
\contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[19]~67_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(19));

-- Location: LCCOMB_X39_Y2_N12
\contador[20]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[20]~69_combout\ = (contador(20) & (\contador[19]~68\ $ (GND))) # (!contador(20) & (!\contador[19]~68\ & VCC))
-- \contador[20]~70\ = CARRY((contador(20) & !\contador[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(20),
	datad => VCC,
	cin => \contador[19]~68\,
	combout => \contador[20]~69_combout\,
	cout => \contador[20]~70\);

-- Location: FF_X39_Y2_N13
\contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[20]~69_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(20));

-- Location: LCCOMB_X39_Y2_N14
\contador[21]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[21]~71_combout\ = (contador(21) & (!\contador[20]~70\)) # (!contador(21) & ((\contador[20]~70\) # (GND)))
-- \contador[21]~72\ = CARRY((!\contador[20]~70\) # (!contador(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(21),
	datad => VCC,
	cin => \contador[20]~70\,
	combout => \contador[21]~71_combout\,
	cout => \contador[21]~72\);

-- Location: FF_X39_Y2_N15
\contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[21]~71_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(21));

-- Location: LCCOMB_X39_Y2_N16
\contador[22]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[22]~73_combout\ = (contador(22) & (\contador[21]~72\ $ (GND))) # (!contador(22) & (!\contador[21]~72\ & VCC))
-- \contador[22]~74\ = CARRY((contador(22) & !\contador[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(22),
	datad => VCC,
	cin => \contador[21]~72\,
	combout => \contador[22]~73_combout\,
	cout => \contador[22]~74\);

-- Location: FF_X39_Y2_N17
\contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[22]~73_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(22));

-- Location: LCCOMB_X39_Y2_N18
\contador[23]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[23]~75_combout\ = (contador(23) & (!\contador[22]~74\)) # (!contador(23) & ((\contador[22]~74\) # (GND)))
-- \contador[23]~76\ = CARRY((!\contador[22]~74\) # (!contador(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(23),
	datad => VCC,
	cin => \contador[22]~74\,
	combout => \contador[23]~75_combout\,
	cout => \contador[23]~76\);

-- Location: FF_X39_Y2_N19
\contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[23]~75_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(23));

-- Location: LCCOMB_X39_Y2_N20
\contador[24]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[24]~77_combout\ = (contador(24) & (\contador[23]~76\ $ (GND))) # (!contador(24) & (!\contador[23]~76\ & VCC))
-- \contador[24]~78\ = CARRY((contador(24) & !\contador[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(24),
	datad => VCC,
	cin => \contador[23]~76\,
	combout => \contador[24]~77_combout\,
	cout => \contador[24]~78\);

-- Location: FF_X39_Y2_N21
\contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[24]~77_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(24));

-- Location: LCCOMB_X39_Y2_N22
\contador[25]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[25]~79_combout\ = (contador(25) & (!\contador[24]~78\)) # (!contador(25) & ((\contador[24]~78\) # (GND)))
-- \contador[25]~80\ = CARRY((!\contador[24]~78\) # (!contador(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(25),
	datad => VCC,
	cin => \contador[24]~78\,
	combout => \contador[25]~79_combout\,
	cout => \contador[25]~80\);

-- Location: FF_X39_Y2_N23
\contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[25]~79_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(25));

-- Location: LCCOMB_X39_Y2_N24
\contador[26]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[26]~81_combout\ = (contador(26) & (\contador[25]~80\ $ (GND))) # (!contador(26) & (!\contador[25]~80\ & VCC))
-- \contador[26]~82\ = CARRY((contador(26) & !\contador[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(26),
	datad => VCC,
	cin => \contador[25]~80\,
	combout => \contador[26]~81_combout\,
	cout => \contador[26]~82\);

-- Location: FF_X39_Y2_N25
\contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[26]~81_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(26));

-- Location: LCCOMB_X39_Y2_N26
\contador[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[27]~83_combout\ = (contador(27) & (!\contador[26]~82\)) # (!contador(27) & ((\contador[26]~82\) # (GND)))
-- \contador[27]~84\ = CARRY((!\contador[26]~82\) # (!contador(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(27),
	datad => VCC,
	cin => \contador[26]~82\,
	combout => \contador[27]~83_combout\,
	cout => \contador[27]~84\);

-- Location: FF_X39_Y2_N27
\contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[27]~83_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(27));

-- Location: LCCOMB_X39_Y2_N28
\contador[28]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[28]~85_combout\ = \contador[27]~84\ $ (!contador(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(28),
	cin => \contador[27]~84\,
	combout => \contador[28]~85_combout\);

-- Location: FF_X39_Y2_N29
\contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[28]~85_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~0_combout\,
	ena => \activo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(28));

-- Location: IOIBUF_X21_Y0_N1
\duracion[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(27),
	o => \duracion[27]~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\duracion[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(26),
	o => \duracion[26]~input_o\);

-- Location: IOIBUF_X41_Y2_N8
\duracion[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(25),
	o => \duracion[25]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\duracion[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(24),
	o => \duracion[24]~input_o\);

-- Location: IOIBUF_X41_Y5_N22
\duracion[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(23),
	o => \duracion[23]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\duracion[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(22),
	o => \duracion[22]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\duracion[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(21),
	o => \duracion[21]~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\duracion[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(20),
	o => \duracion[20]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\duracion[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(19),
	o => \duracion[19]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\duracion[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(18),
	o => \duracion[18]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\duracion[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(17),
	o => \duracion[17]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\duracion[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(16),
	o => \duracion[16]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\duracion[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(15),
	o => \duracion[15]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\duracion[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(14),
	o => \duracion[14]~input_o\);

-- Location: IOIBUF_X41_Y6_N22
\duracion[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(13),
	o => \duracion[13]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\duracion[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(12),
	o => \duracion[12]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\duracion[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(11),
	o => \duracion[11]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\duracion[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(10),
	o => \duracion[10]~input_o\);

-- Location: IOIBUF_X41_Y4_N1
\duracion[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(9),
	o => \duracion[9]~input_o\);

-- Location: IOIBUF_X41_Y4_N8
\duracion[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(8),
	o => \duracion[8]~input_o\);

-- Location: IOIBUF_X41_Y7_N22
\duracion[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(7),
	o => \duracion[7]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\duracion[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(6),
	o => \duracion[6]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\duracion[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(5),
	o => \duracion[5]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\duracion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(4),
	o => \duracion[4]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\duracion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(3),
	o => \duracion[3]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\duracion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(2),
	o => \duracion[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\duracion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(1),
	o => \duracion[1]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\duracion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duracion(0),
	o => \duracion[0]~input_o\);

-- Location: LCCOMB_X40_Y3_N4
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!contador(0) & \duracion[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \duracion[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X40_Y3_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\duracion[1]~input_o\ & (contador(1) & !\LessThan0~1_cout\)) # (!\duracion[1]~input_o\ & ((contador(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[1]~input_o\,
	datab => contador(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X40_Y3_N8
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((contador(2) & (\duracion[2]~input_o\ & !\LessThan0~3_cout\)) # (!contador(2) & ((\duracion[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \duracion[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X40_Y3_N10
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\duracion[3]~input_o\ & (contador(3) & !\LessThan0~5_cout\)) # (!\duracion[3]~input_o\ & ((contador(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[3]~input_o\,
	datab => contador(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X40_Y3_N12
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((contador(4) & (\duracion[4]~input_o\ & !\LessThan0~7_cout\)) # (!contador(4) & ((\duracion[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \duracion[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X40_Y3_N14
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\duracion[5]~input_o\ & (contador(5) & !\LessThan0~9_cout\)) # (!\duracion[5]~input_o\ & ((contador(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[5]~input_o\,
	datab => contador(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X40_Y3_N16
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((contador(6) & (\duracion[6]~input_o\ & !\LessThan0~11_cout\)) # (!contador(6) & ((\duracion[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datab => \duracion[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X40_Y3_N18
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((contador(7) & ((!\LessThan0~13_cout\) # (!\duracion[7]~input_o\))) # (!contador(7) & (!\duracion[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(7),
	datab => \duracion[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X40_Y3_N20
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((contador(8) & (\duracion[8]~input_o\ & !\LessThan0~15_cout\)) # (!contador(8) & ((\duracion[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => \duracion[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X40_Y3_N22
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\duracion[9]~input_o\ & (contador(9) & !\LessThan0~17_cout\)) # (!\duracion[9]~input_o\ & ((contador(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[9]~input_o\,
	datab => contador(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X40_Y3_N24
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\duracion[10]~input_o\ & ((!\LessThan0~19_cout\) # (!contador(10)))) # (!\duracion[10]~input_o\ & (!contador(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[10]~input_o\,
	datab => contador(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X40_Y3_N26
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\duracion[11]~input_o\ & (contador(11) & !\LessThan0~21_cout\)) # (!\duracion[11]~input_o\ & ((contador(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[11]~input_o\,
	datab => contador(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X40_Y3_N28
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\duracion[12]~input_o\ & ((!\LessThan0~23_cout\) # (!contador(12)))) # (!\duracion[12]~input_o\ & (!contador(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[12]~input_o\,
	datab => contador(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X40_Y3_N30
\LessThan0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\duracion[13]~input_o\ & (contador(13) & !\LessThan0~25_cout\)) # (!\duracion[13]~input_o\ & ((contador(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[13]~input_o\,
	datab => contador(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X40_Y2_N0
\LessThan0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((contador(14) & (\duracion[14]~input_o\ & !\LessThan0~27_cout\)) # (!contador(14) & ((\duracion[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(14),
	datab => \duracion[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X40_Y2_N2
\LessThan0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((contador(15) & ((!\LessThan0~29_cout\) # (!\duracion[15]~input_o\))) # (!contador(15) & (!\duracion[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(15),
	datab => \duracion[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X40_Y2_N4
\LessThan0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\duracion[16]~input_o\ & ((!\LessThan0~31_cout\) # (!contador(16)))) # (!\duracion[16]~input_o\ & (!contador(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[16]~input_o\,
	datab => contador(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X40_Y2_N6
\LessThan0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\duracion[17]~input_o\ & (contador(17) & !\LessThan0~33_cout\)) # (!\duracion[17]~input_o\ & ((contador(17)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[17]~input_o\,
	datab => contador(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X40_Y2_N8
\LessThan0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((contador(18) & (\duracion[18]~input_o\ & !\LessThan0~35_cout\)) # (!contador(18) & ((\duracion[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(18),
	datab => \duracion[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X40_Y2_N10
\LessThan0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((contador(19) & ((!\LessThan0~37_cout\) # (!\duracion[19]~input_o\))) # (!contador(19) & (!\duracion[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datab => \duracion[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X40_Y2_N12
\LessThan0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((contador(20) & (\duracion[20]~input_o\ & !\LessThan0~39_cout\)) # (!contador(20) & ((\duracion[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(20),
	datab => \duracion[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X40_Y2_N14
\LessThan0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((contador(21) & ((!\LessThan0~41_cout\) # (!\duracion[21]~input_o\))) # (!contador(21) & (!\duracion[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datab => \duracion[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X40_Y2_N16
\LessThan0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((contador(22) & (\duracion[22]~input_o\ & !\LessThan0~43_cout\)) # (!contador(22) & ((\duracion[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datab => \duracion[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X40_Y2_N18
\LessThan0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\duracion[23]~input_o\ & (contador(23) & !\LessThan0~45_cout\)) # (!\duracion[23]~input_o\ & ((contador(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[23]~input_o\,
	datab => contador(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X40_Y2_N20
\LessThan0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\duracion[24]~input_o\ & ((!\LessThan0~47_cout\) # (!contador(24)))) # (!\duracion[24]~input_o\ & (!contador(24) & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[24]~input_o\,
	datab => contador(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X40_Y2_N22
\LessThan0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\duracion[25]~input_o\ & (contador(25) & !\LessThan0~49_cout\)) # (!\duracion[25]~input_o\ & ((contador(25)) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[25]~input_o\,
	datab => contador(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X40_Y2_N24
\LessThan0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\duracion[26]~input_o\ & ((!\LessThan0~51_cout\) # (!contador(26)))) # (!\duracion[26]~input_o\ & (!contador(26) & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duracion[26]~input_o\,
	datab => contador(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X40_Y2_N26
\LessThan0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((contador(27) & ((!\LessThan0~53_cout\) # (!\duracion[27]~input_o\))) # (!contador(27) & (!\duracion[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(27),
	datab => \duracion[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X40_Y2_N28
\LessThan0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~56_combout\ = (\duracion[28]~input_o\ & ((!contador(28)) # (!\LessThan0~55_cout\))) # (!\duracion[28]~input_o\ & (!\LessThan0~55_cout\ & !contador(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \duracion[28]~input_o\,
	datad => contador(28),
	cin => \LessThan0~55_cout\,
	combout => \LessThan0~56_combout\);

-- Location: LCCOMB_X40_Y2_N30
\activo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \activo~0_combout\ = (\activo~q\ & ((\LessThan0~56_combout\))) # (!\activo~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \activo~q\,
	datad => \LessThan0~56_combout\,
	combout => \activo~0_combout\);

-- Location: FF_X40_Y2_N31
activo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \activo~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \activo~q\);

-- Location: LCCOMB_X39_Y2_N30
\done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\activo~q\ & ((\done~reg0_q\) # (!\LessThan0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activo~q\,
	datac => \done~reg0_q\,
	datad => \LessThan0~56_combout\,
	combout => \done~0_combout\);

-- Location: FF_X39_Y2_N31
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \done~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

ww_done <= \done~output_o\;
END structure;


