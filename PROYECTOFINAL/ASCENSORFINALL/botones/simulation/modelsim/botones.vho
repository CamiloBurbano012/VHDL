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

-- DATE "05/06/2025 18:55:58"

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

ENTITY 	botones IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botones_subir : IN std_logic_vector(4 DOWNTO 0);
	botones_bajar : IN std_logic_vector(4 DOWNTO 0);
	botones_cabina : IN std_logic_vector(4 DOWNTO 0);
	boton_abrir : IN std_logic;
	boton_cerrar : IN std_logic;
	boton_notificar : IN std_logic;
	botones_subir_filtrados : OUT std_logic_vector(4 DOWNTO 0);
	botones_bajar_filtrados : OUT std_logic_vector(4 DOWNTO 0);
	botones_cabina_filtrados : OUT std_logic_vector(4 DOWNTO 0);
	boton_abrir_filtrado : OUT std_logic;
	boton_cerrar_filtrado : OUT std_logic;
	boton_notificar_filtrado : OUT std_logic
	);
END botones;

-- Design Ports Information
-- botones_subir_filtrados[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_filtrados[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_filtrados[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_filtrados[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_filtrados[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_filtrados[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_filtrados[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_filtrados[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_filtrados[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_filtrados[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina_filtrados[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina_filtrados[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina_filtrados[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina_filtrados[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina_filtrados[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_abrir_filtrado	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_cerrar_filtrado	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_notificar_filtrado	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_abrir	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_cerrar	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_notificar	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF botones IS
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
SIGNAL ww_botones_subir : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_bajar : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_boton_abrir : std_logic;
SIGNAL ww_boton_cerrar : std_logic;
SIGNAL ww_boton_notificar : std_logic;
SIGNAL ww_botones_subir_filtrados : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_bajar_filtrados : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_cabina_filtrados : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_boton_abrir_filtrado : std_logic;
SIGNAL ww_boton_cerrar_filtrado : std_logic;
SIGNAL ww_boton_notificar_filtrado : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \botones_subir_filtrados[0]~output_o\ : std_logic;
SIGNAL \botones_subir_filtrados[1]~output_o\ : std_logic;
SIGNAL \botones_subir_filtrados[2]~output_o\ : std_logic;
SIGNAL \botones_subir_filtrados[3]~output_o\ : std_logic;
SIGNAL \botones_subir_filtrados[4]~output_o\ : std_logic;
SIGNAL \botones_bajar_filtrados[0]~output_o\ : std_logic;
SIGNAL \botones_bajar_filtrados[1]~output_o\ : std_logic;
SIGNAL \botones_bajar_filtrados[2]~output_o\ : std_logic;
SIGNAL \botones_bajar_filtrados[3]~output_o\ : std_logic;
SIGNAL \botones_bajar_filtrados[4]~output_o\ : std_logic;
SIGNAL \botones_cabina_filtrados[0]~output_o\ : std_logic;
SIGNAL \botones_cabina_filtrados[1]~output_o\ : std_logic;
SIGNAL \botones_cabina_filtrados[2]~output_o\ : std_logic;
SIGNAL \botones_cabina_filtrados[3]~output_o\ : std_logic;
SIGNAL \botones_cabina_filtrados[4]~output_o\ : std_logic;
SIGNAL \boton_abrir_filtrado~output_o\ : std_logic;
SIGNAL \boton_cerrar_filtrado~output_o\ : std_logic;
SIGNAL \boton_notificar_filtrado~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \botones_subir[0]~input_o\ : std_logic;
SIGNAL \reg_subir_0[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \reg_subir_1[0]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[0]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[0]~reg0_q\ : std_logic;
SIGNAL \botones_subir[1]~input_o\ : std_logic;
SIGNAL \reg_subir_0[1]~feeder_combout\ : std_logic;
SIGNAL \reg_subir_1[1]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[1]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[1]~reg0_q\ : std_logic;
SIGNAL \botones_subir[2]~input_o\ : std_logic;
SIGNAL \reg_subir_0[2]~feeder_combout\ : std_logic;
SIGNAL \reg_subir_1[2]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[2]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[2]~reg0_q\ : std_logic;
SIGNAL \botones_subir[3]~input_o\ : std_logic;
SIGNAL \reg_subir_0[3]~feeder_combout\ : std_logic;
SIGNAL \reg_subir_1[3]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[3]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[3]~reg0_q\ : std_logic;
SIGNAL \botones_subir[4]~input_o\ : std_logic;
SIGNAL \reg_subir_0[4]~feeder_combout\ : std_logic;
SIGNAL \reg_subir_1[4]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[4]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_subir_filtrados[4]~reg0_q\ : std_logic;
SIGNAL \botones_bajar[0]~input_o\ : std_logic;
SIGNAL \reg_bajar_0[0]~feeder_combout\ : std_logic;
SIGNAL \reg_bajar_1[0]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[0]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[0]~reg0_q\ : std_logic;
SIGNAL \botones_bajar[1]~input_o\ : std_logic;
SIGNAL \reg_bajar_0[1]~feeder_combout\ : std_logic;
SIGNAL \reg_bajar_1[1]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[1]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[1]~reg0_q\ : std_logic;
SIGNAL \botones_bajar[2]~input_o\ : std_logic;
SIGNAL \reg_bajar_0[2]~feeder_combout\ : std_logic;
SIGNAL \reg_bajar_1[2]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[2]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[2]~reg0_q\ : std_logic;
SIGNAL \botones_bajar[3]~input_o\ : std_logic;
SIGNAL \reg_bajar_0[3]~feeder_combout\ : std_logic;
SIGNAL \reg_bajar_1[3]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[3]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[3]~reg0_q\ : std_logic;
SIGNAL \botones_bajar[4]~input_o\ : std_logic;
SIGNAL \reg_bajar_0[4]~feeder_combout\ : std_logic;
SIGNAL \reg_bajar_1[4]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[4]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_bajar_filtrados[4]~reg0_q\ : std_logic;
SIGNAL \botones_cabina[0]~input_o\ : std_logic;
SIGNAL \reg_cabina_0[0]~feeder_combout\ : std_logic;
SIGNAL \reg_cabina_1[0]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[0]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[0]~reg0_q\ : std_logic;
SIGNAL \botones_cabina[1]~input_o\ : std_logic;
SIGNAL \reg_cabina_0[1]~feeder_combout\ : std_logic;
SIGNAL \reg_cabina_1[1]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[1]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[1]~reg0_q\ : std_logic;
SIGNAL \botones_cabina[2]~input_o\ : std_logic;
SIGNAL \reg_cabina_0[2]~feeder_combout\ : std_logic;
SIGNAL \reg_cabina_1[2]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[2]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[2]~reg0_q\ : std_logic;
SIGNAL \botones_cabina[3]~input_o\ : std_logic;
SIGNAL \reg_cabina_0[3]~feeder_combout\ : std_logic;
SIGNAL \reg_cabina_1[3]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[3]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[3]~reg0_q\ : std_logic;
SIGNAL \botones_cabina[4]~input_o\ : std_logic;
SIGNAL \reg_cabina_0[4]~feeder_combout\ : std_logic;
SIGNAL \reg_cabina_1[4]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[4]~reg0feeder_combout\ : std_logic;
SIGNAL \botones_cabina_filtrados[4]~reg0_q\ : std_logic;
SIGNAL \boton_abrir~input_o\ : std_logic;
SIGNAL \reg_abrir_0~feeder_combout\ : std_logic;
SIGNAL \reg_abrir_0~q\ : std_logic;
SIGNAL \reg_abrir_1~feeder_combout\ : std_logic;
SIGNAL \reg_abrir_1~q\ : std_logic;
SIGNAL \boton_abrir_filtrado~reg0feeder_combout\ : std_logic;
SIGNAL \boton_abrir_filtrado~reg0_q\ : std_logic;
SIGNAL \boton_cerrar~input_o\ : std_logic;
SIGNAL \reg_cerrar_0~feeder_combout\ : std_logic;
SIGNAL \reg_cerrar_0~q\ : std_logic;
SIGNAL \reg_cerrar_1~feeder_combout\ : std_logic;
SIGNAL \reg_cerrar_1~q\ : std_logic;
SIGNAL \boton_cerrar_filtrado~reg0feeder_combout\ : std_logic;
SIGNAL \boton_cerrar_filtrado~reg0_q\ : std_logic;
SIGNAL \boton_notificar~input_o\ : std_logic;
SIGNAL \reg_notificar_0~feeder_combout\ : std_logic;
SIGNAL \reg_notificar_0~q\ : std_logic;
SIGNAL \reg_notificar_1~feeder_combout\ : std_logic;
SIGNAL \reg_notificar_1~q\ : std_logic;
SIGNAL \boton_notificar_filtrado~reg0feeder_combout\ : std_logic;
SIGNAL \boton_notificar_filtrado~reg0_q\ : std_logic;
SIGNAL reg_subir_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL reg_subir_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL reg_cabina_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL reg_cabina_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL reg_bajar_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL reg_bajar_0 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botones_subir <= botones_subir;
ww_botones_bajar <= botones_bajar;
ww_botones_cabina <= botones_cabina;
ww_boton_abrir <= boton_abrir;
ww_boton_cerrar <= boton_cerrar;
ww_boton_notificar <= boton_notificar;
botones_subir_filtrados <= ww_botones_subir_filtrados;
botones_bajar_filtrados <= ww_botones_bajar_filtrados;
botones_cabina_filtrados <= ww_botones_cabina_filtrados;
boton_abrir_filtrado <= ww_boton_abrir_filtrado;
boton_cerrar_filtrado <= ww_boton_cerrar_filtrado;
boton_notificar_filtrado <= ww_boton_notificar_filtrado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X23_Y0_N30
\botones_subir_filtrados[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_subir_filtrados[0]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_subir_filtrados[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\botones_subir_filtrados[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_subir_filtrados[1]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_subir_filtrados[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\botones_subir_filtrados[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_subir_filtrados[2]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_subir_filtrados[2]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\botones_subir_filtrados[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_subir_filtrados[3]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_subir_filtrados[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\botones_subir_filtrados[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_subir_filtrados[4]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_subir_filtrados[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\botones_bajar_filtrados[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_bajar_filtrados[0]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_bajar_filtrados[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\botones_bajar_filtrados[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_bajar_filtrados[1]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_bajar_filtrados[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\botones_bajar_filtrados[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_bajar_filtrados[2]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_bajar_filtrados[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\botones_bajar_filtrados[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_bajar_filtrados[3]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_bajar_filtrados[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\botones_bajar_filtrados[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_bajar_filtrados[4]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_bajar_filtrados[4]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\botones_cabina_filtrados[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_cabina_filtrados[0]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_cabina_filtrados[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\botones_cabina_filtrados[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_cabina_filtrados[1]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_cabina_filtrados[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\botones_cabina_filtrados[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_cabina_filtrados[2]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_cabina_filtrados[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\botones_cabina_filtrados[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_cabina_filtrados[3]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_cabina_filtrados[3]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\botones_cabina_filtrados[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \botones_cabina_filtrados[4]~reg0_q\,
	devoe => ww_devoe,
	o => \botones_cabina_filtrados[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\boton_abrir_filtrado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \boton_abrir_filtrado~reg0_q\,
	devoe => ww_devoe,
	o => \boton_abrir_filtrado~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\boton_cerrar_filtrado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \boton_cerrar_filtrado~reg0_q\,
	devoe => ww_devoe,
	o => \boton_cerrar_filtrado~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\boton_notificar_filtrado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \boton_notificar_filtrado~reg0_q\,
	devoe => ww_devoe,
	o => \boton_notificar_filtrado~output_o\);

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

-- Location: IOIBUF_X21_Y0_N8
\botones_subir[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(0),
	o => \botones_subir[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\reg_subir_0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_0[0]~feeder_combout\ = \botones_subir[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir[0]~input_o\,
	combout => \reg_subir_0[0]~feeder_combout\);

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

-- Location: FF_X22_Y1_N1
\reg_subir_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_0[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_0(0));

-- Location: LCCOMB_X22_Y1_N2
\reg_subir_1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_1[0]~feeder_combout\ = reg_subir_0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_0(0),
	combout => \reg_subir_1[0]~feeder_combout\);

-- Location: FF_X22_Y1_N3
\reg_subir_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_1[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_1(0));

-- Location: LCCOMB_X22_Y1_N28
\botones_subir_filtrados[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_subir_filtrados[0]~reg0feeder_combout\ = reg_subir_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_1(0),
	combout => \botones_subir_filtrados[0]~reg0feeder_combout\);

-- Location: FF_X22_Y1_N29
\botones_subir_filtrados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_subir_filtrados[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_subir_filtrados[0]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N1
\botones_subir[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(1),
	o => \botones_subir[1]~input_o\);

-- Location: LCCOMB_X21_Y1_N0
\reg_subir_0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_0[1]~feeder_combout\ = \botones_subir[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir[1]~input_o\,
	combout => \reg_subir_0[1]~feeder_combout\);

-- Location: FF_X21_Y1_N1
\reg_subir_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_0[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_0(1));

-- Location: LCCOMB_X21_Y1_N2
\reg_subir_1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_1[1]~feeder_combout\ = reg_subir_0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_0(1),
	combout => \reg_subir_1[1]~feeder_combout\);

-- Location: FF_X21_Y1_N3
\reg_subir_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_1[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_1(1));

-- Location: LCCOMB_X21_Y1_N28
\botones_subir_filtrados[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_subir_filtrados[1]~reg0feeder_combout\ = reg_subir_1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_1(1),
	combout => \botones_subir_filtrados[1]~reg0feeder_combout\);

-- Location: FF_X21_Y1_N29
\botones_subir_filtrados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_subir_filtrados[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_subir_filtrados[1]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N1
\botones_subir[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(2),
	o => \botones_subir[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N0
\reg_subir_0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_0[2]~feeder_combout\ = \botones_subir[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir[2]~input_o\,
	combout => \reg_subir_0[2]~feeder_combout\);

-- Location: FF_X1_Y3_N1
\reg_subir_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_0[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_0(2));

-- Location: LCCOMB_X1_Y3_N2
\reg_subir_1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_1[2]~feeder_combout\ = reg_subir_0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_0(2),
	combout => \reg_subir_1[2]~feeder_combout\);

-- Location: FF_X1_Y3_N3
\reg_subir_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_1[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_1(2));

-- Location: LCCOMB_X1_Y3_N16
\botones_subir_filtrados[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_subir_filtrados[2]~reg0feeder_combout\ = reg_subir_1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_1(2),
	combout => \botones_subir_filtrados[2]~reg0feeder_combout\);

-- Location: FF_X1_Y3_N17
\botones_subir_filtrados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_subir_filtrados[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_subir_filtrados[2]~reg0_q\);

-- Location: IOIBUF_X5_Y29_N22
\botones_subir[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(3),
	o => \botones_subir[3]~input_o\);

-- Location: LCCOMB_X5_Y28_N12
\reg_subir_0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_0[3]~feeder_combout\ = \botones_subir[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir[3]~input_o\,
	combout => \reg_subir_0[3]~feeder_combout\);

-- Location: FF_X5_Y28_N13
\reg_subir_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_0[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_0(3));

-- Location: LCCOMB_X5_Y28_N2
\reg_subir_1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_1[3]~feeder_combout\ = reg_subir_0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_0(3),
	combout => \reg_subir_1[3]~feeder_combout\);

-- Location: FF_X5_Y28_N3
\reg_subir_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_1[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_1(3));

-- Location: LCCOMB_X5_Y28_N0
\botones_subir_filtrados[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_subir_filtrados[3]~reg0feeder_combout\ = reg_subir_1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_1(3),
	combout => \botones_subir_filtrados[3]~reg0feeder_combout\);

-- Location: FF_X5_Y28_N1
\botones_subir_filtrados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_subir_filtrados[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_subir_filtrados[3]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\botones_subir[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir(4),
	o => \botones_subir[4]~input_o\);

-- Location: LCCOMB_X7_Y1_N0
\reg_subir_0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_0[4]~feeder_combout\ = \botones_subir[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir[4]~input_o\,
	combout => \reg_subir_0[4]~feeder_combout\);

-- Location: FF_X7_Y1_N1
\reg_subir_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_0[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_0(4));

-- Location: LCCOMB_X7_Y1_N2
\reg_subir_1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_subir_1[4]~feeder_combout\ = reg_subir_0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_0(4),
	combout => \reg_subir_1[4]~feeder_combout\);

-- Location: FF_X7_Y1_N3
\reg_subir_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_subir_1[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_subir_1(4));

-- Location: LCCOMB_X7_Y1_N28
\botones_subir_filtrados[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_subir_filtrados[4]~reg0feeder_combout\ = reg_subir_1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_subir_1(4),
	combout => \botones_subir_filtrados[4]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N29
\botones_subir_filtrados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_subir_filtrados[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_subir_filtrados[4]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N8
\botones_bajar[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(0),
	o => \botones_bajar[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\reg_bajar_0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_0[0]~feeder_combout\ = \botones_bajar[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar[0]~input_o\,
	combout => \reg_bajar_0[0]~feeder_combout\);

-- Location: FF_X23_Y1_N1
\reg_bajar_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_0[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_0(0));

-- Location: LCCOMB_X23_Y1_N2
\reg_bajar_1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_1[0]~feeder_combout\ = reg_bajar_0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_0(0),
	combout => \reg_bajar_1[0]~feeder_combout\);

-- Location: FF_X23_Y1_N3
\reg_bajar_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_1[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_1(0));

-- Location: LCCOMB_X23_Y1_N28
\botones_bajar_filtrados[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_bajar_filtrados[0]~reg0feeder_combout\ = reg_bajar_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_1(0),
	combout => \botones_bajar_filtrados[0]~reg0feeder_combout\);

-- Location: FF_X23_Y1_N29
\botones_bajar_filtrados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_bajar_filtrados[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_bajar_filtrados[0]~reg0_q\);

-- Location: IOIBUF_X41_Y24_N15
\botones_bajar[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(1),
	o => \botones_bajar[1]~input_o\);

-- Location: LCCOMB_X40_Y24_N0
\reg_bajar_0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_0[1]~feeder_combout\ = \botones_bajar[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar[1]~input_o\,
	combout => \reg_bajar_0[1]~feeder_combout\);

-- Location: FF_X40_Y24_N1
\reg_bajar_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_0[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_0(1));

-- Location: LCCOMB_X40_Y24_N2
\reg_bajar_1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_1[1]~feeder_combout\ = reg_bajar_0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_0(1),
	combout => \reg_bajar_1[1]~feeder_combout\);

-- Location: FF_X40_Y24_N3
\reg_bajar_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_1[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_1(1));

-- Location: LCCOMB_X40_Y24_N16
\botones_bajar_filtrados[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_bajar_filtrados[1]~reg0feeder_combout\ = reg_bajar_1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_1(1),
	combout => \botones_bajar_filtrados[1]~reg0feeder_combout\);

-- Location: FF_X40_Y24_N17
\botones_bajar_filtrados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_bajar_filtrados[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_bajar_filtrados[1]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N22
\botones_bajar[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(2),
	o => \botones_bajar[2]~input_o\);

-- Location: LCCOMB_X28_Y1_N0
\reg_bajar_0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_0[2]~feeder_combout\ = \botones_bajar[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar[2]~input_o\,
	combout => \reg_bajar_0[2]~feeder_combout\);

-- Location: FF_X28_Y1_N1
\reg_bajar_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_0[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_0(2));

-- Location: LCCOMB_X28_Y1_N2
\reg_bajar_1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_1[2]~feeder_combout\ = reg_bajar_0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_0(2),
	combout => \reg_bajar_1[2]~feeder_combout\);

-- Location: FF_X28_Y1_N3
\reg_bajar_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_1[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_1(2));

-- Location: LCCOMB_X28_Y1_N28
\botones_bajar_filtrados[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_bajar_filtrados[2]~reg0feeder_combout\ = reg_bajar_1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_1(2),
	combout => \botones_bajar_filtrados[2]~reg0feeder_combout\);

-- Location: FF_X28_Y1_N29
\botones_bajar_filtrados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_bajar_filtrados[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_bajar_filtrados[2]~reg0_q\);

-- Location: IOIBUF_X21_Y29_N1
\botones_bajar[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(3),
	o => \botones_bajar[3]~input_o\);

-- Location: LCCOMB_X22_Y28_N0
\reg_bajar_0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_0[3]~feeder_combout\ = \botones_bajar[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar[3]~input_o\,
	combout => \reg_bajar_0[3]~feeder_combout\);

-- Location: FF_X22_Y28_N1
\reg_bajar_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_0[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_0(3));

-- Location: LCCOMB_X22_Y28_N2
\reg_bajar_1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_1[3]~feeder_combout\ = reg_bajar_0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_0(3),
	combout => \reg_bajar_1[3]~feeder_combout\);

-- Location: FF_X22_Y28_N3
\reg_bajar_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_1[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_1(3));

-- Location: LCCOMB_X22_Y28_N16
\botones_bajar_filtrados[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_bajar_filtrados[3]~reg0feeder_combout\ = reg_bajar_1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_1(3),
	combout => \botones_bajar_filtrados[3]~reg0feeder_combout\);

-- Location: FF_X22_Y28_N17
\botones_bajar_filtrados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_bajar_filtrados[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_bajar_filtrados[3]~reg0_q\);

-- Location: IOIBUF_X28_Y29_N1
\botones_bajar[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar(4),
	o => \botones_bajar[4]~input_o\);

-- Location: LCCOMB_X28_Y28_N0
\reg_bajar_0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_0[4]~feeder_combout\ = \botones_bajar[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar[4]~input_o\,
	combout => \reg_bajar_0[4]~feeder_combout\);

-- Location: FF_X28_Y28_N1
\reg_bajar_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_0[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_0(4));

-- Location: LCCOMB_X28_Y28_N2
\reg_bajar_1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_bajar_1[4]~feeder_combout\ = reg_bajar_0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_0(4),
	combout => \reg_bajar_1[4]~feeder_combout\);

-- Location: FF_X28_Y28_N3
\reg_bajar_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_bajar_1[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_bajar_1(4));

-- Location: LCCOMB_X28_Y28_N4
\botones_bajar_filtrados[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_bajar_filtrados[4]~reg0feeder_combout\ = reg_bajar_1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_bajar_1(4),
	combout => \botones_bajar_filtrados[4]~reg0feeder_combout\);

-- Location: FF_X28_Y28_N5
\botones_bajar_filtrados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_bajar_filtrados[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_bajar_filtrados[4]~reg0_q\);

-- Location: IOIBUF_X1_Y29_N29
\botones_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(0),
	o => \botones_cabina[0]~input_o\);

-- Location: LCCOMB_X2_Y28_N0
\reg_cabina_0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_0[0]~feeder_combout\ = \botones_cabina[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[0]~input_o\,
	combout => \reg_cabina_0[0]~feeder_combout\);

-- Location: FF_X2_Y28_N1
\reg_cabina_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_0[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_0(0));

-- Location: LCCOMB_X2_Y28_N2
\reg_cabina_1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_1[0]~feeder_combout\ = reg_cabina_0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_0(0),
	combout => \reg_cabina_1[0]~feeder_combout\);

-- Location: FF_X2_Y28_N3
\reg_cabina_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_1[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_1(0));

-- Location: LCCOMB_X2_Y28_N12
\botones_cabina_filtrados[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_cabina_filtrados[0]~reg0feeder_combout\ = reg_cabina_1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_1(0),
	combout => \botones_cabina_filtrados[0]~reg0feeder_combout\);

-- Location: FF_X2_Y28_N13
\botones_cabina_filtrados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_cabina_filtrados[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_cabina_filtrados[0]~reg0_q\);

-- Location: IOIBUF_X26_Y29_N8
\botones_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(1),
	o => \botones_cabina[1]~input_o\);

-- Location: LCCOMB_X26_Y28_N12
\reg_cabina_0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_0[1]~feeder_combout\ = \botones_cabina[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[1]~input_o\,
	combout => \reg_cabina_0[1]~feeder_combout\);

-- Location: FF_X26_Y28_N13
\reg_cabina_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_0[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_0(1));

-- Location: LCCOMB_X26_Y28_N2
\reg_cabina_1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_1[1]~feeder_combout\ = reg_cabina_0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_0(1),
	combout => \reg_cabina_1[1]~feeder_combout\);

-- Location: FF_X26_Y28_N3
\reg_cabina_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_1[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_1(1));

-- Location: LCCOMB_X26_Y28_N0
\botones_cabina_filtrados[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_cabina_filtrados[1]~reg0feeder_combout\ = reg_cabina_1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_1(1),
	combout => \botones_cabina_filtrados[1]~reg0feeder_combout\);

-- Location: FF_X26_Y28_N1
\botones_cabina_filtrados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_cabina_filtrados[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_cabina_filtrados[1]~reg0_q\);

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

-- Location: LCCOMB_X1_Y23_N0
\reg_cabina_0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_0[2]~feeder_combout\ = \botones_cabina[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[2]~input_o\,
	combout => \reg_cabina_0[2]~feeder_combout\);

-- Location: FF_X1_Y23_N1
\reg_cabina_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_0[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_0(2));

-- Location: LCCOMB_X1_Y23_N2
\reg_cabina_1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_1[2]~feeder_combout\ = reg_cabina_0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_0(2),
	combout => \reg_cabina_1[2]~feeder_combout\);

-- Location: FF_X1_Y23_N3
\reg_cabina_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_1[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_1(2));

-- Location: LCCOMB_X1_Y23_N16
\botones_cabina_filtrados[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_cabina_filtrados[2]~reg0feeder_combout\ = reg_cabina_1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_1(2),
	combout => \botones_cabina_filtrados[2]~reg0feeder_combout\);

-- Location: FF_X1_Y23_N17
\botones_cabina_filtrados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_cabina_filtrados[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_cabina_filtrados[2]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N29
\botones_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(3),
	o => \botones_cabina[3]~input_o\);

-- Location: LCCOMB_X1_Y1_N0
\reg_cabina_0[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_0[3]~feeder_combout\ = \botones_cabina[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[3]~input_o\,
	combout => \reg_cabina_0[3]~feeder_combout\);

-- Location: FF_X1_Y1_N1
\reg_cabina_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_0[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_0(3));

-- Location: LCCOMB_X1_Y1_N2
\reg_cabina_1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_1[3]~feeder_combout\ = reg_cabina_0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_0(3),
	combout => \reg_cabina_1[3]~feeder_combout\);

-- Location: FF_X1_Y1_N3
\reg_cabina_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_1[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_1(3));

-- Location: LCCOMB_X1_Y1_N28
\botones_cabina_filtrados[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_cabina_filtrados[3]~reg0feeder_combout\ = reg_cabina_1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_1(3),
	combout => \botones_cabina_filtrados[3]~reg0feeder_combout\);

-- Location: FF_X1_Y1_N29
\botones_cabina_filtrados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_cabina_filtrados[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_cabina_filtrados[3]~reg0_q\);

-- Location: IOIBUF_X41_Y27_N1
\botones_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(4),
	o => \botones_cabina[4]~input_o\);

-- Location: LCCOMB_X40_Y27_N0
\reg_cabina_0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_0[4]~feeder_combout\ = \botones_cabina[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[4]~input_o\,
	combout => \reg_cabina_0[4]~feeder_combout\);

-- Location: FF_X40_Y27_N1
\reg_cabina_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_0[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_0(4));

-- Location: LCCOMB_X40_Y27_N2
\reg_cabina_1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cabina_1[4]~feeder_combout\ = reg_cabina_0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_0(4),
	combout => \reg_cabina_1[4]~feeder_combout\);

-- Location: FF_X40_Y27_N3
\reg_cabina_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cabina_1[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_cabina_1(4));

-- Location: LCCOMB_X40_Y27_N16
\botones_cabina_filtrados[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \botones_cabina_filtrados[4]~reg0feeder_combout\ = reg_cabina_1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_cabina_1(4),
	combout => \botones_cabina_filtrados[4]~reg0feeder_combout\);

-- Location: FF_X40_Y27_N17
\botones_cabina_filtrados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \botones_cabina_filtrados[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botones_cabina_filtrados[4]~reg0_q\);

-- Location: IOIBUF_X1_Y29_N22
\boton_abrir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_abrir,
	o => \boton_abrir~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\reg_abrir_0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_abrir_0~feeder_combout\ = \boton_abrir~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton_abrir~input_o\,
	combout => \reg_abrir_0~feeder_combout\);

-- Location: FF_X1_Y28_N1
reg_abrir_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_abrir_0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_abrir_0~q\);

-- Location: LCCOMB_X1_Y28_N2
\reg_abrir_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_abrir_1~feeder_combout\ = \reg_abrir_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_abrir_0~q\,
	combout => \reg_abrir_1~feeder_combout\);

-- Location: FF_X1_Y28_N3
reg_abrir_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_abrir_1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_abrir_1~q\);

-- Location: LCCOMB_X1_Y28_N8
\boton_abrir_filtrado~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boton_abrir_filtrado~reg0feeder_combout\ = \reg_abrir_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_abrir_1~q\,
	combout => \boton_abrir_filtrado~reg0feeder_combout\);

-- Location: FF_X1_Y28_N9
\boton_abrir_filtrado~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boton_abrir_filtrado~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \boton_abrir_filtrado~reg0_q\);

-- Location: IOIBUF_X3_Y0_N29
\boton_cerrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_cerrar,
	o => \boton_cerrar~input_o\);

-- Location: LCCOMB_X3_Y1_N0
\reg_cerrar_0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cerrar_0~feeder_combout\ = \boton_cerrar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton_cerrar~input_o\,
	combout => \reg_cerrar_0~feeder_combout\);

-- Location: FF_X3_Y1_N1
reg_cerrar_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cerrar_0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_cerrar_0~q\);

-- Location: LCCOMB_X3_Y1_N2
\reg_cerrar_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_cerrar_1~feeder_combout\ = \reg_cerrar_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_cerrar_0~q\,
	combout => \reg_cerrar_1~feeder_combout\);

-- Location: FF_X3_Y1_N3
reg_cerrar_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_cerrar_1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_cerrar_1~q\);

-- Location: LCCOMB_X3_Y1_N28
\boton_cerrar_filtrado~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boton_cerrar_filtrado~reg0feeder_combout\ = \reg_cerrar_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_cerrar_1~q\,
	combout => \boton_cerrar_filtrado~reg0feeder_combout\);

-- Location: FF_X3_Y1_N29
\boton_cerrar_filtrado~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boton_cerrar_filtrado~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \boton_cerrar_filtrado~reg0_q\);

-- Location: IOIBUF_X0_Y4_N8
\boton_notificar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_notificar,
	o => \boton_notificar~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\reg_notificar_0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_notificar_0~feeder_combout\ = \boton_notificar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton_notificar~input_o\,
	combout => \reg_notificar_0~feeder_combout\);

-- Location: FF_X1_Y4_N1
reg_notificar_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_notificar_0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_notificar_0~q\);

-- Location: LCCOMB_X1_Y4_N2
\reg_notificar_1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_notificar_1~feeder_combout\ = \reg_notificar_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_notificar_0~q\,
	combout => \reg_notificar_1~feeder_combout\);

-- Location: FF_X1_Y4_N3
reg_notificar_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg_notificar_1~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_notificar_1~q\);

-- Location: LCCOMB_X1_Y4_N16
\boton_notificar_filtrado~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boton_notificar_filtrado~reg0feeder_combout\ = \reg_notificar_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg_notificar_1~q\,
	combout => \boton_notificar_filtrado~reg0feeder_combout\);

-- Location: FF_X1_Y4_N17
\boton_notificar_filtrado~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boton_notificar_filtrado~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \boton_notificar_filtrado~reg0_q\);

ww_botones_subir_filtrados(0) <= \botones_subir_filtrados[0]~output_o\;

ww_botones_subir_filtrados(1) <= \botones_subir_filtrados[1]~output_o\;

ww_botones_subir_filtrados(2) <= \botones_subir_filtrados[2]~output_o\;

ww_botones_subir_filtrados(3) <= \botones_subir_filtrados[3]~output_o\;

ww_botones_subir_filtrados(4) <= \botones_subir_filtrados[4]~output_o\;

ww_botones_bajar_filtrados(0) <= \botones_bajar_filtrados[0]~output_o\;

ww_botones_bajar_filtrados(1) <= \botones_bajar_filtrados[1]~output_o\;

ww_botones_bajar_filtrados(2) <= \botones_bajar_filtrados[2]~output_o\;

ww_botones_bajar_filtrados(3) <= \botones_bajar_filtrados[3]~output_o\;

ww_botones_bajar_filtrados(4) <= \botones_bajar_filtrados[4]~output_o\;

ww_botones_cabina_filtrados(0) <= \botones_cabina_filtrados[0]~output_o\;

ww_botones_cabina_filtrados(1) <= \botones_cabina_filtrados[1]~output_o\;

ww_botones_cabina_filtrados(2) <= \botones_cabina_filtrados[2]~output_o\;

ww_botones_cabina_filtrados(3) <= \botones_cabina_filtrados[3]~output_o\;

ww_botones_cabina_filtrados(4) <= \botones_cabina_filtrados[4]~output_o\;

ww_boton_abrir_filtrado <= \boton_abrir_filtrado~output_o\;

ww_boton_cerrar_filtrado <= \boton_cerrar_filtrado~output_o\;

ww_boton_notificar_filtrado <= \boton_notificar_filtrado~output_o\;
END structure;


