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

-- DATE "04/01/2025 19:48:05"

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

ENTITY 	Ascensor IS
    PORT (
	CLK_50MHz : IN std_logic;
	RESET : IN std_logic;
	FALLO_ENERGIA : IN std_logic;
	BOTON_SUBIR : IN std_logic_vector(3 DOWNTO 0);
	BOTON_BAJAR : IN std_logic_vector(3 DOWNTO 0);
	BOTON_PISO_INT : IN std_logic_vector(4 DOWNTO 0);
	BOTON_ABRIR : IN std_logic;
	BOTON_CERRAR : IN std_logic;
	NOTIFICACION : IN std_logic;
	SENSOR_ENTRA : IN std_logic;
	SENSOR_SALE : IN std_logic;
	DISPLAY_INTERNO : BUFFER std_logic_vector(6 DOWNTO 0);
	DISPLAY_EXTERNO : BUFFER std_logic_vector(6 DOWNTO 0);
	DISPLAY_PERSONAS : BUFFER std_logic_vector(6 DOWNTO 0);
	MOTOR_SUBIR : BUFFER std_logic;
	MOTOR_BAJAR : BUFFER std_logic;
	PUERTA : BUFFER std_logic;
	LLEGADA_PISO : BUFFER std_logic;
	SOBRECARGA : BUFFER std_logic;
	LED_PUERTA_ABI : BUFFER std_logic;
	LED_PUERTA_CIE : BUFFER std_logic;
	LED_FALLO_EN : BUFFER std_logic;
	LED_NOTIF : BUFFER std_logic;
	LED_SOBRECARGA : BUFFER std_logic
	);
END Ascensor;

-- Design Ports Information
-- BOTON_ABRIR	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_CERRAR	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_INTERNO[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_EXTERNO[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_PERSONAS[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOTOR_SUBIR	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MOTOR_BAJAR	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PUERTA	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LLEGADA_PISO	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOBRECARGA	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_PUERTA_ABI	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_PUERTA_CIE	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_FALLO_EN	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_NOTIF	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SOBRECARGA	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FALLO_ENERGIA	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NOTIFICACION	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_ENTRA	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_SALE	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_PISO_INT[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_PISO_INT[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_PISO_INT[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_PISO_INT[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_BAJAR[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_PISO_INT[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BOTON_SUBIR[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ascensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHz : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_FALLO_ENERGIA : std_logic;
SIGNAL ww_BOTON_SUBIR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BOTON_BAJAR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BOTON_PISO_INT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_BOTON_ABRIR : std_logic;
SIGNAL ww_BOTON_CERRAR : std_logic;
SIGNAL ww_NOTIFICACION : std_logic;
SIGNAL ww_SENSOR_ENTRA : std_logic;
SIGNAL ww_SENSOR_SALE : std_logic;
SIGNAL ww_DISPLAY_INTERNO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY_EXTERNO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DISPLAY_PERSONAS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MOTOR_SUBIR : std_logic;
SIGNAL ww_MOTOR_BAJAR : std_logic;
SIGNAL ww_PUERTA : std_logic;
SIGNAL ww_LLEGADA_PISO : std_logic;
SIGNAL ww_SOBRECARGA : std_logic;
SIGNAL ww_LED_PUERTA_ABI : std_logic;
SIGNAL ww_LED_PUERTA_CIE : std_logic;
SIGNAL ww_LED_FALLO_EN : std_logic;
SIGNAL ww_LED_NOTIF : std_logic;
SIGNAL ww_LED_SOBRECARGA : std_logic;
SIGNAL \clk_divider|out1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOTON_ABRIR~input_o\ : std_logic;
SIGNAL \BOTON_CERRAR~input_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[4]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[5]~output_o\ : std_logic;
SIGNAL \DISPLAY_INTERNO[6]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[4]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[5]~output_o\ : std_logic;
SIGNAL \DISPLAY_EXTERNO[6]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[4]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[5]~output_o\ : std_logic;
SIGNAL \DISPLAY_PERSONAS[6]~output_o\ : std_logic;
SIGNAL \MOTOR_SUBIR~output_o\ : std_logic;
SIGNAL \MOTOR_BAJAR~output_o\ : std_logic;
SIGNAL \PUERTA~output_o\ : std_logic;
SIGNAL \LLEGADA_PISO~output_o\ : std_logic;
SIGNAL \SOBRECARGA~output_o\ : std_logic;
SIGNAL \LED_PUERTA_ABI~output_o\ : std_logic;
SIGNAL \LED_PUERTA_CIE~output_o\ : std_logic;
SIGNAL \LED_FALLO_EN~output_o\ : std_logic;
SIGNAL \LED_NOTIF~output_o\ : std_logic;
SIGNAL \LED_SOBRECARGA~output_o\ : std_logic;
SIGNAL \CLK_50MHz~input_o\ : std_logic;
SIGNAL \CLK_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|Add0~0_combout\ : std_logic;
SIGNAL \clk_divider|Add0~1\ : std_logic;
SIGNAL \clk_divider|Add0~2_combout\ : std_logic;
SIGNAL \clk_divider|Add0~3\ : std_logic;
SIGNAL \clk_divider|Add0~4_combout\ : std_logic;
SIGNAL \clk_divider|Add0~5\ : std_logic;
SIGNAL \clk_divider|Add0~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~7\ : std_logic;
SIGNAL \clk_divider|Add0~8_combout\ : std_logic;
SIGNAL \clk_divider|Add0~9\ : std_logic;
SIGNAL \clk_divider|Add0~10_combout\ : std_logic;
SIGNAL \clk_divider|Add0~11\ : std_logic;
SIGNAL \clk_divider|Add0~12_combout\ : std_logic;
SIGNAL \clk_divider|count~4_combout\ : std_logic;
SIGNAL \clk_divider|Add0~13\ : std_logic;
SIGNAL \clk_divider|Add0~14_combout\ : std_logic;
SIGNAL \clk_divider|Add0~15\ : std_logic;
SIGNAL \clk_divider|Add0~16_combout\ : std_logic;
SIGNAL \clk_divider|Add0~17\ : std_logic;
SIGNAL \clk_divider|Add0~18_combout\ : std_logic;
SIGNAL \clk_divider|Add0~19\ : std_logic;
SIGNAL \clk_divider|Add0~20_combout\ : std_logic;
SIGNAL \clk_divider|Add0~21\ : std_logic;
SIGNAL \clk_divider|Add0~22_combout\ : std_logic;
SIGNAL \clk_divider|count~3_combout\ : std_logic;
SIGNAL \clk_divider|Add0~23\ : std_logic;
SIGNAL \clk_divider|Add0~24_combout\ : std_logic;
SIGNAL \clk_divider|count~2_combout\ : std_logic;
SIGNAL \clk_divider|Add0~25\ : std_logic;
SIGNAL \clk_divider|Add0~26_combout\ : std_logic;
SIGNAL \clk_divider|count~1_combout\ : std_logic;
SIGNAL \clk_divider|Add0~27\ : std_logic;
SIGNAL \clk_divider|Add0~28_combout\ : std_logic;
SIGNAL \clk_divider|count~0_combout\ : std_logic;
SIGNAL \clk_divider|Add0~29\ : std_logic;
SIGNAL \clk_divider|Add0~30_combout\ : std_logic;
SIGNAL \clk_divider|Add0~31\ : std_logic;
SIGNAL \clk_divider|Add0~32_combout\ : std_logic;
SIGNAL \clk_divider|count~5_combout\ : std_logic;
SIGNAL \clk_divider|Add0~33\ : std_logic;
SIGNAL \clk_divider|Add0~34_combout\ : std_logic;
SIGNAL \clk_divider|Add0~35\ : std_logic;
SIGNAL \clk_divider|Add0~36_combout\ : std_logic;
SIGNAL \clk_divider|count~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~37\ : std_logic;
SIGNAL \clk_divider|Add0~38_combout\ : std_logic;
SIGNAL \clk_divider|count~7_combout\ : std_logic;
SIGNAL \clk_divider|Add0~39\ : std_logic;
SIGNAL \clk_divider|Add0~40_combout\ : std_logic;
SIGNAL \clk_divider|count~9_combout\ : std_logic;
SIGNAL \clk_divider|Add0~41\ : std_logic;
SIGNAL \clk_divider|Add0~42_combout\ : std_logic;
SIGNAL \clk_divider|count~10_combout\ : std_logic;
SIGNAL \clk_divider|Add0~43\ : std_logic;
SIGNAL \clk_divider|Add0~44_combout\ : std_logic;
SIGNAL \clk_divider|count~11_combout\ : std_logic;
SIGNAL \clk_divider|Add0~45\ : std_logic;
SIGNAL \clk_divider|Add0~46_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clk_divider|Add0~47\ : std_logic;
SIGNAL \clk_divider|Add0~48_combout\ : std_logic;
SIGNAL \clk_divider|count~8_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~7_combout\ : std_logic;
SIGNAL \clk_divider|out1~feeder_combout\ : std_logic;
SIGNAL \clk_divider|out1~q\ : std_logic;
SIGNAL \clk_divider|out1~clkctrl_outclk\ : std_logic;
SIGNAL \identificador_direccion_inst|ultimo_piso_atendido[2]~feeder_combout\ : std_logic;
SIGNAL \BOTON_SUBIR[1]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_subir_int~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \BOTON_BAJAR[0]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_bajar_int~1_combout\ : std_logic;
SIGNAL \BOTON_PISO_INT[1]~input_o\ : std_logic;
SIGNAL \gestion_cabina_inst|solicitudes~1_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~1_combout\ : std_logic;
SIGNAL \BOTON_SUBIR[0]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_subir_int~3_combout\ : std_logic;
SIGNAL \BOTON_PISO_INT[0]~input_o\ : std_logic;
SIGNAL \gestion_cabina_inst|solicitudes~4_combout\ : std_logic;
SIGNAL \BOTON_BAJAR[1]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_bajar_int~2_combout\ : std_logic;
SIGNAL \BOTON_SUBIR[2]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_subir_int~2_combout\ : std_logic;
SIGNAL \BOTON_PISO_INT[2]~input_o\ : std_logic;
SIGNAL \gestion_cabina_inst|solicitudes~2_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~2_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~7_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~8_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|RegistroDestino|reg_data[1]~feeder_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~5_combout\ : std_logic;
SIGNAL \BOTON_SUBIR[3]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_subir_int~0_combout\ : std_logic;
SIGNAL \BOTON_BAJAR[2]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_bajar_int~0_combout\ : std_logic;
SIGNAL \BOTON_PISO_INT[3]~input_o\ : std_logic;
SIGNAL \gestion_cabina_inst|solicitudes~0_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~0_combout\ : std_logic;
SIGNAL \BOTON_BAJAR[3]~input_o\ : std_logic;
SIGNAL \gestion_externas_inst|solicitudes_bajar_int~3_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~4_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~6_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|RegistroDestino|reg_data[0]~0_combout\ : std_logic;
SIGNAL \control_ascensor_inst|llegada_piso~0_combout\ : std_logic;
SIGNAL \FALLO_ENERGIA~input_o\ : std_logic;
SIGNAL \SENSOR_ENTRA~input_o\ : std_logic;
SIGNAL \contador_personas|contador[1]~6_cout\ : std_logic;
SIGNAL \contador_personas|contador[1]~7_combout\ : std_logic;
SIGNAL \SENSOR_SALE~input_o\ : std_logic;
SIGNAL \contador_personas|contador[1]~8\ : std_logic;
SIGNAL \contador_personas|contador[2]~10_combout\ : std_logic;
SIGNAL \contador_personas|contador[2]~11\ : std_logic;
SIGNAL \contador_personas|contador[3]~12_combout\ : std_logic;
SIGNAL \contador_personas|contador[3]~3_combout\ : std_logic;
SIGNAL \contador_personas|contador[3]~9_combout\ : std_logic;
SIGNAL \contador_personas|process_0~0_combout\ : std_logic;
SIGNAL \contador_personas|contador[0]~4_combout\ : std_logic;
SIGNAL \contador_personas|LessThan2~0_combout\ : std_logic;
SIGNAL \control_ascensor_inst|process_0~0_combout\ : std_logic;
SIGNAL \BOTON_PISO_INT[4]~input_o\ : std_logic;
SIGNAL \gestion_cabina_inst|solicitudes~3_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|process_1~0_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|process_1~1_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|process_1~2_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|destino_int~3_combout\ : std_logic;
SIGNAL \identificador_direccion_inst|RegistroDestino|reg_data[2]~feeder_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux6~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux5~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux4~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux3~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux2~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux1~0_combout\ : std_logic;
SIGNAL \display_externo_inst|Mux0~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux6~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux5~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux4~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux3~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux2~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux1~0_combout\ : std_logic;
SIGNAL \display_personas_inst|Mux0~0_combout\ : std_logic;
SIGNAL \NOTIFICACION~input_o\ : std_logic;
SIGNAL \clk_divider|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \control_ascensor_inst|clear_request_bajar\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gestion_externas_inst|solicitudes_bajar_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador_personas|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gestion_externas_inst|solicitudes_subir_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \identificador_direccion_inst|RegistroDestino|reg_data\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \identificador_direccion_inst|destino_int\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \identificador_direccion_inst|ultimo_piso_atendido\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gestion_cabina_inst|solicitudes\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \display_personas_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \control_ascensor_inst|ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_CLK_50MHz <= CLK_50MHz;
ww_RESET <= RESET;
ww_FALLO_ENERGIA <= FALLO_ENERGIA;
ww_BOTON_SUBIR <= BOTON_SUBIR;
ww_BOTON_BAJAR <= BOTON_BAJAR;
ww_BOTON_PISO_INT <= BOTON_PISO_INT;
ww_BOTON_ABRIR <= BOTON_ABRIR;
ww_BOTON_CERRAR <= BOTON_CERRAR;
ww_NOTIFICACION <= NOTIFICACION;
ww_SENSOR_ENTRA <= SENSOR_ENTRA;
ww_SENSOR_SALE <= SENSOR_SALE;
DISPLAY_INTERNO <= ww_DISPLAY_INTERNO;
DISPLAY_EXTERNO <= ww_DISPLAY_EXTERNO;
DISPLAY_PERSONAS <= ww_DISPLAY_PERSONAS;
MOTOR_SUBIR <= ww_MOTOR_SUBIR;
MOTOR_BAJAR <= ww_MOTOR_BAJAR;
PUERTA <= ww_PUERTA;
LLEGADA_PISO <= ww_LLEGADA_PISO;
SOBRECARGA <= ww_SOBRECARGA;
LED_PUERTA_ABI <= ww_LED_PUERTA_ABI;
LED_PUERTA_CIE <= ww_LED_PUERTA_CIE;
LED_FALLO_EN <= ww_LED_FALLO_EN;
LED_NOTIF <= ww_LED_NOTIF;
LED_SOBRECARGA <= ww_LED_SOBRECARGA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_divider|out1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|out1~q\);

\CLK_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHz~input_o\);
\display_personas_inst|ALT_INV_Mux0~0_combout\ <= NOT \display_personas_inst|Mux0~0_combout\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\control_ascensor_inst|ALT_INV_process_0~0_combout\ <= NOT \control_ascensor_inst|process_0~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\DISPLAY_INTERNO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\DISPLAY_INTERNO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\DISPLAY_INTERNO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\DISPLAY_INTERNO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\DISPLAY_INTERNO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\DISPLAY_INTERNO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\DISPLAY_INTERNO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DISPLAY_INTERNO[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DISPLAY_EXTERNO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DISPLAY_EXTERNO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DISPLAY_EXTERNO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DISPLAY_EXTERNO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DISPLAY_EXTERNO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DISPLAY_EXTERNO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\DISPLAY_EXTERNO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_externo_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_EXTERNO[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\DISPLAY_PERSONAS[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\DISPLAY_PERSONAS[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\DISPLAY_PERSONAS[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\DISPLAY_PERSONAS[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\DISPLAY_PERSONAS[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\DISPLAY_PERSONAS[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\DISPLAY_PERSONAS[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_personas_inst|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_PERSONAS[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\MOTOR_SUBIR~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MOTOR_SUBIR~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\MOTOR_BAJAR~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MOTOR_BAJAR~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\PUERTA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PUERTA~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LLEGADA_PISO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LLEGADA_PISO~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\SOBRECARGA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SOBRECARGA~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LED_PUERTA_ABI~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_PUERTA_ABI~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED_PUERTA_CIE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED_PUERTA_CIE~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LED_FALLO_EN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FALLO_ENERGIA~input_o\,
	devoe => ww_devoe,
	o => \LED_FALLO_EN~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LED_NOTIF~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NOTIFICACION~input_o\,
	devoe => ww_devoe,
	o => \LED_NOTIF~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LED_SOBRECARGA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contador_personas|LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \LED_SOBRECARGA~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK_50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHz,
	o => \CLK_50MHz~input_o\);

-- Location: CLKCTRL_G9
\CLK_50MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y27_N8
\clk_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~0_combout\ = \clk_divider|count\(0) $ (VCC)
-- \clk_divider|Add0~1\ = CARRY(\clk_divider|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(0),
	datad => VCC,
	combout => \clk_divider|Add0~0_combout\,
	cout => \clk_divider|Add0~1\);

-- Location: FF_X16_Y27_N9
\clk_divider|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(0));

-- Location: LCCOMB_X16_Y27_N10
\clk_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~2_combout\ = (\clk_divider|count\(1) & (!\clk_divider|Add0~1\)) # (!\clk_divider|count\(1) & ((\clk_divider|Add0~1\) # (GND)))
-- \clk_divider|Add0~3\ = CARRY((!\clk_divider|Add0~1\) # (!\clk_divider|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(1),
	datad => VCC,
	cin => \clk_divider|Add0~1\,
	combout => \clk_divider|Add0~2_combout\,
	cout => \clk_divider|Add0~3\);

-- Location: FF_X16_Y27_N11
\clk_divider|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(1));

-- Location: LCCOMB_X16_Y27_N12
\clk_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~4_combout\ = (\clk_divider|count\(2) & (\clk_divider|Add0~3\ $ (GND))) # (!\clk_divider|count\(2) & (!\clk_divider|Add0~3\ & VCC))
-- \clk_divider|Add0~5\ = CARRY((\clk_divider|count\(2) & !\clk_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(2),
	datad => VCC,
	cin => \clk_divider|Add0~3\,
	combout => \clk_divider|Add0~4_combout\,
	cout => \clk_divider|Add0~5\);

-- Location: FF_X16_Y27_N13
\clk_divider|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(2));

-- Location: LCCOMB_X16_Y27_N14
\clk_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~6_combout\ = (\clk_divider|count\(3) & (!\clk_divider|Add0~5\)) # (!\clk_divider|count\(3) & ((\clk_divider|Add0~5\) # (GND)))
-- \clk_divider|Add0~7\ = CARRY((!\clk_divider|Add0~5\) # (!\clk_divider|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(3),
	datad => VCC,
	cin => \clk_divider|Add0~5\,
	combout => \clk_divider|Add0~6_combout\,
	cout => \clk_divider|Add0~7\);

-- Location: FF_X16_Y27_N15
\clk_divider|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(3));

-- Location: LCCOMB_X16_Y27_N16
\clk_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~8_combout\ = (\clk_divider|count\(4) & (\clk_divider|Add0~7\ $ (GND))) # (!\clk_divider|count\(4) & (!\clk_divider|Add0~7\ & VCC))
-- \clk_divider|Add0~9\ = CARRY((\clk_divider|count\(4) & !\clk_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(4),
	datad => VCC,
	cin => \clk_divider|Add0~7\,
	combout => \clk_divider|Add0~8_combout\,
	cout => \clk_divider|Add0~9\);

-- Location: FF_X16_Y27_N17
\clk_divider|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(4));

-- Location: LCCOMB_X16_Y27_N18
\clk_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~10_combout\ = (\clk_divider|count\(5) & (!\clk_divider|Add0~9\)) # (!\clk_divider|count\(5) & ((\clk_divider|Add0~9\) # (GND)))
-- \clk_divider|Add0~11\ = CARRY((!\clk_divider|Add0~9\) # (!\clk_divider|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(5),
	datad => VCC,
	cin => \clk_divider|Add0~9\,
	combout => \clk_divider|Add0~10_combout\,
	cout => \clk_divider|Add0~11\);

-- Location: FF_X16_Y27_N19
\clk_divider|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(5));

-- Location: LCCOMB_X16_Y27_N20
\clk_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~12_combout\ = (\clk_divider|count\(6) & (\clk_divider|Add0~11\ $ (GND))) # (!\clk_divider|count\(6) & (!\clk_divider|Add0~11\ & VCC))
-- \clk_divider|Add0~13\ = CARRY((\clk_divider|count\(6) & !\clk_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(6),
	datad => VCC,
	cin => \clk_divider|Add0~11\,
	combout => \clk_divider|Add0~12_combout\,
	cout => \clk_divider|Add0~13\);

-- Location: LCCOMB_X16_Y27_N2
\clk_divider|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~4_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~12_combout\,
	combout => \clk_divider|count~4_combout\);

-- Location: FF_X16_Y27_N3
\clk_divider|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(6));

-- Location: LCCOMB_X16_Y27_N22
\clk_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~14_combout\ = (\clk_divider|count\(7) & (!\clk_divider|Add0~13\)) # (!\clk_divider|count\(7) & ((\clk_divider|Add0~13\) # (GND)))
-- \clk_divider|Add0~15\ = CARRY((!\clk_divider|Add0~13\) # (!\clk_divider|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(7),
	datad => VCC,
	cin => \clk_divider|Add0~13\,
	combout => \clk_divider|Add0~14_combout\,
	cout => \clk_divider|Add0~15\);

-- Location: FF_X16_Y27_N23
\clk_divider|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(7));

-- Location: LCCOMB_X16_Y27_N24
\clk_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~16_combout\ = (\clk_divider|count\(8) & (\clk_divider|Add0~15\ $ (GND))) # (!\clk_divider|count\(8) & (!\clk_divider|Add0~15\ & VCC))
-- \clk_divider|Add0~17\ = CARRY((\clk_divider|count\(8) & !\clk_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(8),
	datad => VCC,
	cin => \clk_divider|Add0~15\,
	combout => \clk_divider|Add0~16_combout\,
	cout => \clk_divider|Add0~17\);

-- Location: FF_X16_Y27_N25
\clk_divider|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(8));

-- Location: LCCOMB_X16_Y27_N26
\clk_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~18_combout\ = (\clk_divider|count\(9) & (!\clk_divider|Add0~17\)) # (!\clk_divider|count\(9) & ((\clk_divider|Add0~17\) # (GND)))
-- \clk_divider|Add0~19\ = CARRY((!\clk_divider|Add0~17\) # (!\clk_divider|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(9),
	datad => VCC,
	cin => \clk_divider|Add0~17\,
	combout => \clk_divider|Add0~18_combout\,
	cout => \clk_divider|Add0~19\);

-- Location: FF_X16_Y27_N27
\clk_divider|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(9));

-- Location: LCCOMB_X16_Y27_N28
\clk_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~20_combout\ = (\clk_divider|count\(10) & (\clk_divider|Add0~19\ $ (GND))) # (!\clk_divider|count\(10) & (!\clk_divider|Add0~19\ & VCC))
-- \clk_divider|Add0~21\ = CARRY((\clk_divider|count\(10) & !\clk_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(10),
	datad => VCC,
	cin => \clk_divider|Add0~19\,
	combout => \clk_divider|Add0~20_combout\,
	cout => \clk_divider|Add0~21\);

-- Location: FF_X16_Y27_N29
\clk_divider|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(10));

-- Location: LCCOMB_X16_Y27_N30
\clk_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~22_combout\ = (\clk_divider|count\(11) & (!\clk_divider|Add0~21\)) # (!\clk_divider|count\(11) & ((\clk_divider|Add0~21\) # (GND)))
-- \clk_divider|Add0~23\ = CARRY((!\clk_divider|Add0~21\) # (!\clk_divider|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(11),
	datad => VCC,
	cin => \clk_divider|Add0~21\,
	combout => \clk_divider|Add0~22_combout\,
	cout => \clk_divider|Add0~23\);

-- Location: LCCOMB_X17_Y26_N30
\clk_divider|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~3_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~22_combout\,
	combout => \clk_divider|count~3_combout\);

-- Location: FF_X17_Y26_N31
\clk_divider|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(11));

-- Location: LCCOMB_X16_Y26_N0
\clk_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~24_combout\ = (\clk_divider|count\(12) & (\clk_divider|Add0~23\ $ (GND))) # (!\clk_divider|count\(12) & (!\clk_divider|Add0~23\ & VCC))
-- \clk_divider|Add0~25\ = CARRY((\clk_divider|count\(12) & !\clk_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(12),
	datad => VCC,
	cin => \clk_divider|Add0~23\,
	combout => \clk_divider|Add0~24_combout\,
	cout => \clk_divider|Add0~25\);

-- Location: LCCOMB_X17_Y26_N26
\clk_divider|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~2_combout\ = (\clk_divider|Add0~24_combout\ & !\clk_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Add0~24_combout\,
	datad => \clk_divider|Equal0~7_combout\,
	combout => \clk_divider|count~2_combout\);

-- Location: FF_X17_Y26_N27
\clk_divider|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(12));

-- Location: LCCOMB_X16_Y26_N2
\clk_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~26_combout\ = (\clk_divider|count\(13) & (!\clk_divider|Add0~25\)) # (!\clk_divider|count\(13) & ((\clk_divider|Add0~25\) # (GND)))
-- \clk_divider|Add0~27\ = CARRY((!\clk_divider|Add0~25\) # (!\clk_divider|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(13),
	datad => VCC,
	cin => \clk_divider|Add0~25\,
	combout => \clk_divider|Add0~26_combout\,
	cout => \clk_divider|Add0~27\);

-- Location: LCCOMB_X17_Y26_N20
\clk_divider|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~1_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~26_combout\,
	combout => \clk_divider|count~1_combout\);

-- Location: FF_X17_Y26_N21
\clk_divider|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(13));

-- Location: LCCOMB_X16_Y26_N4
\clk_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~28_combout\ = (\clk_divider|count\(14) & (\clk_divider|Add0~27\ $ (GND))) # (!\clk_divider|count\(14) & (!\clk_divider|Add0~27\ & VCC))
-- \clk_divider|Add0~29\ = CARRY((\clk_divider|count\(14) & !\clk_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(14),
	datad => VCC,
	cin => \clk_divider|Add0~27\,
	combout => \clk_divider|Add0~28_combout\,
	cout => \clk_divider|Add0~29\);

-- Location: LCCOMB_X17_Y26_N6
\clk_divider|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~0_combout\ = (\clk_divider|Add0~28_combout\ & !\clk_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Add0~28_combout\,
	datad => \clk_divider|Equal0~7_combout\,
	combout => \clk_divider|count~0_combout\);

-- Location: FF_X17_Y26_N7
\clk_divider|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(14));

-- Location: LCCOMB_X16_Y26_N6
\clk_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~30_combout\ = (\clk_divider|count\(15) & (!\clk_divider|Add0~29\)) # (!\clk_divider|count\(15) & ((\clk_divider|Add0~29\) # (GND)))
-- \clk_divider|Add0~31\ = CARRY((!\clk_divider|Add0~29\) # (!\clk_divider|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(15),
	datad => VCC,
	cin => \clk_divider|Add0~29\,
	combout => \clk_divider|Add0~30_combout\,
	cout => \clk_divider|Add0~31\);

-- Location: FF_X16_Y26_N7
\clk_divider|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(15));

-- Location: LCCOMB_X16_Y26_N8
\clk_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~32_combout\ = (\clk_divider|count\(16) & (\clk_divider|Add0~31\ $ (GND))) # (!\clk_divider|count\(16) & (!\clk_divider|Add0~31\ & VCC))
-- \clk_divider|Add0~33\ = CARRY((\clk_divider|count\(16) & !\clk_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(16),
	datad => VCC,
	cin => \clk_divider|Add0~31\,
	combout => \clk_divider|Add0~32_combout\,
	cout => \clk_divider|Add0~33\);

-- Location: LCCOMB_X17_Y26_N16
\clk_divider|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~5_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~32_combout\,
	combout => \clk_divider|count~5_combout\);

-- Location: FF_X17_Y26_N17
\clk_divider|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(16));

-- Location: LCCOMB_X16_Y26_N10
\clk_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~34_combout\ = (\clk_divider|count\(17) & (!\clk_divider|Add0~33\)) # (!\clk_divider|count\(17) & ((\clk_divider|Add0~33\) # (GND)))
-- \clk_divider|Add0~35\ = CARRY((!\clk_divider|Add0~33\) # (!\clk_divider|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(17),
	datad => VCC,
	cin => \clk_divider|Add0~33\,
	combout => \clk_divider|Add0~34_combout\,
	cout => \clk_divider|Add0~35\);

-- Location: FF_X16_Y26_N11
\clk_divider|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(17));

-- Location: LCCOMB_X16_Y26_N12
\clk_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~36_combout\ = (\clk_divider|count\(18) & (\clk_divider|Add0~35\ $ (GND))) # (!\clk_divider|count\(18) & (!\clk_divider|Add0~35\ & VCC))
-- \clk_divider|Add0~37\ = CARRY((\clk_divider|count\(18) & !\clk_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(18),
	datad => VCC,
	cin => \clk_divider|Add0~35\,
	combout => \clk_divider|Add0~36_combout\,
	cout => \clk_divider|Add0~37\);

-- Location: LCCOMB_X16_Y26_N26
\clk_divider|count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~6_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~36_combout\,
	combout => \clk_divider|count~6_combout\);

-- Location: FF_X16_Y26_N27
\clk_divider|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(18));

-- Location: LCCOMB_X16_Y26_N14
\clk_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~38_combout\ = (\clk_divider|count\(19) & (!\clk_divider|Add0~37\)) # (!\clk_divider|count\(19) & ((\clk_divider|Add0~37\) # (GND)))
-- \clk_divider|Add0~39\ = CARRY((!\clk_divider|Add0~37\) # (!\clk_divider|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(19),
	datad => VCC,
	cin => \clk_divider|Add0~37\,
	combout => \clk_divider|Add0~38_combout\,
	cout => \clk_divider|Add0~39\);

-- Location: LCCOMB_X17_Y26_N14
\clk_divider|count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~7_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~38_combout\,
	combout => \clk_divider|count~7_combout\);

-- Location: FF_X17_Y26_N15
\clk_divider|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(19));

-- Location: LCCOMB_X16_Y26_N16
\clk_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~40_combout\ = (\clk_divider|count\(20) & (\clk_divider|Add0~39\ $ (GND))) # (!\clk_divider|count\(20) & (!\clk_divider|Add0~39\ & VCC))
-- \clk_divider|Add0~41\ = CARRY((\clk_divider|count\(20) & !\clk_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|count\(20),
	datad => VCC,
	cin => \clk_divider|Add0~39\,
	combout => \clk_divider|Add0~40_combout\,
	cout => \clk_divider|Add0~41\);

-- Location: LCCOMB_X16_Y26_N28
\clk_divider|count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~9_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~40_combout\,
	combout => \clk_divider|count~9_combout\);

-- Location: FF_X16_Y26_N29
\clk_divider|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(20));

-- Location: LCCOMB_X16_Y26_N18
\clk_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~42_combout\ = (\clk_divider|count\(21) & (!\clk_divider|Add0~41\)) # (!\clk_divider|count\(21) & ((\clk_divider|Add0~41\) # (GND)))
-- \clk_divider|Add0~43\ = CARRY((!\clk_divider|Add0~41\) # (!\clk_divider|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(21),
	datad => VCC,
	cin => \clk_divider|Add0~41\,
	combout => \clk_divider|Add0~42_combout\,
	cout => \clk_divider|Add0~43\);

-- Location: LCCOMB_X16_Y26_N30
\clk_divider|count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~10_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~42_combout\,
	combout => \clk_divider|count~10_combout\);

-- Location: FF_X16_Y26_N31
\clk_divider|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(21));

-- Location: LCCOMB_X16_Y26_N20
\clk_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~44_combout\ = (\clk_divider|count\(22) & (\clk_divider|Add0~43\ $ (GND))) # (!\clk_divider|count\(22) & (!\clk_divider|Add0~43\ & VCC))
-- \clk_divider|Add0~45\ = CARRY((\clk_divider|count\(22) & !\clk_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(22),
	datad => VCC,
	cin => \clk_divider|Add0~43\,
	combout => \clk_divider|Add0~44_combout\,
	cout => \clk_divider|Add0~45\);

-- Location: LCCOMB_X17_Y26_N4
\clk_divider|count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~11_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~44_combout\,
	combout => \clk_divider|count~11_combout\);

-- Location: FF_X17_Y26_N5
\clk_divider|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(22));

-- Location: LCCOMB_X16_Y26_N22
\clk_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~46_combout\ = (\clk_divider|count\(23) & (!\clk_divider|Add0~45\)) # (!\clk_divider|count\(23) & ((\clk_divider|Add0~45\) # (GND)))
-- \clk_divider|Add0~47\ = CARRY((!\clk_divider|Add0~45\) # (!\clk_divider|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(23),
	datad => VCC,
	cin => \clk_divider|Add0~45\,
	combout => \clk_divider|Add0~46_combout\,
	cout => \clk_divider|Add0~47\);

-- Location: FF_X16_Y26_N23
\clk_divider|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(23));

-- Location: LCCOMB_X17_Y26_N12
\clk_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~6_combout\ = (!\clk_divider|count\(23) & (\clk_divider|count\(20) & (\clk_divider|count\(22) & \clk_divider|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(23),
	datab => \clk_divider|count\(20),
	datac => \clk_divider|count\(22),
	datad => \clk_divider|count\(21),
	combout => \clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X16_Y26_N24
\clk_divider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Add0~48_combout\ = \clk_divider|Add0~47\ $ (!\clk_divider|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|count\(24),
	cin => \clk_divider|Add0~47\,
	combout => \clk_divider|Add0~48_combout\);

-- Location: LCCOMB_X17_Y26_N28
\clk_divider|count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|count~8_combout\ = (!\clk_divider|Equal0~7_combout\ & \clk_divider|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|Equal0~7_combout\,
	datad => \clk_divider|Add0~48_combout\,
	combout => \clk_divider|count~8_combout\);

-- Location: FF_X17_Y26_N29
\clk_divider|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|count\(24));

-- Location: LCCOMB_X17_Y26_N22
\clk_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~5_combout\ = (\clk_divider|count\(18) & (\clk_divider|count\(16) & (\clk_divider|count\(19) & !\clk_divider|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(18),
	datab => \clk_divider|count\(16),
	datac => \clk_divider|count\(19),
	datad => \clk_divider|count\(17),
	combout => \clk_divider|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y26_N24
\clk_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~0_combout\ = (\clk_divider|count\(12) & (\clk_divider|count\(13) & (!\clk_divider|count\(15) & \clk_divider|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(12),
	datab => \clk_divider|count\(13),
	datac => \clk_divider|count\(15),
	datad => \clk_divider|count\(14),
	combout => \clk_divider|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y27_N6
\clk_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~3_combout\ = (\clk_divider|count\(2) & (\clk_divider|count\(0) & (\clk_divider|count\(1) & \clk_divider|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(2),
	datab => \clk_divider|count\(0),
	datac => \clk_divider|count\(1),
	datad => \clk_divider|count\(3),
	combout => \clk_divider|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y27_N0
\clk_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~1_combout\ = (!\clk_divider|count\(9) & (!\clk_divider|count\(8) & (\clk_divider|count\(11) & !\clk_divider|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(9),
	datab => \clk_divider|count\(8),
	datac => \clk_divider|count\(11),
	datad => \clk_divider|count\(10),
	combout => \clk_divider|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y27_N4
\clk_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~2_combout\ = (!\clk_divider|count\(7) & (!\clk_divider|count\(6) & (\clk_divider|count\(5) & \clk_divider|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|count\(7),
	datab => \clk_divider|count\(6),
	datac => \clk_divider|count\(5),
	datad => \clk_divider|count\(4),
	combout => \clk_divider|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y26_N10
\clk_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~4_combout\ = (\clk_divider|Equal0~0_combout\ & (\clk_divider|Equal0~3_combout\ & (\clk_divider|Equal0~1_combout\ & \clk_divider|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~0_combout\,
	datab => \clk_divider|Equal0~3_combout\,
	datac => \clk_divider|Equal0~1_combout\,
	datad => \clk_divider|Equal0~2_combout\,
	combout => \clk_divider|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y26_N0
\clk_divider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~7_combout\ = (\clk_divider|Equal0~6_combout\ & (\clk_divider|count\(24) & (\clk_divider|Equal0~5_combout\ & \clk_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~6_combout\,
	datab => \clk_divider|count\(24),
	datac => \clk_divider|Equal0~5_combout\,
	datad => \clk_divider|Equal0~4_combout\,
	combout => \clk_divider|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y26_N18
\clk_divider|out1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_divider|out1~feeder_combout\ = \clk_divider|Equal0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|Equal0~7_combout\,
	combout => \clk_divider|out1~feeder_combout\);

-- Location: FF_X17_Y26_N19
\clk_divider|out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHz~inputclkctrl_outclk\,
	d => \clk_divider|out1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|out1~q\);

-- Location: CLKCTRL_G10
\clk_divider|out1~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|out1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|out1~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y14_N30
\identificador_direccion_inst|ultimo_piso_atendido[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|ultimo_piso_atendido[2]~feeder_combout\ = \identificador_direccion_inst|destino_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \identificador_direccion_inst|destino_int\(2),
	combout => \identificador_direccion_inst|ultimo_piso_atendido[2]~feeder_combout\);

-- Location: FF_X30_Y14_N5
\identificador_direccion_inst|ultimo_piso_atendido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	asdata => \identificador_direccion_inst|destino_int\(1),
	sload => VCC,
	ena => \identificador_direccion_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|ultimo_piso_atendido\(1));

-- Location: IOIBUF_X23_Y0_N22
\BOTON_SUBIR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(1),
	o => \BOTON_SUBIR[1]~input_o\);

-- Location: LCCOMB_X31_Y14_N22
\gestion_externas_inst|solicitudes_subir_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_subir_int~1_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_SUBIR[1]~input_o\) # (\gestion_externas_inst|solicitudes_subir_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOTON_SUBIR[1]~input_o\,
	datac => \gestion_externas_inst|solicitudes_subir_int\(1),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_subir_int~1_combout\);

-- Location: IOIBUF_X0_Y26_N8
\RESET~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X31_Y14_N23
\gestion_externas_inst|solicitudes_subir_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_subir_int~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_subir_int\(1));

-- Location: IOIBUF_X23_Y0_N15
\BOTON_BAJAR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(0),
	o => \BOTON_BAJAR[0]~input_o\);

-- Location: LCCOMB_X31_Y14_N4
\gestion_externas_inst|solicitudes_bajar_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_bajar_int~1_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_BAJAR[0]~input_o\) # (\gestion_externas_inst|solicitudes_bajar_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_BAJAR[0]~input_o\,
	datac => \gestion_externas_inst|solicitudes_bajar_int\(0),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_bajar_int~1_combout\);

-- Location: FF_X31_Y14_N5
\gestion_externas_inst|solicitudes_bajar_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_bajar_int~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_bajar_int\(0));

-- Location: IOIBUF_X1_Y0_N15
\BOTON_PISO_INT[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_PISO_INT(1),
	o => \BOTON_PISO_INT[1]~input_o\);

-- Location: LCCOMB_X31_Y14_N0
\gestion_cabina_inst|solicitudes~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_cabina_inst|solicitudes~1_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_PISO_INT[1]~input_o\) # (\gestion_cabina_inst|solicitudes\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PISO_INT[1]~input_o\,
	datac => \gestion_cabina_inst|solicitudes\(1),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_cabina_inst|solicitudes~1_combout\);

-- Location: FF_X31_Y14_N1
\gestion_cabina_inst|solicitudes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_cabina_inst|solicitudes~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_cabina_inst|solicitudes\(1));

-- Location: LCCOMB_X31_Y14_N2
\identificador_direccion_inst|destino_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~1_combout\ = (!\gestion_externas_inst|solicitudes_subir_int\(1) & (!\gestion_externas_inst|solicitudes_bajar_int\(0) & !\gestion_cabina_inst|solicitudes\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_externas_inst|solicitudes_subir_int\(1),
	datac => \gestion_externas_inst|solicitudes_bajar_int\(0),
	datad => \gestion_cabina_inst|solicitudes\(1),
	combout => \identificador_direccion_inst|destino_int~1_combout\);

-- Location: IOIBUF_X26_Y0_N15
\BOTON_SUBIR[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(0),
	o => \BOTON_SUBIR[0]~input_o\);

-- Location: LCCOMB_X30_Y14_N28
\gestion_externas_inst|solicitudes_subir_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_subir_int~3_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_SUBIR[0]~input_o\) # (\gestion_externas_inst|solicitudes_subir_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_SUBIR[0]~input_o\,
	datab => \control_ascensor_inst|clear_request_bajar\(0),
	datac => \gestion_externas_inst|solicitudes_subir_int\(0),
	combout => \gestion_externas_inst|solicitudes_subir_int~3_combout\);

-- Location: FF_X30_Y14_N29
\gestion_externas_inst|solicitudes_subir_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_subir_int~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_subir_int\(0));

-- Location: IOIBUF_X30_Y0_N8
\BOTON_PISO_INT[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_PISO_INT(0),
	o => \BOTON_PISO_INT[0]~input_o\);

-- Location: LCCOMB_X30_Y14_N2
\gestion_cabina_inst|solicitudes~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_cabina_inst|solicitudes~4_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\gestion_cabina_inst|solicitudes\(0)) # (\BOTON_PISO_INT[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_ascensor_inst|clear_request_bajar\(0),
	datac => \gestion_cabina_inst|solicitudes\(0),
	datad => \BOTON_PISO_INT[0]~input_o\,
	combout => \gestion_cabina_inst|solicitudes~4_combout\);

-- Location: FF_X30_Y14_N3
\gestion_cabina_inst|solicitudes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_cabina_inst|solicitudes~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_cabina_inst|solicitudes\(0));

-- Location: IOIBUF_X21_Y0_N29
\BOTON_BAJAR[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(1),
	o => \BOTON_BAJAR[1]~input_o\);

-- Location: LCCOMB_X31_Y14_N16
\gestion_externas_inst|solicitudes_bajar_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_bajar_int~2_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_BAJAR[1]~input_o\) # (\gestion_externas_inst|solicitudes_bajar_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOTON_BAJAR[1]~input_o\,
	datac => \gestion_externas_inst|solicitudes_bajar_int\(1),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_bajar_int~2_combout\);

-- Location: FF_X31_Y14_N17
\gestion_externas_inst|solicitudes_bajar_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_bajar_int~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_bajar_int\(1));

-- Location: IOIBUF_X16_Y0_N22
\BOTON_SUBIR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(2),
	o => \BOTON_SUBIR[2]~input_o\);

-- Location: LCCOMB_X31_Y14_N30
\gestion_externas_inst|solicitudes_subir_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_subir_int~2_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_SUBIR[2]~input_o\) # (\gestion_externas_inst|solicitudes_subir_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_SUBIR[2]~input_o\,
	datac => \gestion_externas_inst|solicitudes_subir_int\(2),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_subir_int~2_combout\);

-- Location: FF_X31_Y14_N31
\gestion_externas_inst|solicitudes_subir_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_subir_int~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_subir_int\(2));

-- Location: IOIBUF_X19_Y0_N8
\BOTON_PISO_INT[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_PISO_INT(2),
	o => \BOTON_PISO_INT[2]~input_o\);

-- Location: LCCOMB_X31_Y14_N20
\gestion_cabina_inst|solicitudes~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_cabina_inst|solicitudes~2_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_PISO_INT[2]~input_o\) # (\gestion_cabina_inst|solicitudes\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PISO_INT[2]~input_o\,
	datac => \gestion_cabina_inst|solicitudes\(2),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_cabina_inst|solicitudes~2_combout\);

-- Location: FF_X31_Y14_N21
\gestion_cabina_inst|solicitudes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_cabina_inst|solicitudes~2_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_cabina_inst|solicitudes\(2));

-- Location: LCCOMB_X31_Y14_N10
\identificador_direccion_inst|destino_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~2_combout\ = (!\gestion_externas_inst|solicitudes_bajar_int\(1) & (!\gestion_externas_inst|solicitudes_subir_int\(2) & !\gestion_cabina_inst|solicitudes\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gestion_externas_inst|solicitudes_bajar_int\(1),
	datac => \gestion_externas_inst|solicitudes_subir_int\(2),
	datad => \gestion_cabina_inst|solicitudes\(2),
	combout => \identificador_direccion_inst|destino_int~2_combout\);

-- Location: LCCOMB_X30_Y14_N18
\identificador_direccion_inst|destino_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~7_combout\ = (!\gestion_externas_inst|solicitudes_subir_int\(0) & (!\gestion_cabina_inst|solicitudes\(0) & ((!\identificador_direccion_inst|destino_int~2_combout\) # 
-- (!\identificador_direccion_inst|destino_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificador_direccion_inst|destino_int~1_combout\,
	datab => \gestion_externas_inst|solicitudes_subir_int\(0),
	datac => \gestion_cabina_inst|solicitudes\(0),
	datad => \identificador_direccion_inst|destino_int~2_combout\,
	combout => \identificador_direccion_inst|destino_int~7_combout\);

-- Location: LCCOMB_X30_Y14_N20
\identificador_direccion_inst|destino_int~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~8_combout\ = (\identificador_direccion_inst|destino_int~7_combout\) # ((\identificador_direccion_inst|ultimo_piso_atendido\(1) & !\identificador_direccion_inst|process_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|ultimo_piso_atendido\(1),
	datac => \identificador_direccion_inst|process_1~1_combout\,
	datad => \identificador_direccion_inst|destino_int~7_combout\,
	combout => \identificador_direccion_inst|destino_int~8_combout\);

-- Location: FF_X30_Y14_N21
\identificador_direccion_inst|destino_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|destino_int~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|destino_int\(1));

-- Location: LCCOMB_X30_Y22_N4
\identificador_direccion_inst|RegistroDestino|reg_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|RegistroDestino|reg_data[1]~feeder_combout\ = \identificador_direccion_inst|destino_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \identificador_direccion_inst|destino_int\(1),
	combout => \identificador_direccion_inst|RegistroDestino|reg_data[1]~feeder_combout\);

-- Location: FF_X30_Y22_N5
\identificador_direccion_inst|RegistroDestino|reg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|RegistroDestino|reg_data[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|RegistroDestino|reg_data\(1));

-- Location: LCCOMB_X30_Y14_N4
\identificador_direccion_inst|destino_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~5_combout\ = (!\gestion_cabina_inst|solicitudes\(0) & !\gestion_externas_inst|solicitudes_subir_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gestion_cabina_inst|solicitudes\(0),
	datad => \gestion_externas_inst|solicitudes_subir_int\(0),
	combout => \identificador_direccion_inst|destino_int~5_combout\);

-- Location: IOIBUF_X30_Y0_N1
\BOTON_SUBIR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_SUBIR(3),
	o => \BOTON_SUBIR[3]~input_o\);

-- Location: LCCOMB_X31_Y14_N26
\gestion_externas_inst|solicitudes_subir_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_subir_int~0_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_SUBIR[3]~input_o\) # (\gestion_externas_inst|solicitudes_subir_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BOTON_SUBIR[3]~input_o\,
	datac => \gestion_externas_inst|solicitudes_subir_int\(3),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_subir_int~0_combout\);

-- Location: FF_X31_Y14_N27
\gestion_externas_inst|solicitudes_subir_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_subir_int~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_subir_int\(3));

-- Location: IOIBUF_X9_Y0_N22
\BOTON_BAJAR[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(2),
	o => \BOTON_BAJAR[2]~input_o\);

-- Location: LCCOMB_X31_Y14_N8
\gestion_externas_inst|solicitudes_bajar_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_bajar_int~0_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_BAJAR[2]~input_o\) # (\gestion_externas_inst|solicitudes_bajar_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_BAJAR[2]~input_o\,
	datac => \gestion_externas_inst|solicitudes_bajar_int\(2),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_externas_inst|solicitudes_bajar_int~0_combout\);

-- Location: FF_X31_Y14_N9
\gestion_externas_inst|solicitudes_bajar_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_bajar_int~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_bajar_int\(2));

-- Location: IOIBUF_X1_Y0_N22
\BOTON_PISO_INT[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_PISO_INT(3),
	o => \BOTON_PISO_INT[3]~input_o\);

-- Location: LCCOMB_X31_Y14_N28
\gestion_cabina_inst|solicitudes~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_cabina_inst|solicitudes~0_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\BOTON_PISO_INT[3]~input_o\) # (\gestion_cabina_inst|solicitudes\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PISO_INT[3]~input_o\,
	datac => \gestion_cabina_inst|solicitudes\(3),
	datad => \control_ascensor_inst|clear_request_bajar\(0),
	combout => \gestion_cabina_inst|solicitudes~0_combout\);

-- Location: FF_X31_Y14_N29
\gestion_cabina_inst|solicitudes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_cabina_inst|solicitudes~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_cabina_inst|solicitudes\(3));

-- Location: LCCOMB_X31_Y14_N14
\identificador_direccion_inst|destino_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~0_combout\ = (!\gestion_externas_inst|solicitudes_subir_int\(3) & (!\gestion_externas_inst|solicitudes_bajar_int\(2) & !\gestion_cabina_inst|solicitudes\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_externas_inst|solicitudes_subir_int\(3),
	datac => \gestion_externas_inst|solicitudes_bajar_int\(2),
	datad => \gestion_cabina_inst|solicitudes\(3),
	combout => \identificador_direccion_inst|destino_int~0_combout\);

-- Location: FF_X30_Y14_N15
\identificador_direccion_inst|ultimo_piso_atendido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	asdata => \identificador_direccion_inst|destino_int\(0),
	sload => VCC,
	ena => \identificador_direccion_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|ultimo_piso_atendido\(0));

-- Location: IOIBUF_X26_Y0_N22
\BOTON_BAJAR[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_BAJAR(3),
	o => \BOTON_BAJAR[3]~input_o\);

-- Location: LCCOMB_X30_Y14_N8
\gestion_externas_inst|solicitudes_bajar_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_externas_inst|solicitudes_bajar_int~3_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\gestion_externas_inst|solicitudes_bajar_int\(3)) # (\BOTON_BAJAR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_ascensor_inst|clear_request_bajar\(0),
	datac => \gestion_externas_inst|solicitudes_bajar_int\(3),
	datad => \BOTON_BAJAR[3]~input_o\,
	combout => \gestion_externas_inst|solicitudes_bajar_int~3_combout\);

-- Location: FF_X30_Y14_N9
\gestion_externas_inst|solicitudes_bajar_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_externas_inst|solicitudes_bajar_int~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_externas_inst|solicitudes_bajar_int\(3));

-- Location: LCCOMB_X30_Y14_N14
\identificador_direccion_inst|destino_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~4_combout\ = (\identificador_direccion_inst|destino_int~0_combout\ & ((\gestion_cabina_inst|solicitudes\(4)) # ((\gestion_externas_inst|solicitudes_bajar_int\(3)) # 
-- (!\identificador_direccion_inst|ultimo_piso_atendido\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_cabina_inst|solicitudes\(4),
	datab => \identificador_direccion_inst|destino_int~0_combout\,
	datac => \identificador_direccion_inst|ultimo_piso_atendido\(0),
	datad => \gestion_externas_inst|solicitudes_bajar_int\(3),
	combout => \identificador_direccion_inst|destino_int~4_combout\);

-- Location: LCCOMB_X30_Y14_N10
\identificador_direccion_inst|destino_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~6_combout\ = (\identificador_direccion_inst|destino_int~5_combout\ & (((\identificador_direccion_inst|destino_int~2_combout\ & !\identificador_direccion_inst|destino_int~4_combout\)) # 
-- (!\identificador_direccion_inst|destino_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificador_direccion_inst|destino_int~5_combout\,
	datab => \identificador_direccion_inst|destino_int~2_combout\,
	datac => \identificador_direccion_inst|destino_int~4_combout\,
	datad => \identificador_direccion_inst|destino_int~1_combout\,
	combout => \identificador_direccion_inst|destino_int~6_combout\);

-- Location: FF_X30_Y14_N11
\identificador_direccion_inst|destino_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|destino_int~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|destino_int\(0));

-- Location: LCCOMB_X30_Y22_N2
\identificador_direccion_inst|RegistroDestino|reg_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|RegistroDestino|reg_data[0]~0_combout\ = !\identificador_direccion_inst|destino_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \identificador_direccion_inst|destino_int\(0),
	combout => \identificador_direccion_inst|RegistroDestino|reg_data[0]~0_combout\);

-- Location: FF_X30_Y22_N3
\identificador_direccion_inst|RegistroDestino|reg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|RegistroDestino|reg_data[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|RegistroDestino|reg_data\(0));

-- Location: LCCOMB_X30_Y22_N0
\control_ascensor_inst|llegada_piso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_ascensor_inst|llegada_piso~0_combout\ = (!\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (!\identificador_direccion_inst|RegistroDestino|reg_data\(1) & \identificador_direccion_inst|RegistroDestino|reg_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \control_ascensor_inst|llegada_piso~0_combout\);

-- Location: IOIBUF_X0_Y25_N1
\FALLO_ENERGIA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FALLO_ENERGIA,
	o => \FALLO_ENERGIA~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SENSOR_ENTRA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_ENTRA,
	o => \SENSOR_ENTRA~input_o\);

-- Location: LCCOMB_X30_Y22_N16
\contador_personas|contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[1]~6_cout\ = CARRY(\contador_personas|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(0),
	datad => VCC,
	cout => \contador_personas|contador[1]~6_cout\);

-- Location: LCCOMB_X30_Y22_N18
\contador_personas|contador[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[1]~7_combout\ = (\contador_personas|contador\(1) & ((\contador_personas|process_0~0_combout\ & (!\contador_personas|contador[1]~6_cout\)) # (!\contador_personas|process_0~0_combout\ & (\contador_personas|contador[1]~6_cout\ & 
-- VCC)))) # (!\contador_personas|contador\(1) & ((\contador_personas|process_0~0_combout\ & ((\contador_personas|contador[1]~6_cout\) # (GND))) # (!\contador_personas|process_0~0_combout\ & (!\contador_personas|contador[1]~6_cout\))))
-- \contador_personas|contador[1]~8\ = CARRY((\contador_personas|contador\(1) & (\contador_personas|process_0~0_combout\ & !\contador_personas|contador[1]~6_cout\)) # (!\contador_personas|contador\(1) & ((\contador_personas|process_0~0_combout\) # 
-- (!\contador_personas|contador[1]~6_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(1),
	datab => \contador_personas|process_0~0_combout\,
	datad => VCC,
	cin => \contador_personas|contador[1]~6_cout\,
	combout => \contador_personas|contador[1]~7_combout\,
	cout => \contador_personas|contador[1]~8\);

-- Location: IOIBUF_X0_Y27_N22
\SENSOR_SALE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_SALE,
	o => \SENSOR_SALE~input_o\);

-- Location: LCCOMB_X30_Y22_N20
\contador_personas|contador[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[2]~10_combout\ = ((\contador_personas|contador\(2) $ (\contador_personas|process_0~0_combout\ $ (\contador_personas|contador[1]~8\)))) # (GND)
-- \contador_personas|contador[2]~11\ = CARRY((\contador_personas|contador\(2) & ((!\contador_personas|contador[1]~8\) # (!\contador_personas|process_0~0_combout\))) # (!\contador_personas|contador\(2) & (!\contador_personas|process_0~0_combout\ & 
-- !\contador_personas|contador[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|process_0~0_combout\,
	datad => VCC,
	cin => \contador_personas|contador[1]~8\,
	combout => \contador_personas|contador[2]~10_combout\,
	cout => \contador_personas|contador[2]~11\);

-- Location: FF_X30_Y22_N21
\contador_personas|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \contador_personas|contador[2]~10_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \contador_personas|contador[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_personas|contador\(2));

-- Location: LCCOMB_X30_Y22_N22
\contador_personas|contador[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[3]~12_combout\ = \contador_personas|process_0~0_combout\ $ (\contador_personas|contador[2]~11\ $ (!\contador_personas|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|process_0~0_combout\,
	datad => \contador_personas|contador\(3),
	cin => \contador_personas|contador[2]~11\,
	combout => \contador_personas|contador[3]~12_combout\);

-- Location: FF_X30_Y22_N23
\contador_personas|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \contador_personas|contador[3]~12_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \contador_personas|contador[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_personas|contador\(3));

-- Location: LCCOMB_X30_Y22_N24
\contador_personas|contador[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[3]~3_combout\ = (!\contador_personas|contador\(0) & (!\contador_personas|contador\(2) & (!\contador_personas|contador\(3) & !\contador_personas|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(0),
	datab => \contador_personas|contador\(2),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \contador_personas|contador[3]~3_combout\);

-- Location: LCCOMB_X30_Y22_N6
\contador_personas|contador[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[3]~9_combout\ = (\contador_personas|process_0~0_combout\) # ((\SENSOR_SALE~input_o\ & !\contador_personas|contador[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_SALE~input_o\,
	datac => \contador_personas|process_0~0_combout\,
	datad => \contador_personas|contador[3]~3_combout\,
	combout => \contador_personas|contador[3]~9_combout\);

-- Location: FF_X30_Y22_N19
\contador_personas|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \contador_personas|contador[1]~7_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	ena => \contador_personas|contador[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_personas|contador\(1));

-- Location: LCCOMB_X30_Y22_N14
\contador_personas|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|process_0~0_combout\ = (\SENSOR_ENTRA~input_o\ & (((!\contador_personas|contador\(1) & !\contador_personas|contador\(2))) # (!\contador_personas|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_ENTRA~input_o\,
	datab => \contador_personas|contador\(1),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(2),
	combout => \contador_personas|process_0~0_combout\);

-- Location: LCCOMB_X30_Y22_N26
\contador_personas|contador[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|contador[0]~4_combout\ = \contador_personas|contador\(0) $ (((\contador_personas|process_0~0_combout\) # ((\SENSOR_SALE~input_o\ & !\contador_personas|contador[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|process_0~0_combout\,
	datab => \SENSOR_SALE~input_o\,
	datac => \contador_personas|contador\(0),
	datad => \contador_personas|contador[3]~3_combout\,
	combout => \contador_personas|contador[0]~4_combout\);

-- Location: FF_X30_Y22_N27
\contador_personas|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \contador_personas|contador[0]~4_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador_personas|contador\(0));

-- Location: LCCOMB_X30_Y22_N28
\contador_personas|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_personas|LessThan2~0_combout\ = (\contador_personas|contador\(3) & ((\contador_personas|contador\(2)) # ((\contador_personas|contador\(0) & \contador_personas|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(0),
	datab => \contador_personas|contador\(1),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(2),
	combout => \contador_personas|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y22_N30
\control_ascensor_inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_ascensor_inst|process_0~0_combout\ = (\RESET~input_o\) # ((\FALLO_ENERGIA~input_o\) # (\contador_personas|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \FALLO_ENERGIA~input_o\,
	datad => \contador_personas|LessThan2~0_combout\,
	combout => \control_ascensor_inst|process_0~0_combout\);

-- Location: FF_X30_Y22_N1
\control_ascensor_inst|clear_request_bajar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \control_ascensor_inst|llegada_piso~0_combout\,
	clrn => \control_ascensor_inst|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_ascensor_inst|clear_request_bajar\(0));

-- Location: IOIBUF_X9_Y0_N15
\BOTON_PISO_INT[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_PISO_INT(4),
	o => \BOTON_PISO_INT[4]~input_o\);

-- Location: LCCOMB_X30_Y14_N22
\gestion_cabina_inst|solicitudes~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_cabina_inst|solicitudes~3_combout\ = (!\control_ascensor_inst|clear_request_bajar\(0) & ((\gestion_cabina_inst|solicitudes\(4)) # (\BOTON_PISO_INT[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_ascensor_inst|clear_request_bajar\(0),
	datac => \gestion_cabina_inst|solicitudes\(4),
	datad => \BOTON_PISO_INT[4]~input_o\,
	combout => \gestion_cabina_inst|solicitudes~3_combout\);

-- Location: FF_X30_Y14_N23
\gestion_cabina_inst|solicitudes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \gestion_cabina_inst|solicitudes~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_cabina_inst|solicitudes\(4));

-- Location: LCCOMB_X30_Y14_N26
\identificador_direccion_inst|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|process_1~0_combout\ = (\gestion_cabina_inst|solicitudes\(4)) # ((\gestion_externas_inst|solicitudes_subir_int\(0)) # ((\gestion_externas_inst|solicitudes_bajar_int\(3)) # (\gestion_cabina_inst|solicitudes\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_cabina_inst|solicitudes\(4),
	datab => \gestion_externas_inst|solicitudes_subir_int\(0),
	datac => \gestion_externas_inst|solicitudes_bajar_int\(3),
	datad => \gestion_cabina_inst|solicitudes\(0),
	combout => \identificador_direccion_inst|process_1~0_combout\);

-- Location: LCCOMB_X30_Y14_N24
\identificador_direccion_inst|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|process_1~1_combout\ = (\identificador_direccion_inst|process_1~0_combout\) # (((!\identificador_direccion_inst|destino_int~1_combout\) # (!\identificador_direccion_inst|destino_int~2_combout\)) # 
-- (!\identificador_direccion_inst|destino_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificador_direccion_inst|process_1~0_combout\,
	datab => \identificador_direccion_inst|destino_int~0_combout\,
	datac => \identificador_direccion_inst|destino_int~2_combout\,
	datad => \identificador_direccion_inst|destino_int~1_combout\,
	combout => \identificador_direccion_inst|process_1~1_combout\);

-- Location: FF_X30_Y14_N31
\identificador_direccion_inst|ultimo_piso_atendido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|ultimo_piso_atendido[2]~feeder_combout\,
	ena => \identificador_direccion_inst|process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|ultimo_piso_atendido\(2));

-- Location: LCCOMB_X30_Y14_N0
\identificador_direccion_inst|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|process_1~2_combout\ = ((\gestion_externas_inst|solicitudes_subir_int\(0)) # ((\gestion_cabina_inst|solicitudes\(0)) # (!\identificador_direccion_inst|destino_int~2_combout\))) # 
-- (!\identificador_direccion_inst|destino_int~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificador_direccion_inst|destino_int~1_combout\,
	datab => \gestion_externas_inst|solicitudes_subir_int\(0),
	datac => \gestion_cabina_inst|solicitudes\(0),
	datad => \identificador_direccion_inst|destino_int~2_combout\,
	combout => \identificador_direccion_inst|process_1~2_combout\);

-- Location: LCCOMB_X30_Y14_N16
\identificador_direccion_inst|destino_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|destino_int~3_combout\ = (!\identificador_direccion_inst|process_1~2_combout\ & ((\identificador_direccion_inst|ultimo_piso_atendido\(2)) # (\identificador_direccion_inst|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \identificador_direccion_inst|ultimo_piso_atendido\(2),
	datac => \identificador_direccion_inst|process_1~1_combout\,
	datad => \identificador_direccion_inst|process_1~2_combout\,
	combout => \identificador_direccion_inst|destino_int~3_combout\);

-- Location: FF_X30_Y14_N17
\identificador_direccion_inst|destino_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|destino_int~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|destino_int\(2));

-- Location: LCCOMB_X30_Y22_N8
\identificador_direccion_inst|RegistroDestino|reg_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \identificador_direccion_inst|RegistroDestino|reg_data[2]~feeder_combout\ = \identificador_direccion_inst|destino_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \identificador_direccion_inst|destino_int\(2),
	combout => \identificador_direccion_inst|RegistroDestino|reg_data[2]~feeder_combout\);

-- Location: FF_X30_Y22_N9
\identificador_direccion_inst|RegistroDestino|reg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|out1~clkctrl_outclk\,
	d => \identificador_direccion_inst|RegistroDestino|reg_data[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \identificador_direccion_inst|RegistroDestino|reg_data\(2));

-- Location: LCCOMB_X27_Y22_N12
\display_externo_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux6~0_combout\ = (!\identificador_direccion_inst|RegistroDestino|reg_data\(1) & (\identificador_direccion_inst|RegistroDestino|reg_data\(2) $ (\identificador_direccion_inst|RegistroDestino|reg_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y22_N10
\display_externo_inst|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux5~0_combout\ = (\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (\identificador_direccion_inst|RegistroDestino|reg_data\(1) $ (\identificador_direccion_inst|RegistroDestino|reg_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y22_N18
\display_externo_inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux4~0_combout\ = (!\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (\identificador_direccion_inst|RegistroDestino|reg_data\(1) & !\identificador_direccion_inst|RegistroDestino|reg_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y22_N24
\display_externo_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux3~0_combout\ = (\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (\identificador_direccion_inst|RegistroDestino|reg_data\(1) $ (!\identificador_direccion_inst|RegistroDestino|reg_data\(0)))) # 
-- (!\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (!\identificador_direccion_inst|RegistroDestino|reg_data\(1) & \identificador_direccion_inst|RegistroDestino|reg_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y22_N26
\display_externo_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux2~0_combout\ = (\identificador_direccion_inst|RegistroDestino|reg_data\(0)) # ((\identificador_direccion_inst|RegistroDestino|reg_data\(2) & !\identificador_direccion_inst|RegistroDestino|reg_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y22_N12
\display_externo_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux1~0_combout\ = (\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (\identificador_direccion_inst|RegistroDestino|reg_data\(1) & \identificador_direccion_inst|RegistroDestino|reg_data\(0))) # 
-- (!\identificador_direccion_inst|RegistroDestino|reg_data\(2) & ((\identificador_direccion_inst|RegistroDestino|reg_data\(1)) # (\identificador_direccion_inst|RegistroDestino|reg_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y22_N0
\display_externo_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_externo_inst|Mux0~0_combout\ = (\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (\identificador_direccion_inst|RegistroDestino|reg_data\(1) & \identificador_direccion_inst|RegistroDestino|reg_data\(0))) # 
-- (!\identificador_direccion_inst|RegistroDestino|reg_data\(2) & (!\identificador_direccion_inst|RegistroDestino|reg_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \identificador_direccion_inst|RegistroDestino|reg_data\(2),
	datac => \identificador_direccion_inst|RegistroDestino|reg_data\(1),
	datad => \identificador_direccion_inst|RegistroDestino|reg_data\(0),
	combout => \display_externo_inst|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y26_N0
\display_personas_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux6~0_combout\ = (\contador_personas|contador\(1) & (((\contador_personas|contador\(3))))) # (!\contador_personas|contador\(1) & (\contador_personas|contador\(2) $ (((\contador_personas|contador\(0) & 
-- !\contador_personas|contador\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y26_N6
\display_personas_inst|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux5~0_combout\ = (\contador_personas|contador\(2) & ((\contador_personas|contador\(3)) # (\contador_personas|contador\(0) $ (\contador_personas|contador\(1))))) # (!\contador_personas|contador\(2) & 
-- (((\contador_personas|contador\(3) & \contador_personas|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y26_N4
\display_personas_inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux4~0_combout\ = (\contador_personas|contador\(2) & (((\contador_personas|contador\(3))))) # (!\contador_personas|contador\(2) & (\contador_personas|contador\(1) & ((\contador_personas|contador\(3)) # 
-- (!\contador_personas|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y26_N10
\display_personas_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux3~0_combout\ = (\contador_personas|contador\(1) & ((\contador_personas|contador\(3)) # ((\contador_personas|contador\(2) & \contador_personas|contador\(0))))) # (!\contador_personas|contador\(1) & (\contador_personas|contador\(2) 
-- $ (((\contador_personas|contador\(0) & !\contador_personas|contador\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y26_N24
\display_personas_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux2~0_combout\ = (\contador_personas|contador\(0)) # ((\contador_personas|contador\(1) & ((\contador_personas|contador\(3)))) # (!\contador_personas|contador\(1) & (\contador_personas|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y26_N22
\display_personas_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux1~0_combout\ = (\contador_personas|contador\(2) & ((\contador_personas|contador\(3)) # ((\contador_personas|contador\(0) & \contador_personas|contador\(1))))) # (!\contador_personas|contador\(2) & 
-- ((\contador_personas|contador\(1)) # ((\contador_personas|contador\(0) & !\contador_personas|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y26_N12
\display_personas_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \display_personas_inst|Mux0~0_combout\ = (\contador_personas|contador\(2) & (!\contador_personas|contador\(3) & ((!\contador_personas|contador\(1)) # (!\contador_personas|contador\(0))))) # (!\contador_personas|contador\(2) & 
-- ((\contador_personas|contador\(3) $ (\contador_personas|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_personas|contador\(2),
	datab => \contador_personas|contador\(0),
	datac => \contador_personas|contador\(3),
	datad => \contador_personas|contador\(1),
	combout => \display_personas_inst|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\NOTIFICACION~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NOTIFICACION,
	o => \NOTIFICACION~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\BOTON_ABRIR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_ABRIR,
	o => \BOTON_ABRIR~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\BOTON_CERRAR~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BOTON_CERRAR,
	o => \BOTON_CERRAR~input_o\);

ww_DISPLAY_INTERNO(0) <= \DISPLAY_INTERNO[0]~output_o\;

ww_DISPLAY_INTERNO(1) <= \DISPLAY_INTERNO[1]~output_o\;

ww_DISPLAY_INTERNO(2) <= \DISPLAY_INTERNO[2]~output_o\;

ww_DISPLAY_INTERNO(3) <= \DISPLAY_INTERNO[3]~output_o\;

ww_DISPLAY_INTERNO(4) <= \DISPLAY_INTERNO[4]~output_o\;

ww_DISPLAY_INTERNO(5) <= \DISPLAY_INTERNO[5]~output_o\;

ww_DISPLAY_INTERNO(6) <= \DISPLAY_INTERNO[6]~output_o\;

ww_DISPLAY_EXTERNO(0) <= \DISPLAY_EXTERNO[0]~output_o\;

ww_DISPLAY_EXTERNO(1) <= \DISPLAY_EXTERNO[1]~output_o\;

ww_DISPLAY_EXTERNO(2) <= \DISPLAY_EXTERNO[2]~output_o\;

ww_DISPLAY_EXTERNO(3) <= \DISPLAY_EXTERNO[3]~output_o\;

ww_DISPLAY_EXTERNO(4) <= \DISPLAY_EXTERNO[4]~output_o\;

ww_DISPLAY_EXTERNO(5) <= \DISPLAY_EXTERNO[5]~output_o\;

ww_DISPLAY_EXTERNO(6) <= \DISPLAY_EXTERNO[6]~output_o\;

ww_DISPLAY_PERSONAS(0) <= \DISPLAY_PERSONAS[0]~output_o\;

ww_DISPLAY_PERSONAS(1) <= \DISPLAY_PERSONAS[1]~output_o\;

ww_DISPLAY_PERSONAS(2) <= \DISPLAY_PERSONAS[2]~output_o\;

ww_DISPLAY_PERSONAS(3) <= \DISPLAY_PERSONAS[3]~output_o\;

ww_DISPLAY_PERSONAS(4) <= \DISPLAY_PERSONAS[4]~output_o\;

ww_DISPLAY_PERSONAS(5) <= \DISPLAY_PERSONAS[5]~output_o\;

ww_DISPLAY_PERSONAS(6) <= \DISPLAY_PERSONAS[6]~output_o\;

ww_MOTOR_SUBIR <= \MOTOR_SUBIR~output_o\;

ww_MOTOR_BAJAR <= \MOTOR_BAJAR~output_o\;

ww_PUERTA <= \PUERTA~output_o\;

ww_LLEGADA_PISO <= \LLEGADA_PISO~output_o\;

ww_SOBRECARGA <= \SOBRECARGA~output_o\;

ww_LED_PUERTA_ABI <= \LED_PUERTA_ABI~output_o\;

ww_LED_PUERTA_CIE <= \LED_PUERTA_CIE~output_o\;

ww_LED_FALLO_EN <= \LED_FALLO_EN~output_o\;

ww_LED_NOTIF <= \LED_NOTIF~output_o\;

ww_LED_SOBRECARGA <= \LED_SOBRECARGA~output_o\;
END structure;


