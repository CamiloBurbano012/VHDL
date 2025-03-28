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

-- DATE "03/27/2025 22:26:53"

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

ENTITY 	seguridad IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	personas : IN STD.STANDARD.integer range 0 TO 15;
	energia_estable : BUFFER std_logic;
	alarma_personas : OUT std_logic;
	alarma_falla : OUT std_logic
	);
END seguridad;

-- Design Ports Information
-- energia_estable	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_personas	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_falla	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seguridad IS
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
SIGNAL ww_personas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_energia_estable : std_logic;
SIGNAL ww_alarma_personas : std_logic;
SIGNAL ww_alarma_falla : std_logic;
SIGNAL \energia_estable~output_o\ : std_logic;
SIGNAL \alarma_personas~output_o\ : std_logic;
SIGNAL \alarma_falla~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \personas[0]~input_o\ : std_logic;
SIGNAL \personas[1]~input_o\ : std_logic;
SIGNAL \personas[2]~input_o\ : std_logic;
SIGNAL \personas[3]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \alarma_personas~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_personas <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(personas, 4);
energia_estable <= ww_energia_estable;
alarma_personas <= ww_alarma_personas;
alarma_falla <= ww_alarma_falla;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X9_Y0_N23
\energia_estable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \energia_estable~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\alarma_personas~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarma_personas~reg0_q\,
	devoe => ww_devoe,
	o => \alarma_personas~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\alarma_falla~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarma_falla~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\personas[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(0),
	o => \personas[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\personas[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(1),
	o => \personas[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\personas[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(2),
	o => \personas[2]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\personas[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(3),
	o => \personas[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\personas[3]~input_o\ & ((\personas[2]~input_o\) # ((\personas[0]~input_o\ & \personas[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \personas[0]~input_o\,
	datab => \personas[1]~input_o\,
	datac => \personas[2]~input_o\,
	datad => \personas[3]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X5_Y29_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y26_N25
\alarma_personas~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \LessThan0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alarma_personas~reg0_q\);

ww_energia_estable <= \energia_estable~output_o\;

ww_alarma_personas <= \alarma_personas~output_o\;

ww_alarma_falla <= \alarma_falla~output_o\;
END structure;


