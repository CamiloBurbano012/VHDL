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

-- DATE "05/22/2025 20:08:49"

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

ENTITY 	memoria IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	we : IN std_logic;
	addr : IN std_logic_vector(2 DOWNTO 0);
	data_in : IN std_logic_vector(0 DOWNTO 0);
	data_out : OUT std_logic_vector(0 DOWNTO 0)
	);
END memoria;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoria IS
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
SIGNAL ww_we : std_logic;
SIGNAL ww_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr_reg[0]~feeder_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \mem[4][0]~0_combout\ : std_logic;
SIGNAL \mem[4][0]~1_combout\ : std_logic;
SIGNAL \mem[4][0]~q\ : std_logic;
SIGNAL \mem[2][0]~2_combout\ : std_logic;
SIGNAL \mem[3][0]~7_combout\ : std_logic;
SIGNAL \mem[3][0]~q\ : std_logic;
SIGNAL \mem[2][0]~3_combout\ : std_logic;
SIGNAL \mem[2][0]~q\ : std_logic;
SIGNAL \mem[1][0]~4_combout\ : std_logic;
SIGNAL \mem[0][0]~6_combout\ : std_logic;
SIGNAL \mem[0][0]~q\ : std_logic;
SIGNAL \mem[1][0]~5_combout\ : std_logic;
SIGNAL \mem[1][0]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL addr_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_we <= we;
ww_addr <= addr;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y27_N16
\data_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

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

-- Location: IOIBUF_X0_Y27_N8
\addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: LCCOMB_X1_Y27_N28
\addr_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_reg[2]~feeder_combout\ = \addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[2]~input_o\,
	combout => \addr_reg[2]~feeder_combout\);

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

-- Location: FF_X1_Y27_N29
\addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(2));

-- Location: IOIBUF_X0_Y27_N1
\data_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\we~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: LCCOMB_X1_Y27_N2
\addr_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_reg[0]~feeder_combout\ = \addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[0]~input_o\,
	combout => \addr_reg[0]~feeder_combout\);

-- Location: FF_X1_Y27_N3
\addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_reg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(0));

-- Location: IOIBUF_X0_Y27_N22
\addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X1_Y27_N30
\addr_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \addr_reg[1]~feeder_combout\ = \addr[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[1]~input_o\,
	combout => \addr_reg[1]~feeder_combout\);

-- Location: FF_X1_Y27_N31
\addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \addr_reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addr_reg(1));

-- Location: LCCOMB_X1_Y27_N10
\mem[4][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[4][0]~0_combout\ = (\we~input_o\ & (!addr_reg(0) & (!addr_reg(1) & addr_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \we~input_o\,
	datab => addr_reg(0),
	datac => addr_reg(1),
	datad => addr_reg(2),
	combout => \mem[4][0]~0_combout\);

-- Location: LCCOMB_X1_Y27_N22
\mem[4][0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[4][0]~1_combout\ = (\mem[4][0]~0_combout\ & (\data_in[0]~input_o\)) # (!\mem[4][0]~0_combout\ & ((\mem[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datac => \mem[4][0]~q\,
	datad => \mem[4][0]~0_combout\,
	combout => \mem[4][0]~1_combout\);

-- Location: FF_X1_Y27_N23
\mem[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem[4][0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[4][0]~q\);

-- Location: LCCOMB_X1_Y27_N24
\mem[2][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[2][0]~2_combout\ = (\we~input_o\ & (addr_reg(1) & !addr_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => addr_reg(1),
	datad => addr_reg(2),
	combout => \mem[2][0]~2_combout\);

-- Location: LCCOMB_X1_Y27_N12
\mem[3][0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[3][0]~7_combout\ = (addr_reg(0) & ((\mem[2][0]~2_combout\ & (\data_in[0]~input_o\)) # (!\mem[2][0]~2_combout\ & ((\mem[3][0]~q\))))) # (!addr_reg(0) & (((\mem[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \data_in[0]~input_o\,
	datac => \mem[3][0]~q\,
	datad => \mem[2][0]~2_combout\,
	combout => \mem[3][0]~7_combout\);

-- Location: FF_X1_Y27_N13
\mem[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem[3][0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[3][0]~q\);

-- Location: LCCOMB_X1_Y27_N8
\mem[2][0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[2][0]~3_combout\ = (addr_reg(0) & (((\mem[2][0]~q\)))) # (!addr_reg(0) & ((\mem[2][0]~2_combout\ & (\data_in[0]~input_o\)) # (!\mem[2][0]~2_combout\ & ((\mem[2][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \data_in[0]~input_o\,
	datac => \mem[2][0]~q\,
	datad => \mem[2][0]~2_combout\,
	combout => \mem[2][0]~3_combout\);

-- Location: FF_X1_Y27_N9
\mem[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem[2][0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[2][0]~q\);

-- Location: LCCOMB_X1_Y27_N26
\mem[1][0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[1][0]~4_combout\ = (\we~input_o\ & (!addr_reg(1) & !addr_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \we~input_o\,
	datac => addr_reg(1),
	datad => addr_reg(2),
	combout => \mem[1][0]~4_combout\);

-- Location: LCCOMB_X1_Y27_N4
\mem[0][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[0][0]~6_combout\ = (addr_reg(0) & (((\mem[0][0]~q\)))) # (!addr_reg(0) & ((\mem[1][0]~4_combout\ & (\data_in[0]~input_o\)) # (!\mem[1][0]~4_combout\ & ((\mem[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \data_in[0]~input_o\,
	datac => \mem[0][0]~q\,
	datad => \mem[1][0]~4_combout\,
	combout => \mem[0][0]~6_combout\);

-- Location: FF_X1_Y27_N5
\mem[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem[0][0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[0][0]~q\);

-- Location: LCCOMB_X1_Y27_N20
\mem[1][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem[1][0]~5_combout\ = (addr_reg(0) & ((\mem[1][0]~4_combout\ & (\data_in[0]~input_o\)) # (!\mem[1][0]~4_combout\ & ((\mem[1][0]~q\))))) # (!addr_reg(0) & (((\mem[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(0),
	datab => \data_in[0]~input_o\,
	datac => \mem[1][0]~q\,
	datad => \mem[1][0]~4_combout\,
	combout => \mem[1][0]~5_combout\);

-- Location: FF_X1_Y27_N21
\mem[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem[1][0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem[1][0]~q\);

-- Location: LCCOMB_X1_Y27_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (addr_reg(1) & (addr_reg(0))) # (!addr_reg(1) & ((addr_reg(0) & ((\mem[1][0]~q\))) # (!addr_reg(0) & (\mem[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addr_reg(1),
	datab => addr_reg(0),
	datac => \mem[0][0]~q\,
	datad => \mem[1][0]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y27_N18
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (addr_reg(1) & ((\Mux0~0_combout\ & (\mem[3][0]~q\)) # (!\Mux0~0_combout\ & ((\mem[2][0]~q\))))) # (!addr_reg(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem[3][0]~q\,
	datab => \mem[2][0]~q\,
	datac => addr_reg(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X1_Y27_N16
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (addr_reg(2) & (\mem[4][0]~q\)) # (!addr_reg(2) & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => addr_reg(2),
	datac => \mem[4][0]~q\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X1_Y27_N17
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;
END structure;


