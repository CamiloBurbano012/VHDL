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

-- DATE "03/31/2025 20:15:03"

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

ENTITY 	generic_register IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	load : IN std_logic;
	din : IN std_logic_vector(7 DOWNTO 0);
	dout : OUT std_logic_vector(7 DOWNTO 0)
	);
END generic_register;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF generic_register IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \reg_data[3]~feeder_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \reg_data[4]~feeder_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \reg_data[5]~feeder_combout\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \reg_data[6]~feeder_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL reg_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_load <= load;
ww_din <= din;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y6_N23
\dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\dout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\dout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_data(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

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

-- Location: IOIBUF_X28_Y0_N22
\din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

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

-- Location: IOIBUF_X0_Y7_N22
\load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: FF_X1_Y7_N25
\reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[0]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(0));

-- Location: IOIBUF_X0_Y6_N8
\din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: FF_X1_Y7_N19
\reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(1));

-- Location: IOIBUF_X0_Y9_N15
\din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: FF_X1_Y7_N21
\reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(2));

-- Location: IOIBUF_X5_Y29_N29
\din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N6
\reg_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_data[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \reg_data[3]~feeder_combout\);

-- Location: FF_X1_Y7_N7
\reg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(3));

-- Location: IOIBUF_X0_Y5_N8
\din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\reg_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_data[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[4]~input_o\,
	combout => \reg_data[4]~feeder_combout\);

-- Location: FF_X1_Y7_N1
\reg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[4]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(4));

-- Location: IOIBUF_X5_Y0_N29
\din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: LCCOMB_X1_Y7_N2
\reg_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_data[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \reg_data[5]~feeder_combout\);

-- Location: FF_X1_Y7_N3
\reg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(5));

-- Location: IOIBUF_X0_Y7_N1
\din[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\reg_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_data[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \reg_data[6]~feeder_combout\);

-- Location: FF_X1_Y7_N13
\reg_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_data[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(6));

-- Location: IOIBUF_X7_Y0_N29
\din[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: FF_X1_Y7_N23
\reg_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \din[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_data(7));

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;
END structure;


