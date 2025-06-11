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

-- DATE "05/08/2025 15:47:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Display IS
    PORT (
	piso : IN std_logic_vector(2 DOWNTO 0);
	display : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Display;

-- Design Ports Information
-- display[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_piso : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \piso[2]~input_o\ : std_logic;
SIGNAL \piso[1]~input_o\ : std_logic;
SIGNAL \piso[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_piso <= piso;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X0_Y13_N2
\display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOIBUF_X0_Y13_N22
\piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso(2),
	o => \piso[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso(1),
	o => \piso[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso(0),
	o => \piso[0]~input_o\);

-- Location: LCCOMB_X4_Y20_N24
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\piso[1]~input_o\ & (\piso[2]~input_o\ $ (\piso[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso[2]~input_o\,
	datac => \piso[1]~input_o\,
	datad => \piso[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X4_Y20_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\piso[1]~input_o\ & !\piso[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso[1]~input_o\,
	datad => \piso[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X4_Y20_N12
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\piso[2]~input_o\) # (\piso[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso[2]~input_o\,
	datad => \piso[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y20_N22
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\piso[1]~input_o\) # (\piso[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso[1]~input_o\,
	datad => \piso[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X4_Y20_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\piso[2]~input_o\) # (\piso[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso[2]~input_o\,
	datac => \piso[1]~input_o\,
	combout => \Mux0~0_combout\);

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;
END structure;


