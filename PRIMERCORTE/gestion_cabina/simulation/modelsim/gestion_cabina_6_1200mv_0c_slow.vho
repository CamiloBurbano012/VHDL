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

-- DATE "03/31/2025 13:35:38"

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

ENTITY 	gestion_cabina IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botones_cabina : IN std_logic_vector(4 DOWNTO 0);
	clear_request : IN std_logic_vector(4 DOWNTO 0);
	solicitudes_internas : OUT std_logic_vector(4 DOWNTO 0)
	);
END gestion_cabina;

-- Design Ports Information
-- solicitudes_internas[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- solicitudes_internas[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gestion_cabina IS
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
SIGNAL ww_botones_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clear_request : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_solicitudes_internas : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \solicitudes_internas[0]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[1]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[2]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[3]~output_o\ : std_logic;
SIGNAL \solicitudes_internas[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones_cabina[0]~input_o\ : std_logic;
SIGNAL \clear_request[0]~input_o\ : std_logic;
SIGNAL \solicitudes~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear_request[1]~input_o\ : std_logic;
SIGNAL \botones_cabina[1]~input_o\ : std_logic;
SIGNAL \solicitudes~1_combout\ : std_logic;
SIGNAL \botones_cabina[2]~input_o\ : std_logic;
SIGNAL \clear_request[2]~input_o\ : std_logic;
SIGNAL \solicitudes~2_combout\ : std_logic;
SIGNAL \botones_cabina[3]~input_o\ : std_logic;
SIGNAL \clear_request[3]~input_o\ : std_logic;
SIGNAL \solicitudes~3_combout\ : std_logic;
SIGNAL \botones_cabina[4]~input_o\ : std_logic;
SIGNAL \clear_request[4]~input_o\ : std_logic;
SIGNAL \solicitudes~4_combout\ : std_logic;
SIGNAL solicitudes : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botones_cabina <= botones_cabina;
ww_clear_request <= clear_request;
solicitudes_internas <= ww_solicitudes_internas;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y25_N9
\solicitudes_internas[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes(0),
	devoe => ww_devoe,
	o => \solicitudes_internas[0]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\solicitudes_internas[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes(1),
	devoe => ww_devoe,
	o => \solicitudes_internas[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\solicitudes_internas[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes(2),
	devoe => ww_devoe,
	o => \solicitudes_internas[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\solicitudes_internas[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes(3),
	devoe => ww_devoe,
	o => \solicitudes_internas[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\solicitudes_internas[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => solicitudes(4),
	devoe => ww_devoe,
	o => \solicitudes_internas[4]~output_o\);

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

-- Location: IOIBUF_X41_Y25_N1
\botones_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(0),
	o => \botones_cabina[0]~input_o\);

-- Location: IOIBUF_X41_Y25_N15
\clear_request[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request(0),
	o => \clear_request[0]~input_o\);

-- Location: LCCOMB_X40_Y25_N16
\solicitudes~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~0_combout\ = (!\clear_request[0]~input_o\ & ((\botones_cabina[0]~input_o\) # (solicitudes(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botones_cabina[0]~input_o\,
	datac => solicitudes(0),
	datad => \clear_request[0]~input_o\,
	combout => \solicitudes~0_combout\);

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

-- Location: FF_X40_Y25_N17
\solicitudes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(0));

-- Location: IOIBUF_X41_Y25_N22
\clear_request[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request(1),
	o => \clear_request[1]~input_o\);

-- Location: IOIBUF_X41_Y26_N15
\botones_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(1),
	o => \botones_cabina[1]~input_o\);

-- Location: LCCOMB_X40_Y25_N2
\solicitudes~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~1_combout\ = (!\clear_request[1]~input_o\ & ((solicitudes(1)) # (\botones_cabina[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clear_request[1]~input_o\,
	datac => solicitudes(1),
	datad => \botones_cabina[1]~input_o\,
	combout => \solicitudes~1_combout\);

-- Location: FF_X40_Y25_N3
\solicitudes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(1));

-- Location: IOIBUF_X0_Y23_N1
\botones_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(2),
	o => \botones_cabina[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\clear_request[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request(2),
	o => \clear_request[2]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\solicitudes~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~2_combout\ = (!\clear_request[2]~input_o\ & ((\botones_cabina[2]~input_o\) # (solicitudes(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botones_cabina[2]~input_o\,
	datac => solicitudes(2),
	datad => \clear_request[2]~input_o\,
	combout => \solicitudes~2_combout\);

-- Location: FF_X1_Y23_N17
\solicitudes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(2));

-- Location: IOIBUF_X7_Y29_N8
\botones_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(3),
	o => \botones_cabina[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\clear_request[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request(3),
	o => \clear_request[3]~input_o\);

-- Location: LCCOMB_X7_Y28_N0
\solicitudes~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~3_combout\ = (!\clear_request[3]~input_o\ & ((\botones_cabina[3]~input_o\) # (solicitudes(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botones_cabina[3]~input_o\,
	datac => solicitudes(3),
	datad => \clear_request[3]~input_o\,
	combout => \solicitudes~3_combout\);

-- Location: FF_X7_Y28_N1
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

-- Location: IOIBUF_X26_Y29_N1
\botones_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(4),
	o => \botones_cabina[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N8
\clear_request[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_request(4),
	o => \clear_request[4]~input_o\);

-- Location: LCCOMB_X26_Y28_N0
\solicitudes~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \solicitudes~4_combout\ = (!\clear_request[4]~input_o\ & ((\botones_cabina[4]~input_o\) # (solicitudes(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \botones_cabina[4]~input_o\,
	datac => solicitudes(4),
	datad => \clear_request[4]~input_o\,
	combout => \solicitudes~4_combout\);

-- Location: FF_X26_Y28_N1
\solicitudes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \solicitudes~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => solicitudes(4));

ww_solicitudes_internas(0) <= \solicitudes_internas[0]~output_o\;

ww_solicitudes_internas(1) <= \solicitudes_internas[1]~output_o\;

ww_solicitudes_internas(2) <= \solicitudes_internas[2]~output_o\;

ww_solicitudes_internas(3) <= \solicitudes_internas[3]~output_o\;

ww_solicitudes_internas(4) <= \solicitudes_internas[4]~output_o\;
END structure;


