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

-- DATE "04/01/2025 11:09:34"

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

ENTITY 	identificador_direccion IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	motor_subir : BUFFER std_logic;
	motor_bajar : BUFFER std_logic;
	solicitudes_subir : IN std_logic_vector(3 DOWNTO 0);
	solicitudes_bajar : IN std_logic_vector(3 DOWNTO 0);
	solicitudes_cabina : IN std_logic_vector(4 DOWNTO 0);
	piso_destino : OUT std_logic_vector(2 DOWNTO 0)
	);
END identificador_direccion;

-- Design Ports Information
-- motor_subir	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_bajar	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_subir[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_bajar[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_cabina[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF identificador_direccion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1Hz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_solicitudes_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_solicitudes_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_subir~output_o\ : std_logic;
SIGNAL \motor_bajar~output_o\ : std_logic;
SIGNAL \piso_destino[0]~output_o\ : std_logic;
SIGNAL \piso_destino[1]~output_o\ : std_logic;
SIGNAL \piso_destino[2]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \solicitudes_cabina[0]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[1]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[0]~input_o\ : std_logic;
SIGNAL \solicitudes_subir[1]~input_o\ : std_logic;
SIGNAL \solicitudes_combinadas[1]~0_combout\ : std_logic;
SIGNAL \solicitudes_subir[0]~input_o\ : std_logic;
SIGNAL \solicitudes_subir[2]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[2]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[1]~input_o\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \destino_int~0_combout\ : std_logic;
SIGNAL \solicitudes_subir[3]~input_o\ : std_logic;
SIGNAL \solicitudes_bajar[2]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[3]~input_o\ : std_logic;
SIGNAL \destino_int~1_combout\ : std_logic;
SIGNAL \destino_int~2_combout\ : std_logic;
SIGNAL \ultimo_piso_atendido[0]~feeder_combout\ : std_logic;
SIGNAL \solicitudes_bajar[3]~input_o\ : std_logic;
SIGNAL \solicitudes_cabina[4]~input_o\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \destino_int~3_combout\ : std_logic;
SIGNAL \RegistroDestino|reg_data[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \destino_int~4_combout\ : std_logic;
SIGNAL \destino_int~5_combout\ : std_logic;
SIGNAL \RegistroDestino|reg_data[1]~feeder_combout\ : std_logic;
SIGNAL \ultimo_piso_atendido[2]~feeder_combout\ : std_logic;
SIGNAL \destino_int~6_combout\ : std_logic;
SIGNAL \RegistroDestino|reg_data[2]~feeder_combout\ : std_logic;
SIGNAL ultimo_piso_atendido : std_logic_vector(2 DOWNTO 0);
SIGNAL destino_int : std_logic_vector(2 DOWNTO 0);
SIGNAL \RegistroDestino|reg_data\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
motor_subir <= ww_motor_subir;
motor_bajar <= ww_motor_bajar;
ww_solicitudes_subir <= solicitudes_subir;
ww_solicitudes_bajar <= solicitudes_bajar;
ww_solicitudes_cabina <= solicitudes_cabina;
piso_destino <= ww_piso_destino;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X32_Y0_N16
\motor_subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_subir~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\motor_bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \motor_bajar~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\piso_destino[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg_data\(0),
	devoe => ww_devoe,
	o => \piso_destino[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\piso_destino[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg_data\(1),
	devoe => ww_devoe,
	o => \piso_destino[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\piso_destino[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistroDestino|reg_data\(2),
	devoe => ww_devoe,
	o => \piso_destino[2]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk_1Hz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1Hz,
	o => \clk_1Hz~input_o\);

-- Location: CLKCTRL_G4
\clk_1Hz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1Hz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1Hz~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N22
\solicitudes_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(0),
	o => \solicitudes_cabina[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\solicitudes_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(1),
	o => \solicitudes_cabina[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\solicitudes_bajar[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(0),
	o => \solicitudes_bajar[0]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\solicitudes_subir[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(1),
	o => \solicitudes_subir[1]~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\solicitudes_combinadas[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes_combinadas[1]~0_combout\ = (!\solicitudes_cabina[1]~input_o\ & (!\solicitudes_bajar[0]~input_o\ & !\solicitudes_subir[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[1]~input_o\,
	datac => \solicitudes_bajar[0]~input_o\,
	datad => \solicitudes_subir[1]~input_o\,
	combout => \solicitudes_combinadas[1]~0_combout\);

-- Location: IOIBUF_X0_Y4_N15
\solicitudes_subir[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(0),
	o => \solicitudes_subir[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\solicitudes_subir[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(2),
	o => \solicitudes_subir[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\solicitudes_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(2),
	o => \solicitudes_cabina[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\solicitudes_bajar[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(1),
	o => \solicitudes_bajar[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (!\solicitudes_subir[2]~input_o\ & (!\solicitudes_cabina[2]~input_o\ & (!\solicitudes_bajar[1]~input_o\ & \solicitudes_combinadas[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[2]~input_o\,
	datab => \solicitudes_cabina[2]~input_o\,
	datac => \solicitudes_bajar[1]~input_o\,
	datad => \solicitudes_combinadas[1]~0_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X1_Y6_N26
\destino_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~0_combout\ = (\solicitudes_cabina[0]~input_o\) # ((\solicitudes_subir[0]~input_o\) # ((\solicitudes_combinadas[1]~0_combout\ & !\process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[0]~input_o\,
	datab => \solicitudes_combinadas[1]~0_combout\,
	datac => \solicitudes_subir[0]~input_o\,
	datad => \process_1~3_combout\,
	combout => \destino_int~0_combout\);

-- Location: IOIBUF_X0_Y2_N15
\solicitudes_subir[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_subir(3),
	o => \solicitudes_subir[3]~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\solicitudes_bajar[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(2),
	o => \solicitudes_bajar[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\solicitudes_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(3),
	o => \solicitudes_cabina[3]~input_o\);

-- Location: LCCOMB_X1_Y2_N4
\destino_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~1_combout\ = (!\solicitudes_subir[3]~input_o\ & (!\solicitudes_bajar[2]~input_o\ & !\solicitudes_cabina[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_subir[3]~input_o\,
	datac => \solicitudes_bajar[2]~input_o\,
	datad => \solicitudes_cabina[3]~input_o\,
	combout => \destino_int~1_combout\);

-- Location: LCCOMB_X1_Y6_N20
\destino_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~2_combout\ = (!\solicitudes_cabina[0]~input_o\ & (\destino_int~1_combout\ & (!\solicitudes_subir[0]~input_o\ & \process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[0]~input_o\,
	datab => \destino_int~1_combout\,
	datac => \solicitudes_subir[0]~input_o\,
	datad => \process_1~3_combout\,
	combout => \destino_int~2_combout\);

-- Location: LCCOMB_X1_Y6_N30
\ultimo_piso_atendido[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ultimo_piso_atendido[0]~feeder_combout\ = destino_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => destino_int(0),
	combout => \ultimo_piso_atendido[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y6_N8
\solicitudes_bajar[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_bajar(3),
	o => \solicitudes_bajar[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\solicitudes_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_solicitudes_cabina(4),
	o => \solicitudes_cabina[4]~input_o\);

-- Location: LCCOMB_X1_Y6_N14
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\solicitudes_bajar[3]~input_o\) # ((\solicitudes_cabina[4]~input_o\) # (!\destino_int~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_bajar[3]~input_o\,
	datac => \solicitudes_cabina[4]~input_o\,
	datad => \destino_int~2_combout\,
	combout => \process_1~5_combout\);

-- Location: FF_X1_Y6_N31
\ultimo_piso_atendido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \ultimo_piso_atendido[0]~feeder_combout\,
	ena => \process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo_piso_atendido(0));

-- Location: LCCOMB_X1_Y6_N24
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\solicitudes_cabina[4]~input_o\) # (\solicitudes_bajar[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \solicitudes_cabina[4]~input_o\,
	datad => \solicitudes_bajar[3]~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X1_Y6_N18
\destino_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~3_combout\ = (\destino_int~2_combout\ & (((ultimo_piso_atendido(0) & !\process_1~2_combout\)))) # (!\destino_int~2_combout\ & (!\destino_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destino_int~0_combout\,
	datab => \destino_int~2_combout\,
	datac => ultimo_piso_atendido(0),
	datad => \process_1~2_combout\,
	combout => \destino_int~3_combout\);

-- Location: FF_X1_Y6_N19
\destino_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(0));

-- Location: LCCOMB_X1_Y6_N16
\RegistroDestino|reg_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegistroDestino|reg_data[0]~0_combout\ = !destino_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => destino_int(0),
	combout => \RegistroDestino|reg_data[0]~0_combout\);

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

-- Location: FF_X1_Y6_N17
\RegistroDestino|reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \RegistroDestino|reg_data[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg_data\(0));

-- Location: LCCOMB_X1_Y6_N12
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\solicitudes_cabina[0]~input_o\) # ((\solicitudes_subir[0]~input_o\) # (!\process_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes_cabina[0]~input_o\,
	datac => \solicitudes_subir[0]~input_o\,
	datad => \process_1~3_combout\,
	combout => \process_1~4_combout\);

-- Location: FF_X1_Y6_N7
\ultimo_piso_atendido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	asdata => destino_int(1),
	sload => VCC,
	ena => \process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo_piso_atendido(1));

-- Location: LCCOMB_X1_Y6_N6
\destino_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~4_combout\ = (!\process_1~4_combout\ & (\destino_int~1_combout\ & (ultimo_piso_atendido(1) & !\process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \destino_int~1_combout\,
	datac => ultimo_piso_atendido(1),
	datad => \process_1~2_combout\,
	combout => \destino_int~4_combout\);

-- Location: LCCOMB_X1_Y6_N8
\destino_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~5_combout\ = (\destino_int~4_combout\) # ((!\process_1~3_combout\ & (!\solicitudes_subir[0]~input_o\ & !\solicitudes_cabina[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \solicitudes_subir[0]~input_o\,
	datac => \solicitudes_cabina[0]~input_o\,
	datad => \destino_int~4_combout\,
	combout => \destino_int~5_combout\);

-- Location: FF_X1_Y6_N9
\destino_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(1));

-- Location: LCCOMB_X1_Y6_N22
\RegistroDestino|reg_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegistroDestino|reg_data[1]~feeder_combout\ = destino_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => destino_int(1),
	combout => \RegistroDestino|reg_data[1]~feeder_combout\);

-- Location: FF_X1_Y6_N23
\RegistroDestino|reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \RegistroDestino|reg_data[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg_data\(1));

-- Location: LCCOMB_X1_Y6_N28
\ultimo_piso_atendido[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ultimo_piso_atendido[2]~feeder_combout\ = destino_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => destino_int(2),
	combout => \ultimo_piso_atendido[2]~feeder_combout\);

-- Location: FF_X1_Y6_N29
\ultimo_piso_atendido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \ultimo_piso_atendido[2]~feeder_combout\,
	ena => \process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ultimo_piso_atendido(2));

-- Location: LCCOMB_X1_Y6_N2
\destino_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \destino_int~6_combout\ = (!\process_1~4_combout\ & ((\process_1~2_combout\) # ((ultimo_piso_atendido(2)) # (!\destino_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \process_1~2_combout\,
	datac => \destino_int~1_combout\,
	datad => ultimo_piso_atendido(2),
	combout => \destino_int~6_combout\);

-- Location: FF_X1_Y6_N3
\destino_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \destino_int~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(2));

-- Location: LCCOMB_X1_Y6_N4
\RegistroDestino|reg_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegistroDestino|reg_data[2]~feeder_combout\ = destino_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => destino_int(2),
	combout => \RegistroDestino|reg_data[2]~feeder_combout\);

-- Location: FF_X1_Y6_N5
\RegistroDestino|reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \RegistroDestino|reg_data[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistroDestino|reg_data\(2));

ww_motor_subir <= \motor_subir~output_o\;

ww_motor_bajar <= \motor_bajar~output_o\;

ww_piso_destino(0) <= \piso_destino[0]~output_o\;

ww_piso_destino(1) <= \piso_destino[1]~output_o\;

ww_piso_destino(2) <= \piso_destino[2]~output_o\;
END structure;


