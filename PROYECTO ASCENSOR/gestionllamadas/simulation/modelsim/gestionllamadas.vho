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

-- DATE "03/27/2025 22:39:13"

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

ENTITY 	gestionllamadas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	llamada_piso : IN std_logic_vector(4 DOWNTO 0);
	destino_cabina : IN std_logic_vector(4 DOWNTO 0);
	piso_actual : IN std_logic_vector(2 DOWNTO 0);
	piso_destino : BUFFER std_logic_vector(2 DOWNTO 0);
	llamada_activada : BUFFER std_logic
	);
END gestionllamadas;

-- Design Ports Information
-- piso_destino[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_activada	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_cabina[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_cabina[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_cabina[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_cabina[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_cabina[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestionllamadas IS
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
SIGNAL ww_llamada_piso : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_destino_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_llamada_activada : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \piso_destino[0]~output_o\ : std_logic;
SIGNAL \piso_destino[1]~output_o\ : std_logic;
SIGNAL \piso_destino[2]~output_o\ : std_logic;
SIGNAL \llamada_activada~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \destino_cabina[4]~input_o\ : std_logic;
SIGNAL \llamada_piso[4]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \piso_int[2]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \destino_cabina[0]~input_o\ : std_logic;
SIGNAL \llamada_piso[0]~input_o\ : std_logic;
SIGNAL \solicitudes~9_combout\ : std_logic;
SIGNAL \destino_cabina[2]~input_o\ : std_logic;
SIGNAL \llamada_piso[2]~input_o\ : std_logic;
SIGNAL \solicitudes~4_combout\ : std_logic;
SIGNAL \solicitudes~5_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \destino_cabina[1]~input_o\ : std_logic;
SIGNAL \llamada_piso[1]~input_o\ : std_logic;
SIGNAL \solicitudes~6_combout\ : std_logic;
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \solicitudes~7_combout\ : std_logic;
SIGNAL \solicitudes~8_combout\ : std_logic;
SIGNAL \destino_cabina[3]~input_o\ : std_logic;
SIGNAL \llamada_piso[3]~input_o\ : std_logic;
SIGNAL \solicitudes~2_combout\ : std_logic;
SIGNAL \solicitudes~3_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \solicitudes~11_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \solicitudes~10_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \piso_destino[0]~reg0_q\ : std_logic;
SIGNAL \piso_destino[1]~reg0_q\ : std_logic;
SIGNAL \piso_destino[2]~reg0_q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \llamada_activada~reg0_q\ : std_logic;
SIGNAL solicitudes : std_logic_vector(4 DOWNTO 0);
SIGNAL piso_int : std_logic_vector(31 DOWNTO 0);
SIGNAL destino_int : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_llamada_piso <= llamada_piso;
ww_destino_cabina <= destino_cabina;
ww_piso_actual <= piso_actual;
piso_destino <= ww_piso_destino;
llamada_activada <= ww_llamada_activada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X19_Y0_N30
\piso_destino[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_destino[0]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_destino[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\piso_destino[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_destino[1]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_destino[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\piso_destino[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \piso_destino[2]~reg0_q\,
	devoe => ww_devoe,
	o => \piso_destino[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\llamada_activada~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llamada_activada~reg0_q\,
	devoe => ww_devoe,
	o => \llamada_activada~output_o\);

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

-- Location: IOIBUF_X16_Y0_N22
\destino_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destino_cabina(4),
	o => \destino_cabina[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\llamada_piso[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(4),
	o => \llamada_piso[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(2),
	o => \piso_actual[2]~input_o\);

-- Location: LCCOMB_X16_Y1_N4
\piso_int[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_int[2]~feeder_combout\ = \piso_actual[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \piso_actual[2]~input_o\,
	combout => \piso_int[2]~feeder_combout\);

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

-- Location: FF_X16_Y1_N5
\piso_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_int[2]~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(2));

-- Location: IOIBUF_X19_Y0_N15
\destino_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destino_cabina(0),
	o => \destino_cabina[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\llamada_piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(0),
	o => \llamada_piso[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\solicitudes~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~9_combout\ = (\destino_cabina[0]~input_o\) # ((\llamada_piso[0]~input_o\) # (solicitudes(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destino_cabina[0]~input_o\,
	datac => \llamada_piso[0]~input_o\,
	datad => solicitudes(0),
	combout => \solicitudes~9_combout\);

-- Location: IOIBUF_X11_Y0_N29
\destino_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destino_cabina(2),
	o => \destino_cabina[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\llamada_piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(2),
	o => \llamada_piso[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\solicitudes~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~4_combout\ = (solicitudes(2)) # ((\destino_cabina[2]~input_o\) # (\llamada_piso[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(2),
	datab => \destino_cabina[2]~input_o\,
	datad => \llamada_piso[2]~input_o\,
	combout => \solicitudes~4_combout\);

-- Location: LCCOMB_X15_Y1_N26
\solicitudes~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~5_combout\ = (\solicitudes~4_combout\ & (((destino_int(0)) # (!\Decoder0~0_combout\)) # (!destino_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => destino_int(1),
	datab => destino_int(0),
	datac => \solicitudes~4_combout\,
	datad => \Decoder0~0_combout\,
	combout => \solicitudes~5_combout\);

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

-- Location: FF_X15_Y1_N27
\solicitudes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(2));

-- Location: IOIBUF_X16_Y0_N15
\destino_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destino_cabina(1),
	o => \destino_cabina[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\llamada_piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(1),
	o => \llamada_piso[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N12
\solicitudes~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~6_combout\ = (\destino_cabina[1]~input_o\) # ((solicitudes(1)) # (\llamada_piso[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \destino_cabina[1]~input_o\,
	datac => solicitudes(1),
	datad => \llamada_piso[1]~input_o\,
	combout => \solicitudes~6_combout\);

-- Location: IOIBUF_X14_Y0_N22
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(0),
	o => \piso_actual[0]~input_o\);

-- Location: FF_X15_Y1_N11
\piso_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \piso_actual[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(0));

-- Location: IOIBUF_X11_Y0_N1
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: FF_X15_Y1_N19
\piso_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \piso_actual[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_int(1));

-- Location: LCCOMB_X15_Y1_N14
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (piso_int(0) & (destino_int(0) & (destino_int(1) $ (!piso_int(1))))) # (!piso_int(0) & (!destino_int(0) & (destino_int(1) $ (!piso_int(1)))))

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
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\solicitudes~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~7_combout\ = (piso_int(2)) # ((destino_int(2)) # (destino_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_int(2),
	datac => destino_int(2),
	datad => destino_int(1),
	combout => \solicitudes~7_combout\);

-- Location: LCCOMB_X15_Y1_N8
\solicitudes~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~8_combout\ = (\solicitudes~6_combout\ & (((\solicitudes~7_combout\) # (!\Equal0~0_combout\)) # (!destino_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes~6_combout\,
	datab => destino_int(0),
	datac => \Equal0~0_combout\,
	datad => \solicitudes~7_combout\,
	combout => \solicitudes~8_combout\);

-- Location: FF_X15_Y1_N9
\solicitudes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(1));

-- Location: IOIBUF_X11_Y0_N8
\destino_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destino_cabina(3),
	o => \destino_cabina[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\llamada_piso[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(3),
	o => \llamada_piso[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N10
\solicitudes~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~2_combout\ = (\destino_cabina[3]~input_o\) # ((\llamada_piso[3]~input_o\) # (solicitudes(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destino_cabina[3]~input_o\,
	datab => \llamada_piso[3]~input_o\,
	datad => solicitudes(3),
	combout => \solicitudes~2_combout\);

-- Location: LCCOMB_X15_Y1_N24
\solicitudes~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~3_combout\ = (\solicitudes~2_combout\ & (((!\Decoder0~0_combout\) # (!destino_int(1))) # (!destino_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \solicitudes~2_combout\,
	datab => destino_int(0),
	datac => destino_int(1),
	datad => \Decoder0~0_combout\,
	combout => \solicitudes~3_combout\);

-- Location: FF_X15_Y1_N25
\solicitudes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(3));

-- Location: LCCOMB_X15_Y1_N22
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (solicitudes(2)) # ((solicitudes(0)) # ((solicitudes(1)) # (solicitudes(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(2),
	datab => solicitudes(0),
	datac => solicitudes(1),
	datad => solicitudes(3),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X16_Y1_N0
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!\process_0~0_combout\ & ((solicitudes(4)) # (piso_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(4),
	datac => piso_int(2),
	datad => \process_0~0_combout\,
	combout => \process_0~6_combout\);

-- Location: FF_X16_Y1_N1
\destino_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(2));

-- Location: LCCOMB_X15_Y1_N16
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!destino_int(2) & (\Equal0~0_combout\ & !piso_int(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => destino_int(2),
	datac => \Equal0~0_combout\,
	datad => piso_int(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X15_Y1_N0
\solicitudes~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~11_combout\ = (\solicitudes~9_combout\ & ((destino_int(1)) # ((destino_int(0)) # (!\Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => destino_int(1),
	datab => destino_int(0),
	datac => \solicitudes~9_combout\,
	datad => \Decoder0~0_combout\,
	combout => \solicitudes~11_combout\);

-- Location: FF_X15_Y1_N1
\solicitudes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(0));

-- Location: LCCOMB_X15_Y1_N28
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (solicitudes(2)) # ((solicitudes(3)) # ((piso_int(1) & !solicitudes(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(2),
	datab => piso_int(1),
	datac => solicitudes(3),
	datad => solicitudes(4),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X15_Y1_N30
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!solicitudes(0) & (!solicitudes(1) & \process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => solicitudes(0),
	datac => solicitudes(1),
	datad => \process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: FF_X15_Y1_N31
\destino_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(1));

-- Location: LCCOMB_X15_Y1_N6
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!destino_int(0) & !destino_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => destino_int(0),
	datad => destino_int(1),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (piso_int(2) & (\Decoder0~1_combout\ & (destino_int(2) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_int(2),
	datab => \Decoder0~1_combout\,
	datac => destino_int(2),
	datad => \Equal0~0_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X16_Y1_N6
\solicitudes~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~10_combout\ = (!\Decoder0~2_combout\ & ((\destino_cabina[4]~input_o\) # ((\llamada_piso[4]~input_o\) # (solicitudes(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \destino_cabina[4]~input_o\,
	datab => \llamada_piso[4]~input_o\,
	datac => solicitudes(4),
	datad => \Decoder0~2_combout\,
	combout => \solicitudes~10_combout\);

-- Location: FF_X16_Y1_N7
\solicitudes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(4));

-- Location: LCCOMB_X15_Y1_N2
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!solicitudes(0) & ((solicitudes(1)) # ((!solicitudes(2) & solicitudes(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(2),
	datab => solicitudes(0),
	datac => solicitudes(1),
	datad => solicitudes(3),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X15_Y1_N4
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\process_0~2_combout\) # ((!solicitudes(4) & (piso_int(0) & !\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(4),
	datab => piso_int(0),
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: FF_X15_Y1_N5
\destino_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destino_int(0));

-- Location: FF_X15_Y1_N7
\piso_destino[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => destino_int(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_destino[0]~reg0_q\);

-- Location: FF_X15_Y1_N15
\piso_destino[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => destino_int(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_destino[1]~reg0_q\);

-- Location: FF_X16_Y1_N29
\piso_destino[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => destino_int(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso_destino[2]~reg0_q\);

-- Location: LCCOMB_X16_Y1_N30
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (solicitudes(4)) # (\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => solicitudes(4),
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: FF_X16_Y1_N31
\llamada_activada~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \llamada_activada~reg0_q\);

ww_piso_destino(0) <= \piso_destino[0]~output_o\;

ww_piso_destino(1) <= \piso_destino[1]~output_o\;

ww_piso_destino(2) <= \piso_destino[2]~output_o\;

ww_llamada_activada <= \llamada_activada~output_o\;
END structure;


