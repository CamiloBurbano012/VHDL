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

-- DATE "04/01/2025 11:07:55"

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

ENTITY 	ControlAscensor IS
    PORT (
	clk_1Hz : IN std_logic;
	reset : IN std_logic;
	piso_actual : IN std_logic_vector(2 DOWNTO 0);
	piso_destino : IN std_logic_vector(2 DOWNTO 0);
	fallo_energia : IN std_logic;
	notificacion : IN std_logic;
	sobrecarga : BUFFER std_logic;
	puerta : BUFFER std_logic;
	motor_subir : OUT std_logic;
	motor_bajar : OUT std_logic;
	llegada_piso : OUT std_logic;
	clear_request : OUT std_logic_vector(4 DOWNTO 0);
	clear_request_subir : OUT std_logic_vector(3 DOWNTO 0);
	clear_request_bajar : OUT std_logic_vector(3 DOWNTO 0)
	);
END ControlAscensor;

-- Design Ports Information
-- notificacion	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sobrecarga	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_subir	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_bajar	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llegada_piso	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_subir[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_request_bajar[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_destino[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1Hz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ControlAscensor IS
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
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_piso_destino : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_notificacion : std_logic;
SIGNAL ww_sobrecarga : std_logic;
SIGNAL ww_puerta : std_logic;
SIGNAL ww_motor_subir : std_logic;
SIGNAL ww_motor_bajar : std_logic;
SIGNAL ww_llegada_piso : std_logic;
SIGNAL ww_clear_request : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clear_request_subir : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear_request_bajar : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1Hz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \notificacion~input_o\ : std_logic;
SIGNAL \sobrecarga~output_o\ : std_logic;
SIGNAL \puerta~output_o\ : std_logic;
SIGNAL \motor_subir~output_o\ : std_logic;
SIGNAL \motor_bajar~output_o\ : std_logic;
SIGNAL \llegada_piso~output_o\ : std_logic;
SIGNAL \clear_request[0]~output_o\ : std_logic;
SIGNAL \clear_request[1]~output_o\ : std_logic;
SIGNAL \clear_request[2]~output_o\ : std_logic;
SIGNAL \clear_request[3]~output_o\ : std_logic;
SIGNAL \clear_request[4]~output_o\ : std_logic;
SIGNAL \clear_request_subir[0]~output_o\ : std_logic;
SIGNAL \clear_request_subir[1]~output_o\ : std_logic;
SIGNAL \clear_request_subir[2]~output_o\ : std_logic;
SIGNAL \clear_request_subir[3]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[0]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[1]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[2]~output_o\ : std_logic;
SIGNAL \clear_request_bajar[3]~output_o\ : std_logic;
SIGNAL \clk_1Hz~input_o\ : std_logic;
SIGNAL \clk_1Hz~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_destino[0]~input_o\ : std_logic;
SIGNAL \piso_actual[1]~input_o\ : std_logic;
SIGNAL \piso_destino[1]~input_o\ : std_logic;
SIGNAL \piso_destino[2]~input_o\ : std_logic;
SIGNAL \piso_actual[2]~input_o\ : std_logic;
SIGNAL \llegada_piso~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \piso_actual[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \motor_subir~reg0_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \motor_bajar~0_combout\ : std_logic;
SIGNAL \motor_bajar~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \llegada_piso~1_combout\ : std_logic;
SIGNAL \llegada_piso~reg0feeder_combout\ : std_logic;
SIGNAL \llegada_piso~reg0_q\ : std_logic;
SIGNAL \clear_request[0]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request[0]~reg0_q\ : std_logic;
SIGNAL \clear_request[1]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request[1]~reg0_q\ : std_logic;
SIGNAL \clear_request[2]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request[2]~reg0_q\ : std_logic;
SIGNAL \clear_request[3]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request[3]~reg0_q\ : std_logic;
SIGNAL \clear_request[4]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request[4]~reg0_q\ : std_logic;
SIGNAL \clear_request_subir[0]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_subir[0]~reg0_q\ : std_logic;
SIGNAL \clear_request_subir[1]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_subir[1]~reg0_q\ : std_logic;
SIGNAL \clear_request_subir[2]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_subir[2]~reg0_q\ : std_logic;
SIGNAL \clear_request_subir[3]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_subir[3]~reg0_q\ : std_logic;
SIGNAL \clear_request_bajar[0]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_bajar[0]~reg0_q\ : std_logic;
SIGNAL \clear_request_bajar[1]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_bajar[1]~reg0_q\ : std_logic;
SIGNAL \clear_request_bajar[2]~reg0feeder_combout\ : std_logic;
SIGNAL \clear_request_bajar[2]~reg0_q\ : std_logic;
SIGNAL \clear_request_bajar[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_process_0~0clkctrl_outclk\ : std_logic;

BEGIN

ww_clk_1Hz <= clk_1Hz;
ww_reset <= reset;
ww_piso_actual <= piso_actual;
ww_piso_destino <= piso_destino;
ww_fallo_energia <= fallo_energia;
ww_notificacion <= notificacion;
sobrecarga <= ww_sobrecarga;
puerta <= ww_puerta;
motor_subir <= ww_motor_subir;
motor_bajar <= ww_motor_bajar;
llegada_piso <= ww_llegada_piso;
clear_request <= ww_clear_request;
clear_request_subir <= ww_clear_request_subir;
clear_request_bajar <= ww_clear_request_bajar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_1Hz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz~input_o\);

\process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_0~0_combout\);
\ALT_INV_process_0~0clkctrl_outclk\ <= NOT \process_0~0clkctrl_outclk\;

-- Location: IOOBUF_X37_Y0_N2
\sobrecarga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sobrecarga~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \puerta~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\motor_subir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_subir~reg0_q\,
	devoe => ww_devoe,
	o => \motor_subir~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\motor_bajar~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_bajar~reg0_q\,
	devoe => ww_devoe,
	o => \motor_bajar~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\llegada_piso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llegada_piso~reg0_q\,
	devoe => ww_devoe,
	o => \llegada_piso~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\clear_request[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request[0]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\clear_request[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request[1]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\clear_request[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request[2]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\clear_request[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request[3]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\clear_request[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request[4]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\clear_request_subir[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir[0]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_subir[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\clear_request_subir[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir[1]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_subir[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\clear_request_subir[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir[2]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_subir[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\clear_request_subir[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_subir[3]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_subir[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\clear_request_bajar[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_bajar[0]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_bajar[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\clear_request_bajar[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_bajar[1]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_bajar[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\clear_request_bajar[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_bajar[2]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_bajar[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\clear_request_bajar[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clear_request_bajar[3]~reg0_q\,
	devoe => ww_devoe,
	o => \clear_request_bajar[3]~output_o\);

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

-- Location: IOIBUF_X0_Y6_N1
\piso_destino[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(0),
	o => \piso_destino[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\piso_actual[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(1),
	o => \piso_actual[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\piso_destino[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(1),
	o => \piso_destino[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\piso_destino[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_destino(2),
	o => \piso_destino[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\piso_actual[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(2),
	o => \piso_actual[2]~input_o\);

-- Location: LCCOMB_X1_Y10_N8
\llegada_piso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~0_combout\ = (\piso_actual[1]~input_o\ & (\piso_destino[1]~input_o\ & (\piso_destino[2]~input_o\ $ (!\piso_actual[2]~input_o\)))) # (!\piso_actual[1]~input_o\ & (!\piso_destino[1]~input_o\ & (\piso_destino[2]~input_o\ $ 
-- (!\piso_actual[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[1]~input_o\,
	datab => \piso_destino[1]~input_o\,
	datac => \piso_destino[2]~input_o\,
	datad => \piso_actual[2]~input_o\,
	combout => \llegada_piso~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\piso_destino[2]~input_o\ & (((!\piso_actual[1]~input_o\ & \piso_destino[1]~input_o\)) # (!\piso_actual[2]~input_o\))) # (!\piso_destino[2]~input_o\ & (!\piso_actual[1]~input_o\ & (\piso_destino[1]~input_o\ & 
-- !\piso_actual[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[1]~input_o\,
	datab => \piso_destino[1]~input_o\,
	datac => \piso_destino[2]~input_o\,
	datad => \piso_actual[2]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X0_Y10_N1
\piso_actual[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_piso_actual(0),
	o => \piso_actual[0]~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\) # ((\piso_destino[0]~input_o\ & (\llegada_piso~0_combout\ & !\piso_actual[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_destino[0]~input_o\,
	datab => \llegada_piso~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \piso_actual[0]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X0_Y5_N1
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\fallo_energia~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fallo_energia~input_o\,
	datad => \reset~input_o\,
	combout => \process_0~0_combout\);

-- Location: CLKCTRL_G18
\process_0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_0~0clkctrl_outclk\);

-- Location: FF_X1_Y10_N25
\motor_subir~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \LessThan0~1_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_subir~reg0_q\);

-- Location: LCCOMB_X1_Y10_N2
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\piso_destino[2]~input_o\ & (\piso_actual[1]~input_o\ & (!\piso_destino[1]~input_o\ & \piso_actual[2]~input_o\))) # (!\piso_destino[2]~input_o\ & ((\piso_actual[2]~input_o\) # ((\piso_actual[1]~input_o\ & 
-- !\piso_destino[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[1]~input_o\,
	datab => \piso_destino[1]~input_o\,
	datac => \piso_destino[2]~input_o\,
	datad => \piso_actual[2]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # ((\piso_actual[0]~input_o\ & (\llegada_piso~0_combout\ & !\piso_destino[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso_actual[0]~input_o\,
	datab => \llegada_piso~0_combout\,
	datac => \piso_destino[0]~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X1_Y10_N18
\motor_bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \motor_bajar~0_combout\ = (\LessThan1~1_combout\ & !\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datad => \LessThan0~1_combout\,
	combout => \motor_bajar~0_combout\);

-- Location: FF_X1_Y10_N19
\motor_bajar~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \motor_bajar~0_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_bajar~reg0_q\);

-- Location: LCCOMB_X1_Y10_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = \piso_destino[0]~input_o\ $ (\piso_actual[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \piso_destino[0]~input_o\,
	datad => \piso_actual[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\llegada_piso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~1_combout\ = (!\LessThan1~1_combout\ & (\llegada_piso~0_combout\ & (!\Equal0~0_combout\ & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \llegada_piso~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \llegada_piso~1_combout\);

-- Location: LCCOMB_X1_Y10_N4
\llegada_piso~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llegada_piso~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \llegada_piso~reg0feeder_combout\);

-- Location: FF_X1_Y10_N5
\llegada_piso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \llegada_piso~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \llegada_piso~reg0_q\);

-- Location: LCCOMB_X23_Y28_N0
\clear_request[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request[0]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request[0]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N1
\clear_request[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request[0]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request[0]~reg0_q\);

-- Location: LCCOMB_X23_Y28_N2
\clear_request[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request[1]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request[1]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N3
\clear_request[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request[1]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request[1]~reg0_q\);

-- Location: LCCOMB_X23_Y28_N4
\clear_request[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request[2]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request[2]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N5
\clear_request[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request[2]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request[2]~reg0_q\);

-- Location: LCCOMB_X23_Y28_N22
\clear_request[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request[3]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request[3]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N23
\clear_request[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request[3]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request[3]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N14
\clear_request[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request[4]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request[4]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N15
\clear_request[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request[4]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request[4]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N0
\clear_request_subir[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir[0]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_subir[0]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N1
\clear_request_subir[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_subir[0]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_subir[0]~reg0_q\);

-- Location: LCCOMB_X23_Y28_N24
\clear_request_subir[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir[1]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_subir[1]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N25
\clear_request_subir[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_subir[1]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_subir[1]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N10
\clear_request_subir[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir[2]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_subir[2]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N11
\clear_request_subir[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_subir[2]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_subir[2]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N28
\clear_request_subir[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_subir[3]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_subir[3]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N29
\clear_request_subir[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_subir[3]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_subir[3]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N6
\clear_request_bajar[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_bajar[0]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_bajar[0]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N7
\clear_request_bajar[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_bajar[0]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_bajar[0]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N16
\clear_request_bajar[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_bajar[1]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_bajar[1]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N17
\clear_request_bajar[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_bajar[1]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_bajar[1]~reg0_q\);

-- Location: LCCOMB_X1_Y10_N26
\clear_request_bajar[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clear_request_bajar[2]~reg0feeder_combout\ = \llegada_piso~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \llegada_piso~1_combout\,
	combout => \clear_request_bajar[2]~reg0feeder_combout\);

-- Location: FF_X1_Y10_N27
\clear_request_bajar[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \clear_request_bajar[2]~reg0feeder_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_bajar[2]~reg0_q\);

-- Location: FF_X1_Y10_N21
\clear_request_bajar[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz~inputclkctrl_outclk\,
	d => \llegada_piso~1_combout\,
	clrn => \ALT_INV_process_0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear_request_bajar[3]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N8
\notificacion~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_notificacion,
	o => \notificacion~input_o\);

ww_sobrecarga <= \sobrecarga~output_o\;

ww_puerta <= \puerta~output_o\;

ww_motor_subir <= \motor_subir~output_o\;

ww_motor_bajar <= \motor_bajar~output_o\;

ww_llegada_piso <= \llegada_piso~output_o\;

ww_clear_request(0) <= \clear_request[0]~output_o\;

ww_clear_request(1) <= \clear_request[1]~output_o\;

ww_clear_request(2) <= \clear_request[2]~output_o\;

ww_clear_request(3) <= \clear_request[3]~output_o\;

ww_clear_request(4) <= \clear_request[4]~output_o\;

ww_clear_request_subir(0) <= \clear_request_subir[0]~output_o\;

ww_clear_request_subir(1) <= \clear_request_subir[1]~output_o\;

ww_clear_request_subir(2) <= \clear_request_subir[2]~output_o\;

ww_clear_request_subir(3) <= \clear_request_subir[3]~output_o\;

ww_clear_request_bajar(0) <= \clear_request_bajar[0]~output_o\;

ww_clear_request_bajar(1) <= \clear_request_bajar[1]~output_o\;

ww_clear_request_bajar(2) <= \clear_request_bajar[2]~output_o\;

ww_clear_request_bajar(3) <= \clear_request_bajar[3]~output_o\;
END structure;


