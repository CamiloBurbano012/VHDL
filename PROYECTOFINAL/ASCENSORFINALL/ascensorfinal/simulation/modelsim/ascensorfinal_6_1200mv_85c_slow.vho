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

-- DATE "06/11/2025 10:16:22"

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

ENTITY 	ascensorfinal IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	botones_subir_piso : IN std_logic_vector(4 DOWNTO 0);
	botones_bajar_piso : IN std_logic_vector(4 DOWNTO 0);
	botones_cabina : IN std_logic_vector(4 DOWNTO 0);
	boton_abrir : IN std_logic;
	boton_cerrar : IN std_logic;
	boton_emergencia : IN std_logic;
	switch_entrada_personas : IN std_logic;
	switch_salida_personas : IN std_logic;
	fallo_energia : IN std_logic;
	ir_sensors : IN std_logic_vector(4 DOWNTO 0);
	pwm_motor : OUT std_logic;
	in1_motor : OUT std_logic;
	in2_motor : OUT std_logic;
	puerta_abierta : OUT std_logic;
	luces_cabina : OUT std_logic;
	alarma_sonora : OUT std_logic;
	alarma_visual : OUT std_logic;
	luz_emergencia_out : OUT std_logic;
	display_piso0 : OUT std_logic_vector(6 DOWNTO 0);
	display_piso1 : OUT std_logic_vector(6 DOWNTO 0);
	display_piso2 : OUT std_logic_vector(6 DOWNTO 0);
	display_piso3 : OUT std_logic_vector(6 DOWNTO 0);
	display_piso4 : OUT std_logic_vector(6 DOWNTO 0);
	display_interno : OUT std_logic_vector(6 DOWNTO 0)
	);
END ascensorfinal;

-- Design Ports Information
-- ir_sensors[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_motor	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1_motor	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2_motor	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_abierta	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luces_cabina	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_sonora	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_visual	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_emergencia_out	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso0[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso3[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_piso4[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_interno[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fallo_energia	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sensors[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_entrada_personas	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_salida_personas	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_emergencia	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_cerrar	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton_abrir	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_piso[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_piso[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_piso[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_piso[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_piso[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_piso[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_piso[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_piso[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_subir_piso[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_bajar_piso[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botones_cabina[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ascensorfinal IS
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
SIGNAL ww_botones_subir_piso : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_bajar_piso : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_botones_cabina : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_boton_abrir : std_logic;
SIGNAL ww_boton_cerrar : std_logic;
SIGNAL ww_boton_emergencia : std_logic;
SIGNAL ww_switch_entrada_personas : std_logic;
SIGNAL ww_switch_salida_personas : std_logic;
SIGNAL ww_fallo_energia : std_logic;
SIGNAL ww_ir_sensors : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwm_motor : std_logic;
SIGNAL ww_in1_motor : std_logic;
SIGNAL ww_in2_motor : std_logic;
SIGNAL ww_puerta_abierta : std_logic;
SIGNAL ww_luces_cabina : std_logic;
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_alarma_visual : std_logic;
SIGNAL ww_luz_emergencia_out : std_logic;
SIGNAL ww_display_piso0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_piso1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_piso2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_piso3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_piso4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_interno : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_puerta|clk_1kHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ir_sensors[1]~input_o\ : std_logic;
SIGNAL \ir_sensors[2]~input_o\ : std_logic;
SIGNAL \ir_sensors[3]~input_o\ : std_logic;
SIGNAL \ir_sensors[4]~input_o\ : std_logic;
SIGNAL \pwm_motor~output_o\ : std_logic;
SIGNAL \in1_motor~output_o\ : std_logic;
SIGNAL \in2_motor~output_o\ : std_logic;
SIGNAL \puerta_abierta~output_o\ : std_logic;
SIGNAL \luces_cabina~output_o\ : std_logic;
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \alarma_visual~output_o\ : std_logic;
SIGNAL \luz_emergencia_out~output_o\ : std_logic;
SIGNAL \display_piso0[0]~output_o\ : std_logic;
SIGNAL \display_piso0[1]~output_o\ : std_logic;
SIGNAL \display_piso0[2]~output_o\ : std_logic;
SIGNAL \display_piso0[3]~output_o\ : std_logic;
SIGNAL \display_piso0[4]~output_o\ : std_logic;
SIGNAL \display_piso0[5]~output_o\ : std_logic;
SIGNAL \display_piso0[6]~output_o\ : std_logic;
SIGNAL \display_piso1[0]~output_o\ : std_logic;
SIGNAL \display_piso1[1]~output_o\ : std_logic;
SIGNAL \display_piso1[2]~output_o\ : std_logic;
SIGNAL \display_piso1[3]~output_o\ : std_logic;
SIGNAL \display_piso1[4]~output_o\ : std_logic;
SIGNAL \display_piso1[5]~output_o\ : std_logic;
SIGNAL \display_piso1[6]~output_o\ : std_logic;
SIGNAL \display_piso2[0]~output_o\ : std_logic;
SIGNAL \display_piso2[1]~output_o\ : std_logic;
SIGNAL \display_piso2[2]~output_o\ : std_logic;
SIGNAL \display_piso2[3]~output_o\ : std_logic;
SIGNAL \display_piso2[4]~output_o\ : std_logic;
SIGNAL \display_piso2[5]~output_o\ : std_logic;
SIGNAL \display_piso2[6]~output_o\ : std_logic;
SIGNAL \display_piso3[0]~output_o\ : std_logic;
SIGNAL \display_piso3[1]~output_o\ : std_logic;
SIGNAL \display_piso3[2]~output_o\ : std_logic;
SIGNAL \display_piso3[3]~output_o\ : std_logic;
SIGNAL \display_piso3[4]~output_o\ : std_logic;
SIGNAL \display_piso3[5]~output_o\ : std_logic;
SIGNAL \display_piso3[6]~output_o\ : std_logic;
SIGNAL \display_piso4[0]~output_o\ : std_logic;
SIGNAL \display_piso4[1]~output_o\ : std_logic;
SIGNAL \display_piso4[2]~output_o\ : std_logic;
SIGNAL \display_piso4[3]~output_o\ : std_logic;
SIGNAL \display_piso4[4]~output_o\ : std_logic;
SIGNAL \display_piso4[5]~output_o\ : std_logic;
SIGNAL \display_piso4[6]~output_o\ : std_logic;
SIGNAL \display_interno[0]~output_o\ : std_logic;
SIGNAL \display_interno[1]~output_o\ : std_logic;
SIGNAL \display_interno[2]~output_o\ : std_logic;
SIGNAL \display_interno[3]~output_o\ : std_logic;
SIGNAL \display_interno[4]~output_o\ : std_logic;
SIGNAL \display_interno[5]~output_o\ : std_logic;
SIGNAL \display_interno[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \piso_actual_int[0]~6_combout\ : std_logic;
SIGNAL \fallo_energia~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~4clkctrl_outclk\ : std_logic;
SIGNAL \boton_emergencia~input_o\ : std_logic;
SIGNAL \u_debounce_emergencia|button_sync_reg1~q\ : std_logic;
SIGNAL \u_debounce_emergencia|button_sync_reg2~feeder_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|button_sync_reg2~q\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[0]~16_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[2]~26_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[0]~17\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[1]~18_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[1]~19\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[2]~20_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[2]~21\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[3]~22_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[3]~23\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[4]~24_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[4]~25\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[5]~27_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[5]~28\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[6]~29_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[6]~30\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[7]~31_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[7]~32\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[8]~33_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[8]~34\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[9]~35_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[9]~36\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[10]~37_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[10]~38\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[11]~39_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[11]~40\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[12]~41_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[12]~42\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[13]~43_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[13]~44\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[14]~45_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[14]~46\ : std_logic;
SIGNAL \u_debounce_emergencia|counter[15]~47_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|LessThan0~2_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|LessThan0~0_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|LessThan0~1_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|LessThan0~3_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|button_state~0_combout\ : std_logic;
SIGNAL \u_debounce_emergencia|button_state~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.INICIO~0_combout\ : std_logic;
SIGNAL \switch_salida_personas~input_o\ : std_logic;
SIGNAL \salida_persona_pulso_reg~q\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \salida_persona_pulso_int~q\ : std_logic;
SIGNAL \switch_entrada_personas~input_o\ : std_logic;
SIGNAL \entrada_persona_pulso_reg~feeder_combout\ : std_logic;
SIGNAL \entrada_persona_pulso_reg~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \entrada_persona_pulso_int~q\ : std_logic;
SIGNAL \u_personas|Add1~0_combout\ : std_logic;
SIGNAL \u_personas|total~6_combout\ : std_logic;
SIGNAL \u_personas|Add0~0_combout\ : std_logic;
SIGNAL \u_personas|Add0~1_combout\ : std_logic;
SIGNAL \u_personas|total~7_combout\ : std_logic;
SIGNAL \u_personas|Add1~1_combout\ : std_logic;
SIGNAL \u_personas|LessThan1~0_combout\ : std_logic;
SIGNAL \u_personas|LessThan1~1_combout\ : std_logic;
SIGNAL \u_personas|total[1]~2_combout\ : std_logic;
SIGNAL \u_personas|total~3_combout\ : std_logic;
SIGNAL \u_personas|Add1~2_combout\ : std_logic;
SIGNAL \u_personas|total[1]~4_combout\ : std_logic;
SIGNAL \u_personas|total~5_combout\ : std_logic;
SIGNAL \u_personas|LessThan2~0_combout\ : std_logic;
SIGNAL \botones_subir_piso[2]~input_o\ : std_logic;
SIGNAL \u_botones|reg2_subir[2]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[2]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_cabina[2]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_piso[2]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_bajar[2]~feeder_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \botones_bajar_piso[1]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_bajar[1]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_bajar[1]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[1]~input_o\ : std_logic;
SIGNAL \botones_subir_piso[1]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_subir[1]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_subir[1]~feeder_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \botones_bajar_piso[0]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_bajar[0]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_bajar[0]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_piso[0]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_subir[0]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[0]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_cabina[0]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_cabina[0]~feeder_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \botones_cabina[3]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_cabina[3]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_cabina[3]~feeder_combout\ : std_logic;
SIGNAL \botones_subir_piso[3]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_subir[3]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_piso[3]~input_o\ : std_logic;
SIGNAL \u_botones|reg2_bajar[3]~feeder_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \botones_subir_piso[4]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_subir[4]~feeder_combout\ : std_logic;
SIGNAL \u_botones|reg2_subir[4]~feeder_combout\ : std_logic;
SIGNAL \botones_cabina[4]~input_o\ : std_logic;
SIGNAL \u_botones|reg1_cabina[4]~feeder_combout\ : std_logic;
SIGNAL \botones_bajar_piso[4]~input_o\ : std_logic;
SIGNAL \u_botones|reg2_bajar[4]~feeder_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \ram_data_in_vec[0]~1_combout\ : std_logic;
SIGNAL \ram_we_sig~q\ : std_logic;
SIGNAL \u_control|reg_piso_destino[2]~0_combout\ : std_logic;
SIGNAL \u_memoria|count[3]~11_combout\ : std_logic;
SIGNAL \u_memoria|count[0]~12_combout\ : std_logic;
SIGNAL \u_memoria|count[1]~4_cout\ : std_logic;
SIGNAL \u_memoria|count[1]~5_combout\ : std_logic;
SIGNAL \u_memoria|count[1]~6\ : std_logic;
SIGNAL \u_memoria|count[2]~8\ : std_logic;
SIGNAL \u_memoria|count[3]~9_combout\ : std_logic;
SIGNAL \u_memoria|Equal1~0_combout\ : std_logic;
SIGNAL \u_memoria|process_0~0_combout\ : std_logic;
SIGNAL \u_memoria|count[2]~7_combout\ : std_logic;
SIGNAL \u_memoria|Equal0~0_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\ : std_logic;
SIGNAL \ir_sensors[0]~input_o\ : std_logic;
SIGNAL \u_puerta|contador_div[0]~16_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[0]~17\ : std_logic;
SIGNAL \u_puerta|contador_div[1]~18_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[1]~19\ : std_logic;
SIGNAL \u_puerta|contador_div[2]~20_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[2]~21\ : std_logic;
SIGNAL \u_puerta|contador_div[3]~22_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[3]~23\ : std_logic;
SIGNAL \u_puerta|contador_div[4]~24_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[4]~25\ : std_logic;
SIGNAL \u_puerta|contador_div[5]~26_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[5]~27\ : std_logic;
SIGNAL \u_puerta|contador_div[6]~28_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[6]~29\ : std_logic;
SIGNAL \u_puerta|contador_div[7]~30_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[7]~31\ : std_logic;
SIGNAL \u_puerta|contador_div[8]~32_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[8]~33\ : std_logic;
SIGNAL \u_puerta|contador_div[9]~34_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[9]~35\ : std_logic;
SIGNAL \u_puerta|contador_div[10]~36_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[10]~37\ : std_logic;
SIGNAL \u_puerta|contador_div[11]~38_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[11]~39\ : std_logic;
SIGNAL \u_puerta|contador_div[12]~40_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[12]~41\ : std_logic;
SIGNAL \u_puerta|contador_div[13]~42_combout\ : std_logic;
SIGNAL \u_puerta|LessThan0~3_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[13]~43\ : std_logic;
SIGNAL \u_puerta|contador_div[14]~44_combout\ : std_logic;
SIGNAL \u_puerta|contador_div[14]~45\ : std_logic;
SIGNAL \u_puerta|contador_div[15]~46_combout\ : std_logic;
SIGNAL \u_puerta|LessThan0~0_combout\ : std_logic;
SIGNAL \u_puerta|LessThan0~1_combout\ : std_logic;
SIGNAL \u_puerta|LessThan0~2_combout\ : std_logic;
SIGNAL \u_puerta|LessThan0~4_combout\ : std_logic;
SIGNAL \u_puerta|clk_1kHz~0_combout\ : std_logic;
SIGNAL \u_puerta|clk_1kHz~feeder_combout\ : std_logic;
SIGNAL \u_puerta|clk_1kHz~q\ : std_logic;
SIGNAL \u_puerta|clk_1kHz~clkctrl_outclk\ : std_logic;
SIGNAL \u_puerta|estado_actual.ABIERTA~q\ : std_logic;
SIGNAL \u_puerta|process_2~2_combout\ : std_logic;
SIGNAL \u_puerta|Add3~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector29~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~1\ : std_logic;
SIGNAL \u_puerta|Add3~2_combout\ : std_logic;
SIGNAL \u_puerta|Selector28~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~3\ : std_logic;
SIGNAL \u_puerta|Add3~4_combout\ : std_logic;
SIGNAL \u_puerta|Selector27~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~5\ : std_logic;
SIGNAL \u_puerta|Add3~6_combout\ : std_logic;
SIGNAL \u_puerta|Selector26~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~7\ : std_logic;
SIGNAL \u_puerta|Add3~8_combout\ : std_logic;
SIGNAL \u_puerta|Selector25~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~9\ : std_logic;
SIGNAL \u_puerta|Add3~10_combout\ : std_logic;
SIGNAL \u_puerta|Selector24~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~11\ : std_logic;
SIGNAL \u_puerta|Add3~13_combout\ : std_logic;
SIGNAL \u_puerta|Selector23~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~14\ : std_logic;
SIGNAL \u_puerta|Add3~15_combout\ : std_logic;
SIGNAL \u_puerta|Selector22~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~16\ : std_logic;
SIGNAL \u_puerta|Add3~17_combout\ : std_logic;
SIGNAL \u_puerta|Selector21~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~18\ : std_logic;
SIGNAL \u_puerta|Add3~19_combout\ : std_logic;
SIGNAL \u_puerta|Selector20~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~20\ : std_logic;
SIGNAL \u_puerta|Add3~21_combout\ : std_logic;
SIGNAL \u_puerta|Selector19~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~22\ : std_logic;
SIGNAL \u_puerta|Add3~23_combout\ : std_logic;
SIGNAL \u_puerta|Selector18~1_combout\ : std_logic;
SIGNAL \u_puerta|Add3~24\ : std_logic;
SIGNAL \u_puerta|Add3~26\ : std_logic;
SIGNAL \u_puerta|Add3~27_combout\ : std_logic;
SIGNAL \u_puerta|Selector16~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~28\ : std_logic;
SIGNAL \u_puerta|Add3~30\ : std_logic;
SIGNAL \u_puerta|Add3~31_combout\ : std_logic;
SIGNAL \u_puerta|Selector14~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector14~1_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~4_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~0_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~1_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~2_combout\ : std_logic;
SIGNAL \u_puerta|Add3~12_combout\ : std_logic;
SIGNAL \u_puerta|Selector15~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~29_combout\ : std_logic;
SIGNAL \u_puerta|Selector15~1_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~5_combout\ : std_logic;
SIGNAL \u_puerta|Selector18~0_combout\ : std_logic;
SIGNAL \u_puerta|Add3~25_combout\ : std_logic;
SIGNAL \u_puerta|Selector17~0_combout\ : std_logic;
SIGNAL \u_puerta|LessThan5~3_combout\ : std_logic;
SIGNAL \u_puerta|process_2~4_combout\ : std_logic;
SIGNAL \u_puerta|process_2~3_combout\ : std_logic;
SIGNAL \u_puerta|Selector34~0_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.ESPERA_CERRAR~q\ : std_logic;
SIGNAL \u_puerta|Selector35~0_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.CERRANDO~q\ : std_logic;
SIGNAL \u_puerta|Selector32~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~4_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~1_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~2_combout\ : std_logic;
SIGNAL \u_puerta|Selector0~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~28_combout\ : std_logic;
SIGNAL \u_puerta|Selector4~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector13~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~1\ : std_logic;
SIGNAL \u_puerta|Add2~2_combout\ : std_logic;
SIGNAL \u_puerta|Selector12~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~3\ : std_logic;
SIGNAL \u_puerta|Add2~4_combout\ : std_logic;
SIGNAL \u_puerta|Selector11~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~5\ : std_logic;
SIGNAL \u_puerta|Add2~6_combout\ : std_logic;
SIGNAL \u_puerta|Selector10~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~7\ : std_logic;
SIGNAL \u_puerta|Add2~8_combout\ : std_logic;
SIGNAL \u_puerta|Selector9~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~9\ : std_logic;
SIGNAL \u_puerta|Add2~10_combout\ : std_logic;
SIGNAL \u_puerta|Selector8~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~11\ : std_logic;
SIGNAL \u_puerta|Add2~12_combout\ : std_logic;
SIGNAL \u_puerta|Selector7~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~13\ : std_logic;
SIGNAL \u_puerta|Add2~14_combout\ : std_logic;
SIGNAL \u_puerta|Selector6~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~15\ : std_logic;
SIGNAL \u_puerta|Add2~16_combout\ : std_logic;
SIGNAL \u_puerta|Selector5~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~17\ : std_logic;
SIGNAL \u_puerta|Add2~18_combout\ : std_logic;
SIGNAL \u_puerta|Selector4~1_combout\ : std_logic;
SIGNAL \u_puerta|Add2~19\ : std_logic;
SIGNAL \u_puerta|Add2~20_combout\ : std_logic;
SIGNAL \u_puerta|Selector3~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~21\ : std_logic;
SIGNAL \u_puerta|Add2~22_combout\ : std_logic;
SIGNAL \u_puerta|Selector2~1_combout\ : std_logic;
SIGNAL \u_puerta|Add2~23\ : std_logic;
SIGNAL \u_puerta|Add2~25\ : std_logic;
SIGNAL \u_puerta|Add2~26_combout\ : std_logic;
SIGNAL \u_puerta|Selector0~1_combout\ : std_logic;
SIGNAL \u_puerta|Selector2~0_combout\ : std_logic;
SIGNAL \u_puerta|Add2~24_combout\ : std_logic;
SIGNAL \u_puerta|Selector1~0_combout\ : std_logic;
SIGNAL \u_puerta|LessThan4~0_combout\ : std_logic;
SIGNAL \u_puerta|LessThan4~1_combout\ : std_logic;
SIGNAL \u_puerta|LessThan4~2_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~5_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~6_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.EMERGENCIA~q\ : std_logic;
SIGNAL \u_memoria|rd_ptr_reg[0]~1_combout\ : std_logic;
SIGNAL \u_memoria|rd_ptr_reg[1]~0_combout\ : std_logic;
SIGNAL \u_memoria|rd_ptr_reg[2]~2_combout\ : std_logic;
SIGNAL \u_memoria|rd_ptr_reg[2]~3_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \ram_data_in_vec[0]~0_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~22feeder_combout\ : std_logic;
SIGNAL \u_memoria|wr_ptr_reg[0]~2_combout\ : std_logic;
SIGNAL \u_memoria|wr_ptr_next~0_combout\ : std_logic;
SIGNAL \u_memoria|wr_ptr_reg[1]~0_combout\ : std_logic;
SIGNAL \u_memoria|wr_ptr_reg[2]~1_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~47_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~22_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~48_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~19_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~41_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~46_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~25_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~28feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~49_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~28_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~42_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~16feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~53_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~16_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~50_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~10_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~13feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~51_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~13_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~52_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~7_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~43_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~44_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~45_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~18feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~18_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~12feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~12_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~9_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~38_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~15_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~39_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~24feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~24_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~21_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~36_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~27_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~30feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~30_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~37_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~40_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~17feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~17_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~11_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~14feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~14_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~8_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~33_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~34_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~29feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~29_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~26_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~23feeder_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~23_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~20_q\ : std_logic;
SIGNAL \u_memoria|fifo_memory~31_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~32_combout\ : std_logic;
SIGNAL \u_memoria|fifo_memory~35_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \piso_actual_int[2]~4_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~28_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~0_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~20_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count[2]~27_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~1\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~2_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~19_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~3\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~4_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~18_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~5\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~6_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~17_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~7\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~8_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~16_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~9\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~10_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~15_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~11\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~12_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~14_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~13\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~14_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~13_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~15\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~16_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~22_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~17\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~18_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~21_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~19\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~20_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~12_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~21\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~22_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~23_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~23\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~24_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~25_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~25\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~26_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~24_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~27\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~28_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~26_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~29\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~30_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~9_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~31\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~32_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~11_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~33\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~34_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~10_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~35\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~36_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~7_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~37\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~38_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~6_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~39\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~40_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~5_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~41\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~42_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~4_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~0_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~2_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~43\ : std_logic;
SIGNAL \timer_movimiento_piso|Add0~44_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|count~8_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~1_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~6_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~3_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~4_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~5_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~7_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|LessThan0~8_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|timer_running~0_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|timer_running~q\ : std_logic;
SIGNAL \timer_movimiento_piso|done~0_combout\ : std_logic;
SIGNAL \timer_movimiento_piso|done~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.MOVIENDO~0_combout\ : std_logic;
SIGNAL \u_control|estado_actual.MOVIENDO~q\ : std_logic;
SIGNAL \u_control|Selector7~0_combout\ : std_logic;
SIGNAL \u_control|Selector6~0_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \u_control|Equal0~0_combout\ : std_logic;
SIGNAL \u_control|LessThan0~0_combout\ : std_logic;
SIGNAL \u_control|LessThan0~1_combout\ : std_logic;
SIGNAL \estado_ascensor_luces[0]~6_combout\ : std_logic;
SIGNAL \u_control|Equal0~1_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.LLEGADA_PISO~0_combout\ : std_logic;
SIGNAL \u_control|estado_actual.LLEGADA_PISO~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABRIENDO~0_combout\ : std_logic;
SIGNAL \boton_abrir~input_o\ : std_logic;
SIGNAL \u_debounce_abrir|button_sync_reg1~feeder_combout\ : std_logic;
SIGNAL \u_debounce_abrir|button_sync_reg1~q\ : std_logic;
SIGNAL \u_debounce_abrir|button_sync_reg2~feeder_combout\ : std_logic;
SIGNAL \u_debounce_abrir|button_sync_reg2~q\ : std_logic;
SIGNAL \u_debounce_abrir|counter[0]~16_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[0]~38_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[0]~17\ : std_logic;
SIGNAL \u_debounce_abrir|counter[1]~18_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[1]~19\ : std_logic;
SIGNAL \u_debounce_abrir|counter[2]~20_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[2]~21\ : std_logic;
SIGNAL \u_debounce_abrir|counter[3]~22_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[3]~23\ : std_logic;
SIGNAL \u_debounce_abrir|counter[4]~24_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[4]~25\ : std_logic;
SIGNAL \u_debounce_abrir|counter[5]~26_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[5]~27\ : std_logic;
SIGNAL \u_debounce_abrir|counter[6]~28_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[6]~29\ : std_logic;
SIGNAL \u_debounce_abrir|counter[7]~30_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[7]~31\ : std_logic;
SIGNAL \u_debounce_abrir|counter[8]~32_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[8]~33\ : std_logic;
SIGNAL \u_debounce_abrir|counter[9]~34_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[9]~35\ : std_logic;
SIGNAL \u_debounce_abrir|counter[10]~36_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[10]~37\ : std_logic;
SIGNAL \u_debounce_abrir|counter[11]~39_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[11]~40\ : std_logic;
SIGNAL \u_debounce_abrir|counter[12]~41_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[12]~42\ : std_logic;
SIGNAL \u_debounce_abrir|counter[13]~43_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[13]~44\ : std_logic;
SIGNAL \u_debounce_abrir|counter[14]~45_combout\ : std_logic;
SIGNAL \u_debounce_abrir|counter[14]~46\ : std_logic;
SIGNAL \u_debounce_abrir|counter[15]~47_combout\ : std_logic;
SIGNAL \u_debounce_abrir|LessThan0~0_combout\ : std_logic;
SIGNAL \u_debounce_abrir|LessThan0~1_combout\ : std_logic;
SIGNAL \u_debounce_abrir|LessThan0~2_combout\ : std_logic;
SIGNAL \u_debounce_abrir|LessThan0~3_combout\ : std_logic;
SIGNAL \u_debounce_abrir|button_state~0_combout\ : std_logic;
SIGNAL \u_debounce_abrir|button_state~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABRIENDO~3_combout\ : std_logic;
SIGNAL \u_control|estado_actual.PUERTA_ABRIENDO~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.SOBREPESO~2_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.SOBREPESO~3_combout\ : std_logic;
SIGNAL \u_control|estado_actual.SOBREPESO~q\ : std_logic;
SIGNAL \u_control|cmd_abrir_puerta~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector30~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector30~1_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.CERRADA~q\ : std_logic;
SIGNAL \u_puerta|Selector31~0_combout\ : std_logic;
SIGNAL \u_puerta|Selector36~3_combout\ : std_logic;
SIGNAL \u_puerta|Selector31~1_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.ESPERA_ABRIR~q\ : std_logic;
SIGNAL \u_puerta|Selector32~1_combout\ : std_logic;
SIGNAL \u_puerta|estado_actual.ABRIENDO~q\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[0]~26_combout\ : std_logic;
SIGNAL \u_puerta|WideOr1~combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[11]~74_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[11]~75_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[0]~27\ : std_logic;
SIGNAL \timer_cierre_puerta|count[1]~28_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[1]~29\ : std_logic;
SIGNAL \timer_cierre_puerta|count[2]~30_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[2]~31\ : std_logic;
SIGNAL \timer_cierre_puerta|count[3]~32_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[3]~33\ : std_logic;
SIGNAL \timer_cierre_puerta|count[4]~34_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[4]~35\ : std_logic;
SIGNAL \timer_cierre_puerta|count[5]~36_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[5]~37\ : std_logic;
SIGNAL \timer_cierre_puerta|count[6]~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[6]~39\ : std_logic;
SIGNAL \timer_cierre_puerta|count[7]~40_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[7]~41\ : std_logic;
SIGNAL \timer_cierre_puerta|count[8]~42_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[8]~43\ : std_logic;
SIGNAL \timer_cierre_puerta|count[9]~44_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[9]~45\ : std_logic;
SIGNAL \timer_cierre_puerta|count[10]~46_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[10]~47\ : std_logic;
SIGNAL \timer_cierre_puerta|count[11]~48_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[11]~49\ : std_logic;
SIGNAL \timer_cierre_puerta|count[12]~50_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[12]~51\ : std_logic;
SIGNAL \timer_cierre_puerta|count[13]~52_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[13]~53\ : std_logic;
SIGNAL \timer_cierre_puerta|count[14]~54_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[14]~55\ : std_logic;
SIGNAL \timer_cierre_puerta|count[15]~56_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[15]~57\ : std_logic;
SIGNAL \timer_cierre_puerta|count[16]~58_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[16]~59\ : std_logic;
SIGNAL \timer_cierre_puerta|count[17]~60_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[17]~61\ : std_logic;
SIGNAL \timer_cierre_puerta|count[18]~62_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[18]~63\ : std_logic;
SIGNAL \timer_cierre_puerta|count[19]~64_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[19]~65\ : std_logic;
SIGNAL \timer_cierre_puerta|count[20]~66_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[20]~67\ : std_logic;
SIGNAL \timer_cierre_puerta|count[21]~68_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[21]~69\ : std_logic;
SIGNAL \timer_cierre_puerta|count[22]~70_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[22]~71\ : std_logic;
SIGNAL \timer_cierre_puerta|count[23]~72_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[23]~73\ : std_logic;
SIGNAL \timer_cierre_puerta|count[24]~76_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|count[24]~77\ : std_logic;
SIGNAL \timer_cierre_puerta|count[25]~78_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~2_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~6_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~0_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~1_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~3_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~4_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~5_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~7_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~8_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|LessThan0~9_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|timer_running~0_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|timer_running~q\ : std_logic;
SIGNAL \timer_cierre_puerta|done~0_combout\ : std_logic;
SIGNAL \timer_cierre_puerta|done~q\ : std_logic;
SIGNAL \boton_cerrar~input_o\ : std_logic;
SIGNAL \u_debounce_cerrar|button_sync_reg1~feeder_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|button_sync_reg1~q\ : std_logic;
SIGNAL \u_debounce_cerrar|button_sync_reg2~feeder_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|button_sync_reg2~q\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[0]~16_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[13]~26_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[0]~17\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[1]~18_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[1]~19\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[2]~20_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[2]~21\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[3]~22_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[3]~23\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[4]~24_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[4]~25\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[5]~27_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[5]~28\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[6]~29_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[6]~30\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[7]~31_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[7]~32\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[8]~33_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[8]~34\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[9]~35_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|LessThan0~0_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|LessThan0~1_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[9]~36\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[10]~37_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[10]~38\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[11]~39_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[11]~40\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[12]~41_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[12]~42\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[13]~43_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[13]~44\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[14]~45_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|LessThan0~2_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[14]~46\ : std_logic;
SIGNAL \u_debounce_cerrar|counter[15]~47_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|LessThan0~3_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|button_state~0_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|button_state~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~3_combout\ : std_logic;
SIGNAL \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.PUERTA_CERRANDO~1_combout\ : std_logic;
SIGNAL \u_control|estado_actual.PUERTA_CERRANDO~q\ : std_logic;
SIGNAL \u_control|estado_actual.EMERGENCIA~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.INICIO~1_combout\ : std_logic;
SIGNAL \u_control|estado_actual.INICIO~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.ESPERANDO_LLAMADA~0_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.ESPERANDO_LLAMADA~1_combout\ : std_logic;
SIGNAL \u_control|estado_actual.ESPERANDO_LLAMADA~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.LEYENDO_DESTINO~0_combout\ : std_logic;
SIGNAL \u_control|estado_actual.LEYENDO_DESTINO~q\ : std_logic;
SIGNAL \u_control|siguiente_estado.CALCULANDO_DIRECCION~2_combout\ : std_logic;
SIGNAL \u_control|siguiente_estado.CALCULANDO_DIRECCION~3_combout\ : std_logic;
SIGNAL \u_control|estado_actual.CALCULANDO_DIRECCION~q\ : std_logic;
SIGNAL \u_control|motor_bajar_int~1_combout\ : std_logic;
SIGNAL \u_control|motor_bajar~0_combout\ : std_logic;
SIGNAL \piso_actual_int[2]~2_combout\ : std_logic;
SIGNAL \piso_actual_int[2]~5_combout\ : std_logic;
SIGNAL \piso_actual_int[2]~3_combout\ : std_logic;
SIGNAL \u_control|LessThan1~0_combout\ : std_logic;
SIGNAL \u_control|LessThan1~1_combout\ : std_logic;
SIGNAL \u_control|motor_bajar_int~0_combout\ : std_logic;
SIGNAL \u_motores|pwm_int~q\ : std_logic;
SIGNAL \u_motores|in1_int~q\ : std_logic;
SIGNAL \u_motores|in2_int~q\ : std_logic;
SIGNAL \u_alarmas|alarma_sonora~0_combout\ : std_logic;
SIGNAL \u_alarmas|alarma_sonora~q\ : std_logic;
SIGNAL \u_alarmas|alarma_visual~0_combout\ : std_logic;
SIGNAL \u_alarmas|alarma_visual~q\ : std_logic;
SIGNAL \estado_ascensor_luces[0]~10_combout\ : std_logic;
SIGNAL \estado_ascensor_luces[1]~7_combout\ : std_logic;
SIGNAL \u_luces|Selector0~0_combout\ : std_logic;
SIGNAL \estado_ascensor_luces[0]~9_combout\ : std_logic;
SIGNAL \estado_ascensor_luces[0]~8_combout\ : std_logic;
SIGNAL \u_luces|Selector0~1_combout\ : std_logic;
SIGNAL \u_luces|Selector0~2_combout\ : std_logic;
SIGNAL \u_luces|state_reg.ACTIVO~q\ : std_logic;
SIGNAL \u_luces|Selector2~0_combout\ : std_logic;
SIGNAL \u_luces|Selector2~1_combout\ : std_logic;
SIGNAL \u_luces|state_reg.EMERGENCIA~q\ : std_logic;
SIGNAL \u_display_interno|Mux5~0_combout\ : std_logic;
SIGNAL \u_display_interno|Mux1~0_combout\ : std_logic;
SIGNAL \u_display_interno|Mux2~0_combout\ : std_logic;
SIGNAL \u_display_interno|Mux1~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \u_debounce_cerrar|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_debounce_emergencia|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ram_data_in_vec : std_logic_vector(2 DOWNTO 0);
SIGNAL piso_actual_int : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_botones|reg2_subir\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_botones|reg2_cabina\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_botones|reg2_bajar\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_botones|reg1_subir\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_botones|reg1_cabina\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_botones|reg1_bajar\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_debounce_abrir|counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_memoria|wr_ptr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_memoria|rd_ptr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_memoria|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_control|reg_piso_destino\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_puerta|contador_div\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_puerta|contador_45s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer_movimiento_piso|count\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \timer_cierre_puerta|count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_personas|total\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_puerta|contador_10s\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_comb~4clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \u_puerta|ALT_INV_LessThan0~4_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_botones_subir_piso <= botones_subir_piso;
ww_botones_bajar_piso <= botones_bajar_piso;
ww_botones_cabina <= botones_cabina;
ww_boton_abrir <= boton_abrir;
ww_boton_cerrar <= boton_cerrar;
ww_boton_emergencia <= boton_emergencia;
ww_switch_entrada_personas <= switch_entrada_personas;
ww_switch_salida_personas <= switch_salida_personas;
ww_fallo_energia <= fallo_energia;
ww_ir_sensors <= ir_sensors;
pwm_motor <= ww_pwm_motor;
in1_motor <= ww_in1_motor;
in2_motor <= ww_in2_motor;
puerta_abierta <= ww_puerta_abierta;
luces_cabina <= ww_luces_cabina;
alarma_sonora <= ww_alarma_sonora;
alarma_visual <= ww_alarma_visual;
luz_emergencia_out <= ww_luz_emergencia_out;
display_piso0 <= ww_display_piso0;
display_piso1 <= ww_display_piso1;
display_piso2 <= ww_display_piso2;
display_piso3 <= ww_display_piso3;
display_piso4 <= ww_display_piso4;
display_interno <= ww_display_interno;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~4_combout\);

\u_puerta|clk_1kHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_puerta|clk_1kHz~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_comb~4clkctrl_outclk\ <= NOT \comb~4clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\u_puerta|ALT_INV_LessThan0~4_combout\ <= NOT \u_puerta|LessThan0~4_combout\;

-- Location: IOOBUF_X14_Y0_N16
\pwm_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_motores|pwm_int~q\,
	devoe => ww_devoe,
	o => \pwm_motor~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\in1_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_motores|in1_int~q\,
	devoe => ww_devoe,
	o => \in1_motor~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\in2_motor~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_motores|in2_int~q\,
	devoe => ww_devoe,
	o => \in2_motor~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\puerta_abierta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_puerta|WideOr1~combout\,
	devoe => ww_devoe,
	o => \puerta_abierta~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\luces_cabina~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \luces_cabina~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\alarma_sonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_alarmas|alarma_sonora~q\,
	devoe => ww_devoe,
	o => \alarma_sonora~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\alarma_visual~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_alarmas|alarma_visual~q\,
	devoe => ww_devoe,
	o => \alarma_visual~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\luz_emergencia_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_luces|state_reg.EMERGENCIA~q\,
	devoe => ww_devoe,
	o => \luz_emergencia_out~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\display_piso0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\display_piso0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\display_piso0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\display_piso0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\display_piso0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\display_piso0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso0[5]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\display_piso0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso0[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display_piso1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso1[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display_piso1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display_piso1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display_piso1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display_piso1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso1[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display_piso1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso1[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display_piso1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display_piso2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display_piso2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display_piso2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_piso2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display_piso2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display_piso2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display_piso2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso2[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\display_piso3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso3[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\display_piso3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso3[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\display_piso3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso3[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\display_piso3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso3[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\display_piso3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\display_piso3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso3[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\display_piso3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso3[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display_piso4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso4[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display_piso4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso4[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display_piso4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso4[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display_piso4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso4[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display_piso4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_piso4[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display_piso4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso4[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display_piso4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_piso4[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\display_interno[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_display_interno|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_interno[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\display_interno[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_interno[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\display_interno[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_display_interno|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display_interno[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\display_interno[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_display_interno|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display_interno[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\display_interno[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_display_interno|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display_interno[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\display_interno[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_display_interno|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \display_interno[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\display_interno[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \display_interno[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X17_Y10_N2
\piso_actual_int[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual_int[0]~6_combout\ = !piso_actual_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => piso_actual_int(0),
	combout => \piso_actual_int[0]~6_combout\);

-- Location: IOIBUF_X0_Y22_N15
\fallo_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fallo_energia,
	o => \fallo_energia~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X17_Y10_N24
\comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\fallo_energia~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fallo_energia~input_o\,
	datad => \reset~input_o\,
	combout => \comb~4_combout\);

-- Location: CLKCTRL_G18
\comb~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~4clkctrl_outclk\);

-- Location: IOIBUF_X23_Y0_N22
\boton_emergencia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_emergencia,
	o => \boton_emergencia~input_o\);

-- Location: FF_X20_Y10_N7
\u_debounce_emergencia|button_sync_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \boton_emergencia~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|button_sync_reg1~q\);

-- Location: LCCOMB_X22_Y9_N28
\u_debounce_emergencia|button_sync_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|button_sync_reg2~feeder_combout\ = \u_debounce_emergencia|button_sync_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_debounce_emergencia|button_sync_reg1~q\,
	combout => \u_debounce_emergencia|button_sync_reg2~feeder_combout\);

-- Location: FF_X22_Y9_N29
\u_debounce_emergencia|button_sync_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|button_sync_reg2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|button_sync_reg2~q\);

-- Location: LCCOMB_X20_Y9_N0
\u_debounce_emergencia|counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[0]~16_combout\ = \u_debounce_emergencia|counter\(0) $ (VCC)
-- \u_debounce_emergencia|counter[0]~17\ = CARRY(\u_debounce_emergencia|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(0),
	datad => VCC,
	combout => \u_debounce_emergencia|counter[0]~16_combout\,
	cout => \u_debounce_emergencia|counter[0]~17\);

-- Location: LCCOMB_X22_Y9_N4
\u_debounce_emergencia|counter[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[2]~26_combout\ = (\u_debounce_emergencia|button_sync_reg2~q\ $ (!\u_debounce_emergencia|button_state~q\)) # (!\u_debounce_emergencia|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|button_sync_reg2~q\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \u_debounce_emergencia|LessThan0~3_combout\,
	combout => \u_debounce_emergencia|counter[2]~26_combout\);

-- Location: FF_X20_Y9_N1
\u_debounce_emergencia|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[0]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(0));

-- Location: LCCOMB_X20_Y9_N2
\u_debounce_emergencia|counter[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[1]~18_combout\ = (\u_debounce_emergencia|counter\(1) & (!\u_debounce_emergencia|counter[0]~17\)) # (!\u_debounce_emergencia|counter\(1) & ((\u_debounce_emergencia|counter[0]~17\) # (GND)))
-- \u_debounce_emergencia|counter[1]~19\ = CARRY((!\u_debounce_emergencia|counter[0]~17\) # (!\u_debounce_emergencia|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(1),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[0]~17\,
	combout => \u_debounce_emergencia|counter[1]~18_combout\,
	cout => \u_debounce_emergencia|counter[1]~19\);

-- Location: FF_X20_Y9_N3
\u_debounce_emergencia|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[1]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(1));

-- Location: LCCOMB_X20_Y9_N4
\u_debounce_emergencia|counter[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[2]~20_combout\ = (\u_debounce_emergencia|counter\(2) & (\u_debounce_emergencia|counter[1]~19\ $ (GND))) # (!\u_debounce_emergencia|counter\(2) & (!\u_debounce_emergencia|counter[1]~19\ & VCC))
-- \u_debounce_emergencia|counter[2]~21\ = CARRY((\u_debounce_emergencia|counter\(2) & !\u_debounce_emergencia|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(2),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[1]~19\,
	combout => \u_debounce_emergencia|counter[2]~20_combout\,
	cout => \u_debounce_emergencia|counter[2]~21\);

-- Location: FF_X20_Y9_N5
\u_debounce_emergencia|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[2]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(2));

-- Location: LCCOMB_X20_Y9_N6
\u_debounce_emergencia|counter[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[3]~22_combout\ = (\u_debounce_emergencia|counter\(3) & (!\u_debounce_emergencia|counter[2]~21\)) # (!\u_debounce_emergencia|counter\(3) & ((\u_debounce_emergencia|counter[2]~21\) # (GND)))
-- \u_debounce_emergencia|counter[3]~23\ = CARRY((!\u_debounce_emergencia|counter[2]~21\) # (!\u_debounce_emergencia|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(3),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[2]~21\,
	combout => \u_debounce_emergencia|counter[3]~22_combout\,
	cout => \u_debounce_emergencia|counter[3]~23\);

-- Location: FF_X20_Y9_N7
\u_debounce_emergencia|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[3]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(3));

-- Location: LCCOMB_X20_Y9_N8
\u_debounce_emergencia|counter[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[4]~24_combout\ = (\u_debounce_emergencia|counter\(4) & (\u_debounce_emergencia|counter[3]~23\ $ (GND))) # (!\u_debounce_emergencia|counter\(4) & (!\u_debounce_emergencia|counter[3]~23\ & VCC))
-- \u_debounce_emergencia|counter[4]~25\ = CARRY((\u_debounce_emergencia|counter\(4) & !\u_debounce_emergencia|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(4),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[3]~23\,
	combout => \u_debounce_emergencia|counter[4]~24_combout\,
	cout => \u_debounce_emergencia|counter[4]~25\);

-- Location: FF_X20_Y9_N9
\u_debounce_emergencia|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[4]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(4));

-- Location: LCCOMB_X20_Y9_N10
\u_debounce_emergencia|counter[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[5]~27_combout\ = (\u_debounce_emergencia|counter\(5) & (!\u_debounce_emergencia|counter[4]~25\)) # (!\u_debounce_emergencia|counter\(5) & ((\u_debounce_emergencia|counter[4]~25\) # (GND)))
-- \u_debounce_emergencia|counter[5]~28\ = CARRY((!\u_debounce_emergencia|counter[4]~25\) # (!\u_debounce_emergencia|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(5),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[4]~25\,
	combout => \u_debounce_emergencia|counter[5]~27_combout\,
	cout => \u_debounce_emergencia|counter[5]~28\);

-- Location: FF_X20_Y9_N11
\u_debounce_emergencia|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[5]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(5));

-- Location: LCCOMB_X20_Y9_N12
\u_debounce_emergencia|counter[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[6]~29_combout\ = (\u_debounce_emergencia|counter\(6) & (\u_debounce_emergencia|counter[5]~28\ $ (GND))) # (!\u_debounce_emergencia|counter\(6) & (!\u_debounce_emergencia|counter[5]~28\ & VCC))
-- \u_debounce_emergencia|counter[6]~30\ = CARRY((\u_debounce_emergencia|counter\(6) & !\u_debounce_emergencia|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(6),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[5]~28\,
	combout => \u_debounce_emergencia|counter[6]~29_combout\,
	cout => \u_debounce_emergencia|counter[6]~30\);

-- Location: FF_X20_Y9_N13
\u_debounce_emergencia|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[6]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(6));

-- Location: LCCOMB_X20_Y9_N14
\u_debounce_emergencia|counter[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[7]~31_combout\ = (\u_debounce_emergencia|counter\(7) & (!\u_debounce_emergencia|counter[6]~30\)) # (!\u_debounce_emergencia|counter\(7) & ((\u_debounce_emergencia|counter[6]~30\) # (GND)))
-- \u_debounce_emergencia|counter[7]~32\ = CARRY((!\u_debounce_emergencia|counter[6]~30\) # (!\u_debounce_emergencia|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(7),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[6]~30\,
	combout => \u_debounce_emergencia|counter[7]~31_combout\,
	cout => \u_debounce_emergencia|counter[7]~32\);

-- Location: FF_X20_Y9_N15
\u_debounce_emergencia|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[7]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(7));

-- Location: LCCOMB_X20_Y9_N16
\u_debounce_emergencia|counter[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[8]~33_combout\ = (\u_debounce_emergencia|counter\(8) & (\u_debounce_emergencia|counter[7]~32\ $ (GND))) # (!\u_debounce_emergencia|counter\(8) & (!\u_debounce_emergencia|counter[7]~32\ & VCC))
-- \u_debounce_emergencia|counter[8]~34\ = CARRY((\u_debounce_emergencia|counter\(8) & !\u_debounce_emergencia|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(8),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[7]~32\,
	combout => \u_debounce_emergencia|counter[8]~33_combout\,
	cout => \u_debounce_emergencia|counter[8]~34\);

-- Location: FF_X20_Y9_N17
\u_debounce_emergencia|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[8]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(8));

-- Location: LCCOMB_X20_Y9_N18
\u_debounce_emergencia|counter[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[9]~35_combout\ = (\u_debounce_emergencia|counter\(9) & (!\u_debounce_emergencia|counter[8]~34\)) # (!\u_debounce_emergencia|counter\(9) & ((\u_debounce_emergencia|counter[8]~34\) # (GND)))
-- \u_debounce_emergencia|counter[9]~36\ = CARRY((!\u_debounce_emergencia|counter[8]~34\) # (!\u_debounce_emergencia|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(9),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[8]~34\,
	combout => \u_debounce_emergencia|counter[9]~35_combout\,
	cout => \u_debounce_emergencia|counter[9]~36\);

-- Location: FF_X20_Y9_N19
\u_debounce_emergencia|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[9]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(9));

-- Location: LCCOMB_X20_Y9_N20
\u_debounce_emergencia|counter[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[10]~37_combout\ = (\u_debounce_emergencia|counter\(10) & (\u_debounce_emergencia|counter[9]~36\ $ (GND))) # (!\u_debounce_emergencia|counter\(10) & (!\u_debounce_emergencia|counter[9]~36\ & VCC))
-- \u_debounce_emergencia|counter[10]~38\ = CARRY((\u_debounce_emergencia|counter\(10) & !\u_debounce_emergencia|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(10),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[9]~36\,
	combout => \u_debounce_emergencia|counter[10]~37_combout\,
	cout => \u_debounce_emergencia|counter[10]~38\);

-- Location: FF_X20_Y9_N21
\u_debounce_emergencia|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[10]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(10));

-- Location: LCCOMB_X20_Y9_N22
\u_debounce_emergencia|counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[11]~39_combout\ = (\u_debounce_emergencia|counter\(11) & (!\u_debounce_emergencia|counter[10]~38\)) # (!\u_debounce_emergencia|counter\(11) & ((\u_debounce_emergencia|counter[10]~38\) # (GND)))
-- \u_debounce_emergencia|counter[11]~40\ = CARRY((!\u_debounce_emergencia|counter[10]~38\) # (!\u_debounce_emergencia|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(11),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[10]~38\,
	combout => \u_debounce_emergencia|counter[11]~39_combout\,
	cout => \u_debounce_emergencia|counter[11]~40\);

-- Location: FF_X20_Y9_N23
\u_debounce_emergencia|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[11]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(11));

-- Location: LCCOMB_X20_Y9_N24
\u_debounce_emergencia|counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[12]~41_combout\ = (\u_debounce_emergencia|counter\(12) & (\u_debounce_emergencia|counter[11]~40\ $ (GND))) # (!\u_debounce_emergencia|counter\(12) & (!\u_debounce_emergencia|counter[11]~40\ & VCC))
-- \u_debounce_emergencia|counter[12]~42\ = CARRY((\u_debounce_emergencia|counter\(12) & !\u_debounce_emergencia|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(12),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[11]~40\,
	combout => \u_debounce_emergencia|counter[12]~41_combout\,
	cout => \u_debounce_emergencia|counter[12]~42\);

-- Location: FF_X20_Y9_N25
\u_debounce_emergencia|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[12]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(12));

-- Location: LCCOMB_X20_Y9_N26
\u_debounce_emergencia|counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[13]~43_combout\ = (\u_debounce_emergencia|counter\(13) & (!\u_debounce_emergencia|counter[12]~42\)) # (!\u_debounce_emergencia|counter\(13) & ((\u_debounce_emergencia|counter[12]~42\) # (GND)))
-- \u_debounce_emergencia|counter[13]~44\ = CARRY((!\u_debounce_emergencia|counter[12]~42\) # (!\u_debounce_emergencia|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(13),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[12]~42\,
	combout => \u_debounce_emergencia|counter[13]~43_combout\,
	cout => \u_debounce_emergencia|counter[13]~44\);

-- Location: FF_X20_Y9_N27
\u_debounce_emergencia|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[13]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(13));

-- Location: LCCOMB_X20_Y9_N28
\u_debounce_emergencia|counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[14]~45_combout\ = (\u_debounce_emergencia|counter\(14) & (\u_debounce_emergencia|counter[13]~44\ $ (GND))) # (!\u_debounce_emergencia|counter\(14) & (!\u_debounce_emergencia|counter[13]~44\ & VCC))
-- \u_debounce_emergencia|counter[14]~46\ = CARRY((\u_debounce_emergencia|counter\(14) & !\u_debounce_emergencia|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(14),
	datad => VCC,
	cin => \u_debounce_emergencia|counter[13]~44\,
	combout => \u_debounce_emergencia|counter[14]~45_combout\,
	cout => \u_debounce_emergencia|counter[14]~46\);

-- Location: FF_X20_Y9_N29
\u_debounce_emergencia|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[14]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(14));

-- Location: LCCOMB_X20_Y9_N30
\u_debounce_emergencia|counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|counter[15]~47_combout\ = \u_debounce_emergencia|counter\(15) $ (\u_debounce_emergencia|counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(15),
	cin => \u_debounce_emergencia|counter[14]~46\,
	combout => \u_debounce_emergencia|counter[15]~47_combout\);

-- Location: FF_X20_Y9_N31
\u_debounce_emergencia|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|counter[15]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_emergencia|counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|counter\(15));

-- Location: LCCOMB_X21_Y9_N24
\u_debounce_emergencia|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|LessThan0~2_combout\ = (!\u_debounce_emergencia|counter\(13) & (!\u_debounce_emergencia|counter\(11) & (!\u_debounce_emergencia|counter\(12) & !\u_debounce_emergencia|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(13),
	datab => \u_debounce_emergencia|counter\(11),
	datac => \u_debounce_emergencia|counter\(12),
	datad => \u_debounce_emergencia|counter\(10),
	combout => \u_debounce_emergencia|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y9_N18
\u_debounce_emergencia|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|LessThan0~0_combout\ = (!\u_debounce_emergencia|counter\(7) & (((!\u_debounce_emergencia|counter\(5) & !\u_debounce_emergencia|counter\(4))) # (!\u_debounce_emergencia|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(5),
	datab => \u_debounce_emergencia|counter\(6),
	datac => \u_debounce_emergencia|counter\(4),
	datad => \u_debounce_emergencia|counter\(7),
	combout => \u_debounce_emergencia|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y9_N12
\u_debounce_emergencia|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|LessThan0~1_combout\ = ((\u_debounce_emergencia|LessThan0~0_combout\) # (!\u_debounce_emergencia|counter\(8))) # (!\u_debounce_emergencia|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|counter\(9),
	datac => \u_debounce_emergencia|counter\(8),
	datad => \u_debounce_emergencia|LessThan0~0_combout\,
	combout => \u_debounce_emergencia|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y9_N2
\u_debounce_emergencia|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|LessThan0~3_combout\ = (((\u_debounce_emergencia|LessThan0~2_combout\ & \u_debounce_emergencia|LessThan0~1_combout\)) # (!\u_debounce_emergencia|counter\(14))) # (!\u_debounce_emergencia|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|counter\(15),
	datab => \u_debounce_emergencia|LessThan0~2_combout\,
	datac => \u_debounce_emergencia|counter\(14),
	datad => \u_debounce_emergencia|LessThan0~1_combout\,
	combout => \u_debounce_emergencia|LessThan0~3_combout\);

-- Location: LCCOMB_X15_Y11_N28
\u_debounce_emergencia|button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_emergencia|button_state~0_combout\ = (\u_debounce_emergencia|LessThan0~3_combout\ & ((\u_debounce_emergencia|button_state~q\))) # (!\u_debounce_emergencia|LessThan0~3_combout\ & (\u_debounce_emergencia|button_sync_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|button_sync_reg2~q\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \u_debounce_emergencia|LessThan0~3_combout\,
	combout => \u_debounce_emergencia|button_state~0_combout\);

-- Location: FF_X15_Y11_N29
\u_debounce_emergencia|button_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_emergencia|button_state~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_emergencia|button_state~q\);

-- Location: LCCOMB_X15_Y11_N14
\u_control|siguiente_estado.INICIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.INICIO~0_combout\ = (\fallo_energia~input_o\) # (\u_debounce_emergencia|button_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fallo_energia~input_o\,
	datad => \u_debounce_emergencia|button_state~q\,
	combout => \u_control|siguiente_estado.INICIO~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\switch_salida_personas~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_salida_personas,
	o => \switch_salida_personas~input_o\);

-- Location: FF_X14_Y10_N31
salida_persona_pulso_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \switch_salida_personas~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salida_persona_pulso_reg~q\);

-- Location: LCCOMB_X14_Y10_N6
\process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!\salida_persona_pulso_reg~q\ & \switch_salida_personas~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida_persona_pulso_reg~q\,
	datac => \switch_salida_personas~input_o\,
	combout => \process_2~1_combout\);

-- Location: FF_X14_Y10_N7
salida_persona_pulso_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salida_persona_pulso_int~q\);

-- Location: IOIBUF_X0_Y23_N1
\switch_entrada_personas~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_entrada_personas,
	o => \switch_entrada_personas~input_o\);

-- Location: LCCOMB_X20_Y6_N26
\entrada_persona_pulso_reg~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \entrada_persona_pulso_reg~feeder_combout\ = \switch_entrada_personas~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch_entrada_personas~input_o\,
	combout => \entrada_persona_pulso_reg~feeder_combout\);

-- Location: FF_X20_Y6_N27
entrada_persona_pulso_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \entrada_persona_pulso_reg~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entrada_persona_pulso_reg~q\);

-- Location: LCCOMB_X20_Y6_N0
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\switch_entrada_personas~input_o\ & !\entrada_persona_pulso_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_entrada_personas~input_o\,
	datac => \entrada_persona_pulso_reg~q\,
	combout => \process_2~0_combout\);

-- Location: FF_X20_Y6_N1
entrada_persona_pulso_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entrada_persona_pulso_int~q\);

-- Location: LCCOMB_X14_Y10_N28
\u_personas|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|Add1~0_combout\ = ((\u_personas|total\(0) & ((!\entrada_persona_pulso_int~q\) # (!\u_personas|total\(1)))) # (!\u_personas|total\(0) & ((\u_personas|total\(1)) # (\entrada_persona_pulso_int~q\)))) # (!\salida_persona_pulso_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida_persona_pulso_int~q\,
	datab => \u_personas|total\(0),
	datac => \u_personas|total\(1),
	datad => \entrada_persona_pulso_int~q\,
	combout => \u_personas|Add1~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\u_personas|total~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total~6_combout\ = (\u_personas|total[1]~2_combout\ & (\u_personas|Add1~0_combout\ $ (!\u_personas|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_personas|Add1~0_combout\,
	datac => \u_personas|Add0~0_combout\,
	datad => \u_personas|total[1]~2_combout\,
	combout => \u_personas|total~6_combout\);

-- Location: FF_X14_Y10_N1
\u_personas|total[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_personas|total~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_personas|total\(2));

-- Location: LCCOMB_X14_Y10_N10
\u_personas|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|Add0~0_combout\ = \u_personas|total\(2) $ (((\u_personas|total\(1) & (\u_personas|total\(0) & \entrada_persona_pulso_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|total\(1),
	datab => \u_personas|total\(2),
	datac => \u_personas|total\(0),
	datad => \entrada_persona_pulso_int~q\,
	combout => \u_personas|Add0~0_combout\);

-- Location: LCCOMB_X14_Y10_N2
\u_personas|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|Add0~1_combout\ = (\u_personas|total\(1) & (\u_personas|total\(2) & (\u_personas|total\(0) & \entrada_persona_pulso_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|total\(1),
	datab => \u_personas|total\(2),
	datac => \u_personas|total\(0),
	datad => \entrada_persona_pulso_int~q\,
	combout => \u_personas|Add0~1_combout\);

-- Location: LCCOMB_X14_Y10_N18
\u_personas|total~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total~7_combout\ = (\u_personas|Add0~1_combout\ & ((\u_personas|Add0~0_combout\) # ((\u_personas|total\(3)) # (\u_personas|Add1~0_combout\)))) # (!\u_personas|Add0~1_combout\ & (\u_personas|total\(3) & ((\u_personas|Add0~0_combout\) # 
-- (\u_personas|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|Add0~0_combout\,
	datab => \u_personas|Add0~1_combout\,
	datac => \u_personas|total\(3),
	datad => \u_personas|Add1~0_combout\,
	combout => \u_personas|total~7_combout\);

-- Location: FF_X14_Y10_N19
\u_personas|total[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_personas|total~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_personas|total\(3));

-- Location: LCCOMB_X14_Y10_N20
\u_personas|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|Add1~1_combout\ = (\u_personas|Add0~0_combout\) # (\u_personas|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_personas|Add0~0_combout\,
	datad => \u_personas|Add1~0_combout\,
	combout => \u_personas|Add1~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\u_personas|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|LessThan1~0_combout\ = (\salida_persona_pulso_int~q\ & ((\u_personas|total\(0) & (\u_personas|total\(1) & \entrada_persona_pulso_int~q\)) # (!\u_personas|total\(0) & (!\u_personas|total\(1) & !\entrada_persona_pulso_int~q\)))) # 
-- (!\salida_persona_pulso_int~q\ & (\u_personas|total\(1) & (\u_personas|total\(0) $ (\entrada_persona_pulso_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida_persona_pulso_int~q\,
	datab => \u_personas|total\(0),
	datac => \u_personas|total\(1),
	datad => \entrada_persona_pulso_int~q\,
	combout => \u_personas|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\u_personas|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|LessThan1~1_combout\ = (\u_personas|LessThan1~0_combout\) # (\u_personas|Add0~0_combout\ $ (!\u_personas|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan1~0_combout\,
	datac => \u_personas|Add0~0_combout\,
	datad => \u_personas|Add1~0_combout\,
	combout => \u_personas|LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y10_N4
\u_personas|total[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total[1]~2_combout\ = (\u_personas|total\(3) & ((\u_personas|Add1~1_combout\ & (!\u_personas|LessThan1~1_combout\ & !\u_personas|Add0~1_combout\)) # (!\u_personas|Add1~1_combout\ & ((!\u_personas|Add0~1_combout\) # 
-- (!\u_personas|LessThan1~1_combout\))))) # (!\u_personas|total\(3) & ((\u_personas|Add1~1_combout\ & ((!\u_personas|Add0~1_combout\) # (!\u_personas|LessThan1~1_combout\))) # (!\u_personas|Add1~1_combout\ & ((\u_personas|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|total\(3),
	datab => \u_personas|Add1~1_combout\,
	datac => \u_personas|LessThan1~1_combout\,
	datad => \u_personas|Add0~1_combout\,
	combout => \u_personas|total[1]~2_combout\);

-- Location: LCCOMB_X14_Y10_N8
\u_personas|total~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total~3_combout\ = (\u_personas|total[1]~2_combout\ & (\entrada_persona_pulso_int~q\ $ (\salida_persona_pulso_int~q\ $ (\u_personas|total\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_persona_pulso_int~q\,
	datab => \salida_persona_pulso_int~q\,
	datac => \u_personas|total\(0),
	datad => \u_personas|total[1]~2_combout\,
	combout => \u_personas|total~3_combout\);

-- Location: FF_X14_Y10_N9
\u_personas|total[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_personas|total~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_personas|total\(0));

-- Location: LCCOMB_X14_Y10_N24
\u_personas|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|Add1~2_combout\ = \u_personas|total\(1) $ (((\salida_persona_pulso_int~q\ & ((\u_personas|total\(0)) # (\entrada_persona_pulso_int~q\))) # (!\salida_persona_pulso_int~q\ & ((!\entrada_persona_pulso_int~q\) # (!\u_personas|total\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida_persona_pulso_int~q\,
	datab => \u_personas|total\(0),
	datac => \u_personas|total\(1),
	datad => \entrada_persona_pulso_int~q\,
	combout => \u_personas|Add1~2_combout\);

-- Location: LCCOMB_X14_Y10_N14
\u_personas|total[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total[1]~4_combout\ = (\u_personas|total\(3)) # ((\u_personas|Add1~0_combout\) # ((\u_personas|Add0~0_combout\) # (\u_personas|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|total\(3),
	datab => \u_personas|Add1~0_combout\,
	datac => \u_personas|Add0~0_combout\,
	datad => \u_personas|Add0~1_combout\,
	combout => \u_personas|total[1]~4_combout\);

-- Location: LCCOMB_X14_Y10_N26
\u_personas|total~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|total~5_combout\ = (\u_personas|total[1]~2_combout\ & (!\u_personas|Add1~2_combout\)) # (!\u_personas|total[1]~2_combout\ & ((\u_personas|total[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_personas|Add1~2_combout\,
	datac => \u_personas|total[1]~4_combout\,
	datad => \u_personas|total[1]~2_combout\,
	combout => \u_personas|total~5_combout\);

-- Location: FF_X14_Y10_N27
\u_personas|total[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_personas|total~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_personas|total\(1));

-- Location: LCCOMB_X14_Y10_N16
\u_personas|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_personas|LessThan2~0_combout\ = ((!\u_personas|total\(2) & ((!\u_personas|total\(0)) # (!\u_personas|total\(1))))) # (!\u_personas|total\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|total\(1),
	datab => \u_personas|total\(2),
	datac => \u_personas|total\(0),
	datad => \u_personas|total\(3),
	combout => \u_personas|LessThan2~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\botones_subir_piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir_piso(2),
	o => \botones_subir_piso[2]~input_o\);

-- Location: FF_X16_Y6_N17
\u_botones|reg1_subir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_subir_piso[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_subir\(2));

-- Location: LCCOMB_X16_Y6_N0
\u_botones|reg2_subir[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_subir[2]~feeder_combout\ = \u_botones|reg1_subir\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_subir\(2),
	combout => \u_botones|reg2_subir[2]~feeder_combout\);

-- Location: FF_X16_Y6_N1
\u_botones|reg2_subir[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_subir[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_subir\(2));

-- Location: IOIBUF_X35_Y0_N22
\botones_cabina[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(2),
	o => \botones_cabina[2]~input_o\);

-- Location: LCCOMB_X16_Y6_N4
\u_botones|reg1_cabina[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_cabina[2]~feeder_combout\ = \botones_cabina[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[2]~input_o\,
	combout => \u_botones|reg1_cabina[2]~feeder_combout\);

-- Location: FF_X16_Y6_N5
\u_botones|reg1_cabina[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_cabina[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_cabina\(2));

-- Location: FF_X16_Y6_N13
\u_botones|reg2_cabina[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_cabina\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_cabina\(2));

-- Location: IOIBUF_X23_Y0_N29
\botones_bajar_piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar_piso(2),
	o => \botones_bajar_piso[2]~input_o\);

-- Location: LCCOMB_X16_Y6_N26
\u_botones|reg1_bajar[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_bajar[2]~feeder_combout\ = \botones_bajar_piso[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar_piso[2]~input_o\,
	combout => \u_botones|reg1_bajar[2]~feeder_combout\);

-- Location: FF_X16_Y6_N27
\u_botones|reg1_bajar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_bajar[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_bajar\(2));

-- Location: FF_X16_Y6_N19
\u_botones|reg2_bajar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_bajar\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_bajar\(2));

-- Location: LCCOMB_X16_Y6_N12
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\u_botones|reg2_subir\(2)) # ((\u_botones|reg2_cabina\(2)) # (\u_botones|reg2_bajar\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_botones|reg2_subir\(2),
	datac => \u_botones|reg2_cabina\(2),
	datad => \u_botones|reg2_bajar\(2),
	combout => \process_0~1_combout\);

-- Location: IOIBUF_X19_Y0_N1
\botones_bajar_piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar_piso(1),
	o => \botones_bajar_piso[1]~input_o\);

-- Location: LCCOMB_X17_Y6_N10
\u_botones|reg1_bajar[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_bajar[1]~feeder_combout\ = \botones_bajar_piso[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar_piso[1]~input_o\,
	combout => \u_botones|reg1_bajar[1]~feeder_combout\);

-- Location: FF_X17_Y6_N11
\u_botones|reg1_bajar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_bajar[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_bajar\(1));

-- Location: LCCOMB_X17_Y6_N2
\u_botones|reg2_bajar[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_bajar[1]~feeder_combout\ = \u_botones|reg1_bajar\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_bajar\(1),
	combout => \u_botones|reg2_bajar[1]~feeder_combout\);

-- Location: FF_X17_Y6_N3
\u_botones|reg2_bajar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_bajar[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_bajar\(1));

-- Location: IOIBUF_X37_Y0_N15
\botones_cabina[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(1),
	o => \botones_cabina[1]~input_o\);

-- Location: FF_X17_Y6_N5
\u_botones|reg1_cabina[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_cabina[1]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_cabina\(1));

-- Location: FF_X17_Y6_N29
\u_botones|reg2_cabina[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_cabina\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_cabina\(1));

-- Location: IOIBUF_X21_Y0_N29
\botones_subir_piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir_piso(1),
	o => \botones_subir_piso[1]~input_o\);

-- Location: LCCOMB_X17_Y6_N12
\u_botones|reg1_subir[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_subir[1]~feeder_combout\ = \botones_subir_piso[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir_piso[1]~input_o\,
	combout => \u_botones|reg1_subir[1]~feeder_combout\);

-- Location: FF_X17_Y6_N13
\u_botones|reg1_subir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_subir[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_subir\(1));

-- Location: LCCOMB_X17_Y6_N0
\u_botones|reg2_subir[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_subir[1]~feeder_combout\ = \u_botones|reg1_subir\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_subir\(1),
	combout => \u_botones|reg2_subir[1]~feeder_combout\);

-- Location: FF_X17_Y6_N1
\u_botones|reg2_subir[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_subir[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_subir\(1));

-- Location: LCCOMB_X17_Y6_N28
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\u_botones|reg2_bajar\(1)) # ((\u_botones|reg2_cabina\(1)) # (\u_botones|reg2_subir\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_botones|reg2_bajar\(1),
	datac => \u_botones|reg2_cabina\(1),
	datad => \u_botones|reg2_subir\(1),
	combout => \process_0~3_combout\);

-- Location: IOIBUF_X16_Y0_N8
\botones_bajar_piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar_piso(0),
	o => \botones_bajar_piso[0]~input_o\);

-- Location: LCCOMB_X16_Y6_N10
\u_botones|reg1_bajar[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_bajar[0]~feeder_combout\ = \botones_bajar_piso[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_bajar_piso[0]~input_o\,
	combout => \u_botones|reg1_bajar[0]~feeder_combout\);

-- Location: FF_X16_Y6_N11
\u_botones|reg1_bajar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_bajar[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_bajar\(0));

-- Location: LCCOMB_X16_Y6_N28
\u_botones|reg2_bajar[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_bajar[0]~feeder_combout\ = \u_botones|reg1_bajar\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_bajar\(0),
	combout => \u_botones|reg2_bajar[0]~feeder_combout\);

-- Location: FF_X16_Y6_N29
\u_botones|reg2_bajar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_bajar[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_bajar\(0));

-- Location: IOIBUF_X16_Y0_N22
\botones_subir_piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir_piso(0),
	o => \botones_subir_piso[0]~input_o\);

-- Location: LCCOMB_X16_Y6_N8
\u_botones|reg1_subir[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_subir[0]~feeder_combout\ = \botones_subir_piso[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir_piso[0]~input_o\,
	combout => \u_botones|reg1_subir[0]~feeder_combout\);

-- Location: FF_X16_Y6_N9
\u_botones|reg1_subir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_subir[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_subir\(0));

-- Location: FF_X16_Y6_N23
\u_botones|reg2_subir[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_subir\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_subir\(0));

-- Location: IOIBUF_X37_Y0_N22
\botones_cabina[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(0),
	o => \botones_cabina[0]~input_o\);

-- Location: LCCOMB_X17_Y6_N6
\u_botones|reg1_cabina[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_cabina[0]~feeder_combout\ = \botones_cabina[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[0]~input_o\,
	combout => \u_botones|reg1_cabina[0]~feeder_combout\);

-- Location: FF_X17_Y6_N7
\u_botones|reg1_cabina[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_cabina[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_cabina\(0));

-- Location: LCCOMB_X16_Y6_N6
\u_botones|reg2_cabina[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_cabina[0]~feeder_combout\ = \u_botones|reg1_cabina\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_cabina\(0),
	combout => \u_botones|reg2_cabina[0]~feeder_combout\);

-- Location: FF_X16_Y6_N7
\u_botones|reg2_cabina[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_cabina[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_cabina\(0));

-- Location: LCCOMB_X16_Y6_N22
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\u_botones|reg2_bajar\(0) & (!\u_botones|reg2_subir\(0) & !\u_botones|reg2_cabina\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_botones|reg2_bajar\(0),
	datac => \u_botones|reg2_subir\(0),
	datad => \u_botones|reg2_cabina\(0),
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X35_Y0_N15
\botones_cabina[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(3),
	o => \botones_cabina[3]~input_o\);

-- Location: LCCOMB_X20_Y6_N10
\u_botones|reg1_cabina[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_cabina[3]~feeder_combout\ = \botones_cabina[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[3]~input_o\,
	combout => \u_botones|reg1_cabina[3]~feeder_combout\);

-- Location: FF_X20_Y6_N11
\u_botones|reg1_cabina[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_cabina[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_cabina\(3));

-- Location: LCCOMB_X20_Y6_N24
\u_botones|reg2_cabina[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_cabina[3]~feeder_combout\ = \u_botones|reg1_cabina\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_cabina\(3),
	combout => \u_botones|reg2_cabina[3]~feeder_combout\);

-- Location: FF_X20_Y6_N25
\u_botones|reg2_cabina[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_cabina[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_cabina\(3));

-- Location: IOIBUF_X28_Y0_N22
\botones_subir_piso[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir_piso(3),
	o => \botones_subir_piso[3]~input_o\);

-- Location: LCCOMB_X20_Y6_N22
\u_botones|reg1_subir[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_subir[3]~feeder_combout\ = \botones_subir_piso[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir_piso[3]~input_o\,
	combout => \u_botones|reg1_subir[3]~feeder_combout\);

-- Location: FF_X20_Y6_N23
\u_botones|reg1_subir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_subir[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_subir\(3));

-- Location: FF_X20_Y6_N21
\u_botones|reg2_subir[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_subir\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_subir\(3));

-- Location: IOIBUF_X26_Y0_N8
\botones_bajar_piso[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar_piso(3),
	o => \botones_bajar_piso[3]~input_o\);

-- Location: FF_X20_Y6_N17
\u_botones|reg1_bajar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_bajar_piso[3]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_bajar\(3));

-- Location: LCCOMB_X20_Y6_N6
\u_botones|reg2_bajar[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_bajar[3]~feeder_combout\ = \u_botones|reg1_bajar\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_bajar\(3),
	combout => \u_botones|reg2_bajar[3]~feeder_combout\);

-- Location: FF_X20_Y6_N7
\u_botones|reg2_bajar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_bajar[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_bajar\(3));

-- Location: LCCOMB_X20_Y6_N20
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\u_botones|reg2_cabina\(3) & (!\u_botones|reg2_subir\(3) & !\u_botones|reg2_bajar\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_botones|reg2_cabina\(3),
	datac => \u_botones|reg2_subir\(3),
	datad => \u_botones|reg2_bajar\(3),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X16_Y6_N14
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\process_0~1_combout\ & (!\process_0~3_combout\ & (\process_0~0_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~5_combout\);

-- Location: IOIBUF_X19_Y0_N22
\botones_subir_piso[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_subir_piso(4),
	o => \botones_subir_piso[4]~input_o\);

-- Location: LCCOMB_X20_Y6_N28
\u_botones|reg1_subir[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_subir[4]~feeder_combout\ = \botones_subir_piso[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_subir_piso[4]~input_o\,
	combout => \u_botones|reg1_subir[4]~feeder_combout\);

-- Location: FF_X20_Y6_N29
\u_botones|reg1_subir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_subir[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_subir\(4));

-- Location: LCCOMB_X20_Y6_N30
\u_botones|reg2_subir[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_subir[4]~feeder_combout\ = \u_botones|reg1_subir\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_subir\(4),
	combout => \u_botones|reg2_subir[4]~feeder_combout\);

-- Location: FF_X20_Y6_N31
\u_botones|reg2_subir[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_subir[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_subir\(4));

-- Location: IOIBUF_X32_Y0_N1
\botones_cabina[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_cabina(4),
	o => \botones_cabina[4]~input_o\);

-- Location: LCCOMB_X20_Y6_N4
\u_botones|reg1_cabina[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg1_cabina[4]~feeder_combout\ = \botones_cabina[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botones_cabina[4]~input_o\,
	combout => \u_botones|reg1_cabina[4]~feeder_combout\);

-- Location: FF_X20_Y6_N5
\u_botones|reg1_cabina[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg1_cabina[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_cabina\(4));

-- Location: FF_X20_Y6_N3
\u_botones|reg2_cabina[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_botones|reg1_cabina\(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_cabina\(4));

-- Location: IOIBUF_X28_Y0_N15
\botones_bajar_piso[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botones_bajar_piso(4),
	o => \botones_bajar_piso[4]~input_o\);

-- Location: FF_X20_Y6_N19
\u_botones|reg1_bajar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \botones_bajar_piso[4]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg1_bajar\(4));

-- Location: LCCOMB_X20_Y6_N12
\u_botones|reg2_bajar[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_botones|reg2_bajar[4]~feeder_combout\ = \u_botones|reg1_bajar\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_botones|reg1_bajar\(4),
	combout => \u_botones|reg2_bajar[4]~feeder_combout\);

-- Location: FF_X20_Y6_N13
\u_botones|reg2_bajar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_botones|reg2_bajar[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_botones|reg2_bajar\(4));

-- Location: LCCOMB_X20_Y6_N2
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\u_botones|reg2_subir\(4)) # ((\u_botones|reg2_cabina\(4)) # (\u_botones|reg2_bajar\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_botones|reg2_subir\(4),
	datac => \u_botones|reg2_cabina\(4),
	datad => \u_botones|reg2_bajar\(4),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X16_Y8_N4
\ram_data_in_vec[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_data_in_vec[0]~1_combout\ = (!\u_memoria|Equal1~0_combout\ & ((\process_0~6_combout\) # (!\process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|Equal1~0_combout\,
	datac => \process_0~5_combout\,
	datad => \process_0~6_combout\,
	combout => \ram_data_in_vec[0]~1_combout\);

-- Location: FF_X16_Y8_N5
ram_we_sig : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram_data_in_vec[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_we_sig~q\);

-- Location: LCCOMB_X16_Y10_N20
\u_control|reg_piso_destino[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|reg_piso_destino[2]~0_combout\ = (!\fallo_energia~input_o\ & (!\u_debounce_emergencia|button_state~q\ & \u_control|estado_actual.LEYENDO_DESTINO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => \u_debounce_emergencia|button_state~q\,
	datac => \u_control|estado_actual.LEYENDO_DESTINO~q\,
	combout => \u_control|reg_piso_destino[2]~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\u_memoria|count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[3]~11_combout\ = (\ram_we_sig~q\ & (!\u_memoria|Equal1~0_combout\ & ((!\u_control|reg_piso_destino[2]~0_combout\)))) # (!\ram_we_sig~q\ & (((\u_memoria|Equal0~0_combout\ & \u_control|reg_piso_destino[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|Equal1~0_combout\,
	datab => \ram_we_sig~q\,
	datac => \u_memoria|Equal0~0_combout\,
	datad => \u_control|reg_piso_destino[2]~0_combout\,
	combout => \u_memoria|count[3]~11_combout\);

-- Location: LCCOMB_X16_Y8_N8
\u_memoria|count[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[0]~12_combout\ = \u_memoria|count[3]~11_combout\ $ (\u_memoria|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|count[3]~11_combout\,
	datac => \u_memoria|count\(0),
	combout => \u_memoria|count[0]~12_combout\);

-- Location: FF_X16_Y8_N9
\u_memoria|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|count[0]~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|count\(0));

-- Location: LCCOMB_X16_Y8_N14
\u_memoria|count[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[1]~4_cout\ = CARRY(\u_memoria|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|count\(0),
	datad => VCC,
	cout => \u_memoria|count[1]~4_cout\);

-- Location: LCCOMB_X16_Y8_N16
\u_memoria|count[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[1]~5_combout\ = (\u_memoria|count\(1) & ((\u_memoria|process_0~0_combout\ & (!\u_memoria|count[1]~4_cout\)) # (!\u_memoria|process_0~0_combout\ & (\u_memoria|count[1]~4_cout\ & VCC)))) # (!\u_memoria|count\(1) & 
-- ((\u_memoria|process_0~0_combout\ & ((\u_memoria|count[1]~4_cout\) # (GND))) # (!\u_memoria|process_0~0_combout\ & (!\u_memoria|count[1]~4_cout\))))
-- \u_memoria|count[1]~6\ = CARRY((\u_memoria|count\(1) & (\u_memoria|process_0~0_combout\ & !\u_memoria|count[1]~4_cout\)) # (!\u_memoria|count\(1) & ((\u_memoria|process_0~0_combout\) # (!\u_memoria|count[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|count\(1),
	datab => \u_memoria|process_0~0_combout\,
	datad => VCC,
	cin => \u_memoria|count[1]~4_cout\,
	combout => \u_memoria|count[1]~5_combout\,
	cout => \u_memoria|count[1]~6\);

-- Location: FF_X16_Y8_N17
\u_memoria|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|count[1]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_memoria|count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|count\(1));

-- Location: LCCOMB_X16_Y8_N18
\u_memoria|count[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[2]~7_combout\ = ((\u_memoria|count\(2) $ (\u_memoria|process_0~0_combout\ $ (\u_memoria|count[1]~6\)))) # (GND)
-- \u_memoria|count[2]~8\ = CARRY((\u_memoria|count\(2) & ((!\u_memoria|count[1]~6\) # (!\u_memoria|process_0~0_combout\))) # (!\u_memoria|count\(2) & (!\u_memoria|process_0~0_combout\ & !\u_memoria|count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|count\(2),
	datab => \u_memoria|process_0~0_combout\,
	datad => VCC,
	cin => \u_memoria|count[1]~6\,
	combout => \u_memoria|count[2]~7_combout\,
	cout => \u_memoria|count[2]~8\);

-- Location: LCCOMB_X16_Y8_N20
\u_memoria|count[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|count[3]~9_combout\ = \u_memoria|count\(3) $ (\u_memoria|count[2]~8\ $ (!\u_memoria|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|count\(3),
	datad => \u_memoria|process_0~0_combout\,
	cin => \u_memoria|count[2]~8\,
	combout => \u_memoria|count[3]~9_combout\);

-- Location: FF_X16_Y8_N21
\u_memoria|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|count[3]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_memoria|count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|count\(3));

-- Location: LCCOMB_X16_Y8_N10
\u_memoria|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|Equal1~0_combout\ = (!\u_memoria|count\(1) & (\u_memoria|count\(3) & (!\u_memoria|count\(0) & !\u_memoria|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|count\(1),
	datab => \u_memoria|count\(3),
	datac => \u_memoria|count\(0),
	datad => \u_memoria|count\(2),
	combout => \u_memoria|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y8_N24
\u_memoria|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|process_0~0_combout\ = (!\u_memoria|Equal1~0_combout\ & (\ram_we_sig~q\ & ((\u_control|siguiente_estado.INICIO~0_combout\) # (!\u_control|estado_actual.LEYENDO_DESTINO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|Equal1~0_combout\,
	datab => \u_control|estado_actual.LEYENDO_DESTINO~q\,
	datac => \ram_we_sig~q\,
	datad => \u_control|siguiente_estado.INICIO~0_combout\,
	combout => \u_memoria|process_0~0_combout\);

-- Location: FF_X16_Y8_N19
\u_memoria|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|count[2]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_memoria|count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|count\(2));

-- Location: LCCOMB_X16_Y8_N2
\u_memoria|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|Equal0~0_combout\ = (\u_memoria|count\(2)) # ((\u_memoria|count\(3)) # ((\u_memoria|count\(0)) # (\u_memoria|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|count\(2),
	datab => \u_memoria|count\(3),
	datac => \u_memoria|count\(0),
	datad => \u_memoria|count\(1),
	combout => \u_memoria|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y11_N0
\u_control|siguiente_estado.PUERTA_ABRIENDO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\ = (\u_personas|LessThan2~0_combout\ & (\u_control|estado_actual.ESPERANDO_LLAMADA~q\ & !\u_memoria|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datac => \u_control|estado_actual.ESPERANDO_LLAMADA~q\,
	datad => \u_memoria|Equal0~0_combout\,
	combout => \u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\ir_sensors[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(0),
	o => \ir_sensors[0]~input_o\);

-- Location: LCCOMB_X23_Y26_N0
\u_puerta|contador_div[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[0]~16_combout\ = \u_puerta|contador_div\(0) $ (VCC)
-- \u_puerta|contador_div[0]~17\ = CARRY(\u_puerta|contador_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(0),
	datad => VCC,
	combout => \u_puerta|contador_div[0]~16_combout\,
	cout => \u_puerta|contador_div[0]~17\);

-- Location: FF_X23_Y26_N1
\u_puerta|contador_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[0]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(0));

-- Location: LCCOMB_X23_Y26_N2
\u_puerta|contador_div[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[1]~18_combout\ = (\u_puerta|contador_div\(1) & (!\u_puerta|contador_div[0]~17\)) # (!\u_puerta|contador_div\(1) & ((\u_puerta|contador_div[0]~17\) # (GND)))
-- \u_puerta|contador_div[1]~19\ = CARRY((!\u_puerta|contador_div[0]~17\) # (!\u_puerta|contador_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(1),
	datad => VCC,
	cin => \u_puerta|contador_div[0]~17\,
	combout => \u_puerta|contador_div[1]~18_combout\,
	cout => \u_puerta|contador_div[1]~19\);

-- Location: FF_X23_Y26_N3
\u_puerta|contador_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[1]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(1));

-- Location: LCCOMB_X23_Y26_N4
\u_puerta|contador_div[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[2]~20_combout\ = (\u_puerta|contador_div\(2) & (\u_puerta|contador_div[1]~19\ $ (GND))) # (!\u_puerta|contador_div\(2) & (!\u_puerta|contador_div[1]~19\ & VCC))
-- \u_puerta|contador_div[2]~21\ = CARRY((\u_puerta|contador_div\(2) & !\u_puerta|contador_div[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(2),
	datad => VCC,
	cin => \u_puerta|contador_div[1]~19\,
	combout => \u_puerta|contador_div[2]~20_combout\,
	cout => \u_puerta|contador_div[2]~21\);

-- Location: FF_X23_Y26_N5
\u_puerta|contador_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[2]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(2));

-- Location: LCCOMB_X23_Y26_N6
\u_puerta|contador_div[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[3]~22_combout\ = (\u_puerta|contador_div\(3) & (!\u_puerta|contador_div[2]~21\)) # (!\u_puerta|contador_div\(3) & ((\u_puerta|contador_div[2]~21\) # (GND)))
-- \u_puerta|contador_div[3]~23\ = CARRY((!\u_puerta|contador_div[2]~21\) # (!\u_puerta|contador_div\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(3),
	datad => VCC,
	cin => \u_puerta|contador_div[2]~21\,
	combout => \u_puerta|contador_div[3]~22_combout\,
	cout => \u_puerta|contador_div[3]~23\);

-- Location: FF_X23_Y26_N7
\u_puerta|contador_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[3]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(3));

-- Location: LCCOMB_X23_Y26_N8
\u_puerta|contador_div[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[4]~24_combout\ = (\u_puerta|contador_div\(4) & (\u_puerta|contador_div[3]~23\ $ (GND))) # (!\u_puerta|contador_div\(4) & (!\u_puerta|contador_div[3]~23\ & VCC))
-- \u_puerta|contador_div[4]~25\ = CARRY((\u_puerta|contador_div\(4) & !\u_puerta|contador_div[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(4),
	datad => VCC,
	cin => \u_puerta|contador_div[3]~23\,
	combout => \u_puerta|contador_div[4]~24_combout\,
	cout => \u_puerta|contador_div[4]~25\);

-- Location: FF_X23_Y26_N9
\u_puerta|contador_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[4]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(4));

-- Location: LCCOMB_X23_Y26_N10
\u_puerta|contador_div[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[5]~26_combout\ = (\u_puerta|contador_div\(5) & (!\u_puerta|contador_div[4]~25\)) # (!\u_puerta|contador_div\(5) & ((\u_puerta|contador_div[4]~25\) # (GND)))
-- \u_puerta|contador_div[5]~27\ = CARRY((!\u_puerta|contador_div[4]~25\) # (!\u_puerta|contador_div\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(5),
	datad => VCC,
	cin => \u_puerta|contador_div[4]~25\,
	combout => \u_puerta|contador_div[5]~26_combout\,
	cout => \u_puerta|contador_div[5]~27\);

-- Location: FF_X23_Y26_N11
\u_puerta|contador_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[5]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(5));

-- Location: LCCOMB_X23_Y26_N12
\u_puerta|contador_div[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[6]~28_combout\ = (\u_puerta|contador_div\(6) & (\u_puerta|contador_div[5]~27\ $ (GND))) # (!\u_puerta|contador_div\(6) & (!\u_puerta|contador_div[5]~27\ & VCC))
-- \u_puerta|contador_div[6]~29\ = CARRY((\u_puerta|contador_div\(6) & !\u_puerta|contador_div[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(6),
	datad => VCC,
	cin => \u_puerta|contador_div[5]~27\,
	combout => \u_puerta|contador_div[6]~28_combout\,
	cout => \u_puerta|contador_div[6]~29\);

-- Location: FF_X23_Y26_N13
\u_puerta|contador_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[6]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(6));

-- Location: LCCOMB_X23_Y26_N14
\u_puerta|contador_div[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[7]~30_combout\ = (\u_puerta|contador_div\(7) & (!\u_puerta|contador_div[6]~29\)) # (!\u_puerta|contador_div\(7) & ((\u_puerta|contador_div[6]~29\) # (GND)))
-- \u_puerta|contador_div[7]~31\ = CARRY((!\u_puerta|contador_div[6]~29\) # (!\u_puerta|contador_div\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(7),
	datad => VCC,
	cin => \u_puerta|contador_div[6]~29\,
	combout => \u_puerta|contador_div[7]~30_combout\,
	cout => \u_puerta|contador_div[7]~31\);

-- Location: FF_X22_Y26_N15
\u_puerta|contador_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_puerta|contador_div[7]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(7));

-- Location: LCCOMB_X23_Y26_N16
\u_puerta|contador_div[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[8]~32_combout\ = (\u_puerta|contador_div\(8) & (\u_puerta|contador_div[7]~31\ $ (GND))) # (!\u_puerta|contador_div\(8) & (!\u_puerta|contador_div[7]~31\ & VCC))
-- \u_puerta|contador_div[8]~33\ = CARRY((\u_puerta|contador_div\(8) & !\u_puerta|contador_div[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(8),
	datad => VCC,
	cin => \u_puerta|contador_div[7]~31\,
	combout => \u_puerta|contador_div[8]~32_combout\,
	cout => \u_puerta|contador_div[8]~33\);

-- Location: FF_X22_Y26_N7
\u_puerta|contador_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_puerta|contador_div[8]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(8));

-- Location: LCCOMB_X23_Y26_N18
\u_puerta|contador_div[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[9]~34_combout\ = (\u_puerta|contador_div\(9) & (!\u_puerta|contador_div[8]~33\)) # (!\u_puerta|contador_div\(9) & ((\u_puerta|contador_div[8]~33\) # (GND)))
-- \u_puerta|contador_div[9]~35\ = CARRY((!\u_puerta|contador_div[8]~33\) # (!\u_puerta|contador_div\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(9),
	datad => VCC,
	cin => \u_puerta|contador_div[8]~33\,
	combout => \u_puerta|contador_div[9]~34_combout\,
	cout => \u_puerta|contador_div[9]~35\);

-- Location: FF_X23_Y26_N19
\u_puerta|contador_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[9]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(9));

-- Location: LCCOMB_X23_Y26_N20
\u_puerta|contador_div[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[10]~36_combout\ = (\u_puerta|contador_div\(10) & (\u_puerta|contador_div[9]~35\ $ (GND))) # (!\u_puerta|contador_div\(10) & (!\u_puerta|contador_div[9]~35\ & VCC))
-- \u_puerta|contador_div[10]~37\ = CARRY((\u_puerta|contador_div\(10) & !\u_puerta|contador_div[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(10),
	datad => VCC,
	cin => \u_puerta|contador_div[9]~35\,
	combout => \u_puerta|contador_div[10]~36_combout\,
	cout => \u_puerta|contador_div[10]~37\);

-- Location: FF_X23_Y26_N21
\u_puerta|contador_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[10]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(10));

-- Location: LCCOMB_X23_Y26_N22
\u_puerta|contador_div[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[11]~38_combout\ = (\u_puerta|contador_div\(11) & (!\u_puerta|contador_div[10]~37\)) # (!\u_puerta|contador_div\(11) & ((\u_puerta|contador_div[10]~37\) # (GND)))
-- \u_puerta|contador_div[11]~39\ = CARRY((!\u_puerta|contador_div[10]~37\) # (!\u_puerta|contador_div\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(11),
	datad => VCC,
	cin => \u_puerta|contador_div[10]~37\,
	combout => \u_puerta|contador_div[11]~38_combout\,
	cout => \u_puerta|contador_div[11]~39\);

-- Location: FF_X23_Y26_N23
\u_puerta|contador_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[11]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(11));

-- Location: LCCOMB_X23_Y26_N24
\u_puerta|contador_div[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[12]~40_combout\ = (\u_puerta|contador_div\(12) & (\u_puerta|contador_div[11]~39\ $ (GND))) # (!\u_puerta|contador_div\(12) & (!\u_puerta|contador_div[11]~39\ & VCC))
-- \u_puerta|contador_div[12]~41\ = CARRY((\u_puerta|contador_div\(12) & !\u_puerta|contador_div[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(12),
	datad => VCC,
	cin => \u_puerta|contador_div[11]~39\,
	combout => \u_puerta|contador_div[12]~40_combout\,
	cout => \u_puerta|contador_div[12]~41\);

-- Location: FF_X23_Y26_N25
\u_puerta|contador_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[12]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(12));

-- Location: LCCOMB_X23_Y26_N26
\u_puerta|contador_div[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[13]~42_combout\ = (\u_puerta|contador_div\(13) & (!\u_puerta|contador_div[12]~41\)) # (!\u_puerta|contador_div\(13) & ((\u_puerta|contador_div[12]~41\) # (GND)))
-- \u_puerta|contador_div[13]~43\ = CARRY((!\u_puerta|contador_div[12]~41\) # (!\u_puerta|contador_div\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(13),
	datad => VCC,
	cin => \u_puerta|contador_div[12]~41\,
	combout => \u_puerta|contador_div[13]~42_combout\,
	cout => \u_puerta|contador_div[13]~43\);

-- Location: FF_X23_Y26_N27
\u_puerta|contador_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[13]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(13));

-- Location: LCCOMB_X22_Y26_N22
\u_puerta|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan0~3_combout\ = (!\u_puerta|contador_div\(10) & (!\u_puerta|contador_div\(13) & (!\u_puerta|contador_div\(12) & !\u_puerta|contador_div\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(10),
	datab => \u_puerta|contador_div\(13),
	datac => \u_puerta|contador_div\(12),
	datad => \u_puerta|contador_div\(11),
	combout => \u_puerta|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y26_N28
\u_puerta|contador_div[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[14]~44_combout\ = (\u_puerta|contador_div\(14) & (\u_puerta|contador_div[13]~43\ $ (GND))) # (!\u_puerta|contador_div\(14) & (!\u_puerta|contador_div[13]~43\ & VCC))
-- \u_puerta|contador_div[14]~45\ = CARRY((\u_puerta|contador_div\(14) & !\u_puerta|contador_div[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_div\(14),
	datad => VCC,
	cin => \u_puerta|contador_div[13]~43\,
	combout => \u_puerta|contador_div[14]~44_combout\,
	cout => \u_puerta|contador_div[14]~45\);

-- Location: FF_X23_Y26_N29
\u_puerta|contador_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[14]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(14));

-- Location: LCCOMB_X23_Y26_N30
\u_puerta|contador_div[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|contador_div[15]~46_combout\ = \u_puerta|contador_div[14]~45\ $ (\u_puerta|contador_div\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_puerta|contador_div\(15),
	cin => \u_puerta|contador_div[14]~45\,
	combout => \u_puerta|contador_div[15]~46_combout\);

-- Location: FF_X23_Y26_N31
\u_puerta|contador_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|contador_div[15]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_puerta|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_div\(15));

-- Location: LCCOMB_X22_Y26_N20
\u_puerta|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan0~0_combout\ = (((!\u_puerta|contador_div\(3)) # (!\u_puerta|contador_div\(1))) # (!\u_puerta|contador_div\(0))) # (!\u_puerta|contador_div\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(2),
	datab => \u_puerta|contador_div\(0),
	datac => \u_puerta|contador_div\(1),
	datad => \u_puerta|contador_div\(3),
	combout => \u_puerta|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y26_N10
\u_puerta|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan0~1_combout\ = ((!\u_puerta|contador_div\(5) & (!\u_puerta|contador_div\(4) & \u_puerta|LessThan0~0_combout\))) # (!\u_puerta|contador_div\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(5),
	datab => \u_puerta|contador_div\(4),
	datac => \u_puerta|contador_div\(6),
	datad => \u_puerta|LessThan0~0_combout\,
	combout => \u_puerta|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y26_N12
\u_puerta|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan0~2_combout\ = (((!\u_puerta|contador_div\(7) & \u_puerta|LessThan0~1_combout\)) # (!\u_puerta|contador_div\(9))) # (!\u_puerta|contador_div\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_div\(8),
	datab => \u_puerta|contador_div\(9),
	datac => \u_puerta|contador_div\(7),
	datad => \u_puerta|LessThan0~1_combout\,
	combout => \u_puerta|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y26_N16
\u_puerta|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan0~4_combout\ = (((\u_puerta|LessThan0~3_combout\ & \u_puerta|LessThan0~2_combout\)) # (!\u_puerta|contador_div\(15))) # (!\u_puerta|contador_div\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|LessThan0~3_combout\,
	datab => \u_puerta|contador_div\(14),
	datac => \u_puerta|contador_div\(15),
	datad => \u_puerta|LessThan0~2_combout\,
	combout => \u_puerta|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y26_N30
\u_puerta|clk_1kHz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|clk_1kHz~0_combout\ = \u_puerta|clk_1kHz~q\ $ (!\u_puerta|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|clk_1kHz~q\,
	datad => \u_puerta|LessThan0~4_combout\,
	combout => \u_puerta|clk_1kHz~0_combout\);

-- Location: LCCOMB_X22_Y26_N24
\u_puerta|clk_1kHz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|clk_1kHz~feeder_combout\ = \u_puerta|clk_1kHz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_puerta|clk_1kHz~0_combout\,
	combout => \u_puerta|clk_1kHz~feeder_combout\);

-- Location: FF_X22_Y26_N25
\u_puerta|clk_1kHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_puerta|clk_1kHz~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|clk_1kHz~q\);

-- Location: CLKCTRL_G14
\u_puerta|clk_1kHz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_puerta|clk_1kHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_puerta|clk_1kHz~clkctrl_outclk\);

-- Location: FF_X15_Y12_N13
\u_puerta|estado_actual.ABIERTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	asdata => \u_puerta|estado_actual.ABRIENDO~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.ABIERTA~q\);

-- Location: LCCOMB_X15_Y12_N16
\u_puerta|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|process_2~2_combout\ = (!\fallo_energia~input_o\ & \u_personas|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fallo_energia~input_o\,
	datac => \u_personas|LessThan2~0_combout\,
	combout => \u_puerta|process_2~2_combout\);

-- Location: LCCOMB_X15_Y13_N0
\u_puerta|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~0_combout\ = \u_puerta|contador_45s\(0) $ (VCC)
-- \u_puerta|Add3~1\ = CARRY(\u_puerta|contador_45s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(0),
	datad => VCC,
	combout => \u_puerta|Add3~0_combout\,
	cout => \u_puerta|Add3~1\);

-- Location: LCCOMB_X16_Y13_N6
\u_puerta|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector29~0_combout\ = (\u_puerta|Add3~0_combout\ & ((\u_puerta|Add3~12_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(0))))) # (!\u_puerta|Add3~0_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~0_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(0),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector29~0_combout\);

-- Location: FF_X16_Y13_N7
\u_puerta|contador_45s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector29~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(0));

-- Location: LCCOMB_X15_Y13_N2
\u_puerta|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~2_combout\ = (\u_puerta|contador_45s\(1) & (!\u_puerta|Add3~1\)) # (!\u_puerta|contador_45s\(1) & ((\u_puerta|Add3~1\) # (GND)))
-- \u_puerta|Add3~3\ = CARRY((!\u_puerta|Add3~1\) # (!\u_puerta|contador_45s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(1),
	datad => VCC,
	cin => \u_puerta|Add3~1\,
	combout => \u_puerta|Add3~2_combout\,
	cout => \u_puerta|Add3~3\);

-- Location: LCCOMB_X16_Y13_N4
\u_puerta|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector28~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(1)) # ((\u_puerta|Add3~2_combout\ & \u_puerta|Add3~12_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~2_combout\ & 
-- ((\u_puerta|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~2_combout\,
	datac => \u_puerta|contador_45s\(1),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector28~0_combout\);

-- Location: FF_X16_Y13_N5
\u_puerta|contador_45s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector28~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(1));

-- Location: LCCOMB_X15_Y13_N4
\u_puerta|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~4_combout\ = (\u_puerta|contador_45s\(2) & (\u_puerta|Add3~3\ $ (GND))) # (!\u_puerta|contador_45s\(2) & (!\u_puerta|Add3~3\ & VCC))
-- \u_puerta|Add3~5\ = CARRY((\u_puerta|contador_45s\(2) & !\u_puerta|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(2),
	datad => VCC,
	cin => \u_puerta|Add3~3\,
	combout => \u_puerta|Add3~4_combout\,
	cout => \u_puerta|Add3~5\);

-- Location: LCCOMB_X14_Y13_N24
\u_puerta|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector27~0_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~4_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(2))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(2),
	datad => \u_puerta|Add3~4_combout\,
	combout => \u_puerta|Selector27~0_combout\);

-- Location: FF_X14_Y13_N25
\u_puerta|contador_45s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector27~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(2));

-- Location: LCCOMB_X15_Y13_N6
\u_puerta|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~6_combout\ = (\u_puerta|contador_45s\(3) & (!\u_puerta|Add3~5\)) # (!\u_puerta|contador_45s\(3) & ((\u_puerta|Add3~5\) # (GND)))
-- \u_puerta|Add3~7\ = CARRY((!\u_puerta|Add3~5\) # (!\u_puerta|contador_45s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(3),
	datad => VCC,
	cin => \u_puerta|Add3~5\,
	combout => \u_puerta|Add3~6_combout\,
	cout => \u_puerta|Add3~7\);

-- Location: LCCOMB_X14_Y13_N16
\u_puerta|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector26~0_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~6_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(3))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(3),
	datad => \u_puerta|Add3~6_combout\,
	combout => \u_puerta|Selector26~0_combout\);

-- Location: FF_X14_Y13_N17
\u_puerta|contador_45s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector26~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(3));

-- Location: LCCOMB_X15_Y13_N8
\u_puerta|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~8_combout\ = (\u_puerta|contador_45s\(4) & (\u_puerta|Add3~7\ $ (GND))) # (!\u_puerta|contador_45s\(4) & (!\u_puerta|Add3~7\ & VCC))
-- \u_puerta|Add3~9\ = CARRY((\u_puerta|contador_45s\(4) & !\u_puerta|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(4),
	datad => VCC,
	cin => \u_puerta|Add3~7\,
	combout => \u_puerta|Add3~8_combout\,
	cout => \u_puerta|Add3~9\);

-- Location: LCCOMB_X14_Y13_N26
\u_puerta|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector25~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(4)) # ((\u_puerta|Add3~8_combout\ & \u_puerta|Add3~12_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~8_combout\ & 
-- ((\u_puerta|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~8_combout\,
	datac => \u_puerta|contador_45s\(4),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector25~0_combout\);

-- Location: FF_X14_Y13_N27
\u_puerta|contador_45s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector25~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(4));

-- Location: LCCOMB_X15_Y13_N10
\u_puerta|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~10_combout\ = (\u_puerta|contador_45s\(5) & (!\u_puerta|Add3~9\)) # (!\u_puerta|contador_45s\(5) & ((\u_puerta|Add3~9\) # (GND)))
-- \u_puerta|Add3~11\ = CARRY((!\u_puerta|Add3~9\) # (!\u_puerta|contador_45s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(5),
	datad => VCC,
	cin => \u_puerta|Add3~9\,
	combout => \u_puerta|Add3~10_combout\,
	cout => \u_puerta|Add3~11\);

-- Location: LCCOMB_X14_Y13_N12
\u_puerta|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector24~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(5)) # ((\u_puerta|Add3~10_combout\ & \u_puerta|Add3~12_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~10_combout\ & 
-- ((\u_puerta|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~10_combout\,
	datac => \u_puerta|contador_45s\(5),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector24~0_combout\);

-- Location: FF_X14_Y13_N13
\u_puerta|contador_45s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(5));

-- Location: LCCOMB_X15_Y13_N12
\u_puerta|Add3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~13_combout\ = (\u_puerta|contador_45s\(6) & (\u_puerta|Add3~11\ $ (GND))) # (!\u_puerta|contador_45s\(6) & (!\u_puerta|Add3~11\ & VCC))
-- \u_puerta|Add3~14\ = CARRY((\u_puerta|contador_45s\(6) & !\u_puerta|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(6),
	datad => VCC,
	cin => \u_puerta|Add3~11\,
	combout => \u_puerta|Add3~13_combout\,
	cout => \u_puerta|Add3~14\);

-- Location: LCCOMB_X14_Y13_N4
\u_puerta|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector23~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(6)) # ((\u_puerta|Add3~13_combout\ & \u_puerta|Add3~12_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~13_combout\ & 
-- ((\u_puerta|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~13_combout\,
	datac => \u_puerta|contador_45s\(6),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector23~0_combout\);

-- Location: FF_X14_Y13_N5
\u_puerta|contador_45s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(6));

-- Location: LCCOMB_X15_Y13_N14
\u_puerta|Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~15_combout\ = (\u_puerta|contador_45s\(7) & (!\u_puerta|Add3~14\)) # (!\u_puerta|contador_45s\(7) & ((\u_puerta|Add3~14\) # (GND)))
-- \u_puerta|Add3~16\ = CARRY((!\u_puerta|Add3~14\) # (!\u_puerta|contador_45s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(7),
	datad => VCC,
	cin => \u_puerta|Add3~14\,
	combout => \u_puerta|Add3~15_combout\,
	cout => \u_puerta|Add3~16\);

-- Location: LCCOMB_X14_Y13_N0
\u_puerta|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector22~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(7)) # ((\u_puerta|Add3~15_combout\ & \u_puerta|Add3~12_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~15_combout\ & 
-- ((\u_puerta|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~15_combout\,
	datac => \u_puerta|contador_45s\(7),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector22~0_combout\);

-- Location: FF_X14_Y13_N1
\u_puerta|contador_45s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(7));

-- Location: LCCOMB_X15_Y13_N16
\u_puerta|Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~17_combout\ = (\u_puerta|contador_45s\(8) & (\u_puerta|Add3~16\ $ (GND))) # (!\u_puerta|contador_45s\(8) & (!\u_puerta|Add3~16\ & VCC))
-- \u_puerta|Add3~18\ = CARRY((\u_puerta|contador_45s\(8) & !\u_puerta|Add3~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(8),
	datad => VCC,
	cin => \u_puerta|Add3~16\,
	combout => \u_puerta|Add3~17_combout\,
	cout => \u_puerta|Add3~18\);

-- Location: LCCOMB_X14_Y13_N2
\u_puerta|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector21~0_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~17_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(8))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(8),
	datad => \u_puerta|Add3~17_combout\,
	combout => \u_puerta|Selector21~0_combout\);

-- Location: FF_X14_Y13_N3
\u_puerta|contador_45s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(8));

-- Location: LCCOMB_X15_Y13_N18
\u_puerta|Add3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~19_combout\ = (\u_puerta|contador_45s\(9) & (!\u_puerta|Add3~18\)) # (!\u_puerta|contador_45s\(9) & ((\u_puerta|Add3~18\) # (GND)))
-- \u_puerta|Add3~20\ = CARRY((!\u_puerta|Add3~18\) # (!\u_puerta|contador_45s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(9),
	datad => VCC,
	cin => \u_puerta|Add3~18\,
	combout => \u_puerta|Add3~19_combout\,
	cout => \u_puerta|Add3~20\);

-- Location: LCCOMB_X14_Y13_N28
\u_puerta|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector20~0_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~19_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(9))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(9),
	datad => \u_puerta|Add3~19_combout\,
	combout => \u_puerta|Selector20~0_combout\);

-- Location: FF_X14_Y13_N29
\u_puerta|contador_45s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(9));

-- Location: LCCOMB_X15_Y13_N20
\u_puerta|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~21_combout\ = (\u_puerta|contador_45s\(10) & (\u_puerta|Add3~20\ $ (GND))) # (!\u_puerta|contador_45s\(10) & (!\u_puerta|Add3~20\ & VCC))
-- \u_puerta|Add3~22\ = CARRY((\u_puerta|contador_45s\(10) & !\u_puerta|Add3~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(10),
	datad => VCC,
	cin => \u_puerta|Add3~20\,
	combout => \u_puerta|Add3~21_combout\,
	cout => \u_puerta|Add3~22\);

-- Location: LCCOMB_X14_Y13_N6
\u_puerta|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector19~0_combout\ = (\u_puerta|Add3~21_combout\ & ((\u_puerta|Add3~12_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(10))))) # (!\u_puerta|Add3~21_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~21_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(10),
	datad => \u_puerta|Add3~12_combout\,
	combout => \u_puerta|Selector19~0_combout\);

-- Location: FF_X14_Y13_N7
\u_puerta|contador_45s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector19~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(10));

-- Location: LCCOMB_X15_Y13_N22
\u_puerta|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~23_combout\ = (\u_puerta|contador_45s\(11) & (!\u_puerta|Add3~22\)) # (!\u_puerta|contador_45s\(11) & ((\u_puerta|Add3~22\) # (GND)))
-- \u_puerta|Add3~24\ = CARRY((!\u_puerta|Add3~22\) # (!\u_puerta|contador_45s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(11),
	datad => VCC,
	cin => \u_puerta|Add3~22\,
	combout => \u_puerta|Add3~23_combout\,
	cout => \u_puerta|Add3~24\);

-- Location: LCCOMB_X14_Y13_N18
\u_puerta|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector18~1_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~23_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(11))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(11),
	datad => \u_puerta|Add3~23_combout\,
	combout => \u_puerta|Selector18~1_combout\);

-- Location: FF_X14_Y13_N19
\u_puerta|contador_45s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector18~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(11));

-- Location: LCCOMB_X15_Y13_N24
\u_puerta|Add3~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~25_combout\ = (\u_puerta|contador_45s\(12) & (\u_puerta|Add3~24\ $ (GND))) # (!\u_puerta|contador_45s\(12) & (!\u_puerta|Add3~24\ & VCC))
-- \u_puerta|Add3~26\ = CARRY((\u_puerta|contador_45s\(12) & !\u_puerta|Add3~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(12),
	datad => VCC,
	cin => \u_puerta|Add3~24\,
	combout => \u_puerta|Add3~25_combout\,
	cout => \u_puerta|Add3~26\);

-- Location: LCCOMB_X15_Y13_N26
\u_puerta|Add3~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~27_combout\ = (\u_puerta|contador_45s\(13) & (!\u_puerta|Add3~26\)) # (!\u_puerta|contador_45s\(13) & ((\u_puerta|Add3~26\) # (GND)))
-- \u_puerta|Add3~28\ = CARRY((!\u_puerta|Add3~26\) # (!\u_puerta|contador_45s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(13),
	datad => VCC,
	cin => \u_puerta|Add3~26\,
	combout => \u_puerta|Add3~27_combout\,
	cout => \u_puerta|Add3~28\);

-- Location: LCCOMB_X14_Y12_N8
\u_puerta|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector16~0_combout\ = (\u_puerta|Add3~12_combout\ & ((\u_puerta|Add3~27_combout\) # ((\u_puerta|Selector18~0_combout\ & \u_puerta|contador_45s\(13))))) # (!\u_puerta|Add3~12_combout\ & (\u_puerta|Selector18~0_combout\ & 
-- (\u_puerta|contador_45s\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector18~0_combout\,
	datac => \u_puerta|contador_45s\(13),
	datad => \u_puerta|Add3~27_combout\,
	combout => \u_puerta|Selector16~0_combout\);

-- Location: FF_X14_Y12_N9
\u_puerta|contador_45s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(13));

-- Location: LCCOMB_X15_Y13_N28
\u_puerta|Add3~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~29_combout\ = (\u_puerta|contador_45s\(14) & (\u_puerta|Add3~28\ $ (GND))) # (!\u_puerta|contador_45s\(14) & (!\u_puerta|Add3~28\ & VCC))
-- \u_puerta|Add3~30\ = CARRY((\u_puerta|contador_45s\(14) & !\u_puerta|Add3~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(14),
	datad => VCC,
	cin => \u_puerta|Add3~28\,
	combout => \u_puerta|Add3~29_combout\,
	cout => \u_puerta|Add3~30\);

-- Location: LCCOMB_X15_Y13_N30
\u_puerta|Add3~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~31_combout\ = \u_puerta|contador_45s\(15) $ (\u_puerta|Add3~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(15),
	cin => \u_puerta|Add3~30\,
	combout => \u_puerta|Add3~31_combout\);

-- Location: LCCOMB_X14_Y12_N12
\u_puerta|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector14~0_combout\ = (\u_puerta|contador_45s\(15) & \u_puerta|estado_actual.ESPERA_ABRIR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(15),
	datad => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	combout => \u_puerta|Selector14~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\u_puerta|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector14~1_combout\ = (\u_puerta|Selector14~0_combout\) # ((\u_puerta|estado_actual.ESPERA_CERRAR~q\ & ((\u_puerta|Add3~31_combout\) # (!\u_puerta|LessThan5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|LessThan5~5_combout\,
	datab => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datac => \u_puerta|Add3~31_combout\,
	datad => \u_puerta|Selector14~0_combout\,
	combout => \u_puerta|Selector14~1_combout\);

-- Location: FF_X14_Y12_N31
\u_puerta|contador_45s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector14~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(15));

-- Location: LCCOMB_X14_Y12_N0
\u_puerta|LessThan5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~4_combout\ = ((!\u_puerta|contador_45s\(13) & !\u_puerta|contador_45s\(14))) # (!\u_puerta|contador_45s\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(15),
	datac => \u_puerta|contador_45s\(13),
	datad => \u_puerta|contador_45s\(14),
	combout => \u_puerta|LessThan5~4_combout\);

-- Location: LCCOMB_X14_Y13_N8
\u_puerta|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~0_combout\ = ((!\u_puerta|contador_45s\(5) & (!\u_puerta|contador_45s\(4) & !\u_puerta|contador_45s\(3)))) # (!\u_puerta|contador_45s\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(5),
	datab => \u_puerta|contador_45s\(11),
	datac => \u_puerta|contador_45s\(4),
	datad => \u_puerta|contador_45s\(3),
	combout => \u_puerta|LessThan5~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\u_puerta|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~1_combout\ = (((!\u_puerta|contador_45s\(9)) # (!\u_puerta|contador_45s\(8))) # (!\u_puerta|contador_45s\(7))) # (!\u_puerta|contador_45s\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(10),
	datab => \u_puerta|contador_45s\(7),
	datac => \u_puerta|contador_45s\(8),
	datad => \u_puerta|contador_45s\(9),
	combout => \u_puerta|LessThan5~1_combout\);

-- Location: LCCOMB_X14_Y13_N14
\u_puerta|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~2_combout\ = ((\u_puerta|LessThan5~0_combout\) # (\u_puerta|LessThan5~1_combout\)) # (!\u_puerta|contador_45s\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(6),
	datac => \u_puerta|LessThan5~0_combout\,
	datad => \u_puerta|LessThan5~1_combout\,
	combout => \u_puerta|LessThan5~2_combout\);

-- Location: LCCOMB_X14_Y13_N30
\u_puerta|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add3~12_combout\ = (\u_puerta|estado_actual.ESPERA_CERRAR~q\ & ((\u_puerta|LessThan5~4_combout\) # ((\u_puerta|LessThan5~2_combout\ & \u_puerta|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datab => \u_puerta|LessThan5~4_combout\,
	datac => \u_puerta|LessThan5~2_combout\,
	datad => \u_puerta|LessThan5~3_combout\,
	combout => \u_puerta|Add3~12_combout\);

-- Location: LCCOMB_X15_Y12_N28
\u_puerta|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector15~0_combout\ = (\u_puerta|contador_45s\(14) & ((\u_puerta|estado_actual.ESPERA_ABRIR~q\) # ((\u_puerta|contador_45s\(15) & \u_puerta|estado_actual.ESPERA_CERRAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(15),
	datab => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datac => \u_puerta|contador_45s\(14),
	datad => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	combout => \u_puerta|Selector15~0_combout\);

-- Location: LCCOMB_X14_Y12_N6
\u_puerta|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector15~1_combout\ = (\u_puerta|Selector15~0_combout\) # ((\u_puerta|Add3~12_combout\ & \u_puerta|Add3~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add3~12_combout\,
	datab => \u_puerta|Selector15~0_combout\,
	datac => \u_puerta|Add3~29_combout\,
	combout => \u_puerta|Selector15~1_combout\);

-- Location: FF_X14_Y12_N7
\u_puerta|contador_45s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector15~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(14));

-- Location: LCCOMB_X14_Y13_N20
\u_puerta|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~5_combout\ = (\u_puerta|LessThan5~4_combout\) # ((!\u_puerta|contador_45s\(14) & (!\u_puerta|contador_45s\(12) & \u_puerta|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_45s\(14),
	datab => \u_puerta|contador_45s\(12),
	datac => \u_puerta|LessThan5~2_combout\,
	datad => \u_puerta|LessThan5~4_combout\,
	combout => \u_puerta|LessThan5~5_combout\);

-- Location: LCCOMB_X14_Y13_N22
\u_puerta|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector18~0_combout\ = (\u_puerta|estado_actual.ESPERA_ABRIR~q\) # ((\u_puerta|estado_actual.ESPERA_CERRAR~q\ & !\u_puerta|LessThan5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datac => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datad => \u_puerta|LessThan5~5_combout\,
	combout => \u_puerta|Selector18~0_combout\);

-- Location: LCCOMB_X16_Y13_N20
\u_puerta|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector17~0_combout\ = (\u_puerta|Selector18~0_combout\ & ((\u_puerta|contador_45s\(12)) # ((\u_puerta|Add3~12_combout\ & \u_puerta|Add3~25_combout\)))) # (!\u_puerta|Selector18~0_combout\ & (\u_puerta|Add3~12_combout\ & 
-- ((\u_puerta|Add3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector18~0_combout\,
	datab => \u_puerta|Add3~12_combout\,
	datac => \u_puerta|contador_45s\(12),
	datad => \u_puerta|Add3~25_combout\,
	combout => \u_puerta|Selector17~0_combout\);

-- Location: FF_X16_Y13_N21
\u_puerta|contador_45s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_45s\(12));

-- Location: LCCOMB_X16_Y13_N18
\u_puerta|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan5~3_combout\ = (!\u_puerta|contador_45s\(12) & !\u_puerta|contador_45s\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_45s\(12),
	datad => \u_puerta|contador_45s\(14),
	combout => \u_puerta|LessThan5~3_combout\);

-- Location: LCCOMB_X14_Y12_N10
\u_puerta|process_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|process_2~4_combout\ = (\fallo_energia~input_o\) # (((\u_control|estado_actual.PUERTA_CERRANDO~q\ & !\u_debounce_emergencia|button_state~q\)) # (!\u_personas|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => \u_control|estado_actual.PUERTA_CERRANDO~q\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \u_personas|LessThan2~0_combout\,
	combout => \u_puerta|process_2~4_combout\);

-- Location: LCCOMB_X15_Y12_N18
\u_puerta|process_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|process_2~3_combout\ = (\u_puerta|process_2~4_combout\) # ((!\u_puerta|LessThan5~4_combout\ & ((!\u_puerta|LessThan5~2_combout\) # (!\u_puerta|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|LessThan5~3_combout\,
	datab => \u_puerta|LessThan5~2_combout\,
	datac => \u_puerta|LessThan5~4_combout\,
	datad => \u_puerta|process_2~4_combout\,
	combout => \u_puerta|process_2~3_combout\);

-- Location: LCCOMB_X15_Y12_N0
\u_puerta|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector34~0_combout\ = (\u_puerta|estado_actual.ABIERTA~q\ & (\u_puerta|process_2~2_combout\ & ((!\u_puerta|process_2~3_combout\) # (!\u_puerta|estado_actual.ESPERA_CERRAR~q\)))) # (!\u_puerta|estado_actual.ABIERTA~q\ & 
-- (((\u_puerta|estado_actual.ESPERA_CERRAR~q\ & !\u_puerta|process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ABIERTA~q\,
	datab => \u_puerta|process_2~2_combout\,
	datac => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datad => \u_puerta|process_2~3_combout\,
	combout => \u_puerta|Selector34~0_combout\);

-- Location: FF_X15_Y12_N1
\u_puerta|estado_actual.ESPERA_CERRAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector34~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.ESPERA_CERRAR~q\);

-- Location: LCCOMB_X15_Y12_N26
\u_puerta|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector35~0_combout\ = (\u_puerta|estado_actual.ESPERA_CERRAR~q\ & ((\u_puerta|process_2~3_combout\) # ((!\u_puerta|process_2~2_combout\ & \u_puerta|estado_actual.ABIERTA~q\)))) # (!\u_puerta|estado_actual.ESPERA_CERRAR~q\ & 
-- (!\u_puerta|process_2~2_combout\ & (\u_puerta|estado_actual.ABIERTA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datab => \u_puerta|process_2~2_combout\,
	datac => \u_puerta|estado_actual.ABIERTA~q\,
	datad => \u_puerta|process_2~3_combout\,
	combout => \u_puerta|Selector35~0_combout\);

-- Location: FF_X15_Y12_N27
\u_puerta|estado_actual.CERRANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector35~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.CERRANDO~q\);

-- Location: LCCOMB_X15_Y12_N24
\u_puerta|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector32~0_combout\ = (!\u_puerta|estado_actual.CERRANDO~q\ & (!\u_puerta|estado_actual.ABIERTA~q\ & !\u_puerta|estado_actual.ABRIENDO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.CERRANDO~q\,
	datab => \u_puerta|estado_actual.ABIERTA~q\,
	datac => \u_puerta|estado_actual.ABRIENDO~q\,
	combout => \u_puerta|Selector32~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\u_puerta|Selector36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~4_combout\ = (\u_puerta|Selector32~0_combout\ & (\u_puerta|estado_actual.ESPERA_ABRIR~q\ & ((\fallo_energia~input_o\) # (!\u_personas|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => \u_puerta|Selector32~0_combout\,
	datac => \u_personas|LessThan2~0_combout\,
	datad => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	combout => \u_puerta|Selector36~4_combout\);

-- Location: LCCOMB_X14_Y12_N20
\u_puerta|Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~1_combout\ = (!\u_puerta|estado_actual.EMERGENCIA~q\ & (\u_puerta|estado_actual.ESPERA_CERRAR~q\ & ((\u_puerta|process_2~4_combout\) # (!\u_puerta|LessThan5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.EMERGENCIA~q\,
	datab => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datac => \u_puerta|LessThan5~5_combout\,
	datad => \u_puerta|process_2~4_combout\,
	combout => \u_puerta|Selector36~1_combout\);

-- Location: LCCOMB_X14_Y12_N26
\u_puerta|Selector36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~2_combout\ = ((\u_puerta|estado_actual.EMERGENCIA~q\ & (!\fallo_energia~input_o\ & \u_personas|LessThan2~0_combout\))) # (!\u_puerta|Selector32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.EMERGENCIA~q\,
	datab => \u_puerta|Selector32~0_combout\,
	datac => \fallo_energia~input_o\,
	datad => \u_personas|LessThan2~0_combout\,
	combout => \u_puerta|Selector36~2_combout\);

-- Location: LCCOMB_X15_Y12_N4
\u_puerta|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector0~0_combout\ = (\u_puerta|estado_actual.ESPERA_CERRAR~q\ & \u_puerta|contador_10s\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datad => \u_puerta|contador_10s\(13),
	combout => \u_puerta|Selector0~0_combout\);

-- Location: LCCOMB_X15_Y14_N20
\u_puerta|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~28_combout\ = (!\u_puerta|LessThan4~2_combout\ & \u_puerta|estado_actual.ESPERA_ABRIR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|LessThan4~2_combout\,
	datac => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	combout => \u_puerta|Add2~28_combout\);

-- Location: LCCOMB_X15_Y14_N10
\u_puerta|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector4~0_combout\ = (\u_puerta|estado_actual.ESPERA_CERRAR~q\) # ((\u_puerta|LessThan4~2_combout\ & \u_puerta|estado_actual.ESPERA_ABRIR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datab => \u_puerta|LessThan4~2_combout\,
	datac => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	combout => \u_puerta|Selector4~0_combout\);

-- Location: LCCOMB_X16_Y14_N0
\u_puerta|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~0_combout\ = \u_puerta|contador_10s\(0) $ (VCC)
-- \u_puerta|Add2~1\ = CARRY(\u_puerta|contador_10s\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(0),
	datad => VCC,
	combout => \u_puerta|Add2~0_combout\,
	cout => \u_puerta|Add2~1\);

-- Location: LCCOMB_X16_Y14_N30
\u_puerta|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector13~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(0)) # ((\u_puerta|Add2~0_combout\ & \u_puerta|Add2~28_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~0_combout\ & 
-- ((\u_puerta|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~0_combout\,
	datac => \u_puerta|contador_10s\(0),
	datad => \u_puerta|Add2~28_combout\,
	combout => \u_puerta|Selector13~0_combout\);

-- Location: FF_X16_Y14_N31
\u_puerta|contador_10s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(0));

-- Location: LCCOMB_X16_Y14_N2
\u_puerta|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~2_combout\ = (\u_puerta|contador_10s\(1) & (!\u_puerta|Add2~1\)) # (!\u_puerta|contador_10s\(1) & ((\u_puerta|Add2~1\) # (GND)))
-- \u_puerta|Add2~3\ = CARRY((!\u_puerta|Add2~1\) # (!\u_puerta|contador_10s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(1),
	datad => VCC,
	cin => \u_puerta|Add2~1\,
	combout => \u_puerta|Add2~2_combout\,
	cout => \u_puerta|Add2~3\);

-- Location: LCCOMB_X15_Y14_N26
\u_puerta|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector12~0_combout\ = (\u_puerta|Add2~2_combout\ & ((\u_puerta|Add2~28_combout\) # ((\u_puerta|contador_10s\(1) & \u_puerta|Selector4~0_combout\)))) # (!\u_puerta|Add2~2_combout\ & (((\u_puerta|contador_10s\(1) & 
-- \u_puerta|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add2~2_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(1),
	datad => \u_puerta|Selector4~0_combout\,
	combout => \u_puerta|Selector12~0_combout\);

-- Location: FF_X15_Y14_N27
\u_puerta|contador_10s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(1));

-- Location: LCCOMB_X16_Y14_N4
\u_puerta|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~4_combout\ = (\u_puerta|contador_10s\(2) & (\u_puerta|Add2~3\ $ (GND))) # (!\u_puerta|contador_10s\(2) & (!\u_puerta|Add2~3\ & VCC))
-- \u_puerta|Add2~5\ = CARRY((\u_puerta|contador_10s\(2) & !\u_puerta|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(2),
	datad => VCC,
	cin => \u_puerta|Add2~3\,
	combout => \u_puerta|Add2~4_combout\,
	cout => \u_puerta|Add2~5\);

-- Location: LCCOMB_X16_Y14_N28
\u_puerta|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector11~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(2)) # ((\u_puerta|Add2~4_combout\ & \u_puerta|Add2~28_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~4_combout\ & 
-- ((\u_puerta|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~4_combout\,
	datac => \u_puerta|contador_10s\(2),
	datad => \u_puerta|Add2~28_combout\,
	combout => \u_puerta|Selector11~0_combout\);

-- Location: FF_X16_Y14_N29
\u_puerta|contador_10s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(2));

-- Location: LCCOMB_X16_Y14_N6
\u_puerta|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~6_combout\ = (\u_puerta|contador_10s\(3) & (!\u_puerta|Add2~5\)) # (!\u_puerta|contador_10s\(3) & ((\u_puerta|Add2~5\) # (GND)))
-- \u_puerta|Add2~7\ = CARRY((!\u_puerta|Add2~5\) # (!\u_puerta|contador_10s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(3),
	datad => VCC,
	cin => \u_puerta|Add2~5\,
	combout => \u_puerta|Add2~6_combout\,
	cout => \u_puerta|Add2~7\);

-- Location: LCCOMB_X15_Y14_N24
\u_puerta|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector10~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(3)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~6_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(3),
	datad => \u_puerta|Add2~6_combout\,
	combout => \u_puerta|Selector10~0_combout\);

-- Location: FF_X15_Y14_N25
\u_puerta|contador_10s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(3));

-- Location: LCCOMB_X16_Y14_N8
\u_puerta|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~8_combout\ = (\u_puerta|contador_10s\(4) & (\u_puerta|Add2~7\ $ (GND))) # (!\u_puerta|contador_10s\(4) & (!\u_puerta|Add2~7\ & VCC))
-- \u_puerta|Add2~9\ = CARRY((\u_puerta|contador_10s\(4) & !\u_puerta|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(4),
	datad => VCC,
	cin => \u_puerta|Add2~7\,
	combout => \u_puerta|Add2~8_combout\,
	cout => \u_puerta|Add2~9\);

-- Location: LCCOMB_X15_Y14_N6
\u_puerta|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector9~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(4)) # ((\u_puerta|Add2~8_combout\ & \u_puerta|Add2~28_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~8_combout\ & 
-- ((\u_puerta|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~8_combout\,
	datac => \u_puerta|contador_10s\(4),
	datad => \u_puerta|Add2~28_combout\,
	combout => \u_puerta|Selector9~0_combout\);

-- Location: FF_X15_Y14_N7
\u_puerta|contador_10s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(4));

-- Location: LCCOMB_X16_Y14_N10
\u_puerta|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~10_combout\ = (\u_puerta|contador_10s\(5) & (!\u_puerta|Add2~9\)) # (!\u_puerta|contador_10s\(5) & ((\u_puerta|Add2~9\) # (GND)))
-- \u_puerta|Add2~11\ = CARRY((!\u_puerta|Add2~9\) # (!\u_puerta|contador_10s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(5),
	datad => VCC,
	cin => \u_puerta|Add2~9\,
	combout => \u_puerta|Add2~10_combout\,
	cout => \u_puerta|Add2~11\);

-- Location: LCCOMB_X15_Y14_N8
\u_puerta|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector8~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(5)) # ((\u_puerta|Add2~10_combout\ & \u_puerta|Add2~28_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~10_combout\ & 
-- ((\u_puerta|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~10_combout\,
	datac => \u_puerta|contador_10s\(5),
	datad => \u_puerta|Add2~28_combout\,
	combout => \u_puerta|Selector8~0_combout\);

-- Location: FF_X15_Y14_N9
\u_puerta|contador_10s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(5));

-- Location: LCCOMB_X16_Y14_N12
\u_puerta|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~12_combout\ = (\u_puerta|contador_10s\(6) & (\u_puerta|Add2~11\ $ (GND))) # (!\u_puerta|contador_10s\(6) & (!\u_puerta|Add2~11\ & VCC))
-- \u_puerta|Add2~13\ = CARRY((\u_puerta|contador_10s\(6) & !\u_puerta|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(6),
	datad => VCC,
	cin => \u_puerta|Add2~11\,
	combout => \u_puerta|Add2~12_combout\,
	cout => \u_puerta|Add2~13\);

-- Location: LCCOMB_X15_Y14_N18
\u_puerta|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector7~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(6)) # ((\u_puerta|Add2~12_combout\ & \u_puerta|Add2~28_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~12_combout\ & 
-- ((\u_puerta|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~12_combout\,
	datac => \u_puerta|contador_10s\(6),
	datad => \u_puerta|Add2~28_combout\,
	combout => \u_puerta|Selector7~0_combout\);

-- Location: FF_X15_Y14_N19
\u_puerta|contador_10s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(6));

-- Location: LCCOMB_X16_Y14_N14
\u_puerta|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~14_combout\ = (\u_puerta|contador_10s\(7) & (!\u_puerta|Add2~13\)) # (!\u_puerta|contador_10s\(7) & ((\u_puerta|Add2~13\) # (GND)))
-- \u_puerta|Add2~15\ = CARRY((!\u_puerta|Add2~13\) # (!\u_puerta|contador_10s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(7),
	datad => VCC,
	cin => \u_puerta|Add2~13\,
	combout => \u_puerta|Add2~14_combout\,
	cout => \u_puerta|Add2~15\);

-- Location: LCCOMB_X15_Y14_N12
\u_puerta|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector6~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(7)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~14_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(7),
	datad => \u_puerta|Add2~14_combout\,
	combout => \u_puerta|Selector6~0_combout\);

-- Location: FF_X15_Y14_N13
\u_puerta|contador_10s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(7));

-- Location: LCCOMB_X16_Y14_N16
\u_puerta|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~16_combout\ = (\u_puerta|contador_10s\(8) & (\u_puerta|Add2~15\ $ (GND))) # (!\u_puerta|contador_10s\(8) & (!\u_puerta|Add2~15\ & VCC))
-- \u_puerta|Add2~17\ = CARRY((\u_puerta|contador_10s\(8) & !\u_puerta|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(8),
	datad => VCC,
	cin => \u_puerta|Add2~15\,
	combout => \u_puerta|Add2~16_combout\,
	cout => \u_puerta|Add2~17\);

-- Location: LCCOMB_X15_Y14_N2
\u_puerta|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector5~0_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(8)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~16_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(8),
	datad => \u_puerta|Add2~16_combout\,
	combout => \u_puerta|Selector5~0_combout\);

-- Location: FF_X15_Y14_N3
\u_puerta|contador_10s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(8));

-- Location: LCCOMB_X16_Y14_N18
\u_puerta|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~18_combout\ = (\u_puerta|contador_10s\(9) & (!\u_puerta|Add2~17\)) # (!\u_puerta|contador_10s\(9) & ((\u_puerta|Add2~17\) # (GND)))
-- \u_puerta|Add2~19\ = CARRY((!\u_puerta|Add2~17\) # (!\u_puerta|contador_10s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(9),
	datad => VCC,
	cin => \u_puerta|Add2~17\,
	combout => \u_puerta|Add2~18_combout\,
	cout => \u_puerta|Add2~19\);

-- Location: LCCOMB_X15_Y14_N16
\u_puerta|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector4~1_combout\ = (\u_puerta|Selector4~0_combout\ & ((\u_puerta|contador_10s\(9)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~18_combout\)))) # (!\u_puerta|Selector4~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector4~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(9),
	datad => \u_puerta|Add2~18_combout\,
	combout => \u_puerta|Selector4~1_combout\);

-- Location: FF_X15_Y14_N17
\u_puerta|contador_10s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(9));

-- Location: LCCOMB_X16_Y14_N20
\u_puerta|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~20_combout\ = (\u_puerta|contador_10s\(10) & (\u_puerta|Add2~19\ $ (GND))) # (!\u_puerta|contador_10s\(10) & (!\u_puerta|Add2~19\ & VCC))
-- \u_puerta|Add2~21\ = CARRY((\u_puerta|contador_10s\(10) & !\u_puerta|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(10),
	datad => VCC,
	cin => \u_puerta|Add2~19\,
	combout => \u_puerta|Add2~20_combout\,
	cout => \u_puerta|Add2~21\);

-- Location: LCCOMB_X15_Y14_N22
\u_puerta|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector3~0_combout\ = (\u_puerta|Add2~20_combout\ & ((\u_puerta|Add2~28_combout\) # ((\u_puerta|contador_10s\(10) & \u_puerta|Selector4~0_combout\)))) # (!\u_puerta|Add2~20_combout\ & (((\u_puerta|contador_10s\(10) & 
-- \u_puerta|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Add2~20_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(10),
	datad => \u_puerta|Selector4~0_combout\,
	combout => \u_puerta|Selector3~0_combout\);

-- Location: FF_X15_Y14_N23
\u_puerta|contador_10s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(10));

-- Location: LCCOMB_X16_Y14_N22
\u_puerta|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~22_combout\ = (\u_puerta|contador_10s\(11) & (!\u_puerta|Add2~21\)) # (!\u_puerta|contador_10s\(11) & ((\u_puerta|Add2~21\) # (GND)))
-- \u_puerta|Add2~23\ = CARRY((!\u_puerta|Add2~21\) # (!\u_puerta|contador_10s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(11),
	datad => VCC,
	cin => \u_puerta|Add2~21\,
	combout => \u_puerta|Add2~22_combout\,
	cout => \u_puerta|Add2~23\);

-- Location: LCCOMB_X15_Y14_N0
\u_puerta|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector2~1_combout\ = (\u_puerta|Selector2~0_combout\ & ((\u_puerta|contador_10s\(11)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~22_combout\)))) # (!\u_puerta|Selector2~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector2~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(11),
	datad => \u_puerta|Add2~22_combout\,
	combout => \u_puerta|Selector2~1_combout\);

-- Location: FF_X15_Y14_N1
\u_puerta|contador_10s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(11));

-- Location: LCCOMB_X16_Y14_N24
\u_puerta|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~24_combout\ = (\u_puerta|contador_10s\(12) & (\u_puerta|Add2~23\ $ (GND))) # (!\u_puerta|contador_10s\(12) & (!\u_puerta|Add2~23\ & VCC))
-- \u_puerta|Add2~25\ = CARRY((\u_puerta|contador_10s\(12) & !\u_puerta|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|contador_10s\(12),
	datad => VCC,
	cin => \u_puerta|Add2~23\,
	combout => \u_puerta|Add2~24_combout\,
	cout => \u_puerta|Add2~25\);

-- Location: LCCOMB_X16_Y14_N26
\u_puerta|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Add2~26_combout\ = \u_puerta|Add2~25\ $ (\u_puerta|contador_10s\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_puerta|contador_10s\(13),
	cin => \u_puerta|Add2~25\,
	combout => \u_puerta|Add2~26_combout\);

-- Location: LCCOMB_X15_Y12_N20
\u_puerta|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector0~1_combout\ = (\u_puerta|Selector0~0_combout\) # ((\u_puerta|estado_actual.ESPERA_ABRIR~q\ & ((\u_puerta|LessThan4~2_combout\) # (\u_puerta|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datab => \u_puerta|LessThan4~2_combout\,
	datac => \u_puerta|Selector0~0_combout\,
	datad => \u_puerta|Add2~26_combout\,
	combout => \u_puerta|Selector0~1_combout\);

-- Location: FF_X15_Y12_N21
\u_puerta|contador_10s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(13));

-- Location: LCCOMB_X14_Y14_N12
\u_puerta|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector2~0_combout\ = (\u_puerta|estado_actual.ESPERA_CERRAR~q\) # ((\u_puerta|estado_actual.ESPERA_ABRIR~q\ & \u_puerta|contador_10s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datac => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datad => \u_puerta|contador_10s\(13),
	combout => \u_puerta|Selector2~0_combout\);

-- Location: LCCOMB_X15_Y14_N30
\u_puerta|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector1~0_combout\ = (\u_puerta|Selector2~0_combout\ & ((\u_puerta|contador_10s\(12)) # ((\u_puerta|Add2~28_combout\ & \u_puerta|Add2~24_combout\)))) # (!\u_puerta|Selector2~0_combout\ & (\u_puerta|Add2~28_combout\ & 
-- ((\u_puerta|Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector2~0_combout\,
	datab => \u_puerta|Add2~28_combout\,
	datac => \u_puerta|contador_10s\(12),
	datad => \u_puerta|Add2~24_combout\,
	combout => \u_puerta|Selector1~0_combout\);

-- Location: FF_X15_Y14_N31
\u_puerta|contador_10s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|contador_10s\(12));

-- Location: LCCOMB_X15_Y14_N4
\u_puerta|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan4~0_combout\ = (\u_puerta|contador_10s\(7)) # ((\u_puerta|contador_10s\(6)) # ((\u_puerta|contador_10s\(5)) # (\u_puerta|contador_10s\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(7),
	datab => \u_puerta|contador_10s\(6),
	datac => \u_puerta|contador_10s\(5),
	datad => \u_puerta|contador_10s\(4),
	combout => \u_puerta|LessThan4~0_combout\);

-- Location: LCCOMB_X15_Y14_N28
\u_puerta|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan4~1_combout\ = (\u_puerta|contador_10s\(10) & (\u_puerta|contador_10s\(8) & (\u_puerta|LessThan4~0_combout\ & \u_puerta|contador_10s\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(10),
	datab => \u_puerta|contador_10s\(8),
	datac => \u_puerta|LessThan4~0_combout\,
	datad => \u_puerta|contador_10s\(9),
	combout => \u_puerta|LessThan4~1_combout\);

-- Location: LCCOMB_X15_Y14_N14
\u_puerta|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|LessThan4~2_combout\ = (\u_puerta|contador_10s\(13) & ((\u_puerta|contador_10s\(12)) # ((\u_puerta|contador_10s\(11)) # (\u_puerta|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|contador_10s\(12),
	datab => \u_puerta|contador_10s\(11),
	datac => \u_puerta|contador_10s\(13),
	datad => \u_puerta|LessThan4~1_combout\,
	combout => \u_puerta|LessThan4~2_combout\);

-- Location: LCCOMB_X14_Y12_N24
\u_puerta|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~0_combout\ = (\u_puerta|estado_actual.ESPERA_ABRIR~q\ & ((\fallo_energia~input_o\) # ((\u_puerta|LessThan4~2_combout\) # (!\u_personas|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datac => \u_personas|LessThan2~0_combout\,
	datad => \u_puerta|LessThan4~2_combout\,
	combout => \u_puerta|Selector36~0_combout\);

-- Location: LCCOMB_X14_Y12_N28
\u_puerta|Selector36~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~5_combout\ = (\u_puerta|Selector36~2_combout\ & (((\u_puerta|Selector36~4_combout\)))) # (!\u_puerta|Selector36~2_combout\ & ((\u_puerta|Selector36~0_combout\ & ((\u_puerta|Selector36~4_combout\))) # (!\u_puerta|Selector36~0_combout\ 
-- & (\u_puerta|estado_actual.EMERGENCIA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.EMERGENCIA~q\,
	datab => \u_puerta|Selector36~4_combout\,
	datac => \u_puerta|Selector36~2_combout\,
	datad => \u_puerta|Selector36~0_combout\,
	combout => \u_puerta|Selector36~5_combout\);

-- Location: LCCOMB_X14_Y12_N22
\u_puerta|Selector36~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~6_combout\ = (\u_puerta|Selector36~1_combout\ & (\u_puerta|Selector36~4_combout\)) # (!\u_puerta|Selector36~1_combout\ & ((\u_puerta|Selector31~0_combout\ & (\u_puerta|Selector36~4_combout\)) # (!\u_puerta|Selector31~0_combout\ & 
-- ((\u_puerta|Selector36~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector36~4_combout\,
	datab => \u_puerta|Selector36~1_combout\,
	datac => \u_puerta|Selector31~0_combout\,
	datad => \u_puerta|Selector36~5_combout\,
	combout => \u_puerta|Selector36~6_combout\);

-- Location: FF_X14_Y12_N23
\u_puerta|estado_actual.EMERGENCIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector36~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.EMERGENCIA~q\);

-- Location: LCCOMB_X16_Y8_N30
\u_memoria|rd_ptr_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|rd_ptr_reg[0]~1_combout\ = \u_memoria|rd_ptr_reg\(0) $ (((\u_memoria|Equal0~0_combout\ & \u_control|reg_piso_destino[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|Equal0~0_combout\,
	datac => \u_memoria|rd_ptr_reg\(0),
	datad => \u_control|reg_piso_destino[2]~0_combout\,
	combout => \u_memoria|rd_ptr_reg[0]~1_combout\);

-- Location: FF_X16_Y8_N31
\u_memoria|rd_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|rd_ptr_reg[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|rd_ptr_reg\(0));

-- Location: LCCOMB_X16_Y8_N0
\u_memoria|rd_ptr_reg[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|rd_ptr_reg[1]~0_combout\ = \u_memoria|rd_ptr_reg\(1) $ (((\u_memoria|rd_ptr_reg\(0) & (\u_memoria|Equal0~0_combout\ & \u_control|reg_piso_destino[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|Equal0~0_combout\,
	datac => \u_memoria|rd_ptr_reg\(1),
	datad => \u_control|reg_piso_destino[2]~0_combout\,
	combout => \u_memoria|rd_ptr_reg[1]~0_combout\);

-- Location: FF_X16_Y8_N1
\u_memoria|rd_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|rd_ptr_reg[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|rd_ptr_reg\(1));

-- Location: LCCOMB_X16_Y10_N6
\u_memoria|rd_ptr_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|rd_ptr_reg[2]~2_combout\ = (\u_memoria|Equal0~0_combout\ & (\u_memoria|rd_ptr_reg\(1) & (\u_memoria|rd_ptr_reg\(0) & \u_control|reg_piso_destino[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|Equal0~0_combout\,
	datab => \u_memoria|rd_ptr_reg\(1),
	datac => \u_memoria|rd_ptr_reg\(0),
	datad => \u_control|reg_piso_destino[2]~0_combout\,
	combout => \u_memoria|rd_ptr_reg[2]~2_combout\);

-- Location: LCCOMB_X16_Y10_N2
\u_memoria|rd_ptr_reg[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|rd_ptr_reg[2]~3_combout\ = \u_memoria|rd_ptr_reg\(2) $ (\u_memoria|rd_ptr_reg[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_memoria|rd_ptr_reg\(2),
	datad => \u_memoria|rd_ptr_reg[2]~2_combout\,
	combout => \u_memoria|rd_ptr_reg[2]~3_combout\);

-- Location: FF_X16_Y10_N3
\u_memoria|rd_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|rd_ptr_reg[2]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|rd_ptr_reg\(2));

-- Location: LCCOMB_X16_Y6_N20
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~0_combout\ & ((\process_0~3_combout\) # ((!\process_0~1_combout\ & !\process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X16_Y6_N30
\ram_data_in_vec[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_data_in_vec[0]~0_combout\ = (!\reset~input_o\ & (!\u_memoria|Equal1~0_combout\ & ((\process_0~6_combout\) # (!\process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \process_0~5_combout\,
	datac => \reset~input_o\,
	datad => \u_memoria|Equal1~0_combout\,
	combout => \ram_data_in_vec[0]~0_combout\);

-- Location: FF_X16_Y6_N21
\ram_data_in_vec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~7_combout\,
	ena => \ram_data_in_vec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in_vec(0));

-- Location: LCCOMB_X14_Y8_N20
\u_memoria|fifo_memory~22feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~22feeder_combout\ = ram_data_in_vec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(0),
	combout => \u_memoria|fifo_memory~22feeder_combout\);

-- Location: LCCOMB_X16_Y8_N26
\u_memoria|wr_ptr_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|wr_ptr_reg[0]~2_combout\ = \u_memoria|wr_ptr_reg\(0) $ (((\ram_we_sig~q\ & !\u_memoria|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_we_sig~q\,
	datac => \u_memoria|wr_ptr_reg\(0),
	datad => \u_memoria|Equal1~0_combout\,
	combout => \u_memoria|wr_ptr_reg[0]~2_combout\);

-- Location: FF_X16_Y8_N27
\u_memoria|wr_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|wr_ptr_reg[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|wr_ptr_reg\(0));

-- Location: LCCOMB_X16_Y8_N28
\u_memoria|wr_ptr_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|wr_ptr_next~0_combout\ = (\ram_we_sig~q\ & !\u_memoria|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_we_sig~q\,
	datad => \u_memoria|Equal1~0_combout\,
	combout => \u_memoria|wr_ptr_next~0_combout\);

-- Location: LCCOMB_X16_Y8_N12
\u_memoria|wr_ptr_reg[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|wr_ptr_reg[1]~0_combout\ = \u_memoria|wr_ptr_reg\(1) $ (((\u_memoria|wr_ptr_reg\(0) & (\ram_we_sig~q\ & !\u_memoria|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(0),
	datab => \ram_we_sig~q\,
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|Equal1~0_combout\,
	combout => \u_memoria|wr_ptr_reg[1]~0_combout\);

-- Location: FF_X16_Y8_N13
\u_memoria|wr_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|wr_ptr_reg[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|wr_ptr_reg\(1));

-- Location: LCCOMB_X16_Y8_N6
\u_memoria|wr_ptr_reg[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|wr_ptr_reg[2]~1_combout\ = \u_memoria|wr_ptr_reg\(2) $ (((\u_memoria|wr_ptr_reg\(0) & (\u_memoria|wr_ptr_next~0_combout\ & \u_memoria|wr_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(0),
	datab => \u_memoria|wr_ptr_next~0_combout\,
	datac => \u_memoria|wr_ptr_reg\(2),
	datad => \u_memoria|wr_ptr_reg\(1),
	combout => \u_memoria|wr_ptr_reg[2]~1_combout\);

-- Location: FF_X16_Y8_N7
\u_memoria|wr_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|wr_ptr_reg[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|wr_ptr_reg\(2));

-- Location: LCCOMB_X15_Y8_N22
\u_memoria|fifo_memory~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~47_combout\ = (\u_memoria|wr_ptr_reg\(2) & (\u_memoria|wr_ptr_reg\(0) & (!\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~47_combout\);

-- Location: FF_X14_Y8_N21
\u_memoria|fifo_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~22feeder_combout\,
	ena => \u_memoria|fifo_memory~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~22_q\);

-- Location: LCCOMB_X15_Y8_N12
\u_memoria|fifo_memory~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~48_combout\ = (\u_memoria|wr_ptr_reg\(2) & (!\u_memoria|wr_ptr_reg\(0) & (!\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~48_combout\);

-- Location: FF_X14_Y8_N15
\u_memoria|fifo_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(0),
	sload => VCC,
	ena => \u_memoria|fifo_memory~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~19_q\);

-- Location: LCCOMB_X14_Y8_N14
\u_memoria|fifo_memory~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~41_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~22_q\) # ((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|fifo_memory~19_q\ & !\u_memoria|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~22_q\,
	datac => \u_memoria|fifo_memory~19_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~41_combout\);

-- Location: LCCOMB_X15_Y8_N8
\u_memoria|fifo_memory~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~46_combout\ = (\u_memoria|wr_ptr_reg\(2) & (!\u_memoria|wr_ptr_reg\(0) & (\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~46_combout\);

-- Location: FF_X15_Y8_N21
\u_memoria|fifo_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(0),
	sload => VCC,
	ena => \u_memoria|fifo_memory~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~25_q\);

-- Location: LCCOMB_X15_Y8_N2
\u_memoria|fifo_memory~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~28feeder_combout\ = ram_data_in_vec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(0),
	combout => \u_memoria|fifo_memory~28feeder_combout\);

-- Location: LCCOMB_X15_Y8_N10
\u_memoria|fifo_memory~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~49_combout\ = (\u_memoria|wr_ptr_reg\(2) & (\u_memoria|wr_ptr_reg\(0) & (\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~49_combout\);

-- Location: FF_X15_Y8_N3
\u_memoria|fifo_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~28feeder_combout\,
	ena => \u_memoria|fifo_memory~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~28_q\);

-- Location: LCCOMB_X15_Y8_N20
\u_memoria|fifo_memory~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~42_combout\ = (\u_memoria|fifo_memory~41_combout\ & (((\u_memoria|fifo_memory~28_q\)) # (!\u_memoria|rd_ptr_reg\(1)))) # (!\u_memoria|fifo_memory~41_combout\ & (\u_memoria|rd_ptr_reg\(1) & (\u_memoria|fifo_memory~25_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|fifo_memory~41_combout\,
	datab => \u_memoria|rd_ptr_reg\(1),
	datac => \u_memoria|fifo_memory~25_q\,
	datad => \u_memoria|fifo_memory~28_q\,
	combout => \u_memoria|fifo_memory~42_combout\);

-- Location: LCCOMB_X15_Y7_N2
\u_memoria|fifo_memory~16feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~16feeder_combout\ = ram_data_in_vec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(0),
	combout => \u_memoria|fifo_memory~16feeder_combout\);

-- Location: LCCOMB_X15_Y8_N30
\u_memoria|fifo_memory~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~53_combout\ = (!\u_memoria|wr_ptr_reg\(2) & (\u_memoria|wr_ptr_reg\(0) & (\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~53_combout\);

-- Location: FF_X15_Y7_N3
\u_memoria|fifo_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~16feeder_combout\,
	ena => \u_memoria|fifo_memory~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~16_q\);

-- Location: LCCOMB_X15_Y8_N28
\u_memoria|fifo_memory~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~50_combout\ = (!\u_memoria|wr_ptr_reg\(2) & (\u_memoria|wr_ptr_reg\(0) & (!\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~50_combout\);

-- Location: FF_X15_Y7_N13
\u_memoria|fifo_memory~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(0),
	sload => VCC,
	ena => \u_memoria|fifo_memory~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~10_q\);

-- Location: LCCOMB_X14_Y7_N20
\u_memoria|fifo_memory~13feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~13feeder_combout\ = ram_data_in_vec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(0),
	combout => \u_memoria|fifo_memory~13feeder_combout\);

-- Location: LCCOMB_X15_Y8_N6
\u_memoria|fifo_memory~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~51_combout\ = (!\u_memoria|wr_ptr_reg\(2) & (!\u_memoria|wr_ptr_reg\(0) & (\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~51_combout\);

-- Location: FF_X14_Y7_N21
\u_memoria|fifo_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~13feeder_combout\,
	ena => \u_memoria|fifo_memory~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~13_q\);

-- Location: LCCOMB_X15_Y8_N0
\u_memoria|fifo_memory~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~52_combout\ = (!\u_memoria|wr_ptr_reg\(2) & (!\u_memoria|wr_ptr_reg\(0) & (!\u_memoria|wr_ptr_reg\(1) & \u_memoria|wr_ptr_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|wr_ptr_reg\(2),
	datab => \u_memoria|wr_ptr_reg\(0),
	datac => \u_memoria|wr_ptr_reg\(1),
	datad => \u_memoria|wr_ptr_next~0_combout\,
	combout => \u_memoria|fifo_memory~52_combout\);

-- Location: FF_X14_Y7_N23
\u_memoria|fifo_memory~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(0),
	sload => VCC,
	ena => \u_memoria|fifo_memory~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~7_q\);

-- Location: LCCOMB_X14_Y7_N22
\u_memoria|fifo_memory~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~43_combout\ = (\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|rd_ptr_reg\(1) & (\u_memoria|fifo_memory~13_q\)) # (!\u_memoria|rd_ptr_reg\(1) & 
-- ((\u_memoria|fifo_memory~7_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~13_q\,
	datac => \u_memoria|fifo_memory~7_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~43_combout\);

-- Location: LCCOMB_X15_Y7_N12
\u_memoria|fifo_memory~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~44_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~43_combout\ & (\u_memoria|fifo_memory~16_q\)) # (!\u_memoria|fifo_memory~43_combout\ & ((\u_memoria|fifo_memory~10_q\))))) # (!\u_memoria|rd_ptr_reg\(0) & 
-- (((\u_memoria|fifo_memory~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~16_q\,
	datac => \u_memoria|fifo_memory~10_q\,
	datad => \u_memoria|fifo_memory~43_combout\,
	combout => \u_memoria|fifo_memory~44_combout\);

-- Location: LCCOMB_X16_Y10_N24
\u_memoria|fifo_memory~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~45_combout\ = (\u_memoria|rd_ptr_reg\(2) & (\u_memoria|fifo_memory~42_combout\)) # (!\u_memoria|rd_ptr_reg\(2) & ((\u_memoria|fifo_memory~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|rd_ptr_reg\(2),
	datac => \u_memoria|fifo_memory~42_combout\,
	datad => \u_memoria|fifo_memory~44_combout\,
	combout => \u_memoria|fifo_memory~45_combout\);

-- Location: FF_X16_Y10_N25
\u_control|reg_piso_destino[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_control|reg_piso_destino[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|reg_piso_destino\(0));

-- Location: FF_X16_Y6_N15
\ram_data_in_vec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~5_combout\,
	ena => \ram_data_in_vec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in_vec(2));

-- Location: LCCOMB_X15_Y7_N6
\u_memoria|fifo_memory~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~18feeder_combout\ = ram_data_in_vec(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_data_in_vec(2),
	combout => \u_memoria|fifo_memory~18feeder_combout\);

-- Location: FF_X15_Y7_N7
\u_memoria|fifo_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~18feeder_combout\,
	ena => \u_memoria|fifo_memory~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~18_q\);

-- Location: LCCOMB_X15_Y7_N16
\u_memoria|fifo_memory~12feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~12feeder_combout\ = ram_data_in_vec(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_data_in_vec(2),
	combout => \u_memoria|fifo_memory~12feeder_combout\);

-- Location: FF_X15_Y7_N17
\u_memoria|fifo_memory~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~12feeder_combout\,
	ena => \u_memoria|fifo_memory~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~12_q\);

-- Location: FF_X14_Y7_N3
\u_memoria|fifo_memory~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(2),
	sload => VCC,
	ena => \u_memoria|fifo_memory~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~9_q\);

-- Location: LCCOMB_X14_Y7_N2
\u_memoria|fifo_memory~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~38_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~12_q\) # ((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|fifo_memory~9_q\ & !\u_memoria|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~12_q\,
	datac => \u_memoria|fifo_memory~9_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~38_combout\);

-- Location: FF_X14_Y7_N13
\u_memoria|fifo_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(2),
	sload => VCC,
	ena => \u_memoria|fifo_memory~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~15_q\);

-- Location: LCCOMB_X14_Y7_N12
\u_memoria|fifo_memory~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~39_combout\ = (\u_memoria|fifo_memory~38_combout\ & ((\u_memoria|fifo_memory~18_q\) # ((!\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|fifo_memory~38_combout\ & (((\u_memoria|fifo_memory~15_q\ & \u_memoria|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|fifo_memory~18_q\,
	datab => \u_memoria|fifo_memory~38_combout\,
	datac => \u_memoria|fifo_memory~15_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~39_combout\);

-- Location: LCCOMB_X14_Y8_N0
\u_memoria|fifo_memory~24feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~24feeder_combout\ = ram_data_in_vec(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(2),
	combout => \u_memoria|fifo_memory~24feeder_combout\);

-- Location: FF_X14_Y8_N1
\u_memoria|fifo_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~24feeder_combout\,
	ena => \u_memoria|fifo_memory~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~24_q\);

-- Location: FF_X14_Y8_N11
\u_memoria|fifo_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(2),
	sload => VCC,
	ena => \u_memoria|fifo_memory~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~21_q\);

-- Location: LCCOMB_X14_Y8_N10
\u_memoria|fifo_memory~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~36_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~24_q\) # ((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|fifo_memory~21_q\ & !\u_memoria|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~24_q\,
	datac => \u_memoria|fifo_memory~21_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~36_combout\);

-- Location: FF_X15_Y8_N25
\u_memoria|fifo_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(2),
	sload => VCC,
	ena => \u_memoria|fifo_memory~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~27_q\);

-- Location: LCCOMB_X15_Y8_N18
\u_memoria|fifo_memory~30feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~30feeder_combout\ = ram_data_in_vec(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(2),
	combout => \u_memoria|fifo_memory~30feeder_combout\);

-- Location: FF_X15_Y8_N19
\u_memoria|fifo_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~30feeder_combout\,
	ena => \u_memoria|fifo_memory~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~30_q\);

-- Location: LCCOMB_X15_Y8_N24
\u_memoria|fifo_memory~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~37_combout\ = (\u_memoria|fifo_memory~36_combout\ & (((\u_memoria|fifo_memory~30_q\)) # (!\u_memoria|rd_ptr_reg\(1)))) # (!\u_memoria|fifo_memory~36_combout\ & (\u_memoria|rd_ptr_reg\(1) & (\u_memoria|fifo_memory~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|fifo_memory~36_combout\,
	datab => \u_memoria|rd_ptr_reg\(1),
	datac => \u_memoria|fifo_memory~27_q\,
	datad => \u_memoria|fifo_memory~30_q\,
	combout => \u_memoria|fifo_memory~37_combout\);

-- Location: LCCOMB_X16_Y10_N26
\u_memoria|fifo_memory~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~40_combout\ = (\u_memoria|rd_ptr_reg\(2) & ((\u_memoria|fifo_memory~37_combout\))) # (!\u_memoria|rd_ptr_reg\(2) & (\u_memoria|fifo_memory~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|rd_ptr_reg\(2),
	datac => \u_memoria|fifo_memory~39_combout\,
	datad => \u_memoria|fifo_memory~37_combout\,
	combout => \u_memoria|fifo_memory~40_combout\);

-- Location: FF_X16_Y10_N27
\u_control|reg_piso_destino[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_control|reg_piso_destino[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|reg_piso_destino\(2));

-- Location: LCCOMB_X16_Y6_N24
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!\process_0~3_combout\ & (\process_0~0_combout\ & ((\process_0~1_combout\) # (!\process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X16_Y6_N25
\ram_data_in_vec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_0~4_combout\,
	ena => \ram_data_in_vec[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in_vec(1));

-- Location: LCCOMB_X15_Y7_N18
\u_memoria|fifo_memory~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~17feeder_combout\ = ram_data_in_vec(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_data_in_vec(1),
	combout => \u_memoria|fifo_memory~17feeder_combout\);

-- Location: FF_X15_Y7_N19
\u_memoria|fifo_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~17feeder_combout\,
	ena => \u_memoria|fifo_memory~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~17_q\);

-- Location: FF_X15_Y7_N25
\u_memoria|fifo_memory~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(1),
	sload => VCC,
	ena => \u_memoria|fifo_memory~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~11_q\);

-- Location: LCCOMB_X14_Y7_N0
\u_memoria|fifo_memory~14feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~14feeder_combout\ = ram_data_in_vec(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(1),
	combout => \u_memoria|fifo_memory~14feeder_combout\);

-- Location: FF_X14_Y7_N1
\u_memoria|fifo_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~14feeder_combout\,
	ena => \u_memoria|fifo_memory~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~14_q\);

-- Location: FF_X14_Y7_N15
\u_memoria|fifo_memory~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(1),
	sload => VCC,
	ena => \u_memoria|fifo_memory~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~8_q\);

-- Location: LCCOMB_X14_Y7_N14
\u_memoria|fifo_memory~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~33_combout\ = (\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|rd_ptr_reg\(1) & (\u_memoria|fifo_memory~14_q\)) # (!\u_memoria|rd_ptr_reg\(1) & 
-- ((\u_memoria|fifo_memory~8_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~14_q\,
	datac => \u_memoria|fifo_memory~8_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~33_combout\);

-- Location: LCCOMB_X15_Y7_N24
\u_memoria|fifo_memory~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~34_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~33_combout\ & (\u_memoria|fifo_memory~17_q\)) # (!\u_memoria|fifo_memory~33_combout\ & ((\u_memoria|fifo_memory~11_q\))))) # (!\u_memoria|rd_ptr_reg\(0) & 
-- (((\u_memoria|fifo_memory~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~17_q\,
	datac => \u_memoria|fifo_memory~11_q\,
	datad => \u_memoria|fifo_memory~33_combout\,
	combout => \u_memoria|fifo_memory~34_combout\);

-- Location: LCCOMB_X15_Y8_N26
\u_memoria|fifo_memory~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~29feeder_combout\ = ram_data_in_vec(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(1),
	combout => \u_memoria|fifo_memory~29feeder_combout\);

-- Location: FF_X15_Y8_N27
\u_memoria|fifo_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~29feeder_combout\,
	ena => \u_memoria|fifo_memory~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~29_q\);

-- Location: FF_X15_Y8_N17
\u_memoria|fifo_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(1),
	sload => VCC,
	ena => \u_memoria|fifo_memory~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~26_q\);

-- Location: LCCOMB_X14_Y8_N28
\u_memoria|fifo_memory~23feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~23feeder_combout\ = ram_data_in_vec(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_data_in_vec(1),
	combout => \u_memoria|fifo_memory~23feeder_combout\);

-- Location: FF_X14_Y8_N29
\u_memoria|fifo_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~23feeder_combout\,
	ena => \u_memoria|fifo_memory~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~23_q\);

-- Location: FF_X14_Y8_N23
\u_memoria|fifo_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => ram_data_in_vec(1),
	sload => VCC,
	ena => \u_memoria|fifo_memory~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_memoria|fifo_memory~20_q\);

-- Location: LCCOMB_X14_Y8_N22
\u_memoria|fifo_memory~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~31_combout\ = (\u_memoria|rd_ptr_reg\(0) & ((\u_memoria|fifo_memory~23_q\) # ((\u_memoria|rd_ptr_reg\(1))))) # (!\u_memoria|rd_ptr_reg\(0) & (((\u_memoria|fifo_memory~20_q\ & !\u_memoria|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|rd_ptr_reg\(0),
	datab => \u_memoria|fifo_memory~23_q\,
	datac => \u_memoria|fifo_memory~20_q\,
	datad => \u_memoria|rd_ptr_reg\(1),
	combout => \u_memoria|fifo_memory~31_combout\);

-- Location: LCCOMB_X15_Y8_N16
\u_memoria|fifo_memory~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~32_combout\ = (\u_memoria|rd_ptr_reg\(1) & ((\u_memoria|fifo_memory~31_combout\ & (\u_memoria|fifo_memory~29_q\)) # (!\u_memoria|fifo_memory~31_combout\ & ((\u_memoria|fifo_memory~26_q\))))) # (!\u_memoria|rd_ptr_reg\(1) & 
-- (((\u_memoria|fifo_memory~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_memoria|fifo_memory~29_q\,
	datab => \u_memoria|rd_ptr_reg\(1),
	datac => \u_memoria|fifo_memory~26_q\,
	datad => \u_memoria|fifo_memory~31_combout\,
	combout => \u_memoria|fifo_memory~32_combout\);

-- Location: LCCOMB_X16_Y10_N8
\u_memoria|fifo_memory~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_memoria|fifo_memory~35_combout\ = (\u_memoria|rd_ptr_reg\(2) & ((\u_memoria|fifo_memory~32_combout\))) # (!\u_memoria|rd_ptr_reg\(2) & (\u_memoria|fifo_memory~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_memoria|rd_ptr_reg\(2),
	datac => \u_memoria|fifo_memory~34_combout\,
	datad => \u_memoria|fifo_memory~32_combout\,
	combout => \u_memoria|fifo_memory~35_combout\);

-- Location: FF_X16_Y10_N9
\u_control|reg_piso_destino[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_memoria|fifo_memory~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \u_control|reg_piso_destino[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|reg_piso_destino\(1));

-- Location: LCCOMB_X17_Y10_N20
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = piso_actual_int(2) $ (((piso_actual_int(1) & (piso_actual_int(0) & !\process_1~5_combout\)) # (!piso_actual_int(1) & (!piso_actual_int(0) & \process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(1),
	datab => piso_actual_int(2),
	datac => piso_actual_int(0),
	datad => \process_1~5_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X17_Y10_N16
\piso_actual_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual_int[2]~4_combout\ = (\piso_actual_int[2]~3_combout\ & ((\Add0~1_combout\))) # (!\piso_actual_int[2]~3_combout\ & (piso_actual_int(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \piso_actual_int[2]~3_combout\,
	datac => piso_actual_int(2),
	datad => \Add0~1_combout\,
	combout => \piso_actual_int[2]~4_combout\);

-- Location: FF_X17_Y10_N17
\piso_actual_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual_int[2]~4_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_actual_int(2));

-- Location: LCCOMB_X16_Y10_N18
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\u_control|estado_actual.CALCULANDO_DIRECCION~q\ & (!\u_control|LessThan1~1_combout\ & (!\u_control|LessThan0~1_combout\))) # (!\u_control|estado_actual.CALCULANDO_DIRECCION~q\ & (((!\u_control|LessThan1~1_combout\ & 
-- !\u_control|LessThan0~1_combout\)) # (!\u_control|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datab => \u_control|LessThan1~1_combout\,
	datac => \u_control|LessThan0~1_combout\,
	datad => \u_control|Selector7~0_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X16_Y10_N10
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!\u_debounce_emergencia|button_state~q\ & (!\process_1~4_combout\ & !\fallo_energia~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|button_state~q\,
	datac => \process_1~4_combout\,
	datad => \fallo_energia~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X19_Y10_N6
\timer_movimiento_piso|count~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~28_combout\ = (!\u_control|motor_bajar~0_combout\ & ((\u_debounce_emergencia|button_state~q\) # ((\fallo_energia~input_o\) # (!\u_control|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|button_state~q\,
	datab => \fallo_energia~input_o\,
	datac => \u_control|Selector6~0_combout\,
	datad => \u_control|motor_bajar~0_combout\,
	combout => \timer_movimiento_piso|count~28_combout\);

-- Location: LCCOMB_X20_Y11_N10
\timer_movimiento_piso|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~0_combout\ = \timer_movimiento_piso|count\(0) $ (VCC)
-- \timer_movimiento_piso|Add0~1\ = CARRY(\timer_movimiento_piso|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(0),
	datad => VCC,
	combout => \timer_movimiento_piso|Add0~0_combout\,
	cout => \timer_movimiento_piso|Add0~1\);

-- Location: LCCOMB_X19_Y10_N4
\timer_movimiento_piso|count~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~20_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~0_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count~28_combout\,
	datab => \timer_movimiento_piso|Add0~0_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~20_combout\);

-- Location: LCCOMB_X21_Y10_N22
\timer_movimiento_piso|count[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count[2]~27_combout\ = (\timer_movimiento_piso|timer_running~q\) # ((!\u_debounce_emergencia|button_state~q\ & (!\fallo_energia~input_o\ & !\process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|button_state~q\,
	datab => \fallo_energia~input_o\,
	datac => \timer_movimiento_piso|timer_running~q\,
	datad => \process_1~4_combout\,
	combout => \timer_movimiento_piso|count[2]~27_combout\);

-- Location: FF_X19_Y10_N5
\timer_movimiento_piso|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~20_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(0));

-- Location: LCCOMB_X20_Y11_N12
\timer_movimiento_piso|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~2_combout\ = (\timer_movimiento_piso|count\(1) & (!\timer_movimiento_piso|Add0~1\)) # (!\timer_movimiento_piso|count\(1) & ((\timer_movimiento_piso|Add0~1\) # (GND)))
-- \timer_movimiento_piso|Add0~3\ = CARRY((!\timer_movimiento_piso|Add0~1\) # (!\timer_movimiento_piso|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(1),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~1\,
	combout => \timer_movimiento_piso|Add0~2_combout\,
	cout => \timer_movimiento_piso|Add0~3\);

-- Location: LCCOMB_X19_Y10_N26
\timer_movimiento_piso|count~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~19_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~2_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datab => \timer_movimiento_piso|Add0~2_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~19_combout\);

-- Location: FF_X19_Y10_N27
\timer_movimiento_piso|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~19_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(1));

-- Location: LCCOMB_X20_Y11_N14
\timer_movimiento_piso|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~4_combout\ = (\timer_movimiento_piso|count\(2) & (\timer_movimiento_piso|Add0~3\ $ (GND))) # (!\timer_movimiento_piso|count\(2) & (!\timer_movimiento_piso|Add0~3\ & VCC))
-- \timer_movimiento_piso|Add0~5\ = CARRY((\timer_movimiento_piso|count\(2) & !\timer_movimiento_piso|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(2),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~3\,
	combout => \timer_movimiento_piso|Add0~4_combout\,
	cout => \timer_movimiento_piso|Add0~5\);

-- Location: LCCOMB_X20_Y11_N8
\timer_movimiento_piso|count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~18_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~4_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|Add0~4_combout\,
	datac => \timer_movimiento_piso|count~28_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~18_combout\);

-- Location: FF_X20_Y11_N9
\timer_movimiento_piso|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~18_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(2));

-- Location: LCCOMB_X20_Y11_N16
\timer_movimiento_piso|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~6_combout\ = (\timer_movimiento_piso|count\(3) & (!\timer_movimiento_piso|Add0~5\)) # (!\timer_movimiento_piso|count\(3) & ((\timer_movimiento_piso|Add0~5\) # (GND)))
-- \timer_movimiento_piso|Add0~7\ = CARRY((!\timer_movimiento_piso|Add0~5\) # (!\timer_movimiento_piso|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(3),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~5\,
	combout => \timer_movimiento_piso|Add0~6_combout\,
	cout => \timer_movimiento_piso|Add0~7\);

-- Location: LCCOMB_X20_Y11_N2
\timer_movimiento_piso|count~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~17_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~6_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|Add0~6_combout\,
	datac => \timer_movimiento_piso|count~28_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~17_combout\);

-- Location: FF_X20_Y11_N3
\timer_movimiento_piso|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~17_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(3));

-- Location: LCCOMB_X20_Y11_N18
\timer_movimiento_piso|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~8_combout\ = (\timer_movimiento_piso|count\(4) & (\timer_movimiento_piso|Add0~7\ $ (GND))) # (!\timer_movimiento_piso|count\(4) & (!\timer_movimiento_piso|Add0~7\ & VCC))
-- \timer_movimiento_piso|Add0~9\ = CARRY((\timer_movimiento_piso|count\(4) & !\timer_movimiento_piso|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(4),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~7\,
	combout => \timer_movimiento_piso|Add0~8_combout\,
	cout => \timer_movimiento_piso|Add0~9\);

-- Location: LCCOMB_X19_Y10_N0
\timer_movimiento_piso|count~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~16_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~8_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \timer_movimiento_piso|Add0~8_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~16_combout\);

-- Location: FF_X19_Y10_N1
\timer_movimiento_piso|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~16_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(4));

-- Location: LCCOMB_X20_Y11_N20
\timer_movimiento_piso|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~10_combout\ = (\timer_movimiento_piso|count\(5) & (!\timer_movimiento_piso|Add0~9\)) # (!\timer_movimiento_piso|count\(5) & ((\timer_movimiento_piso|Add0~9\) # (GND)))
-- \timer_movimiento_piso|Add0~11\ = CARRY((!\timer_movimiento_piso|Add0~9\) # (!\timer_movimiento_piso|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(5),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~9\,
	combout => \timer_movimiento_piso|Add0~10_combout\,
	cout => \timer_movimiento_piso|Add0~11\);

-- Location: LCCOMB_X20_Y11_N4
\timer_movimiento_piso|count~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~15_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~10_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|Add0~10_combout\,
	datac => \timer_movimiento_piso|count~28_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~15_combout\);

-- Location: FF_X20_Y11_N5
\timer_movimiento_piso|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~15_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(5));

-- Location: LCCOMB_X20_Y11_N22
\timer_movimiento_piso|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~12_combout\ = (\timer_movimiento_piso|count\(6) & (\timer_movimiento_piso|Add0~11\ $ (GND))) # (!\timer_movimiento_piso|count\(6) & (!\timer_movimiento_piso|Add0~11\ & VCC))
-- \timer_movimiento_piso|Add0~13\ = CARRY((\timer_movimiento_piso|count\(6) & !\timer_movimiento_piso|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(6),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~11\,
	combout => \timer_movimiento_piso|Add0~12_combout\,
	cout => \timer_movimiento_piso|Add0~13\);

-- Location: LCCOMB_X21_Y10_N16
\timer_movimiento_piso|count~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~14_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|LessThan0~8_combout\ & \timer_movimiento_piso|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	datad => \timer_movimiento_piso|Add0~12_combout\,
	combout => \timer_movimiento_piso|count~14_combout\);

-- Location: FF_X21_Y10_N17
\timer_movimiento_piso|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~14_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(6));

-- Location: LCCOMB_X20_Y11_N24
\timer_movimiento_piso|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~14_combout\ = (\timer_movimiento_piso|count\(7) & (!\timer_movimiento_piso|Add0~13\)) # (!\timer_movimiento_piso|count\(7) & ((\timer_movimiento_piso|Add0~13\) # (GND)))
-- \timer_movimiento_piso|Add0~15\ = CARRY((!\timer_movimiento_piso|Add0~13\) # (!\timer_movimiento_piso|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(7),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~13\,
	combout => \timer_movimiento_piso|Add0~14_combout\,
	cout => \timer_movimiento_piso|Add0~15\);

-- Location: LCCOMB_X21_Y10_N18
\timer_movimiento_piso|count~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~13_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|Add0~14_combout\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \timer_movimiento_piso|Add0~14_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~13_combout\);

-- Location: FF_X21_Y10_N19
\timer_movimiento_piso|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~13_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(7));

-- Location: LCCOMB_X20_Y11_N26
\timer_movimiento_piso|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~16_combout\ = (\timer_movimiento_piso|count\(8) & (\timer_movimiento_piso|Add0~15\ $ (GND))) # (!\timer_movimiento_piso|count\(8) & (!\timer_movimiento_piso|Add0~15\ & VCC))
-- \timer_movimiento_piso|Add0~17\ = CARRY((\timer_movimiento_piso|count\(8) & !\timer_movimiento_piso|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(8),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~15\,
	combout => \timer_movimiento_piso|Add0~16_combout\,
	cout => \timer_movimiento_piso|Add0~17\);

-- Location: LCCOMB_X19_Y10_N2
\timer_movimiento_piso|count~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~22_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~16_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count~28_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	datad => \timer_movimiento_piso|Add0~16_combout\,
	combout => \timer_movimiento_piso|count~22_combout\);

-- Location: FF_X19_Y10_N3
\timer_movimiento_piso|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~22_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(8));

-- Location: LCCOMB_X20_Y11_N28
\timer_movimiento_piso|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~18_combout\ = (\timer_movimiento_piso|count\(9) & (!\timer_movimiento_piso|Add0~17\)) # (!\timer_movimiento_piso|count\(9) & ((\timer_movimiento_piso|Add0~17\) # (GND)))
-- \timer_movimiento_piso|Add0~19\ = CARRY((!\timer_movimiento_piso|Add0~17\) # (!\timer_movimiento_piso|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(9),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~17\,
	combout => \timer_movimiento_piso|Add0~18_combout\,
	cout => \timer_movimiento_piso|Add0~19\);

-- Location: LCCOMB_X19_Y10_N28
\timer_movimiento_piso|count~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~21_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~18_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \timer_movimiento_piso|Add0~18_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~21_combout\);

-- Location: FF_X19_Y10_N29
\timer_movimiento_piso|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~21_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(9));

-- Location: LCCOMB_X20_Y11_N30
\timer_movimiento_piso|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~20_combout\ = (\timer_movimiento_piso|count\(10) & (\timer_movimiento_piso|Add0~19\ $ (GND))) # (!\timer_movimiento_piso|count\(10) & (!\timer_movimiento_piso|Add0~19\ & VCC))
-- \timer_movimiento_piso|Add0~21\ = CARRY((\timer_movimiento_piso|count\(10) & !\timer_movimiento_piso|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(10),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~19\,
	combout => \timer_movimiento_piso|Add0~20_combout\,
	cout => \timer_movimiento_piso|Add0~21\);

-- Location: LCCOMB_X21_Y10_N8
\timer_movimiento_piso|count~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~12_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|Add0~20_combout\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \timer_movimiento_piso|Add0~20_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~12_combout\);

-- Location: FF_X21_Y10_N9
\timer_movimiento_piso|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~12_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(10));

-- Location: LCCOMB_X20_Y10_N0
\timer_movimiento_piso|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~22_combout\ = (\timer_movimiento_piso|count\(11) & (!\timer_movimiento_piso|Add0~21\)) # (!\timer_movimiento_piso|count\(11) & ((\timer_movimiento_piso|Add0~21\) # (GND)))
-- \timer_movimiento_piso|Add0~23\ = CARRY((!\timer_movimiento_piso|Add0~21\) # (!\timer_movimiento_piso|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(11),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~21\,
	combout => \timer_movimiento_piso|Add0~22_combout\,
	cout => \timer_movimiento_piso|Add0~23\);

-- Location: LCCOMB_X19_Y10_N20
\timer_movimiento_piso|count~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~23_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~22_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \timer_movimiento_piso|Add0~22_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~23_combout\);

-- Location: FF_X19_Y10_N21
\timer_movimiento_piso|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~23_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(11));

-- Location: LCCOMB_X20_Y10_N2
\timer_movimiento_piso|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~24_combout\ = (\timer_movimiento_piso|count\(12) & (\timer_movimiento_piso|Add0~23\ $ (GND))) # (!\timer_movimiento_piso|count\(12) & (!\timer_movimiento_piso|Add0~23\ & VCC))
-- \timer_movimiento_piso|Add0~25\ = CARRY((\timer_movimiento_piso|count\(12) & !\timer_movimiento_piso|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(12),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~23\,
	combout => \timer_movimiento_piso|Add0~24_combout\,
	cout => \timer_movimiento_piso|Add0~25\);

-- Location: LCCOMB_X20_Y10_N26
\timer_movimiento_piso|count~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~25_combout\ = (\timer_movimiento_piso|Add0~24_combout\ & (!\process_1~6_combout\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|Add0~24_combout\,
	datac => \process_1~6_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~25_combout\);

-- Location: FF_X20_Y10_N27
\timer_movimiento_piso|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~25_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(12));

-- Location: LCCOMB_X20_Y10_N4
\timer_movimiento_piso|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~26_combout\ = (\timer_movimiento_piso|count\(13) & (!\timer_movimiento_piso|Add0~25\)) # (!\timer_movimiento_piso|count\(13) & ((\timer_movimiento_piso|Add0~25\) # (GND)))
-- \timer_movimiento_piso|Add0~27\ = CARRY((!\timer_movimiento_piso|Add0~25\) # (!\timer_movimiento_piso|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(13),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~25\,
	combout => \timer_movimiento_piso|Add0~26_combout\,
	cout => \timer_movimiento_piso|Add0~27\);

-- Location: LCCOMB_X21_Y10_N20
\timer_movimiento_piso|count~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~24_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|Add0~26_combout\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \timer_movimiento_piso|Add0~26_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~24_combout\);

-- Location: FF_X21_Y10_N21
\timer_movimiento_piso|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~24_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(13));

-- Location: LCCOMB_X20_Y10_N6
\timer_movimiento_piso|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~28_combout\ = (\timer_movimiento_piso|count\(14) & (\timer_movimiento_piso|Add0~27\ $ (GND))) # (!\timer_movimiento_piso|count\(14) & (!\timer_movimiento_piso|Add0~27\ & VCC))
-- \timer_movimiento_piso|Add0~29\ = CARRY((\timer_movimiento_piso|count\(14) & !\timer_movimiento_piso|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(14),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~27\,
	combout => \timer_movimiento_piso|Add0~28_combout\,
	cout => \timer_movimiento_piso|Add0~29\);

-- Location: LCCOMB_X19_Y10_N14
\timer_movimiento_piso|count~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~26_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~28_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \timer_movimiento_piso|Add0~28_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~26_combout\);

-- Location: FF_X19_Y10_N15
\timer_movimiento_piso|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~26_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(14));

-- Location: LCCOMB_X20_Y10_N8
\timer_movimiento_piso|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~30_combout\ = (\timer_movimiento_piso|count\(15) & (!\timer_movimiento_piso|Add0~29\)) # (!\timer_movimiento_piso|count\(15) & ((\timer_movimiento_piso|Add0~29\) # (GND)))
-- \timer_movimiento_piso|Add0~31\ = CARRY((!\timer_movimiento_piso|Add0~29\) # (!\timer_movimiento_piso|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(15),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~29\,
	combout => \timer_movimiento_piso|Add0~30_combout\,
	cout => \timer_movimiento_piso|Add0~31\);

-- Location: LCCOMB_X20_Y10_N24
\timer_movimiento_piso|count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~9_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|Add0~30_combout\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~6_combout\,
	datac => \timer_movimiento_piso|Add0~30_combout\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|count~9_combout\);

-- Location: FF_X20_Y10_N25
\timer_movimiento_piso|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~9_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(15));

-- Location: LCCOMB_X20_Y10_N10
\timer_movimiento_piso|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~32_combout\ = (\timer_movimiento_piso|count\(16) & (\timer_movimiento_piso|Add0~31\ $ (GND))) # (!\timer_movimiento_piso|count\(16) & (!\timer_movimiento_piso|Add0~31\ & VCC))
-- \timer_movimiento_piso|Add0~33\ = CARRY((\timer_movimiento_piso|count\(16) & !\timer_movimiento_piso|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(16),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~31\,
	combout => \timer_movimiento_piso|Add0~32_combout\,
	cout => \timer_movimiento_piso|Add0~33\);

-- Location: LCCOMB_X21_Y10_N28
\timer_movimiento_piso|count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~11_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|LessThan0~8_combout\ & \timer_movimiento_piso|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	datad => \timer_movimiento_piso|Add0~32_combout\,
	combout => \timer_movimiento_piso|count~11_combout\);

-- Location: FF_X21_Y10_N29
\timer_movimiento_piso|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~11_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(16));

-- Location: LCCOMB_X20_Y10_N12
\timer_movimiento_piso|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~34_combout\ = (\timer_movimiento_piso|count\(17) & (!\timer_movimiento_piso|Add0~33\)) # (!\timer_movimiento_piso|count\(17) & ((\timer_movimiento_piso|Add0~33\) # (GND)))
-- \timer_movimiento_piso|Add0~35\ = CARRY((!\timer_movimiento_piso|Add0~33\) # (!\timer_movimiento_piso|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(17),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~33\,
	combout => \timer_movimiento_piso|Add0~34_combout\,
	cout => \timer_movimiento_piso|Add0~35\);

-- Location: LCCOMB_X21_Y10_N14
\timer_movimiento_piso|count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~10_combout\ = (!\process_1~6_combout\ & (\timer_movimiento_piso|LessThan0~8_combout\ & \timer_movimiento_piso|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	datad => \timer_movimiento_piso|Add0~34_combout\,
	combout => \timer_movimiento_piso|count~10_combout\);

-- Location: FF_X21_Y10_N15
\timer_movimiento_piso|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~10_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(17));

-- Location: LCCOMB_X20_Y10_N14
\timer_movimiento_piso|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~36_combout\ = (\timer_movimiento_piso|count\(18) & (\timer_movimiento_piso|Add0~35\ $ (GND))) # (!\timer_movimiento_piso|count\(18) & (!\timer_movimiento_piso|Add0~35\ & VCC))
-- \timer_movimiento_piso|Add0~37\ = CARRY((\timer_movimiento_piso|count\(18) & !\timer_movimiento_piso|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(18),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~35\,
	combout => \timer_movimiento_piso|Add0~36_combout\,
	cout => \timer_movimiento_piso|Add0~37\);

-- Location: LCCOMB_X19_Y10_N10
\timer_movimiento_piso|count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~7_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~36_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \timer_movimiento_piso|Add0~36_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~7_combout\);

-- Location: FF_X19_Y10_N11
\timer_movimiento_piso|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~7_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(18));

-- Location: LCCOMB_X20_Y10_N16
\timer_movimiento_piso|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~38_combout\ = (\timer_movimiento_piso|count\(19) & (!\timer_movimiento_piso|Add0~37\)) # (!\timer_movimiento_piso|count\(19) & ((\timer_movimiento_piso|Add0~37\) # (GND)))
-- \timer_movimiento_piso|Add0~39\ = CARRY((!\timer_movimiento_piso|Add0~37\) # (!\timer_movimiento_piso|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(19),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~37\,
	combout => \timer_movimiento_piso|Add0~38_combout\,
	cout => \timer_movimiento_piso|Add0~39\);

-- Location: LCCOMB_X19_Y10_N16
\timer_movimiento_piso|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~6_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~38_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datab => \timer_movimiento_piso|Add0~38_combout\,
	datad => \timer_movimiento_piso|count~28_combout\,
	combout => \timer_movimiento_piso|count~6_combout\);

-- Location: FF_X19_Y10_N17
\timer_movimiento_piso|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~6_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(19));

-- Location: LCCOMB_X20_Y10_N18
\timer_movimiento_piso|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~40_combout\ = (\timer_movimiento_piso|count\(20) & (\timer_movimiento_piso|Add0~39\ $ (GND))) # (!\timer_movimiento_piso|count\(20) & (!\timer_movimiento_piso|Add0~39\ & VCC))
-- \timer_movimiento_piso|Add0~41\ = CARRY((\timer_movimiento_piso|count\(20) & !\timer_movimiento_piso|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(20),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~39\,
	combout => \timer_movimiento_piso|Add0~40_combout\,
	cout => \timer_movimiento_piso|Add0~41\);

-- Location: LCCOMB_X20_Y10_N30
\timer_movimiento_piso|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~5_combout\ = (\timer_movimiento_piso|LessThan0~8_combout\ & (!\process_1~6_combout\ & \timer_movimiento_piso|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \process_1~6_combout\,
	datad => \timer_movimiento_piso|Add0~40_combout\,
	combout => \timer_movimiento_piso|count~5_combout\);

-- Location: FF_X20_Y10_N31
\timer_movimiento_piso|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(20));

-- Location: LCCOMB_X20_Y10_N20
\timer_movimiento_piso|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~42_combout\ = (\timer_movimiento_piso|count\(21) & (!\timer_movimiento_piso|Add0~41\)) # (!\timer_movimiento_piso|count\(21) & ((\timer_movimiento_piso|Add0~41\) # (GND)))
-- \timer_movimiento_piso|Add0~43\ = CARRY((!\timer_movimiento_piso|Add0~41\) # (!\timer_movimiento_piso|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(21),
	datad => VCC,
	cin => \timer_movimiento_piso|Add0~41\,
	combout => \timer_movimiento_piso|Add0~42_combout\,
	cout => \timer_movimiento_piso|Add0~43\);

-- Location: LCCOMB_X20_Y10_N28
\timer_movimiento_piso|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~4_combout\ = (\timer_movimiento_piso|LessThan0~8_combout\ & (!\process_1~6_combout\ & \timer_movimiento_piso|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~8_combout\,
	datac => \process_1~6_combout\,
	datad => \timer_movimiento_piso|Add0~42_combout\,
	combout => \timer_movimiento_piso|count~4_combout\);

-- Location: FF_X20_Y10_N29
\timer_movimiento_piso|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~4_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(21));

-- Location: LCCOMB_X21_Y10_N24
\timer_movimiento_piso|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~0_combout\ = (!\timer_movimiento_piso|count\(21) & !\timer_movimiento_piso|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(21),
	datad => \timer_movimiento_piso|count\(20),
	combout => \timer_movimiento_piso|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\timer_movimiento_piso|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~2_combout\ = (!\timer_movimiento_piso|count\(16) & (!\timer_movimiento_piso|count\(17) & (!\timer_movimiento_piso|count\(15) & \timer_movimiento_piso|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(16),
	datab => \timer_movimiento_piso|count\(17),
	datac => \timer_movimiento_piso|count\(15),
	datad => \timer_movimiento_piso|LessThan0~0_combout\,
	combout => \timer_movimiento_piso|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y10_N22
\timer_movimiento_piso|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|Add0~44_combout\ = \timer_movimiento_piso|Add0~43\ $ (!\timer_movimiento_piso|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_movimiento_piso|count\(22),
	cin => \timer_movimiento_piso|Add0~43\,
	combout => \timer_movimiento_piso|Add0~44_combout\);

-- Location: LCCOMB_X19_Y10_N8
\timer_movimiento_piso|count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|count~8_combout\ = (\timer_movimiento_piso|count~28_combout\ & ((\timer_movimiento_piso|Add0~44_combout\) # (!\timer_movimiento_piso|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count~28_combout\,
	datac => \timer_movimiento_piso|LessThan0~8_combout\,
	datad => \timer_movimiento_piso|Add0~44_combout\,
	combout => \timer_movimiento_piso|count~8_combout\);

-- Location: FF_X19_Y10_N9
\timer_movimiento_piso|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|count~8_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \timer_movimiento_piso|count[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|count\(22));

-- Location: LCCOMB_X19_Y10_N22
\timer_movimiento_piso|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~1_combout\ = ((\timer_movimiento_piso|LessThan0~0_combout\ & ((!\timer_movimiento_piso|count\(19)) # (!\timer_movimiento_piso|count\(18))))) # (!\timer_movimiento_piso|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(18),
	datab => \timer_movimiento_piso|count\(19),
	datac => \timer_movimiento_piso|count\(22),
	datad => \timer_movimiento_piso|LessThan0~0_combout\,
	combout => \timer_movimiento_piso|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y10_N30
\timer_movimiento_piso|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~6_combout\ = ((!\timer_movimiento_piso|count\(10) & ((!\timer_movimiento_piso|count\(8)) # (!\timer_movimiento_piso|count\(9))))) # (!\timer_movimiento_piso|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(10),
	datab => \timer_movimiento_piso|count\(9),
	datac => \timer_movimiento_piso|count\(11),
	datad => \timer_movimiento_piso|count\(8),
	combout => \timer_movimiento_piso|LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y10_N30
\timer_movimiento_piso|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~3_combout\ = (!\timer_movimiento_piso|count\(7) & (!\timer_movimiento_piso|count\(10) & !\timer_movimiento_piso|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_movimiento_piso|count\(7),
	datac => \timer_movimiento_piso|count\(10),
	datad => \timer_movimiento_piso|count\(6),
	combout => \timer_movimiento_piso|LessThan0~3_combout\);

-- Location: LCCOMB_X20_Y11_N6
\timer_movimiento_piso|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~4_combout\ = (((!\timer_movimiento_piso|count\(4)) # (!\timer_movimiento_piso|count\(2))) # (!\timer_movimiento_piso|count\(3))) # (!\timer_movimiento_piso|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(5),
	datab => \timer_movimiento_piso|count\(3),
	datac => \timer_movimiento_piso|count\(2),
	datad => \timer_movimiento_piso|count\(4),
	combout => \timer_movimiento_piso|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y10_N18
\timer_movimiento_piso|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~5_combout\ = (\timer_movimiento_piso|LessThan0~3_combout\ & (((\timer_movimiento_piso|LessThan0~4_combout\) # (!\timer_movimiento_piso|count\(0))) # (!\timer_movimiento_piso|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(1),
	datab => \timer_movimiento_piso|count\(0),
	datac => \timer_movimiento_piso|LessThan0~3_combout\,
	datad => \timer_movimiento_piso|LessThan0~4_combout\,
	combout => \timer_movimiento_piso|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y10_N24
\timer_movimiento_piso|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~7_combout\ = (!\timer_movimiento_piso|count\(12) & (!\timer_movimiento_piso|count\(13) & ((\timer_movimiento_piso|LessThan0~6_combout\) # (\timer_movimiento_piso|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|LessThan0~6_combout\,
	datab => \timer_movimiento_piso|count\(12),
	datac => \timer_movimiento_piso|count\(13),
	datad => \timer_movimiento_piso|LessThan0~5_combout\,
	combout => \timer_movimiento_piso|LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y10_N12
\timer_movimiento_piso|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|LessThan0~8_combout\ = (\timer_movimiento_piso|LessThan0~1_combout\) # ((\timer_movimiento_piso|LessThan0~2_combout\ & ((\timer_movimiento_piso|LessThan0~7_combout\) # (!\timer_movimiento_piso|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|count\(14),
	datab => \timer_movimiento_piso|LessThan0~2_combout\,
	datac => \timer_movimiento_piso|LessThan0~1_combout\,
	datad => \timer_movimiento_piso|LessThan0~7_combout\,
	combout => \timer_movimiento_piso|LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y10_N22
\timer_movimiento_piso|timer_running~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|timer_running~0_combout\ = (\process_1~6_combout\) # ((\timer_movimiento_piso|timer_running~q\ & \timer_movimiento_piso|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~6_combout\,
	datac => \timer_movimiento_piso|timer_running~q\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|timer_running~0_combout\);

-- Location: FF_X17_Y10_N23
\timer_movimiento_piso|timer_running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|timer_running~0_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|timer_running~q\);

-- Location: LCCOMB_X15_Y10_N6
\timer_movimiento_piso|done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_movimiento_piso|done~0_combout\ = (!\process_1~6_combout\ & ((\timer_movimiento_piso|timer_running~q\ & ((!\timer_movimiento_piso|LessThan0~8_combout\))) # (!\timer_movimiento_piso|timer_running~q\ & (\timer_movimiento_piso|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \timer_movimiento_piso|timer_running~q\,
	datac => \timer_movimiento_piso|done~q\,
	datad => \timer_movimiento_piso|LessThan0~8_combout\,
	combout => \timer_movimiento_piso|done~0_combout\);

-- Location: FF_X15_Y10_N7
\timer_movimiento_piso|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_movimiento_piso|done~0_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_movimiento_piso|done~q\);

-- Location: LCCOMB_X15_Y10_N24
\u_control|siguiente_estado.MOVIENDO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.MOVIENDO~0_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & ((\u_control|Selector7~0_combout\) # ((\u_control|estado_actual.CALCULANDO_DIRECCION~q\ & \u_control|motor_bajar_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datab => \u_control|Selector7~0_combout\,
	datac => \u_control|siguiente_estado.INICIO~0_combout\,
	datad => \u_control|motor_bajar_int~0_combout\,
	combout => \u_control|siguiente_estado.MOVIENDO~0_combout\);

-- Location: FF_X15_Y10_N25
\u_control|estado_actual.MOVIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.MOVIENDO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.MOVIENDO~q\);

-- Location: LCCOMB_X15_Y10_N28
\u_control|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Selector7~0_combout\ = (!\timer_movimiento_piso|done~q\ & (\u_control|estado_actual.MOVIENDO~q\ & \u_personas|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|done~q\,
	datab => \u_control|estado_actual.MOVIENDO~q\,
	datac => \u_personas|LessThan2~0_combout\,
	combout => \u_control|Selector7~0_combout\);

-- Location: LCCOMB_X15_Y10_N10
\u_control|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Selector6~0_combout\ = (\u_control|LessThan0~1_combout\ & ((\u_control|Selector7~0_combout\) # (\u_control|estado_actual.CALCULANDO_DIRECCION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|Selector7~0_combout\,
	datac => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datad => \u_control|LessThan0~1_combout\,
	combout => \u_control|Selector6~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\fallo_energia~input_o\) # ((piso_actual_int(2)) # ((\u_debounce_emergencia|button_state~q\) # (!\u_control|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => piso_actual_int(2),
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \u_control|Selector6~0_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X17_Y10_N0
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = piso_actual_int(0) $ (piso_actual_int(1) $ (\process_1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_actual_int(0),
	datac => piso_actual_int(1),
	datad => \process_1~5_combout\,
	combout => \Add0~2_combout\);

-- Location: FF_X17_Y10_N1
\piso_actual_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \piso_actual_int[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_actual_int(1));

-- Location: LCCOMB_X16_Y10_N30
\u_control|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Equal0~0_combout\ = (\u_control|reg_piso_destino\(2) & (piso_actual_int(2) & (\u_control|reg_piso_destino\(1) $ (!piso_actual_int(1))))) # (!\u_control|reg_piso_destino\(2) & (!piso_actual_int(2) & (\u_control|reg_piso_destino\(1) $ 
-- (!piso_actual_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|reg_piso_destino\(2),
	datab => \u_control|reg_piso_destino\(1),
	datac => piso_actual_int(1),
	datad => piso_actual_int(2),
	combout => \u_control|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\u_control|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|LessThan0~0_combout\ = (\u_control|reg_piso_destino\(2) & (((\u_control|reg_piso_destino\(1) & !piso_actual_int(1))) # (!piso_actual_int(2)))) # (!\u_control|reg_piso_destino\(2) & (\u_control|reg_piso_destino\(1) & (!piso_actual_int(1) & 
-- !piso_actual_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|reg_piso_destino\(2),
	datab => \u_control|reg_piso_destino\(1),
	datac => piso_actual_int(1),
	datad => piso_actual_int(2),
	combout => \u_control|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y10_N4
\u_control|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|LessThan0~1_combout\ = (\u_control|LessThan0~0_combout\) # ((!piso_actual_int(0) & (\u_control|reg_piso_destino\(0) & \u_control|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(0),
	datab => \u_control|reg_piso_destino\(0),
	datac => \u_control|Equal0~0_combout\,
	datad => \u_control|LessThan0~0_combout\,
	combout => \u_control|LessThan0~1_combout\);

-- Location: LCCOMB_X15_Y10_N8
\estado_ascensor_luces[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_ascensor_luces[0]~6_combout\ = (\u_personas|LessThan2~0_combout\ & (!\fallo_energia~input_o\ & !\u_debounce_emergencia|button_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \fallo_energia~input_o\,
	datac => \u_debounce_emergencia|button_state~q\,
	combout => \estado_ascensor_luces[0]~6_combout\);

-- Location: LCCOMB_X17_Y10_N12
\u_control|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Equal0~1_combout\ = (\u_control|Equal0~0_combout\ & (piso_actual_int(0) $ (!\u_control|reg_piso_destino\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_actual_int(0),
	datac => \u_control|Equal0~0_combout\,
	datad => \u_control|reg_piso_destino\(0),
	combout => \u_control|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y10_N16
\u_control|siguiente_estado.LLEGADA_PISO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.LLEGADA_PISO~0_combout\ = (\timer_movimiento_piso|done~q\ & (\u_control|estado_actual.MOVIENDO~q\ & (\estado_ascensor_luces[0]~6_combout\ & \u_control|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|done~q\,
	datab => \u_control|estado_actual.MOVIENDO~q\,
	datac => \estado_ascensor_luces[0]~6_combout\,
	datad => \u_control|Equal0~1_combout\,
	combout => \u_control|siguiente_estado.LLEGADA_PISO~0_combout\);

-- Location: FF_X15_Y10_N17
\u_control|estado_actual.LLEGADA_PISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.LLEGADA_PISO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.LLEGADA_PISO~q\);

-- Location: LCCOMB_X15_Y10_N26
\u_control|siguiente_estado.PUERTA_ABRIENDO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABRIENDO~0_combout\ = (\u_control|estado_actual.LLEGADA_PISO~q\) # ((!\u_control|LessThan0~1_combout\ & (\u_control|estado_actual.CALCULANDO_DIRECCION~q\ & !\u_control|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|LessThan0~1_combout\,
	datab => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datac => \u_control|LessThan1~1_combout\,
	datad => \u_control|estado_actual.LLEGADA_PISO~q\,
	combout => \u_control|siguiente_estado.PUERTA_ABRIENDO~0_combout\);

-- Location: IOIBUF_X26_Y0_N15
\boton_abrir~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_abrir,
	o => \boton_abrir~input_o\);

-- Location: LCCOMB_X19_Y6_N2
\u_debounce_abrir|button_sync_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|button_sync_reg1~feeder_combout\ = \boton_abrir~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton_abrir~input_o\,
	combout => \u_debounce_abrir|button_sync_reg1~feeder_combout\);

-- Location: FF_X19_Y6_N3
\u_debounce_abrir|button_sync_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|button_sync_reg1~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|button_sync_reg1~q\);

-- Location: LCCOMB_X19_Y6_N0
\u_debounce_abrir|button_sync_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|button_sync_reg2~feeder_combout\ = \u_debounce_abrir|button_sync_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_debounce_abrir|button_sync_reg1~q\,
	combout => \u_debounce_abrir|button_sync_reg2~feeder_combout\);

-- Location: FF_X19_Y6_N1
\u_debounce_abrir|button_sync_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|button_sync_reg2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|button_sync_reg2~q\);

-- Location: LCCOMB_X20_Y7_N0
\u_debounce_abrir|counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[0]~16_combout\ = \u_debounce_abrir|counter\(0) $ (VCC)
-- \u_debounce_abrir|counter[0]~17\ = CARRY(\u_debounce_abrir|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(0),
	datad => VCC,
	combout => \u_debounce_abrir|counter[0]~16_combout\,
	cout => \u_debounce_abrir|counter[0]~17\);

-- Location: LCCOMB_X19_Y7_N6
\u_debounce_abrir|counter[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[0]~38_combout\ = (\u_debounce_abrir|button_sync_reg2~q\ $ (!\u_debounce_abrir|button_state~q\)) # (!\u_debounce_abrir|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|button_sync_reg2~q\,
	datac => \u_debounce_abrir|button_state~q\,
	datad => \u_debounce_abrir|LessThan0~3_combout\,
	combout => \u_debounce_abrir|counter[0]~38_combout\);

-- Location: FF_X20_Y7_N1
\u_debounce_abrir|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[0]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(0));

-- Location: LCCOMB_X20_Y7_N2
\u_debounce_abrir|counter[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[1]~18_combout\ = (\u_debounce_abrir|counter\(1) & (!\u_debounce_abrir|counter[0]~17\)) # (!\u_debounce_abrir|counter\(1) & ((\u_debounce_abrir|counter[0]~17\) # (GND)))
-- \u_debounce_abrir|counter[1]~19\ = CARRY((!\u_debounce_abrir|counter[0]~17\) # (!\u_debounce_abrir|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(1),
	datad => VCC,
	cin => \u_debounce_abrir|counter[0]~17\,
	combout => \u_debounce_abrir|counter[1]~18_combout\,
	cout => \u_debounce_abrir|counter[1]~19\);

-- Location: FF_X20_Y7_N3
\u_debounce_abrir|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[1]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(1));

-- Location: LCCOMB_X20_Y7_N4
\u_debounce_abrir|counter[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[2]~20_combout\ = (\u_debounce_abrir|counter\(2) & (\u_debounce_abrir|counter[1]~19\ $ (GND))) # (!\u_debounce_abrir|counter\(2) & (!\u_debounce_abrir|counter[1]~19\ & VCC))
-- \u_debounce_abrir|counter[2]~21\ = CARRY((\u_debounce_abrir|counter\(2) & !\u_debounce_abrir|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(2),
	datad => VCC,
	cin => \u_debounce_abrir|counter[1]~19\,
	combout => \u_debounce_abrir|counter[2]~20_combout\,
	cout => \u_debounce_abrir|counter[2]~21\);

-- Location: FF_X20_Y7_N5
\u_debounce_abrir|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[2]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(2));

-- Location: LCCOMB_X20_Y7_N6
\u_debounce_abrir|counter[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[3]~22_combout\ = (\u_debounce_abrir|counter\(3) & (!\u_debounce_abrir|counter[2]~21\)) # (!\u_debounce_abrir|counter\(3) & ((\u_debounce_abrir|counter[2]~21\) # (GND)))
-- \u_debounce_abrir|counter[3]~23\ = CARRY((!\u_debounce_abrir|counter[2]~21\) # (!\u_debounce_abrir|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(3),
	datad => VCC,
	cin => \u_debounce_abrir|counter[2]~21\,
	combout => \u_debounce_abrir|counter[3]~22_combout\,
	cout => \u_debounce_abrir|counter[3]~23\);

-- Location: FF_X20_Y7_N7
\u_debounce_abrir|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[3]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(3));

-- Location: LCCOMB_X20_Y7_N8
\u_debounce_abrir|counter[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[4]~24_combout\ = (\u_debounce_abrir|counter\(4) & (\u_debounce_abrir|counter[3]~23\ $ (GND))) # (!\u_debounce_abrir|counter\(4) & (!\u_debounce_abrir|counter[3]~23\ & VCC))
-- \u_debounce_abrir|counter[4]~25\ = CARRY((\u_debounce_abrir|counter\(4) & !\u_debounce_abrir|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(4),
	datad => VCC,
	cin => \u_debounce_abrir|counter[3]~23\,
	combout => \u_debounce_abrir|counter[4]~24_combout\,
	cout => \u_debounce_abrir|counter[4]~25\);

-- Location: FF_X20_Y7_N9
\u_debounce_abrir|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[4]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(4));

-- Location: LCCOMB_X20_Y7_N10
\u_debounce_abrir|counter[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[5]~26_combout\ = (\u_debounce_abrir|counter\(5) & (!\u_debounce_abrir|counter[4]~25\)) # (!\u_debounce_abrir|counter\(5) & ((\u_debounce_abrir|counter[4]~25\) # (GND)))
-- \u_debounce_abrir|counter[5]~27\ = CARRY((!\u_debounce_abrir|counter[4]~25\) # (!\u_debounce_abrir|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(5),
	datad => VCC,
	cin => \u_debounce_abrir|counter[4]~25\,
	combout => \u_debounce_abrir|counter[5]~26_combout\,
	cout => \u_debounce_abrir|counter[5]~27\);

-- Location: FF_X20_Y7_N11
\u_debounce_abrir|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[5]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(5));

-- Location: LCCOMB_X20_Y7_N12
\u_debounce_abrir|counter[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[6]~28_combout\ = (\u_debounce_abrir|counter\(6) & (\u_debounce_abrir|counter[5]~27\ $ (GND))) # (!\u_debounce_abrir|counter\(6) & (!\u_debounce_abrir|counter[5]~27\ & VCC))
-- \u_debounce_abrir|counter[6]~29\ = CARRY((\u_debounce_abrir|counter\(6) & !\u_debounce_abrir|counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(6),
	datad => VCC,
	cin => \u_debounce_abrir|counter[5]~27\,
	combout => \u_debounce_abrir|counter[6]~28_combout\,
	cout => \u_debounce_abrir|counter[6]~29\);

-- Location: FF_X20_Y7_N13
\u_debounce_abrir|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[6]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(6));

-- Location: LCCOMB_X20_Y7_N14
\u_debounce_abrir|counter[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[7]~30_combout\ = (\u_debounce_abrir|counter\(7) & (!\u_debounce_abrir|counter[6]~29\)) # (!\u_debounce_abrir|counter\(7) & ((\u_debounce_abrir|counter[6]~29\) # (GND)))
-- \u_debounce_abrir|counter[7]~31\ = CARRY((!\u_debounce_abrir|counter[6]~29\) # (!\u_debounce_abrir|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(7),
	datad => VCC,
	cin => \u_debounce_abrir|counter[6]~29\,
	combout => \u_debounce_abrir|counter[7]~30_combout\,
	cout => \u_debounce_abrir|counter[7]~31\);

-- Location: FF_X20_Y7_N15
\u_debounce_abrir|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[7]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(7));

-- Location: LCCOMB_X20_Y7_N16
\u_debounce_abrir|counter[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[8]~32_combout\ = (\u_debounce_abrir|counter\(8) & (\u_debounce_abrir|counter[7]~31\ $ (GND))) # (!\u_debounce_abrir|counter\(8) & (!\u_debounce_abrir|counter[7]~31\ & VCC))
-- \u_debounce_abrir|counter[8]~33\ = CARRY((\u_debounce_abrir|counter\(8) & !\u_debounce_abrir|counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(8),
	datad => VCC,
	cin => \u_debounce_abrir|counter[7]~31\,
	combout => \u_debounce_abrir|counter[8]~32_combout\,
	cout => \u_debounce_abrir|counter[8]~33\);

-- Location: FF_X20_Y7_N17
\u_debounce_abrir|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[8]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(8));

-- Location: LCCOMB_X20_Y7_N18
\u_debounce_abrir|counter[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[9]~34_combout\ = (\u_debounce_abrir|counter\(9) & (!\u_debounce_abrir|counter[8]~33\)) # (!\u_debounce_abrir|counter\(9) & ((\u_debounce_abrir|counter[8]~33\) # (GND)))
-- \u_debounce_abrir|counter[9]~35\ = CARRY((!\u_debounce_abrir|counter[8]~33\) # (!\u_debounce_abrir|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(9),
	datad => VCC,
	cin => \u_debounce_abrir|counter[8]~33\,
	combout => \u_debounce_abrir|counter[9]~34_combout\,
	cout => \u_debounce_abrir|counter[9]~35\);

-- Location: FF_X20_Y7_N19
\u_debounce_abrir|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[9]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(9));

-- Location: LCCOMB_X20_Y7_N20
\u_debounce_abrir|counter[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[10]~36_combout\ = (\u_debounce_abrir|counter\(10) & (\u_debounce_abrir|counter[9]~35\ $ (GND))) # (!\u_debounce_abrir|counter\(10) & (!\u_debounce_abrir|counter[9]~35\ & VCC))
-- \u_debounce_abrir|counter[10]~37\ = CARRY((\u_debounce_abrir|counter\(10) & !\u_debounce_abrir|counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(10),
	datad => VCC,
	cin => \u_debounce_abrir|counter[9]~35\,
	combout => \u_debounce_abrir|counter[10]~36_combout\,
	cout => \u_debounce_abrir|counter[10]~37\);

-- Location: FF_X20_Y7_N21
\u_debounce_abrir|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[10]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(10));

-- Location: LCCOMB_X20_Y7_N22
\u_debounce_abrir|counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[11]~39_combout\ = (\u_debounce_abrir|counter\(11) & (!\u_debounce_abrir|counter[10]~37\)) # (!\u_debounce_abrir|counter\(11) & ((\u_debounce_abrir|counter[10]~37\) # (GND)))
-- \u_debounce_abrir|counter[11]~40\ = CARRY((!\u_debounce_abrir|counter[10]~37\) # (!\u_debounce_abrir|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(11),
	datad => VCC,
	cin => \u_debounce_abrir|counter[10]~37\,
	combout => \u_debounce_abrir|counter[11]~39_combout\,
	cout => \u_debounce_abrir|counter[11]~40\);

-- Location: FF_X20_Y7_N23
\u_debounce_abrir|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[11]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(11));

-- Location: LCCOMB_X20_Y7_N24
\u_debounce_abrir|counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[12]~41_combout\ = (\u_debounce_abrir|counter\(12) & (\u_debounce_abrir|counter[11]~40\ $ (GND))) # (!\u_debounce_abrir|counter\(12) & (!\u_debounce_abrir|counter[11]~40\ & VCC))
-- \u_debounce_abrir|counter[12]~42\ = CARRY((\u_debounce_abrir|counter\(12) & !\u_debounce_abrir|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(12),
	datad => VCC,
	cin => \u_debounce_abrir|counter[11]~40\,
	combout => \u_debounce_abrir|counter[12]~41_combout\,
	cout => \u_debounce_abrir|counter[12]~42\);

-- Location: FF_X20_Y7_N25
\u_debounce_abrir|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[12]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(12));

-- Location: LCCOMB_X20_Y7_N26
\u_debounce_abrir|counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[13]~43_combout\ = (\u_debounce_abrir|counter\(13) & (!\u_debounce_abrir|counter[12]~42\)) # (!\u_debounce_abrir|counter\(13) & ((\u_debounce_abrir|counter[12]~42\) # (GND)))
-- \u_debounce_abrir|counter[13]~44\ = CARRY((!\u_debounce_abrir|counter[12]~42\) # (!\u_debounce_abrir|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(13),
	datad => VCC,
	cin => \u_debounce_abrir|counter[12]~42\,
	combout => \u_debounce_abrir|counter[13]~43_combout\,
	cout => \u_debounce_abrir|counter[13]~44\);

-- Location: FF_X20_Y7_N27
\u_debounce_abrir|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[13]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(13));

-- Location: LCCOMB_X20_Y7_N28
\u_debounce_abrir|counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[14]~45_combout\ = (\u_debounce_abrir|counter\(14) & (\u_debounce_abrir|counter[13]~44\ $ (GND))) # (!\u_debounce_abrir|counter\(14) & (!\u_debounce_abrir|counter[13]~44\ & VCC))
-- \u_debounce_abrir|counter[14]~46\ = CARRY((\u_debounce_abrir|counter\(14) & !\u_debounce_abrir|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(14),
	datad => VCC,
	cin => \u_debounce_abrir|counter[13]~44\,
	combout => \u_debounce_abrir|counter[14]~45_combout\,
	cout => \u_debounce_abrir|counter[14]~46\);

-- Location: FF_X20_Y7_N29
\u_debounce_abrir|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[14]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(14));

-- Location: LCCOMB_X20_Y7_N30
\u_debounce_abrir|counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|counter[15]~47_combout\ = \u_debounce_abrir|counter\(15) $ (\u_debounce_abrir|counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(15),
	cin => \u_debounce_abrir|counter[14]~46\,
	combout => \u_debounce_abrir|counter[15]~47_combout\);

-- Location: FF_X20_Y7_N31
\u_debounce_abrir|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|counter[15]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_abrir|counter[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|counter\(15));

-- Location: LCCOMB_X19_Y7_N22
\u_debounce_abrir|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|LessThan0~0_combout\ = (!\u_debounce_abrir|counter\(12) & (!\u_debounce_abrir|counter\(13) & (!\u_debounce_abrir|counter\(10) & !\u_debounce_abrir|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(12),
	datab => \u_debounce_abrir|counter\(13),
	datac => \u_debounce_abrir|counter\(10),
	datad => \u_debounce_abrir|counter\(11),
	combout => \u_debounce_abrir|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y7_N8
\u_debounce_abrir|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|LessThan0~1_combout\ = (!\u_debounce_abrir|counter\(7) & (((!\u_debounce_abrir|counter\(4) & !\u_debounce_abrir|counter\(5))) # (!\u_debounce_abrir|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|counter\(7),
	datab => \u_debounce_abrir|counter\(6),
	datac => \u_debounce_abrir|counter\(4),
	datad => \u_debounce_abrir|counter\(5),
	combout => \u_debounce_abrir|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y7_N10
\u_debounce_abrir|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|LessThan0~2_combout\ = (\u_debounce_abrir|LessThan0~0_combout\ & (((\u_debounce_abrir|LessThan0~1_combout\) # (!\u_debounce_abrir|counter\(9))) # (!\u_debounce_abrir|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_abrir|LessThan0~0_combout\,
	datab => \u_debounce_abrir|counter\(8),
	datac => \u_debounce_abrir|LessThan0~1_combout\,
	datad => \u_debounce_abrir|counter\(9),
	combout => \u_debounce_abrir|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y7_N12
\u_debounce_abrir|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|LessThan0~3_combout\ = ((\u_debounce_abrir|LessThan0~2_combout\) # (!\u_debounce_abrir|counter\(15))) # (!\u_debounce_abrir|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|counter\(14),
	datac => \u_debounce_abrir|counter\(15),
	datad => \u_debounce_abrir|LessThan0~2_combout\,
	combout => \u_debounce_abrir|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y7_N20
\u_debounce_abrir|button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_abrir|button_state~0_combout\ = (\u_debounce_abrir|LessThan0~3_combout\ & ((\u_debounce_abrir|button_state~q\))) # (!\u_debounce_abrir|LessThan0~3_combout\ & (\u_debounce_abrir|button_sync_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_abrir|button_sync_reg2~q\,
	datac => \u_debounce_abrir|button_state~q\,
	datad => \u_debounce_abrir|LessThan0~3_combout\,
	combout => \u_debounce_abrir|button_state~0_combout\);

-- Location: FF_X19_Y7_N21
\u_debounce_abrir|button_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_abrir|button_state~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_abrir|button_state~q\);

-- Location: LCCOMB_X17_Y10_N18
\u_control|siguiente_estado.PUERTA_ABRIENDO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\ = (\u_control|Equal0~0_combout\ & (\u_debounce_abrir|button_state~q\ & (\u_control|reg_piso_destino\(0) $ (!piso_actual_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|Equal0~0_combout\,
	datab => \u_control|reg_piso_destino\(0),
	datac => piso_actual_int(0),
	datad => \u_debounce_abrir|button_state~q\,
	combout => \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\);

-- Location: LCCOMB_X15_Y11_N12
\u_control|siguiente_estado.PUERTA_ABRIENDO~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABRIENDO~3_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & ((\u_control|siguiente_estado.PUERTA_ABRIENDO~0_combout\) # ((\u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\ & 
-- \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\,
	datac => \u_control|siguiente_estado.PUERTA_ABRIENDO~0_combout\,
	datad => \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\,
	combout => \u_control|siguiente_estado.PUERTA_ABRIENDO~3_combout\);

-- Location: FF_X15_Y11_N13
\u_control|estado_actual.PUERTA_ABRIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.PUERTA_ABRIENDO~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.PUERTA_ABRIENDO~q\);

-- Location: LCCOMB_X15_Y11_N16
\u_control|siguiente_estado.SOBREPESO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.SOBREPESO~2_combout\ = (\u_control|estado_actual.ESPERANDO_LLAMADA~q\) # ((\u_control|estado_actual.MOVIENDO~q\) # ((\u_control|estado_actual.SOBREPESO~q\) # (\u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.ESPERANDO_LLAMADA~q\,
	datab => \u_control|estado_actual.MOVIENDO~q\,
	datac => \u_control|estado_actual.SOBREPESO~q\,
	datad => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \u_control|siguiente_estado.SOBREPESO~2_combout\);

-- Location: LCCOMB_X15_Y11_N4
\u_control|siguiente_estado.SOBREPESO~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.SOBREPESO~3_combout\ = (!\u_personas|LessThan2~0_combout\ & (\u_control|siguiente_estado.SOBREPESO~2_combout\ & (!\fallo_energia~input_o\ & !\u_debounce_emergencia|button_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \u_control|siguiente_estado.SOBREPESO~2_combout\,
	datac => \fallo_energia~input_o\,
	datad => \u_debounce_emergencia|button_state~q\,
	combout => \u_control|siguiente_estado.SOBREPESO~3_combout\);

-- Location: FF_X15_Y11_N5
\u_control|estado_actual.SOBREPESO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.SOBREPESO~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.SOBREPESO~q\);

-- Location: LCCOMB_X15_Y11_N18
\u_control|cmd_abrir_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|cmd_abrir_puerta~0_combout\ = (!\u_control|estado_actual.PUERTA_ABRIENDO~q\ & (!\u_control|estado_actual.SOBREPESO~q\ & !\u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.PUERTA_ABRIENDO~q\,
	datac => \u_control|estado_actual.SOBREPESO~q\,
	datad => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \u_control|cmd_abrir_puerta~0_combout\);

-- Location: LCCOMB_X15_Y12_N8
\u_puerta|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector30~0_combout\ = (!\u_puerta|estado_actual.CERRADA~q\ & (((\u_control|siguiente_estado.INICIO~0_combout\) # (\u_control|cmd_abrir_puerta~0_combout\)) # (!\u_personas|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.CERRADA~q\,
	datab => \u_personas|LessThan2~0_combout\,
	datac => \u_control|siguiente_estado.INICIO~0_combout\,
	datad => \u_control|cmd_abrir_puerta~0_combout\,
	combout => \u_puerta|Selector30~0_combout\);

-- Location: LCCOMB_X15_Y12_N10
\u_puerta|Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector30~1_combout\ = (!\u_puerta|estado_actual.CERRANDO~q\ & (!\u_puerta|Selector30~0_combout\ & ((!\u_puerta|process_2~2_combout\) # (!\u_puerta|estado_actual.EMERGENCIA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.CERRANDO~q\,
	datab => \u_puerta|estado_actual.EMERGENCIA~q\,
	datac => \u_puerta|Selector30~0_combout\,
	datad => \u_puerta|process_2~2_combout\,
	combout => \u_puerta|Selector30~1_combout\);

-- Location: FF_X15_Y12_N11
\u_puerta|estado_actual.CERRADA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector30~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.CERRADA~q\);

-- Location: LCCOMB_X14_Y12_N14
\u_puerta|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector31~0_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & (!\u_puerta|estado_actual.CERRADA~q\ & (!\u_control|cmd_abrir_puerta~0_combout\ & \u_personas|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_puerta|estado_actual.CERRADA~q\,
	datac => \u_control|cmd_abrir_puerta~0_combout\,
	datad => \u_personas|LessThan2~0_combout\,
	combout => \u_puerta|Selector31~0_combout\);

-- Location: LCCOMB_X14_Y12_N16
\u_puerta|Selector36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector36~3_combout\ = (\u_puerta|Selector36~2_combout\) # ((\u_puerta|Selector36~0_combout\) # ((\u_puerta|Selector31~0_combout\) # (\u_puerta|Selector36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector36~2_combout\,
	datab => \u_puerta|Selector36~0_combout\,
	datac => \u_puerta|Selector31~0_combout\,
	datad => \u_puerta|Selector36~1_combout\,
	combout => \u_puerta|Selector36~3_combout\);

-- Location: LCCOMB_X14_Y12_N2
\u_puerta|Selector31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector31~1_combout\ = (\u_puerta|Selector36~3_combout\ & (\u_puerta|Selector31~0_combout\ & (\u_puerta|Selector32~0_combout\))) # (!\u_puerta|Selector36~3_combout\ & (((\u_puerta|estado_actual.ESPERA_ABRIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|Selector31~0_combout\,
	datab => \u_puerta|Selector32~0_combout\,
	datac => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datad => \u_puerta|Selector36~3_combout\,
	combout => \u_puerta|Selector31~1_combout\);

-- Location: FF_X14_Y12_N3
\u_puerta|estado_actual.ESPERA_ABRIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector31~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.ESPERA_ABRIR~q\);

-- Location: LCCOMB_X15_Y12_N22
\u_puerta|Selector32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|Selector32~1_combout\ = (\u_puerta|estado_actual.ESPERA_ABRIR~q\ & (\u_puerta|LessThan4~2_combout\ & (\u_puerta|Selector32~0_combout\ & \u_puerta|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ESPERA_ABRIR~q\,
	datab => \u_puerta|LessThan4~2_combout\,
	datac => \u_puerta|Selector32~0_combout\,
	datad => \u_puerta|process_2~2_combout\,
	combout => \u_puerta|Selector32~1_combout\);

-- Location: FF_X15_Y12_N23
\u_puerta|estado_actual.ABRIENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_puerta|clk_1kHz~clkctrl_outclk\,
	d => \u_puerta|Selector32~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_puerta|estado_actual.ABRIENDO~q\);

-- Location: LCCOMB_X15_Y11_N30
\comb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\u_control|siguiente_estado.INICIO~0_combout\) # ((!\u_control|estado_actual.PUERTA_ABRIENDO~q\ & (!\u_control|estado_actual.SOBREPESO~q\ & !\u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.PUERTA_ABRIENDO~q\,
	datab => \u_control|estado_actual.SOBREPESO~q\,
	datac => \u_control|siguiente_estado.INICIO~0_combout\,
	datad => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X15_Y12_N2
\comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\comb~6_combout\) # ((!\u_puerta|estado_actual.ABRIENDO~q\ & (!\u_puerta|estado_actual.ABIERTA~q\ & !\u_puerta|estado_actual.ESPERA_CERRAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ABRIENDO~q\,
	datab => \comb~6_combout\,
	datac => \u_puerta|estado_actual.ABIERTA~q\,
	datad => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X16_Y12_N6
\timer_cierre_puerta|count[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[0]~26_combout\ = \timer_cierre_puerta|count\(0) $ (VCC)
-- \timer_cierre_puerta|count[0]~27\ = CARRY(\timer_cierre_puerta|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(0),
	datad => VCC,
	combout => \timer_cierre_puerta|count[0]~26_combout\,
	cout => \timer_cierre_puerta|count[0]~27\);

-- Location: LCCOMB_X15_Y12_N6
\u_puerta|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_puerta|WideOr1~combout\ = (\u_puerta|estado_actual.ABIERTA~q\) # ((\u_puerta|estado_actual.ABRIENDO~q\) # (\u_puerta|estado_actual.ESPERA_CERRAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ABIERTA~q\,
	datac => \u_puerta|estado_actual.ABRIENDO~q\,
	datad => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	combout => \u_puerta|WideOr1~combout\);

-- Location: LCCOMB_X16_Y12_N4
\timer_cierre_puerta|count[11]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[11]~74_combout\ = ((!\u_control|siguiente_estado.INICIO~0_combout\ & (!\u_control|cmd_abrir_puerta~0_combout\ & \u_puerta|WideOr1~combout\))) # (!\timer_cierre_puerta|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_control|cmd_abrir_puerta~0_combout\,
	datac => \u_puerta|WideOr1~combout\,
	datad => \timer_cierre_puerta|LessThan0~9_combout\,
	combout => \timer_cierre_puerta|count[11]~74_combout\);

-- Location: LCCOMB_X15_Y12_N30
\timer_cierre_puerta|count[11]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[11]~75_combout\ = (\timer_cierre_puerta|timer_running~q\) # ((!\u_control|cmd_abrir_puerta~0_combout\ & (!\u_control|siguiente_estado.INICIO~0_combout\ & \u_puerta|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|cmd_abrir_puerta~0_combout\,
	datab => \u_control|siguiente_estado.INICIO~0_combout\,
	datac => \timer_cierre_puerta|timer_running~q\,
	datad => \u_puerta|WideOr1~combout\,
	combout => \timer_cierre_puerta|count[11]~75_combout\);

-- Location: FF_X16_Y12_N7
\timer_cierre_puerta|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[0]~26_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(0));

-- Location: LCCOMB_X16_Y12_N8
\timer_cierre_puerta|count[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[1]~28_combout\ = (\timer_cierre_puerta|count\(1) & (!\timer_cierre_puerta|count[0]~27\)) # (!\timer_cierre_puerta|count\(1) & ((\timer_cierre_puerta|count[0]~27\) # (GND)))
-- \timer_cierre_puerta|count[1]~29\ = CARRY((!\timer_cierre_puerta|count[0]~27\) # (!\timer_cierre_puerta|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(1),
	datad => VCC,
	cin => \timer_cierre_puerta|count[0]~27\,
	combout => \timer_cierre_puerta|count[1]~28_combout\,
	cout => \timer_cierre_puerta|count[1]~29\);

-- Location: FF_X16_Y12_N9
\timer_cierre_puerta|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[1]~28_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(1));

-- Location: LCCOMB_X16_Y12_N10
\timer_cierre_puerta|count[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[2]~30_combout\ = (\timer_cierre_puerta|count\(2) & (\timer_cierre_puerta|count[1]~29\ $ (GND))) # (!\timer_cierre_puerta|count\(2) & (!\timer_cierre_puerta|count[1]~29\ & VCC))
-- \timer_cierre_puerta|count[2]~31\ = CARRY((\timer_cierre_puerta|count\(2) & !\timer_cierre_puerta|count[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(2),
	datad => VCC,
	cin => \timer_cierre_puerta|count[1]~29\,
	combout => \timer_cierre_puerta|count[2]~30_combout\,
	cout => \timer_cierre_puerta|count[2]~31\);

-- Location: FF_X16_Y12_N11
\timer_cierre_puerta|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[2]~30_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(2));

-- Location: LCCOMB_X16_Y12_N12
\timer_cierre_puerta|count[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[3]~32_combout\ = (\timer_cierre_puerta|count\(3) & (!\timer_cierre_puerta|count[2]~31\)) # (!\timer_cierre_puerta|count\(3) & ((\timer_cierre_puerta|count[2]~31\) # (GND)))
-- \timer_cierre_puerta|count[3]~33\ = CARRY((!\timer_cierre_puerta|count[2]~31\) # (!\timer_cierre_puerta|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(3),
	datad => VCC,
	cin => \timer_cierre_puerta|count[2]~31\,
	combout => \timer_cierre_puerta|count[3]~32_combout\,
	cout => \timer_cierre_puerta|count[3]~33\);

-- Location: FF_X16_Y12_N13
\timer_cierre_puerta|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[3]~32_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(3));

-- Location: LCCOMB_X16_Y12_N14
\timer_cierre_puerta|count[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[4]~34_combout\ = (\timer_cierre_puerta|count\(4) & (\timer_cierre_puerta|count[3]~33\ $ (GND))) # (!\timer_cierre_puerta|count\(4) & (!\timer_cierre_puerta|count[3]~33\ & VCC))
-- \timer_cierre_puerta|count[4]~35\ = CARRY((\timer_cierre_puerta|count\(4) & !\timer_cierre_puerta|count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(4),
	datad => VCC,
	cin => \timer_cierre_puerta|count[3]~33\,
	combout => \timer_cierre_puerta|count[4]~34_combout\,
	cout => \timer_cierre_puerta|count[4]~35\);

-- Location: FF_X16_Y12_N15
\timer_cierre_puerta|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[4]~34_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(4));

-- Location: LCCOMB_X16_Y12_N16
\timer_cierre_puerta|count[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[5]~36_combout\ = (\timer_cierre_puerta|count\(5) & (!\timer_cierre_puerta|count[4]~35\)) # (!\timer_cierre_puerta|count\(5) & ((\timer_cierre_puerta|count[4]~35\) # (GND)))
-- \timer_cierre_puerta|count[5]~37\ = CARRY((!\timer_cierre_puerta|count[4]~35\) # (!\timer_cierre_puerta|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(5),
	datad => VCC,
	cin => \timer_cierre_puerta|count[4]~35\,
	combout => \timer_cierre_puerta|count[5]~36_combout\,
	cout => \timer_cierre_puerta|count[5]~37\);

-- Location: FF_X16_Y12_N17
\timer_cierre_puerta|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[5]~36_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(5));

-- Location: LCCOMB_X16_Y12_N18
\timer_cierre_puerta|count[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[6]~38_combout\ = (\timer_cierre_puerta|count\(6) & (\timer_cierre_puerta|count[5]~37\ $ (GND))) # (!\timer_cierre_puerta|count\(6) & (!\timer_cierre_puerta|count[5]~37\ & VCC))
-- \timer_cierre_puerta|count[6]~39\ = CARRY((\timer_cierre_puerta|count\(6) & !\timer_cierre_puerta|count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(6),
	datad => VCC,
	cin => \timer_cierre_puerta|count[5]~37\,
	combout => \timer_cierre_puerta|count[6]~38_combout\,
	cout => \timer_cierre_puerta|count[6]~39\);

-- Location: LCCOMB_X16_Y11_N26
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y12_N19
\timer_cierre_puerta|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[6]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(6));

-- Location: LCCOMB_X16_Y12_N20
\timer_cierre_puerta|count[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[7]~40_combout\ = (\timer_cierre_puerta|count\(7) & (!\timer_cierre_puerta|count[6]~39\)) # (!\timer_cierre_puerta|count\(7) & ((\timer_cierre_puerta|count[6]~39\) # (GND)))
-- \timer_cierre_puerta|count[7]~41\ = CARRY((!\timer_cierre_puerta|count[6]~39\) # (!\timer_cierre_puerta|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(7),
	datad => VCC,
	cin => \timer_cierre_puerta|count[6]~39\,
	combout => \timer_cierre_puerta|count[7]~40_combout\,
	cout => \timer_cierre_puerta|count[7]~41\);

-- Location: FF_X16_Y12_N21
\timer_cierre_puerta|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[7]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(7));

-- Location: LCCOMB_X16_Y12_N22
\timer_cierre_puerta|count[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[8]~42_combout\ = (\timer_cierre_puerta|count\(8) & (\timer_cierre_puerta|count[7]~41\ $ (GND))) # (!\timer_cierre_puerta|count\(8) & (!\timer_cierre_puerta|count[7]~41\ & VCC))
-- \timer_cierre_puerta|count[8]~43\ = CARRY((\timer_cierre_puerta|count\(8) & !\timer_cierre_puerta|count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(8),
	datad => VCC,
	cin => \timer_cierre_puerta|count[7]~41\,
	combout => \timer_cierre_puerta|count[8]~42_combout\,
	cout => \timer_cierre_puerta|count[8]~43\);

-- Location: FF_X16_Y12_N23
\timer_cierre_puerta|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[8]~42_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(8));

-- Location: LCCOMB_X16_Y12_N24
\timer_cierre_puerta|count[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[9]~44_combout\ = (\timer_cierre_puerta|count\(9) & (!\timer_cierre_puerta|count[8]~43\)) # (!\timer_cierre_puerta|count\(9) & ((\timer_cierre_puerta|count[8]~43\) # (GND)))
-- \timer_cierre_puerta|count[9]~45\ = CARRY((!\timer_cierre_puerta|count[8]~43\) # (!\timer_cierre_puerta|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(9),
	datad => VCC,
	cin => \timer_cierre_puerta|count[8]~43\,
	combout => \timer_cierre_puerta|count[9]~44_combout\,
	cout => \timer_cierre_puerta|count[9]~45\);

-- Location: FF_X16_Y12_N25
\timer_cierre_puerta|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[9]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(9));

-- Location: LCCOMB_X16_Y12_N26
\timer_cierre_puerta|count[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[10]~46_combout\ = (\timer_cierre_puerta|count\(10) & (\timer_cierre_puerta|count[9]~45\ $ (GND))) # (!\timer_cierre_puerta|count\(10) & (!\timer_cierre_puerta|count[9]~45\ & VCC))
-- \timer_cierre_puerta|count[10]~47\ = CARRY((\timer_cierre_puerta|count\(10) & !\timer_cierre_puerta|count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(10),
	datad => VCC,
	cin => \timer_cierre_puerta|count[9]~45\,
	combout => \timer_cierre_puerta|count[10]~46_combout\,
	cout => \timer_cierre_puerta|count[10]~47\);

-- Location: FF_X16_Y12_N27
\timer_cierre_puerta|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[10]~46_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(10));

-- Location: LCCOMB_X16_Y12_N28
\timer_cierre_puerta|count[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[11]~48_combout\ = (\timer_cierre_puerta|count\(11) & (!\timer_cierre_puerta|count[10]~47\)) # (!\timer_cierre_puerta|count\(11) & ((\timer_cierre_puerta|count[10]~47\) # (GND)))
-- \timer_cierre_puerta|count[11]~49\ = CARRY((!\timer_cierre_puerta|count[10]~47\) # (!\timer_cierre_puerta|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(11),
	datad => VCC,
	cin => \timer_cierre_puerta|count[10]~47\,
	combout => \timer_cierre_puerta|count[11]~48_combout\,
	cout => \timer_cierre_puerta|count[11]~49\);

-- Location: FF_X16_Y12_N29
\timer_cierre_puerta|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[11]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(11));

-- Location: LCCOMB_X16_Y12_N30
\timer_cierre_puerta|count[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[12]~50_combout\ = (\timer_cierre_puerta|count\(12) & (\timer_cierre_puerta|count[11]~49\ $ (GND))) # (!\timer_cierre_puerta|count\(12) & (!\timer_cierre_puerta|count[11]~49\ & VCC))
-- \timer_cierre_puerta|count[12]~51\ = CARRY((\timer_cierre_puerta|count\(12) & !\timer_cierre_puerta|count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(12),
	datad => VCC,
	cin => \timer_cierre_puerta|count[11]~49\,
	combout => \timer_cierre_puerta|count[12]~50_combout\,
	cout => \timer_cierre_puerta|count[12]~51\);

-- Location: FF_X16_Y12_N31
\timer_cierre_puerta|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[12]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(12));

-- Location: LCCOMB_X16_Y11_N0
\timer_cierre_puerta|count[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[13]~52_combout\ = (\timer_cierre_puerta|count\(13) & (!\timer_cierre_puerta|count[12]~51\)) # (!\timer_cierre_puerta|count\(13) & ((\timer_cierre_puerta|count[12]~51\) # (GND)))
-- \timer_cierre_puerta|count[13]~53\ = CARRY((!\timer_cierre_puerta|count[12]~51\) # (!\timer_cierre_puerta|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(13),
	datad => VCC,
	cin => \timer_cierre_puerta|count[12]~51\,
	combout => \timer_cierre_puerta|count[13]~52_combout\,
	cout => \timer_cierre_puerta|count[13]~53\);

-- Location: FF_X16_Y11_N1
\timer_cierre_puerta|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[13]~52_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(13));

-- Location: LCCOMB_X16_Y11_N2
\timer_cierre_puerta|count[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[14]~54_combout\ = (\timer_cierre_puerta|count\(14) & (\timer_cierre_puerta|count[13]~53\ $ (GND))) # (!\timer_cierre_puerta|count\(14) & (!\timer_cierre_puerta|count[13]~53\ & VCC))
-- \timer_cierre_puerta|count[14]~55\ = CARRY((\timer_cierre_puerta|count\(14) & !\timer_cierre_puerta|count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(14),
	datad => VCC,
	cin => \timer_cierre_puerta|count[13]~53\,
	combout => \timer_cierre_puerta|count[14]~54_combout\,
	cout => \timer_cierre_puerta|count[14]~55\);

-- Location: FF_X16_Y11_N3
\timer_cierre_puerta|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[14]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(14));

-- Location: LCCOMB_X16_Y11_N4
\timer_cierre_puerta|count[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[15]~56_combout\ = (\timer_cierre_puerta|count\(15) & (!\timer_cierre_puerta|count[14]~55\)) # (!\timer_cierre_puerta|count\(15) & ((\timer_cierre_puerta|count[14]~55\) # (GND)))
-- \timer_cierre_puerta|count[15]~57\ = CARRY((!\timer_cierre_puerta|count[14]~55\) # (!\timer_cierre_puerta|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(15),
	datad => VCC,
	cin => \timer_cierre_puerta|count[14]~55\,
	combout => \timer_cierre_puerta|count[15]~56_combout\,
	cout => \timer_cierre_puerta|count[15]~57\);

-- Location: FF_X16_Y11_N5
\timer_cierre_puerta|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[15]~56_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(15));

-- Location: LCCOMB_X16_Y11_N6
\timer_cierre_puerta|count[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[16]~58_combout\ = (\timer_cierre_puerta|count\(16) & (\timer_cierre_puerta|count[15]~57\ $ (GND))) # (!\timer_cierre_puerta|count\(16) & (!\timer_cierre_puerta|count[15]~57\ & VCC))
-- \timer_cierre_puerta|count[16]~59\ = CARRY((\timer_cierre_puerta|count\(16) & !\timer_cierre_puerta|count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(16),
	datad => VCC,
	cin => \timer_cierre_puerta|count[15]~57\,
	combout => \timer_cierre_puerta|count[16]~58_combout\,
	cout => \timer_cierre_puerta|count[16]~59\);

-- Location: FF_X16_Y11_N7
\timer_cierre_puerta|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[16]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(16));

-- Location: LCCOMB_X16_Y11_N8
\timer_cierre_puerta|count[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[17]~60_combout\ = (\timer_cierre_puerta|count\(17) & (!\timer_cierre_puerta|count[16]~59\)) # (!\timer_cierre_puerta|count\(17) & ((\timer_cierre_puerta|count[16]~59\) # (GND)))
-- \timer_cierre_puerta|count[17]~61\ = CARRY((!\timer_cierre_puerta|count[16]~59\) # (!\timer_cierre_puerta|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(17),
	datad => VCC,
	cin => \timer_cierre_puerta|count[16]~59\,
	combout => \timer_cierre_puerta|count[17]~60_combout\,
	cout => \timer_cierre_puerta|count[17]~61\);

-- Location: FF_X16_Y11_N9
\timer_cierre_puerta|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[17]~60_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(17));

-- Location: LCCOMB_X16_Y11_N10
\timer_cierre_puerta|count[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[18]~62_combout\ = (\timer_cierre_puerta|count\(18) & (\timer_cierre_puerta|count[17]~61\ $ (GND))) # (!\timer_cierre_puerta|count\(18) & (!\timer_cierre_puerta|count[17]~61\ & VCC))
-- \timer_cierre_puerta|count[18]~63\ = CARRY((\timer_cierre_puerta|count\(18) & !\timer_cierre_puerta|count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(18),
	datad => VCC,
	cin => \timer_cierre_puerta|count[17]~61\,
	combout => \timer_cierre_puerta|count[18]~62_combout\,
	cout => \timer_cierre_puerta|count[18]~63\);

-- Location: FF_X16_Y11_N11
\timer_cierre_puerta|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[18]~62_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(18));

-- Location: LCCOMB_X16_Y11_N12
\timer_cierre_puerta|count[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[19]~64_combout\ = (\timer_cierre_puerta|count\(19) & (!\timer_cierre_puerta|count[18]~63\)) # (!\timer_cierre_puerta|count\(19) & ((\timer_cierre_puerta|count[18]~63\) # (GND)))
-- \timer_cierre_puerta|count[19]~65\ = CARRY((!\timer_cierre_puerta|count[18]~63\) # (!\timer_cierre_puerta|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(19),
	datad => VCC,
	cin => \timer_cierre_puerta|count[18]~63\,
	combout => \timer_cierre_puerta|count[19]~64_combout\,
	cout => \timer_cierre_puerta|count[19]~65\);

-- Location: FF_X16_Y11_N13
\timer_cierre_puerta|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[19]~64_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(19));

-- Location: LCCOMB_X16_Y11_N14
\timer_cierre_puerta|count[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[20]~66_combout\ = (\timer_cierre_puerta|count\(20) & (\timer_cierre_puerta|count[19]~65\ $ (GND))) # (!\timer_cierre_puerta|count\(20) & (!\timer_cierre_puerta|count[19]~65\ & VCC))
-- \timer_cierre_puerta|count[20]~67\ = CARRY((\timer_cierre_puerta|count\(20) & !\timer_cierre_puerta|count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(20),
	datad => VCC,
	cin => \timer_cierre_puerta|count[19]~65\,
	combout => \timer_cierre_puerta|count[20]~66_combout\,
	cout => \timer_cierre_puerta|count[20]~67\);

-- Location: FF_X16_Y11_N15
\timer_cierre_puerta|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[20]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(20));

-- Location: LCCOMB_X16_Y11_N16
\timer_cierre_puerta|count[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[21]~68_combout\ = (\timer_cierre_puerta|count\(21) & (!\timer_cierre_puerta|count[20]~67\)) # (!\timer_cierre_puerta|count\(21) & ((\timer_cierre_puerta|count[20]~67\) # (GND)))
-- \timer_cierre_puerta|count[21]~69\ = CARRY((!\timer_cierre_puerta|count[20]~67\) # (!\timer_cierre_puerta|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(21),
	datad => VCC,
	cin => \timer_cierre_puerta|count[20]~67\,
	combout => \timer_cierre_puerta|count[21]~68_combout\,
	cout => \timer_cierre_puerta|count[21]~69\);

-- Location: FF_X16_Y11_N17
\timer_cierre_puerta|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[21]~68_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(21));

-- Location: LCCOMB_X16_Y11_N18
\timer_cierre_puerta|count[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[22]~70_combout\ = (\timer_cierre_puerta|count\(22) & (\timer_cierre_puerta|count[21]~69\ $ (GND))) # (!\timer_cierre_puerta|count\(22) & (!\timer_cierre_puerta|count[21]~69\ & VCC))
-- \timer_cierre_puerta|count[22]~71\ = CARRY((\timer_cierre_puerta|count\(22) & !\timer_cierre_puerta|count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(22),
	datad => VCC,
	cin => \timer_cierre_puerta|count[21]~69\,
	combout => \timer_cierre_puerta|count[22]~70_combout\,
	cout => \timer_cierre_puerta|count[22]~71\);

-- Location: FF_X16_Y11_N19
\timer_cierre_puerta|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[22]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(22));

-- Location: LCCOMB_X16_Y11_N20
\timer_cierre_puerta|count[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[23]~72_combout\ = (\timer_cierre_puerta|count\(23) & (!\timer_cierre_puerta|count[22]~71\)) # (!\timer_cierre_puerta|count\(23) & ((\timer_cierre_puerta|count[22]~71\) # (GND)))
-- \timer_cierre_puerta|count[23]~73\ = CARRY((!\timer_cierre_puerta|count[22]~71\) # (!\timer_cierre_puerta|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(23),
	datad => VCC,
	cin => \timer_cierre_puerta|count[22]~71\,
	combout => \timer_cierre_puerta|count[23]~72_combout\,
	cout => \timer_cierre_puerta|count[23]~73\);

-- Location: FF_X16_Y11_N21
\timer_cierre_puerta|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[23]~72_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(23));

-- Location: LCCOMB_X16_Y11_N22
\timer_cierre_puerta|count[24]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[24]~76_combout\ = (\timer_cierre_puerta|count\(24) & (\timer_cierre_puerta|count[23]~73\ $ (GND))) # (!\timer_cierre_puerta|count\(24) & (!\timer_cierre_puerta|count[23]~73\ & VCC))
-- \timer_cierre_puerta|count[24]~77\ = CARRY((\timer_cierre_puerta|count\(24) & !\timer_cierre_puerta|count[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(24),
	datad => VCC,
	cin => \timer_cierre_puerta|count[23]~73\,
	combout => \timer_cierre_puerta|count[24]~76_combout\,
	cout => \timer_cierre_puerta|count[24]~77\);

-- Location: FF_X16_Y11_N23
\timer_cierre_puerta|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[24]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(24));

-- Location: LCCOMB_X16_Y11_N24
\timer_cierre_puerta|count[25]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|count[25]~78_combout\ = \timer_cierre_puerta|count[24]~77\ $ (\timer_cierre_puerta|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_cierre_puerta|count\(25),
	cin => \timer_cierre_puerta|count[24]~77\,
	combout => \timer_cierre_puerta|count[25]~78_combout\);

-- Location: FF_X16_Y11_N25
\timer_cierre_puerta|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|count[25]~78_combout\,
	asdata => \comb~5_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	sload => \timer_cierre_puerta|count[11]~74_combout\,
	ena => \timer_cierre_puerta|count[11]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|count\(25));

-- Location: LCCOMB_X17_Y12_N12
\timer_cierre_puerta|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~2_combout\ = (!\timer_cierre_puerta|count\(11) & (!\timer_cierre_puerta|count\(12) & (!\timer_cierre_puerta|count\(14) & !\timer_cierre_puerta|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(11),
	datab => \timer_cierre_puerta|count\(12),
	datac => \timer_cierre_puerta|count\(14),
	datad => \timer_cierre_puerta|count\(16),
	combout => \timer_cierre_puerta|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y12_N4
\timer_cierre_puerta|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~6_combout\ = ((!\timer_cierre_puerta|count\(9) & !\timer_cierre_puerta|count\(8))) # (!\timer_cierre_puerta|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(10),
	datac => \timer_cierre_puerta|count\(9),
	datad => \timer_cierre_puerta|count\(8),
	combout => \timer_cierre_puerta|LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y11_N30
\timer_cierre_puerta|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~0_combout\ = (!\timer_cierre_puerta|count\(16) & (((!\timer_cierre_puerta|count\(14) & !\timer_cierre_puerta|count\(13))) # (!\timer_cierre_puerta|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(16),
	datab => \timer_cierre_puerta|count\(14),
	datac => \timer_cierre_puerta|count\(15),
	datad => \timer_cierre_puerta|count\(13),
	combout => \timer_cierre_puerta|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y11_N28
\timer_cierre_puerta|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~1_combout\ = (((\timer_cierre_puerta|LessThan0~0_combout\) # (!\timer_cierre_puerta|count\(18))) # (!\timer_cierre_puerta|count\(17))) # (!\timer_cierre_puerta|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(19),
	datab => \timer_cierre_puerta|count\(17),
	datac => \timer_cierre_puerta|LessThan0~0_combout\,
	datad => \timer_cierre_puerta|count\(18),
	combout => \timer_cierre_puerta|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y12_N22
\timer_cierre_puerta|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~3_combout\ = (!\timer_cierre_puerta|count\(7) & (!\timer_cierre_puerta|count\(9) & !\timer_cierre_puerta|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_cierre_puerta|count\(7),
	datac => \timer_cierre_puerta|count\(9),
	datad => \timer_cierre_puerta|count\(6),
	combout => \timer_cierre_puerta|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y12_N20
\timer_cierre_puerta|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~4_combout\ = (((!\timer_cierre_puerta|count\(2)) # (!\timer_cierre_puerta|count\(3))) # (!\timer_cierre_puerta|count\(0))) # (!\timer_cierre_puerta|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(1),
	datab => \timer_cierre_puerta|count\(0),
	datac => \timer_cierre_puerta|count\(3),
	datad => \timer_cierre_puerta|count\(2),
	combout => \timer_cierre_puerta|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y12_N6
\timer_cierre_puerta|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~5_combout\ = (\timer_cierre_puerta|LessThan0~3_combout\ & (((\timer_cierre_puerta|LessThan0~4_combout\) # (!\timer_cierre_puerta|count\(4))) # (!\timer_cierre_puerta|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(5),
	datab => \timer_cierre_puerta|count\(4),
	datac => \timer_cierre_puerta|LessThan0~3_combout\,
	datad => \timer_cierre_puerta|LessThan0~4_combout\,
	combout => \timer_cierre_puerta|LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y12_N18
\timer_cierre_puerta|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~7_combout\ = (\timer_cierre_puerta|LessThan0~1_combout\) # ((\timer_cierre_puerta|LessThan0~2_combout\ & ((\timer_cierre_puerta|LessThan0~6_combout\) # (\timer_cierre_puerta|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|LessThan0~2_combout\,
	datab => \timer_cierre_puerta|LessThan0~6_combout\,
	datac => \timer_cierre_puerta|LessThan0~1_combout\,
	datad => \timer_cierre_puerta|LessThan0~5_combout\,
	combout => \timer_cierre_puerta|LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y12_N0
\timer_cierre_puerta|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~8_combout\ = (\timer_cierre_puerta|count\(22)) # ((\timer_cierre_puerta|count\(21) & ((\timer_cierre_puerta|count\(20)) # (!\timer_cierre_puerta|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(20),
	datab => \timer_cierre_puerta|count\(22),
	datac => \timer_cierre_puerta|count\(21),
	datad => \timer_cierre_puerta|LessThan0~7_combout\,
	combout => \timer_cierre_puerta|LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y12_N2
\timer_cierre_puerta|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|LessThan0~9_combout\ = ((!\timer_cierre_puerta|count\(24) & ((!\timer_cierre_puerta|LessThan0~8_combout\) # (!\timer_cierre_puerta|count\(23))))) # (!\timer_cierre_puerta|count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|count\(23),
	datab => \timer_cierre_puerta|count\(24),
	datac => \timer_cierre_puerta|count\(25),
	datad => \timer_cierre_puerta|LessThan0~8_combout\,
	combout => \timer_cierre_puerta|LessThan0~9_combout\);

-- Location: LCCOMB_X17_Y12_N10
\timer_cierre_puerta|timer_running~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|timer_running~0_combout\ = ((\timer_cierre_puerta|timer_running~q\ & \timer_cierre_puerta|LessThan0~9_combout\)) # (!\comb~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~5_combout\,
	datac => \timer_cierre_puerta|timer_running~q\,
	datad => \timer_cierre_puerta|LessThan0~9_combout\,
	combout => \timer_cierre_puerta|timer_running~0_combout\);

-- Location: FF_X17_Y12_N11
\timer_cierre_puerta|timer_running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|timer_running~0_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|timer_running~q\);

-- Location: LCCOMB_X17_Y12_N0
\timer_cierre_puerta|done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cierre_puerta|done~0_combout\ = (\comb~5_combout\ & ((\timer_cierre_puerta|timer_running~q\ & ((!\timer_cierre_puerta|LessThan0~9_combout\))) # (!\timer_cierre_puerta|timer_running~q\ & (\timer_cierre_puerta|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_cierre_puerta|timer_running~q\,
	datab => \comb~5_combout\,
	datac => \timer_cierre_puerta|done~q\,
	datad => \timer_cierre_puerta|LessThan0~9_combout\,
	combout => \timer_cierre_puerta|done~0_combout\);

-- Location: FF_X17_Y12_N1
\timer_cierre_puerta|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cierre_puerta|done~0_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_cierre_puerta|done~q\);

-- Location: IOIBUF_X23_Y0_N15
\boton_cerrar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton_cerrar,
	o => \boton_cerrar~input_o\);

-- Location: LCCOMB_X20_Y6_N8
\u_debounce_cerrar|button_sync_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|button_sync_reg1~feeder_combout\ = \boton_cerrar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton_cerrar~input_o\,
	combout => \u_debounce_cerrar|button_sync_reg1~feeder_combout\);

-- Location: FF_X20_Y6_N9
\u_debounce_cerrar|button_sync_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|button_sync_reg1~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|button_sync_reg1~q\);

-- Location: LCCOMB_X19_Y8_N6
\u_debounce_cerrar|button_sync_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|button_sync_reg2~feeder_combout\ = \u_debounce_cerrar|button_sync_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_debounce_cerrar|button_sync_reg1~q\,
	combout => \u_debounce_cerrar|button_sync_reg2~feeder_combout\);

-- Location: FF_X19_Y8_N7
\u_debounce_cerrar|button_sync_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|button_sync_reg2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|button_sync_reg2~q\);

-- Location: LCCOMB_X20_Y8_N0
\u_debounce_cerrar|counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[0]~16_combout\ = \u_debounce_cerrar|counter\(0) $ (VCC)
-- \u_debounce_cerrar|counter[0]~17\ = CARRY(\u_debounce_cerrar|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(0),
	datad => VCC,
	combout => \u_debounce_cerrar|counter[0]~16_combout\,
	cout => \u_debounce_cerrar|counter[0]~17\);

-- Location: LCCOMB_X21_Y8_N16
\u_debounce_cerrar|counter[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[13]~26_combout\ = (\u_debounce_cerrar|button_sync_reg2~q\ $ (!\u_debounce_cerrar|button_state~q\)) # (!\u_debounce_cerrar|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|button_sync_reg2~q\,
	datac => \u_debounce_cerrar|button_state~q\,
	datad => \u_debounce_cerrar|LessThan0~3_combout\,
	combout => \u_debounce_cerrar|counter[13]~26_combout\);

-- Location: FF_X20_Y8_N1
\u_debounce_cerrar|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[0]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(0));

-- Location: LCCOMB_X20_Y8_N2
\u_debounce_cerrar|counter[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[1]~18_combout\ = (\u_debounce_cerrar|counter\(1) & (!\u_debounce_cerrar|counter[0]~17\)) # (!\u_debounce_cerrar|counter\(1) & ((\u_debounce_cerrar|counter[0]~17\) # (GND)))
-- \u_debounce_cerrar|counter[1]~19\ = CARRY((!\u_debounce_cerrar|counter[0]~17\) # (!\u_debounce_cerrar|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(1),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[0]~17\,
	combout => \u_debounce_cerrar|counter[1]~18_combout\,
	cout => \u_debounce_cerrar|counter[1]~19\);

-- Location: FF_X20_Y8_N3
\u_debounce_cerrar|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[1]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(1));

-- Location: LCCOMB_X20_Y8_N4
\u_debounce_cerrar|counter[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[2]~20_combout\ = (\u_debounce_cerrar|counter\(2) & (\u_debounce_cerrar|counter[1]~19\ $ (GND))) # (!\u_debounce_cerrar|counter\(2) & (!\u_debounce_cerrar|counter[1]~19\ & VCC))
-- \u_debounce_cerrar|counter[2]~21\ = CARRY((\u_debounce_cerrar|counter\(2) & !\u_debounce_cerrar|counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(2),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[1]~19\,
	combout => \u_debounce_cerrar|counter[2]~20_combout\,
	cout => \u_debounce_cerrar|counter[2]~21\);

-- Location: FF_X20_Y8_N5
\u_debounce_cerrar|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[2]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(2));

-- Location: LCCOMB_X20_Y8_N6
\u_debounce_cerrar|counter[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[3]~22_combout\ = (\u_debounce_cerrar|counter\(3) & (!\u_debounce_cerrar|counter[2]~21\)) # (!\u_debounce_cerrar|counter\(3) & ((\u_debounce_cerrar|counter[2]~21\) # (GND)))
-- \u_debounce_cerrar|counter[3]~23\ = CARRY((!\u_debounce_cerrar|counter[2]~21\) # (!\u_debounce_cerrar|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(3),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[2]~21\,
	combout => \u_debounce_cerrar|counter[3]~22_combout\,
	cout => \u_debounce_cerrar|counter[3]~23\);

-- Location: FF_X20_Y8_N7
\u_debounce_cerrar|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[3]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(3));

-- Location: LCCOMB_X20_Y8_N8
\u_debounce_cerrar|counter[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[4]~24_combout\ = (\u_debounce_cerrar|counter\(4) & (\u_debounce_cerrar|counter[3]~23\ $ (GND))) # (!\u_debounce_cerrar|counter\(4) & (!\u_debounce_cerrar|counter[3]~23\ & VCC))
-- \u_debounce_cerrar|counter[4]~25\ = CARRY((\u_debounce_cerrar|counter\(4) & !\u_debounce_cerrar|counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(4),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[3]~23\,
	combout => \u_debounce_cerrar|counter[4]~24_combout\,
	cout => \u_debounce_cerrar|counter[4]~25\);

-- Location: FF_X20_Y8_N9
\u_debounce_cerrar|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[4]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(4));

-- Location: LCCOMB_X20_Y8_N10
\u_debounce_cerrar|counter[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[5]~27_combout\ = (\u_debounce_cerrar|counter\(5) & (!\u_debounce_cerrar|counter[4]~25\)) # (!\u_debounce_cerrar|counter\(5) & ((\u_debounce_cerrar|counter[4]~25\) # (GND)))
-- \u_debounce_cerrar|counter[5]~28\ = CARRY((!\u_debounce_cerrar|counter[4]~25\) # (!\u_debounce_cerrar|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(5),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[4]~25\,
	combout => \u_debounce_cerrar|counter[5]~27_combout\,
	cout => \u_debounce_cerrar|counter[5]~28\);

-- Location: FF_X20_Y8_N11
\u_debounce_cerrar|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[5]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(5));

-- Location: LCCOMB_X20_Y8_N12
\u_debounce_cerrar|counter[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[6]~29_combout\ = (\u_debounce_cerrar|counter\(6) & (\u_debounce_cerrar|counter[5]~28\ $ (GND))) # (!\u_debounce_cerrar|counter\(6) & (!\u_debounce_cerrar|counter[5]~28\ & VCC))
-- \u_debounce_cerrar|counter[6]~30\ = CARRY((\u_debounce_cerrar|counter\(6) & !\u_debounce_cerrar|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(6),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[5]~28\,
	combout => \u_debounce_cerrar|counter[6]~29_combout\,
	cout => \u_debounce_cerrar|counter[6]~30\);

-- Location: FF_X20_Y8_N13
\u_debounce_cerrar|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[6]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(6));

-- Location: LCCOMB_X20_Y8_N14
\u_debounce_cerrar|counter[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[7]~31_combout\ = (\u_debounce_cerrar|counter\(7) & (!\u_debounce_cerrar|counter[6]~30\)) # (!\u_debounce_cerrar|counter\(7) & ((\u_debounce_cerrar|counter[6]~30\) # (GND)))
-- \u_debounce_cerrar|counter[7]~32\ = CARRY((!\u_debounce_cerrar|counter[6]~30\) # (!\u_debounce_cerrar|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(7),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[6]~30\,
	combout => \u_debounce_cerrar|counter[7]~31_combout\,
	cout => \u_debounce_cerrar|counter[7]~32\);

-- Location: FF_X20_Y8_N15
\u_debounce_cerrar|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[7]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(7));

-- Location: LCCOMB_X20_Y8_N16
\u_debounce_cerrar|counter[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[8]~33_combout\ = (\u_debounce_cerrar|counter\(8) & (\u_debounce_cerrar|counter[7]~32\ $ (GND))) # (!\u_debounce_cerrar|counter\(8) & (!\u_debounce_cerrar|counter[7]~32\ & VCC))
-- \u_debounce_cerrar|counter[8]~34\ = CARRY((\u_debounce_cerrar|counter\(8) & !\u_debounce_cerrar|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(8),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[7]~32\,
	combout => \u_debounce_cerrar|counter[8]~33_combout\,
	cout => \u_debounce_cerrar|counter[8]~34\);

-- Location: FF_X20_Y8_N17
\u_debounce_cerrar|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[8]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(8));

-- Location: LCCOMB_X20_Y8_N18
\u_debounce_cerrar|counter[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[9]~35_combout\ = (\u_debounce_cerrar|counter\(9) & (!\u_debounce_cerrar|counter[8]~34\)) # (!\u_debounce_cerrar|counter\(9) & ((\u_debounce_cerrar|counter[8]~34\) # (GND)))
-- \u_debounce_cerrar|counter[9]~36\ = CARRY((!\u_debounce_cerrar|counter[8]~34\) # (!\u_debounce_cerrar|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(9),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[8]~34\,
	combout => \u_debounce_cerrar|counter[9]~35_combout\,
	cout => \u_debounce_cerrar|counter[9]~36\);

-- Location: FF_X20_Y8_N19
\u_debounce_cerrar|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[9]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(9));

-- Location: LCCOMB_X21_Y8_N12
\u_debounce_cerrar|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|LessThan0~0_combout\ = ((!\u_debounce_cerrar|counter\(5) & !\u_debounce_cerrar|counter\(4))) # (!\u_debounce_cerrar|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(5),
	datac => \u_debounce_cerrar|counter\(6),
	datad => \u_debounce_cerrar|counter\(4),
	combout => \u_debounce_cerrar|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y8_N22
\u_debounce_cerrar|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|LessThan0~1_combout\ = (((!\u_debounce_cerrar|counter\(7) & \u_debounce_cerrar|LessThan0~0_combout\)) # (!\u_debounce_cerrar|counter\(8))) # (!\u_debounce_cerrar|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(7),
	datab => \u_debounce_cerrar|counter\(9),
	datac => \u_debounce_cerrar|counter\(8),
	datad => \u_debounce_cerrar|LessThan0~0_combout\,
	combout => \u_debounce_cerrar|LessThan0~1_combout\);

-- Location: LCCOMB_X20_Y8_N20
\u_debounce_cerrar|counter[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[10]~37_combout\ = (\u_debounce_cerrar|counter\(10) & (\u_debounce_cerrar|counter[9]~36\ $ (GND))) # (!\u_debounce_cerrar|counter\(10) & (!\u_debounce_cerrar|counter[9]~36\ & VCC))
-- \u_debounce_cerrar|counter[10]~38\ = CARRY((\u_debounce_cerrar|counter\(10) & !\u_debounce_cerrar|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(10),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[9]~36\,
	combout => \u_debounce_cerrar|counter[10]~37_combout\,
	cout => \u_debounce_cerrar|counter[10]~38\);

-- Location: FF_X20_Y8_N21
\u_debounce_cerrar|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[10]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(10));

-- Location: LCCOMB_X20_Y8_N22
\u_debounce_cerrar|counter[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[11]~39_combout\ = (\u_debounce_cerrar|counter\(11) & (!\u_debounce_cerrar|counter[10]~38\)) # (!\u_debounce_cerrar|counter\(11) & ((\u_debounce_cerrar|counter[10]~38\) # (GND)))
-- \u_debounce_cerrar|counter[11]~40\ = CARRY((!\u_debounce_cerrar|counter[10]~38\) # (!\u_debounce_cerrar|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(11),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[10]~38\,
	combout => \u_debounce_cerrar|counter[11]~39_combout\,
	cout => \u_debounce_cerrar|counter[11]~40\);

-- Location: FF_X20_Y8_N23
\u_debounce_cerrar|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[11]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(11));

-- Location: LCCOMB_X20_Y8_N24
\u_debounce_cerrar|counter[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[12]~41_combout\ = (\u_debounce_cerrar|counter\(12) & (\u_debounce_cerrar|counter[11]~40\ $ (GND))) # (!\u_debounce_cerrar|counter\(12) & (!\u_debounce_cerrar|counter[11]~40\ & VCC))
-- \u_debounce_cerrar|counter[12]~42\ = CARRY((\u_debounce_cerrar|counter\(12) & !\u_debounce_cerrar|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(12),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[11]~40\,
	combout => \u_debounce_cerrar|counter[12]~41_combout\,
	cout => \u_debounce_cerrar|counter[12]~42\);

-- Location: FF_X20_Y8_N25
\u_debounce_cerrar|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[12]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(12));

-- Location: LCCOMB_X20_Y8_N26
\u_debounce_cerrar|counter[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[13]~43_combout\ = (\u_debounce_cerrar|counter\(13) & (!\u_debounce_cerrar|counter[12]~42\)) # (!\u_debounce_cerrar|counter\(13) & ((\u_debounce_cerrar|counter[12]~42\) # (GND)))
-- \u_debounce_cerrar|counter[13]~44\ = CARRY((!\u_debounce_cerrar|counter[12]~42\) # (!\u_debounce_cerrar|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(13),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[12]~42\,
	combout => \u_debounce_cerrar|counter[13]~43_combout\,
	cout => \u_debounce_cerrar|counter[13]~44\);

-- Location: FF_X20_Y8_N27
\u_debounce_cerrar|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[13]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(13));

-- Location: LCCOMB_X20_Y8_N28
\u_debounce_cerrar|counter[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[14]~45_combout\ = (\u_debounce_cerrar|counter\(14) & (\u_debounce_cerrar|counter[13]~44\ $ (GND))) # (!\u_debounce_cerrar|counter\(14) & (!\u_debounce_cerrar|counter[13]~44\ & VCC))
-- \u_debounce_cerrar|counter[14]~46\ = CARRY((\u_debounce_cerrar|counter\(14) & !\u_debounce_cerrar|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_cerrar|counter\(14),
	datad => VCC,
	cin => \u_debounce_cerrar|counter[13]~44\,
	combout => \u_debounce_cerrar|counter[14]~45_combout\,
	cout => \u_debounce_cerrar|counter[14]~46\);

-- Location: FF_X20_Y8_N29
\u_debounce_cerrar|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[14]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(14));

-- Location: LCCOMB_X21_Y8_N4
\u_debounce_cerrar|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|LessThan0~2_combout\ = (!\u_debounce_cerrar|counter\(12) & (!\u_debounce_cerrar|counter\(11) & (!\u_debounce_cerrar|counter\(13) & !\u_debounce_cerrar|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(12),
	datab => \u_debounce_cerrar|counter\(11),
	datac => \u_debounce_cerrar|counter\(13),
	datad => \u_debounce_cerrar|counter\(10),
	combout => \u_debounce_cerrar|LessThan0~2_combout\);

-- Location: LCCOMB_X20_Y8_N30
\u_debounce_cerrar|counter[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|counter[15]~47_combout\ = \u_debounce_cerrar|counter\(15) $ (\u_debounce_cerrar|counter[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|counter\(15),
	cin => \u_debounce_cerrar|counter[14]~46\,
	combout => \u_debounce_cerrar|counter[15]~47_combout\);

-- Location: FF_X20_Y8_N31
\u_debounce_cerrar|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|counter[15]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \u_debounce_cerrar|counter[13]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|counter\(15));

-- Location: LCCOMB_X21_Y8_N2
\u_debounce_cerrar|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|LessThan0~3_combout\ = (((\u_debounce_cerrar|LessThan0~1_combout\ & \u_debounce_cerrar|LessThan0~2_combout\)) # (!\u_debounce_cerrar|counter\(15))) # (!\u_debounce_cerrar|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|LessThan0~1_combout\,
	datab => \u_debounce_cerrar|counter\(14),
	datac => \u_debounce_cerrar|LessThan0~2_combout\,
	datad => \u_debounce_cerrar|counter\(15),
	combout => \u_debounce_cerrar|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y8_N24
\u_debounce_cerrar|button_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_debounce_cerrar|button_state~0_combout\ = (\u_debounce_cerrar|LessThan0~3_combout\ & ((\u_debounce_cerrar|button_state~q\))) # (!\u_debounce_cerrar|LessThan0~3_combout\ & (\u_debounce_cerrar|button_sync_reg2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_cerrar|button_sync_reg2~q\,
	datac => \u_debounce_cerrar|button_state~q\,
	datad => \u_debounce_cerrar|LessThan0~3_combout\,
	combout => \u_debounce_cerrar|button_state~0_combout\);

-- Location: FF_X19_Y8_N25
\u_debounce_cerrar|button_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_debounce_cerrar|button_state~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debounce_cerrar|button_state~q\);

-- Location: LCCOMB_X17_Y8_N8
\u_control|siguiente_estado.PUERTA_CERRANDO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\ = (\ir_sensors[0]~input_o\ & ((\timer_cierre_puerta|done~q\) # (\u_debounce_cerrar|button_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sensors[0]~input_o\,
	datac => \timer_cierre_puerta|done~q\,
	datad => \u_debounce_cerrar|button_state~q\,
	combout => \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\);

-- Location: LCCOMB_X15_Y11_N2
\u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2_combout\ = (\u_personas|LessThan2~0_combout\ & ((\u_control|estado_actual.SOBREPESO~q\) # ((!\u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\ & \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\,
	datac => \u_control|estado_actual.SOBREPESO~q\,
	datad => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	combout => \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2_combout\);

-- Location: LCCOMB_X15_Y11_N10
\u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~3_combout\ = (!\u_debounce_emergencia|button_state~q\ & (!\fallo_energia~input_o\ & ((\u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2_combout\) # (\u_control|estado_actual.PUERTA_ABRIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_debounce_emergencia|button_state~q\,
	datab => \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~2_combout\,
	datac => \fallo_energia~input_o\,
	datad => \u_control|estado_actual.PUERTA_ABRIENDO~q\,
	combout => \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~3_combout\);

-- Location: FF_X15_Y11_N11
\u_control|estado_actual.PUERTA_ABIERTA_ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.PUERTA_ABIERTA_ESPERA~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\);

-- Location: LCCOMB_X14_Y12_N4
\u_control|siguiente_estado.PUERTA_CERRANDO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.PUERTA_CERRANDO~1_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & (\u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\ & (\u_personas|LessThan2~0_combout\ & \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_control|estado_actual.PUERTA_ABIERTA_ESPERA~q\,
	datac => \u_personas|LessThan2~0_combout\,
	datad => \u_control|siguiente_estado.PUERTA_CERRANDO~0_combout\,
	combout => \u_control|siguiente_estado.PUERTA_CERRANDO~1_combout\);

-- Location: FF_X14_Y12_N5
\u_control|estado_actual.PUERTA_CERRANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.PUERTA_CERRANDO~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.PUERTA_CERRANDO~q\);

-- Location: FF_X15_Y11_N25
\u_control|estado_actual.EMERGENCIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_control|siguiente_estado.INICIO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.EMERGENCIA~q\);

-- Location: LCCOMB_X15_Y11_N6
\u_control|siguiente_estado.INICIO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.INICIO~1_combout\ = (\u_debounce_emergencia|button_state~q\) # ((\fallo_energia~input_o\) # (!\u_control|estado_actual.EMERGENCIA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_debounce_emergencia|button_state~q\,
	datac => \fallo_energia~input_o\,
	datad => \u_control|estado_actual.EMERGENCIA~q\,
	combout => \u_control|siguiente_estado.INICIO~1_combout\);

-- Location: FF_X15_Y11_N7
\u_control|estado_actual.INICIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.INICIO~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.INICIO~q\);

-- Location: LCCOMB_X15_Y11_N24
\u_control|siguiente_estado.ESPERANDO_LLAMADA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.ESPERANDO_LLAMADA~0_combout\ = (\u_control|estado_actual.PUERTA_CERRANDO~q\) # (!\u_control|estado_actual.INICIO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.PUERTA_CERRANDO~q\,
	datad => \u_control|estado_actual.INICIO~q\,
	combout => \u_control|siguiente_estado.ESPERANDO_LLAMADA~0_combout\);

-- Location: LCCOMB_X15_Y11_N22
\u_control|siguiente_estado.ESPERANDO_LLAMADA~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.ESPERANDO_LLAMADA~1_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & ((\u_control|siguiente_estado.ESPERANDO_LLAMADA~0_combout\) # ((\u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\ & 
-- !\u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_control|siguiente_estado.PUERTA_ABRIENDO~2_combout\,
	datac => \u_control|siguiente_estado.ESPERANDO_LLAMADA~0_combout\,
	datad => \u_control|siguiente_estado.PUERTA_ABRIENDO~1_combout\,
	combout => \u_control|siguiente_estado.ESPERANDO_LLAMADA~1_combout\);

-- Location: FF_X15_Y11_N23
\u_control|estado_actual.ESPERANDO_LLAMADA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.ESPERANDO_LLAMADA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.ESPERANDO_LLAMADA~q\);

-- Location: LCCOMB_X15_Y11_N8
\u_control|siguiente_estado.LEYENDO_DESTINO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.LEYENDO_DESTINO~0_combout\ = (!\u_control|siguiente_estado.INICIO~0_combout\ & (\u_control|estado_actual.ESPERANDO_LLAMADA~q\ & (\u_personas|LessThan2~0_combout\ & \u_memoria|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|siguiente_estado.INICIO~0_combout\,
	datab => \u_control|estado_actual.ESPERANDO_LLAMADA~q\,
	datac => \u_personas|LessThan2~0_combout\,
	datad => \u_memoria|Equal0~0_combout\,
	combout => \u_control|siguiente_estado.LEYENDO_DESTINO~0_combout\);

-- Location: FF_X15_Y11_N9
\u_control|estado_actual.LEYENDO_DESTINO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.LEYENDO_DESTINO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.LEYENDO_DESTINO~q\);

-- Location: LCCOMB_X15_Y10_N4
\u_control|siguiente_estado.CALCULANDO_DIRECCION~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.CALCULANDO_DIRECCION~2_combout\ = (!\u_control|Equal0~1_combout\ & (\u_control|estado_actual.MOVIENDO~q\ & (\u_personas|LessThan2~0_combout\ & \timer_movimiento_piso|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|Equal0~1_combout\,
	datab => \u_control|estado_actual.MOVIENDO~q\,
	datac => \u_personas|LessThan2~0_combout\,
	datad => \timer_movimiento_piso|done~q\,
	combout => \u_control|siguiente_estado.CALCULANDO_DIRECCION~2_combout\);

-- Location: LCCOMB_X17_Y10_N30
\u_control|siguiente_estado.CALCULANDO_DIRECCION~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|siguiente_estado.CALCULANDO_DIRECCION~3_combout\ = (!\fallo_energia~input_o\ & (!\u_debounce_emergencia|button_state~q\ & ((\u_control|estado_actual.LEYENDO_DESTINO~q\) # (\u_control|siguiente_estado.CALCULANDO_DIRECCION~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.LEYENDO_DESTINO~q\,
	datab => \fallo_energia~input_o\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \u_control|siguiente_estado.CALCULANDO_DIRECCION~2_combout\,
	combout => \u_control|siguiente_estado.CALCULANDO_DIRECCION~3_combout\);

-- Location: FF_X17_Y10_N31
\u_control|estado_actual.CALCULANDO_DIRECCION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|siguiente_estado.CALCULANDO_DIRECCION~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|estado_actual.CALCULANDO_DIRECCION~q\);

-- Location: LCCOMB_X16_Y10_N22
\u_control|motor_bajar_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|motor_bajar_int~1_combout\ = (\u_control|LessThan1~1_combout\ & !\u_control|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|LessThan1~1_combout\,
	datac => \u_control|LessThan0~1_combout\,
	combout => \u_control|motor_bajar_int~1_combout\);

-- Location: LCCOMB_X16_Y10_N12
\u_control|motor_bajar~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|motor_bajar~0_combout\ = (\u_control|motor_bajar_int~1_combout\ & (!\u_control|siguiente_estado.INICIO~0_combout\ & ((\u_control|estado_actual.CALCULANDO_DIRECCION~q\) # (\u_control|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datab => \u_control|Selector7~0_combout\,
	datac => \u_control|motor_bajar_int~1_combout\,
	datad => \u_control|siguiente_estado.INICIO~0_combout\,
	combout => \u_control|motor_bajar~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\piso_actual_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual_int[2]~2_combout\ = (piso_actual_int(2)) # ((piso_actual_int(1)) # (piso_actual_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_actual_int(2),
	datac => piso_actual_int(1),
	datad => piso_actual_int(0),
	combout => \piso_actual_int[2]~2_combout\);

-- Location: LCCOMB_X17_Y10_N26
\piso_actual_int[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual_int[2]~5_combout\ = (\timer_movimiento_piso|done~q\ & (!\fallo_energia~input_o\ & (!\u_debounce_emergencia|button_state~q\ & !\process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_movimiento_piso|done~q\,
	datab => \fallo_energia~input_o\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \process_1~4_combout\,
	combout => \piso_actual_int[2]~5_combout\);

-- Location: LCCOMB_X17_Y10_N8
\piso_actual_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \piso_actual_int[2]~3_combout\ = (\piso_actual_int[2]~5_combout\ & (((\u_control|motor_bajar~0_combout\ & \piso_actual_int[2]~2_combout\)) # (!\process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|motor_bajar~0_combout\,
	datab => \piso_actual_int[2]~2_combout\,
	datac => \piso_actual_int[2]~5_combout\,
	datad => \process_1~5_combout\,
	combout => \piso_actual_int[2]~3_combout\);

-- Location: FF_X17_Y10_N3
\piso_actual_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \piso_actual_int[0]~6_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	ena => \piso_actual_int[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => piso_actual_int(0));

-- Location: LCCOMB_X16_Y10_N16
\u_control|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|LessThan1~0_combout\ = (\u_control|reg_piso_destino\(2) & (!\u_control|reg_piso_destino\(1) & (piso_actual_int(1) & piso_actual_int(2)))) # (!\u_control|reg_piso_destino\(2) & ((piso_actual_int(2)) # ((!\u_control|reg_piso_destino\(1) & 
-- piso_actual_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|reg_piso_destino\(2),
	datab => \u_control|reg_piso_destino\(1),
	datac => piso_actual_int(1),
	datad => piso_actual_int(2),
	combout => \u_control|LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\u_control|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|LessThan1~1_combout\ = (\u_control|LessThan1~0_combout\) # ((piso_actual_int(0) & (!\u_control|reg_piso_destino\(0) & \u_control|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(0),
	datab => \u_control|reg_piso_destino\(0),
	datac => \u_control|Equal0~0_combout\,
	datad => \u_control|LessThan1~0_combout\,
	combout => \u_control|LessThan1~1_combout\);

-- Location: LCCOMB_X15_Y10_N20
\u_control|motor_bajar_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|motor_bajar_int~0_combout\ = (\u_control|LessThan1~1_combout\) # (\u_control|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|LessThan1~1_combout\,
	datad => \u_control|LessThan0~1_combout\,
	combout => \u_control|motor_bajar_int~0_combout\);

-- Location: FF_X15_Y10_N21
\u_motores|pwm_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|motor_bajar_int~0_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_motores|pwm_int~q\);

-- Location: FF_X16_Y10_N5
\u_motores|in1_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|LessThan0~1_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_motores|in1_int~q\);

-- Location: FF_X16_Y10_N23
\u_motores|in2_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_control|motor_bajar_int~1_combout\,
	clrn => \ALT_INV_comb~4clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_motores|in2_int~q\);

-- Location: LCCOMB_X15_Y11_N20
\u_alarmas|alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_alarmas|alarma_sonora~0_combout\ = (((\u_control|estado_actual.PUERTA_CERRANDO~q\) # (\u_control|siguiente_estado.INICIO~0_combout\)) # (!\u_control|cmd_abrir_puerta~0_combout\)) # (!\u_personas|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \u_control|cmd_abrir_puerta~0_combout\,
	datac => \u_control|estado_actual.PUERTA_CERRANDO~q\,
	datad => \u_control|siguiente_estado.INICIO~0_combout\,
	combout => \u_alarmas|alarma_sonora~0_combout\);

-- Location: FF_X15_Y11_N21
\u_alarmas|alarma_sonora\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alarmas|alarma_sonora~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alarmas|alarma_sonora~q\);

-- Location: LCCOMB_X15_Y11_N26
\u_alarmas|alarma_visual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_alarmas|alarma_visual~0_combout\ = (\u_control|siguiente_estado.INICIO~0_combout\) # ((\u_personas|LessThan2~0_combout\ & ((\u_control|estado_actual.PUERTA_CERRANDO~q\) # (!\u_control|cmd_abrir_puerta~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \u_control|cmd_abrir_puerta~0_combout\,
	datac => \u_control|estado_actual.PUERTA_CERRANDO~q\,
	datad => \u_control|siguiente_estado.INICIO~0_combout\,
	combout => \u_alarmas|alarma_visual~0_combout\);

-- Location: FF_X15_Y11_N27
\u_alarmas|alarma_visual\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_alarmas|alarma_visual~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_alarmas|alarma_visual~q\);

-- Location: LCCOMB_X15_Y10_N14
\estado_ascensor_luces[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_ascensor_luces[0]~10_combout\ = (\u_debounce_emergencia|button_state~q\) # ((\fallo_energia~input_o\) # ((\u_personas|LessThan2~0_combout\ & \process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_personas|LessThan2~0_combout\,
	datab => \u_debounce_emergencia|button_state~q\,
	datac => \fallo_energia~input_o\,
	datad => \process_1~4_combout\,
	combout => \estado_ascensor_luces[0]~10_combout\);

-- Location: LCCOMB_X15_Y10_N18
\estado_ascensor_luces[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_ascensor_luces[1]~7_combout\ = (\estado_ascensor_luces[0]~6_combout\ & (\u_control|LessThan0~1_combout\ & ((\u_control|estado_actual.CALCULANDO_DIRECCION~q\) # (\u_control|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|estado_actual.CALCULANDO_DIRECCION~q\,
	datab => \u_control|Selector7~0_combout\,
	datac => \estado_ascensor_luces[0]~6_combout\,
	datad => \u_control|LessThan0~1_combout\,
	combout => \estado_ascensor_luces[1]~7_combout\);

-- Location: LCCOMB_X15_Y10_N12
\u_luces|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_luces|Selector0~0_combout\ = (\u_luces|state_reg.EMERGENCIA~q\ & ((\estado_ascensor_luces[0]~10_combout\) # (\estado_ascensor_luces[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_luces|state_reg.EMERGENCIA~q\,
	datac => \estado_ascensor_luces[0]~10_combout\,
	datad => \estado_ascensor_luces[1]~7_combout\,
	combout => \u_luces|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y10_N0
\estado_ascensor_luces[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_ascensor_luces[0]~9_combout\ = (!\fallo_energia~input_o\ & (\u_personas|LessThan2~0_combout\ & (!\u_debounce_emergencia|button_state~q\ & \process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fallo_energia~input_o\,
	datab => \u_personas|LessThan2~0_combout\,
	datac => \u_debounce_emergencia|button_state~q\,
	datad => \process_1~4_combout\,
	combout => \estado_ascensor_luces[0]~9_combout\);

-- Location: LCCOMB_X15_Y12_N14
\estado_ascensor_luces[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_ascensor_luces[0]~8_combout\ = (\estado_ascensor_luces[0]~9_combout\ & ((\u_puerta|estado_actual.ABIERTA~q\) # ((\u_puerta|estado_actual.ESPERA_CERRAR~q\) # (\u_puerta|estado_actual.ABRIENDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_puerta|estado_actual.ABIERTA~q\,
	datab => \u_puerta|estado_actual.ESPERA_CERRAR~q\,
	datac => \u_puerta|estado_actual.ABRIENDO~q\,
	datad => \estado_ascensor_luces[0]~9_combout\,
	combout => \estado_ascensor_luces[0]~8_combout\);

-- Location: LCCOMB_X15_Y10_N2
\u_luces|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_luces|Selector0~1_combout\ = (\estado_ascensor_luces[0]~10_combout\ & !\estado_ascensor_luces[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_ascensor_luces[0]~10_combout\,
	datad => \estado_ascensor_luces[0]~8_combout\,
	combout => \u_luces|Selector0~1_combout\);

-- Location: LCCOMB_X15_Y10_N30
\u_luces|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_luces|Selector0~2_combout\ = (\u_luces|state_reg.ACTIVO~q\ & (((!\u_luces|Selector0~1_combout\)))) # (!\u_luces|state_reg.ACTIVO~q\ & ((\u_luces|Selector0~0_combout\ & (\estado_ascensor_luces[0]~6_combout\)) # (!\u_luces|Selector0~0_combout\ & 
-- ((!\u_luces|Selector0~1_combout\) # (!\estado_ascensor_luces[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_luces|Selector0~0_combout\,
	datab => \estado_ascensor_luces[0]~6_combout\,
	datac => \u_luces|state_reg.ACTIVO~q\,
	datad => \u_luces|Selector0~1_combout\,
	combout => \u_luces|Selector0~2_combout\);

-- Location: FF_X15_Y10_N31
\u_luces|state_reg.ACTIVO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_luces|Selector0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_luces|state_reg.ACTIVO~q\);

-- Location: LCCOMB_X15_Y10_N0
\u_luces|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_luces|Selector2~0_combout\ = (!\estado_ascensor_luces[0]~8_combout\ & ((\estado_ascensor_luces[0]~10_combout\) # ((!\u_luces|state_reg.ACTIVO~q\ & \estado_ascensor_luces[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_luces|state_reg.ACTIVO~q\,
	datab => \estado_ascensor_luces[1]~7_combout\,
	datac => \estado_ascensor_luces[0]~10_combout\,
	datad => \estado_ascensor_luces[0]~8_combout\,
	combout => \u_luces|Selector2~0_combout\);

-- Location: LCCOMB_X15_Y10_N22
\u_luces|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_luces|Selector2~1_combout\ = (\u_luces|Selector2~0_combout\ & (!\estado_ascensor_luces[0]~6_combout\ & ((\u_luces|state_reg.ACTIVO~q\) # (\u_luces|state_reg.EMERGENCIA~q\)))) # (!\u_luces|Selector2~0_combout\ & (\u_luces|state_reg.ACTIVO~q\ & 
-- ((\u_luces|state_reg.EMERGENCIA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_luces|state_reg.ACTIVO~q\,
	datab => \estado_ascensor_luces[0]~6_combout\,
	datac => \u_luces|state_reg.EMERGENCIA~q\,
	datad => \u_luces|Selector2~0_combout\,
	combout => \u_luces|Selector2~1_combout\);

-- Location: FF_X15_Y10_N23
\u_luces|state_reg.EMERGENCIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_luces|Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_luces|state_reg.EMERGENCIA~q\);

-- Location: LCCOMB_X16_Y9_N4
\u_display_interno|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_display_interno|Mux5~0_combout\ = (!piso_actual_int(1) & (piso_actual_int(2) $ (piso_actual_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(2),
	datac => piso_actual_int(1),
	datad => piso_actual_int(0),
	combout => \u_display_interno|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y9_N14
\u_display_interno|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_display_interno|Mux1~0_combout\ = (piso_actual_int(1) & !piso_actual_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(1),
	datad => piso_actual_int(0),
	combout => \u_display_interno|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\u_display_interno|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_display_interno|Mux2~0_combout\ = (piso_actual_int(2)) # (piso_actual_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => piso_actual_int(2),
	datad => piso_actual_int(0),
	combout => \u_display_interno|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\u_display_interno|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_display_interno|Mux1~1_combout\ = (piso_actual_int(1)) # (piso_actual_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(1),
	datad => piso_actual_int(0),
	combout => \u_display_interno|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y9_N30
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!piso_actual_int(2) & !piso_actual_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => piso_actual_int(2),
	datac => piso_actual_int(1),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X14_Y0_N22
\ir_sensors[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(1),
	o => \ir_sensors[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\ir_sensors[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(2),
	o => \ir_sensors[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\ir_sensors[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(3),
	o => \ir_sensors[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\ir_sensors[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sensors(4),
	o => \ir_sensors[4]~input_o\);

ww_pwm_motor <= \pwm_motor~output_o\;

ww_in1_motor <= \in1_motor~output_o\;

ww_in2_motor <= \in2_motor~output_o\;

ww_puerta_abierta <= \puerta_abierta~output_o\;

ww_luces_cabina <= \luces_cabina~output_o\;

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_alarma_visual <= \alarma_visual~output_o\;

ww_luz_emergencia_out <= \luz_emergencia_out~output_o\;

ww_display_piso0(0) <= \display_piso0[0]~output_o\;

ww_display_piso0(1) <= \display_piso0[1]~output_o\;

ww_display_piso0(2) <= \display_piso0[2]~output_o\;

ww_display_piso0(3) <= \display_piso0[3]~output_o\;

ww_display_piso0(4) <= \display_piso0[4]~output_o\;

ww_display_piso0(5) <= \display_piso0[5]~output_o\;

ww_display_piso0(6) <= \display_piso0[6]~output_o\;

ww_display_piso1(0) <= \display_piso1[0]~output_o\;

ww_display_piso1(1) <= \display_piso1[1]~output_o\;

ww_display_piso1(2) <= \display_piso1[2]~output_o\;

ww_display_piso1(3) <= \display_piso1[3]~output_o\;

ww_display_piso1(4) <= \display_piso1[4]~output_o\;

ww_display_piso1(5) <= \display_piso1[5]~output_o\;

ww_display_piso1(6) <= \display_piso1[6]~output_o\;

ww_display_piso2(0) <= \display_piso2[0]~output_o\;

ww_display_piso2(1) <= \display_piso2[1]~output_o\;

ww_display_piso2(2) <= \display_piso2[2]~output_o\;

ww_display_piso2(3) <= \display_piso2[3]~output_o\;

ww_display_piso2(4) <= \display_piso2[4]~output_o\;

ww_display_piso2(5) <= \display_piso2[5]~output_o\;

ww_display_piso2(6) <= \display_piso2[6]~output_o\;

ww_display_piso3(0) <= \display_piso3[0]~output_o\;

ww_display_piso3(1) <= \display_piso3[1]~output_o\;

ww_display_piso3(2) <= \display_piso3[2]~output_o\;

ww_display_piso3(3) <= \display_piso3[3]~output_o\;

ww_display_piso3(4) <= \display_piso3[4]~output_o\;

ww_display_piso3(5) <= \display_piso3[5]~output_o\;

ww_display_piso3(6) <= \display_piso3[6]~output_o\;

ww_display_piso4(0) <= \display_piso4[0]~output_o\;

ww_display_piso4(1) <= \display_piso4[1]~output_o\;

ww_display_piso4(2) <= \display_piso4[2]~output_o\;

ww_display_piso4(3) <= \display_piso4[3]~output_o\;

ww_display_piso4(4) <= \display_piso4[4]~output_o\;

ww_display_piso4(5) <= \display_piso4[5]~output_o\;

ww_display_piso4(6) <= \display_piso4[6]~output_o\;

ww_display_interno(0) <= \display_interno[0]~output_o\;

ww_display_interno(1) <= \display_interno[1]~output_o\;

ww_display_interno(2) <= \display_interno[2]~output_o\;

ww_display_interno(3) <= \display_interno[3]~output_o\;

ww_display_interno(4) <= \display_interno[4]~output_o\;

ww_display_interno(5) <= \display_interno[5]~output_o\;

ww_display_interno(6) <= \display_interno[6]~output_o\;
END structure;


