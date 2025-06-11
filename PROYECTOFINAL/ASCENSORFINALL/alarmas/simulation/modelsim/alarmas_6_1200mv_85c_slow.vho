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

-- DATE "05/08/2025 15:07:25"

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

ENTITY 	alarmas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	alarma_in : IN std_logic;
	puerta_abriendo : IN std_logic;
	puerta_cerrando : IN std_logic;
	sobrecarga : IN std_logic;
	fallo_energia : IN std_logic;
	alarma_sonora : BUFFER std_logic;
	alarma_visual : BUFFER std_logic
	);
END alarmas;

-- Design Ports Information
-- alarma_sonora	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_visual	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_in	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_abriendo	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_cerrando	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarmas IS
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
SIGNAL ww_alarma_in : std_logic;
SIGNAL ww_puerta_abriendo : std_logic;
SIGNAL ww_puerta_cerrando : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_alarma_visual : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \alarma_visual~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \alarma_in~input_o\ : std_logic;
SIGNAL \puerta_abriendo~input_o\ : std_logic;
SIGNAL \puerta_cerrando~input_o\ : std_logic;
SIGNAL \sobrecarga~input_o\ : std_logic;
SIGNAL \alarma_sonora~0_combout\ : std_logic;
SIGNAL \alarma_sonora~1_combout\ : std_logic;
SIGNAL \alarma_sonora~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \alarma_sonora~reg0_q\ : std_logic;
SIGNAL \alarma_visual~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_alarma_in <= alarma_in;
ww_puerta_abriendo <= puerta_abriendo;
ww_puerta_cerrando <= puerta_cerrando;
ww_sobrecarga <= sobrecarga;
ww_fallo_energia <= fallo_energia;
alarma_sonora <= ww_alarma_sonora;
alarma_visual <= ww_alarma_visual;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X0_Y10_N2
\alarma_visual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarma_visual~reg0_q\,
	devoe => ww_devoe,
	o => \alarma_visual~output_o\);

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

-- Location: IOIBUF_X0_Y13_N15
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\alarma_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alarma_in,
	o => \alarma_in~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\puerta_abriendo~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_puerta_abriendo,
	o => \puerta_abriendo~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\puerta_cerrando~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_puerta_cerrando,
	o => \puerta_cerrando~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\sobrecarga~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sobrecarga,
	o => \sobrecarga~input_o\);

-- Location: LCCOMB_X1_Y12_N12
\alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma_sonora~0_combout\ = (\alarma_in~input_o\) # ((\puerta_abriendo~input_o\) # ((\puerta_cerrando~input_o\) # (\sobrecarga~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alarma_in~input_o\,
	datab => \puerta_abriendo~input_o\,
	datac => \puerta_cerrando~input_o\,
	datad => \sobrecarga~input_o\,
	combout => \alarma_sonora~0_combout\);

-- Location: LCCOMB_X1_Y12_N2
\alarma_sonora~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma_sonora~1_combout\ = (\fallo_energia~input_o\) # (\alarma_sonora~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fallo_energia~input_o\,
	datad => \alarma_sonora~0_combout\,
	combout => \alarma_sonora~1_combout\);

-- Location: LCCOMB_X1_Y12_N8
\alarma_sonora~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma_sonora~reg0feeder_combout\ = \alarma_sonora~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \alarma_sonora~1_combout\,
	combout => \alarma_sonora~reg0feeder_combout\);

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

-- Location: FF_X1_Y12_N9
\alarma_sonora~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarma_sonora~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarma_sonora~reg0_q\);

-- Location: FF_X1_Y12_N3
\alarma_visual~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \alarma_sonora~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarma_visual~reg0_q\);

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_alarma_visual <= \alarma_visual~output_o\;
END structure;


