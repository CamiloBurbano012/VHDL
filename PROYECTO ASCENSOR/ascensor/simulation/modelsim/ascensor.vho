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

-- DATE "03/27/2025 22:40:33"

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

ENTITY 	ascensor IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	llamada_piso : IN std_logic_vector(4 DOWNTO 0);
	seleccion_piso : IN std_logic_vector(4 DOWNTO 0);
	personas : IN STD.STANDARD.integer range 0 TO 10;
	falla_energia : IN std_logic;
	piso_actual : BUFFER std_logic_vector(2 DOWNTO 0);
	luz_puerta : OUT std_logic;
	alarma_sonora : OUT std_logic;
	destino_piso : OUT std_logic_vector(2 DOWNTO 0)
	);
END ascensor;

-- Design Ports Information
-- falla_energia	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- piso_actual[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_puerta	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma_sonora	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_piso[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_piso[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- destino_piso[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- personas[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion_piso[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion_piso[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion_piso[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[0]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion_piso[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llamada_piso[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seleccion_piso[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ascensor IS
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
SIGNAL ww_llamada_piso : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_seleccion_piso : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_personas : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_falla_energia : std_logic;
SIGNAL ww_piso_actual : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_luz_puerta : std_logic;
SIGNAL ww_alarma_sonora : std_logic;
SIGNAL ww_destino_piso : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \falla_energia~input_o\ : std_logic;
SIGNAL \piso_actual[0]~output_o\ : std_logic;
SIGNAL \piso_actual[1]~output_o\ : std_logic;
SIGNAL \piso_actual[2]~output_o\ : std_logic;
SIGNAL \luz_puerta~output_o\ : std_logic;
SIGNAL \alarma_sonora~output_o\ : std_logic;
SIGNAL \destino_piso[0]~output_o\ : std_logic;
SIGNAL \destino_piso[1]~output_o\ : std_logic;
SIGNAL \destino_piso[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \control_movimiento_inst|piso_actual[2]~reg0_q\ : std_logic;
SIGNAL \control_movimiento_inst|piso_actual[0]~reg0_q\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~0_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~0_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~35_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~36_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~1\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~2_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~1\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~2_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~33_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_actual[1]~reg0_q\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~34_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~3\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~4_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~3\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~4_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~31_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~32_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~5\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~6_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~5\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~6_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~30_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~7\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~8_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~7\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~8_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~29_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~9\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~10_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~9\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~10_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~28_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~11\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~12_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~11\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~12_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~27_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~13\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~14_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~13\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~14_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~26_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~15\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~16_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~15\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~16_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~25_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~17\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~18_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~17\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~18_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~24_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~19\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~20_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~19\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~20_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~23_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~21\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~22_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~21\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~22_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~22_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~23\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~24_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~23\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~24_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~21_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~25\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~26_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~25\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~26_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~20_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~27\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~28_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~27\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~28_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~19_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~7_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~8_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~29\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~30_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~29\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~30_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~18_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~31\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~32_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~31\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~32_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~17_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~33\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~34_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~33\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~34_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~16_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~35\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~36_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~35\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~36_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~15_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~37\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~38_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~37\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~38_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~14_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~39\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~40_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~39\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~40_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~13_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~41\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~42_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~41\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~42_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~12_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~43\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~44_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~43\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~44_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~11_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~45\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~46_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~45\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~46_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~10_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~47\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~48_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~47\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~48_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~9_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~49\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~50_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~49\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~50_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~8_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~51\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~52_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~51\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~52_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~7_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~53\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~54_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~53\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~54_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~6_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~55\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~56_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~55\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~56_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~5_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~57\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~58_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~57\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~58_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~4_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~59\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~60_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~59\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~60_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~37_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~9_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~61\ : std_logic;
SIGNAL \control_movimiento_inst|Add0~62_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~61\ : std_logic;
SIGNAL \control_movimiento_inst|Add1~62_combout\ : std_logic;
SIGNAL \control_movimiento_inst|piso_int~38_combout\ : std_logic;
SIGNAL \control_movimiento_inst|Equal0~10_combout\ : std_logic;
SIGNAL \control_movimiento_inst|en_movimiento~q\ : std_logic;
SIGNAL \control_puertas_inst|contador[0]~32_combout\ : std_logic;
SIGNAL \seleccion_piso[4]~input_o\ : std_logic;
SIGNAL \llamada_piso[4]~input_o\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes~4_combout\ : std_logic;
SIGNAL \seleccion_piso[2]~input_o\ : std_logic;
SIGNAL \llamada_piso[2]~input_o\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes~2_combout\ : std_logic;
SIGNAL \llamada_piso[0]~input_o\ : std_logic;
SIGNAL \seleccion_piso[0]~input_o\ : std_logic;
SIGNAL \gestion_llamadas_inst|process_0~3_combout\ : std_logic;
SIGNAL \llamada_piso[3]~input_o\ : std_logic;
SIGNAL \seleccion_piso[3]~input_o\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes~1_combout\ : std_logic;
SIGNAL \seleccion_piso[1]~input_o\ : std_logic;
SIGNAL \llamada_piso[1]~input_o\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes~0_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|process_0~0_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|process_0~1_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|Equal0~0_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes~3_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|process_0~2_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|process_0~4_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|llamada_activada~q\ : std_logic;
SIGNAL \control_puertas_inst|contador[1]~35\ : std_logic;
SIGNAL \control_puertas_inst|contador[2]~36_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[28]~42_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[2]~37\ : std_logic;
SIGNAL \control_puertas_inst|contador[3]~38_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[3]~39\ : std_logic;
SIGNAL \control_puertas_inst|contador[4]~43_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[4]~44\ : std_logic;
SIGNAL \control_puertas_inst|contador[5]~45_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~9_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[5]~46\ : std_logic;
SIGNAL \control_puertas_inst|contador[6]~47_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[6]~48\ : std_logic;
SIGNAL \control_puertas_inst|contador[7]~49_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[7]~50\ : std_logic;
SIGNAL \control_puertas_inst|contador[8]~51_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[8]~52\ : std_logic;
SIGNAL \control_puertas_inst|contador[9]~53_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[9]~54\ : std_logic;
SIGNAL \control_puertas_inst|contador[10]~55_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[10]~56\ : std_logic;
SIGNAL \control_puertas_inst|contador[11]~57_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[11]~58\ : std_logic;
SIGNAL \control_puertas_inst|contador[12]~59_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[12]~60\ : std_logic;
SIGNAL \control_puertas_inst|contador[13]~61_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[13]~62\ : std_logic;
SIGNAL \control_puertas_inst|contador[14]~63_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[14]~64\ : std_logic;
SIGNAL \control_puertas_inst|contador[15]~65_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[15]~66\ : std_logic;
SIGNAL \control_puertas_inst|contador[16]~67_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[16]~68\ : std_logic;
SIGNAL \control_puertas_inst|contador[17]~69_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[17]~70\ : std_logic;
SIGNAL \control_puertas_inst|contador[18]~71_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[18]~72\ : std_logic;
SIGNAL \control_puertas_inst|contador[19]~73_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[19]~74\ : std_logic;
SIGNAL \control_puertas_inst|contador[20]~75_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[20]~76\ : std_logic;
SIGNAL \control_puertas_inst|contador[21]~77_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[21]~78\ : std_logic;
SIGNAL \control_puertas_inst|contador[22]~79_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[22]~80\ : std_logic;
SIGNAL \control_puertas_inst|contador[23]~81_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[23]~82\ : std_logic;
SIGNAL \control_puertas_inst|contador[24]~83_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[24]~84\ : std_logic;
SIGNAL \control_puertas_inst|contador[25]~85_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[25]~86\ : std_logic;
SIGNAL \control_puertas_inst|contador[26]~87_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[26]~88\ : std_logic;
SIGNAL \control_puertas_inst|contador[27]~89_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[27]~90\ : std_logic;
SIGNAL \control_puertas_inst|contador[28]~91_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[28]~92\ : std_logic;
SIGNAL \control_puertas_inst|contador[29]~93_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[29]~94\ : std_logic;
SIGNAL \control_puertas_inst|contador[30]~95_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[30]~96\ : std_logic;
SIGNAL \control_puertas_inst|contador[31]~97_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~7_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal0~8_combout\ : std_logic;
SIGNAL \control_puertas_inst|estado_puerta~0_combout\ : std_logic;
SIGNAL \control_puertas_inst|estado_puerta~1_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[28]~40_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[28]~41_combout\ : std_logic;
SIGNAL \control_puertas_inst|contador[0]~33\ : std_logic;
SIGNAL \control_puertas_inst|contador[1]~34_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal1~0_combout\ : std_logic;
SIGNAL \control_puertas_inst|Equal1~1_combout\ : std_logic;
SIGNAL \control_puertas_inst|estado_puerta~2_combout\ : std_logic;
SIGNAL \control_puertas_inst|luz_puerta~0_combout\ : std_logic;
SIGNAL \control_puertas_inst|luz_puerta~q\ : std_logic;
SIGNAL \control_puertas_inst|alarma_sonora~0_combout\ : std_logic;
SIGNAL \control_puertas_inst|alarma_sonora~q\ : std_logic;
SIGNAL \personas[2]~input_o\ : std_logic;
SIGNAL \personas[1]~input_o\ : std_logic;
SIGNAL \personas[0]~input_o\ : std_logic;
SIGNAL \personas[3]~input_o\ : std_logic;
SIGNAL \seguridad_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \seguridad_inst|alarma_personas~q\ : std_logic;
SIGNAL \alarma_sonora~0_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|piso_destino[1]~feeder_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|piso_destino[2]~feeder_combout\ : std_logic;
SIGNAL \gestion_llamadas_inst|solicitudes\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gestion_llamadas_inst|piso_destino\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gestion_llamadas_inst|destino_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_puertas_inst|estado_puerta\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \control_puertas_inst|contador\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control_movimiento_inst|piso_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_llamada_piso <= llamada_piso;
ww_seleccion_piso <= seleccion_piso;
ww_personas <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(personas, 4);
ww_falla_energia <= falla_energia;
piso_actual <= ww_piso_actual;
luz_puerta <= ww_luz_puerta;
alarma_sonora <= ww_alarma_sonora;
destino_piso <= ww_destino_piso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X21_Y0_N30
\piso_actual[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso_actual[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\piso_actual[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso_actual[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\piso_actual[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \piso_actual[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\luz_puerta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_puertas_inst|luz_puerta~q\,
	devoe => ww_devoe,
	o => \luz_puerta~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\alarma_sonora~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarma_sonora~0_combout\,
	devoe => ww_devoe,
	o => \alarma_sonora~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\destino_piso[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gestion_llamadas_inst|piso_destino\(0),
	devoe => ww_devoe,
	o => \destino_piso[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\destino_piso[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gestion_llamadas_inst|piso_destino\(1),
	devoe => ww_devoe,
	o => \destino_piso[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\destino_piso[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gestion_llamadas_inst|piso_destino\(2),
	devoe => ww_devoe,
	o => \destino_piso[2]~output_o\);

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

-- Location: FF_X37_Y21_N11
\control_movimiento_inst|piso_actual[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control_movimiento_inst|piso_int\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_actual[2]~reg0_q\);

-- Location: FF_X35_Y21_N23
\control_movimiento_inst|piso_actual[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control_movimiento_inst|piso_int\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_actual[0]~reg0_q\);

-- Location: LCCOMB_X36_Y21_N0
\control_movimiento_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~0_combout\ = \control_movimiento_inst|piso_int\(0) $ (VCC)
-- \control_movimiento_inst|Add0~1\ = CARRY(\control_movimiento_inst|piso_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(0),
	datad => VCC,
	combout => \control_movimiento_inst|Add0~0_combout\,
	cout => \control_movimiento_inst|Add0~1\);

-- Location: LCCOMB_X38_Y21_N0
\control_movimiento_inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~0_combout\ = \control_movimiento_inst|piso_int\(0) $ (VCC)
-- \control_movimiento_inst|Add1~1\ = CARRY(\control_movimiento_inst|piso_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(0),
	datad => VCC,
	combout => \control_movimiento_inst|Add1~0_combout\,
	cout => \control_movimiento_inst|Add1~1\);

-- Location: LCCOMB_X35_Y21_N4
\control_movimiento_inst|piso_int~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~35_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add0~0_combout\)) # (!\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|Add0~0_combout\,
	datac => \control_movimiento_inst|Add1~0_combout\,
	datad => \control_movimiento_inst|piso_int\(31),
	combout => \control_movimiento_inst|piso_int~35_combout\);

-- Location: LCCOMB_X35_Y21_N16
\control_movimiento_inst|piso_int~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~36_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|piso_int~35_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|piso_actual[0]~reg0_q\)) # (!\control_movimiento_inst|Equal0~9_combout\ & ((\control_movimiento_inst|piso_int~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_actual[0]~reg0_q\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|piso_int~35_combout\,
	datad => \control_movimiento_inst|Equal0~9_combout\,
	combout => \control_movimiento_inst|piso_int~36_combout\);

-- Location: FF_X36_Y21_N1
\control_movimiento_inst|piso_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control_movimiento_inst|piso_int~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(0));

-- Location: LCCOMB_X36_Y21_N2
\control_movimiento_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~2_combout\ = (\control_movimiento_inst|piso_int\(1) & (!\control_movimiento_inst|Add0~1\)) # (!\control_movimiento_inst|piso_int\(1) & ((\control_movimiento_inst|Add0~1\) # (GND)))
-- \control_movimiento_inst|Add0~3\ = CARRY((!\control_movimiento_inst|Add0~1\) # (!\control_movimiento_inst|piso_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(1),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~1\,
	combout => \control_movimiento_inst|Add0~2_combout\,
	cout => \control_movimiento_inst|Add0~3\);

-- Location: LCCOMB_X38_Y21_N2
\control_movimiento_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~2_combout\ = (\control_movimiento_inst|piso_int\(1) & (\control_movimiento_inst|Add1~1\ & VCC)) # (!\control_movimiento_inst|piso_int\(1) & (!\control_movimiento_inst|Add1~1\))
-- \control_movimiento_inst|Add1~3\ = CARRY((!\control_movimiento_inst|piso_int\(1) & !\control_movimiento_inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(1),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~1\,
	combout => \control_movimiento_inst|Add1~2_combout\,
	cout => \control_movimiento_inst|Add1~3\);

-- Location: LCCOMB_X37_Y21_N10
\control_movimiento_inst|piso_int~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~33_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add0~2_combout\)) # (!\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add0~2_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~2_combout\,
	combout => \control_movimiento_inst|piso_int~33_combout\);

-- Location: FF_X37_Y21_N21
\control_movimiento_inst|piso_actual[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control_movimiento_inst|piso_int\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_actual[1]~reg0_q\);

-- Location: LCCOMB_X37_Y21_N28
\control_movimiento_inst|piso_int~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~34_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|piso_int~33_combout\)) # (!\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|piso_actual[1]~reg0_q\))) # (!\control_movimiento_inst|Equal0~9_combout\ & (\control_movimiento_inst|piso_int~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int~33_combout\,
	datab => \control_movimiento_inst|piso_actual[1]~reg0_q\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Equal0~9_combout\,
	combout => \control_movimiento_inst|piso_int~34_combout\);

-- Location: FF_X37_Y21_N29
\control_movimiento_inst|piso_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(1));

-- Location: LCCOMB_X38_Y21_N4
\control_movimiento_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~4_combout\ = (\control_movimiento_inst|piso_int\(2) & ((GND) # (!\control_movimiento_inst|Add1~3\))) # (!\control_movimiento_inst|piso_int\(2) & (\control_movimiento_inst|Add1~3\ $ (GND)))
-- \control_movimiento_inst|Add1~5\ = CARRY((\control_movimiento_inst|piso_int\(2)) # (!\control_movimiento_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(2),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~3\,
	combout => \control_movimiento_inst|Add1~4_combout\,
	cout => \control_movimiento_inst|Add1~5\);

-- Location: LCCOMB_X36_Y21_N4
\control_movimiento_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~4_combout\ = (\control_movimiento_inst|piso_int\(2) & (\control_movimiento_inst|Add0~3\ $ (GND))) # (!\control_movimiento_inst|piso_int\(2) & (!\control_movimiento_inst|Add0~3\ & VCC))
-- \control_movimiento_inst|Add0~5\ = CARRY((\control_movimiento_inst|piso_int\(2) & !\control_movimiento_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(2),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~3\,
	combout => \control_movimiento_inst|Add0~4_combout\,
	cout => \control_movimiento_inst|Add0~5\);

-- Location: LCCOMB_X37_Y21_N20
\control_movimiento_inst|piso_int~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~31_combout\ = (\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Add0~4_combout\))) # (!\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add1~4_combout\,
	datab => \control_movimiento_inst|Add0~4_combout\,
	datad => \control_movimiento_inst|piso_int\(31),
	combout => \control_movimiento_inst|piso_int~31_combout\);

-- Location: LCCOMB_X37_Y21_N18
\control_movimiento_inst|piso_int~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~32_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|piso_int~31_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & ((\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|piso_actual[2]~reg0_q\)) # (!\control_movimiento_inst|Equal0~9_combout\ & ((\control_movimiento_inst|piso_int~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_actual[2]~reg0_q\,
	datab => \control_movimiento_inst|piso_int~31_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Equal0~9_combout\,
	combout => \control_movimiento_inst|piso_int~32_combout\);

-- Location: FF_X37_Y21_N19
\control_movimiento_inst|piso_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(2));

-- Location: LCCOMB_X38_Y21_N6
\control_movimiento_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~6_combout\ = (\control_movimiento_inst|piso_int\(3) & (\control_movimiento_inst|Add1~5\ & VCC)) # (!\control_movimiento_inst|piso_int\(3) & (!\control_movimiento_inst|Add1~5\))
-- \control_movimiento_inst|Add1~7\ = CARRY((!\control_movimiento_inst|piso_int\(3) & !\control_movimiento_inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(3),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~5\,
	combout => \control_movimiento_inst|Add1~6_combout\,
	cout => \control_movimiento_inst|Add1~7\);

-- Location: LCCOMB_X36_Y21_N6
\control_movimiento_inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~6_combout\ = (\control_movimiento_inst|piso_int\(3) & (!\control_movimiento_inst|Add0~5\)) # (!\control_movimiento_inst|piso_int\(3) & ((\control_movimiento_inst|Add0~5\) # (GND)))
-- \control_movimiento_inst|Add0~7\ = CARRY((!\control_movimiento_inst|Add0~5\) # (!\control_movimiento_inst|piso_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(3),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~5\,
	combout => \control_movimiento_inst|Add0~6_combout\,
	cout => \control_movimiento_inst|Add0~7\);

-- Location: LCCOMB_X35_Y21_N14
\control_movimiento_inst|piso_int~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~30_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~6_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~6_combout\,
	datad => \control_movimiento_inst|Add0~6_combout\,
	combout => \control_movimiento_inst|piso_int~30_combout\);

-- Location: FF_X35_Y21_N15
\control_movimiento_inst|piso_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(3));

-- Location: LCCOMB_X36_Y21_N8
\control_movimiento_inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~8_combout\ = (\control_movimiento_inst|piso_int\(4) & (\control_movimiento_inst|Add0~7\ $ (GND))) # (!\control_movimiento_inst|piso_int\(4) & (!\control_movimiento_inst|Add0~7\ & VCC))
-- \control_movimiento_inst|Add0~9\ = CARRY((\control_movimiento_inst|piso_int\(4) & !\control_movimiento_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(4),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~7\,
	combout => \control_movimiento_inst|Add0~8_combout\,
	cout => \control_movimiento_inst|Add0~9\);

-- Location: LCCOMB_X38_Y21_N8
\control_movimiento_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~8_combout\ = (\control_movimiento_inst|piso_int\(4) & ((GND) # (!\control_movimiento_inst|Add1~7\))) # (!\control_movimiento_inst|piso_int\(4) & (\control_movimiento_inst|Add1~7\ $ (GND)))
-- \control_movimiento_inst|Add1~9\ = CARRY((\control_movimiento_inst|piso_int\(4)) # (!\control_movimiento_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(4),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~7\,
	combout => \control_movimiento_inst|Add1~8_combout\,
	cout => \control_movimiento_inst|Add1~9\);

-- Location: LCCOMB_X35_Y21_N8
\control_movimiento_inst|piso_int~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~29_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~8_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~8_combout\,
	datad => \control_movimiento_inst|Add1~8_combout\,
	combout => \control_movimiento_inst|piso_int~29_combout\);

-- Location: FF_X35_Y21_N9
\control_movimiento_inst|piso_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(4));

-- Location: LCCOMB_X36_Y21_N10
\control_movimiento_inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~10_combout\ = (\control_movimiento_inst|piso_int\(5) & (!\control_movimiento_inst|Add0~9\)) # (!\control_movimiento_inst|piso_int\(5) & ((\control_movimiento_inst|Add0~9\) # (GND)))
-- \control_movimiento_inst|Add0~11\ = CARRY((!\control_movimiento_inst|Add0~9\) # (!\control_movimiento_inst|piso_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(5),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~9\,
	combout => \control_movimiento_inst|Add0~10_combout\,
	cout => \control_movimiento_inst|Add0~11\);

-- Location: LCCOMB_X38_Y21_N10
\control_movimiento_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~10_combout\ = (\control_movimiento_inst|piso_int\(5) & (\control_movimiento_inst|Add1~9\ & VCC)) # (!\control_movimiento_inst|piso_int\(5) & (!\control_movimiento_inst|Add1~9\))
-- \control_movimiento_inst|Add1~11\ = CARRY((!\control_movimiento_inst|piso_int\(5) & !\control_movimiento_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(5),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~9\,
	combout => \control_movimiento_inst|Add1~10_combout\,
	cout => \control_movimiento_inst|Add1~11\);

-- Location: LCCOMB_X35_Y21_N30
\control_movimiento_inst|piso_int~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~28_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~10_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~10_combout\,
	datad => \control_movimiento_inst|Add1~10_combout\,
	combout => \control_movimiento_inst|piso_int~28_combout\);

-- Location: FF_X35_Y21_N31
\control_movimiento_inst|piso_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(5));

-- Location: LCCOMB_X36_Y21_N12
\control_movimiento_inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~12_combout\ = (\control_movimiento_inst|piso_int\(6) & (\control_movimiento_inst|Add0~11\ $ (GND))) # (!\control_movimiento_inst|piso_int\(6) & (!\control_movimiento_inst|Add0~11\ & VCC))
-- \control_movimiento_inst|Add0~13\ = CARRY((\control_movimiento_inst|piso_int\(6) & !\control_movimiento_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(6),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~11\,
	combout => \control_movimiento_inst|Add0~12_combout\,
	cout => \control_movimiento_inst|Add0~13\);

-- Location: LCCOMB_X38_Y21_N12
\control_movimiento_inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~12_combout\ = (\control_movimiento_inst|piso_int\(6) & ((GND) # (!\control_movimiento_inst|Add1~11\))) # (!\control_movimiento_inst|piso_int\(6) & (\control_movimiento_inst|Add1~11\ $ (GND)))
-- \control_movimiento_inst|Add1~13\ = CARRY((\control_movimiento_inst|piso_int\(6)) # (!\control_movimiento_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(6),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~11\,
	combout => \control_movimiento_inst|Add1~12_combout\,
	cout => \control_movimiento_inst|Add1~13\);

-- Location: LCCOMB_X35_Y21_N28
\control_movimiento_inst|piso_int~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~27_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~12_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~12_combout\,
	datad => \control_movimiento_inst|Add1~12_combout\,
	combout => \control_movimiento_inst|piso_int~27_combout\);

-- Location: FF_X35_Y21_N29
\control_movimiento_inst|piso_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(6));

-- Location: LCCOMB_X36_Y21_N14
\control_movimiento_inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~14_combout\ = (\control_movimiento_inst|piso_int\(7) & (!\control_movimiento_inst|Add0~13\)) # (!\control_movimiento_inst|piso_int\(7) & ((\control_movimiento_inst|Add0~13\) # (GND)))
-- \control_movimiento_inst|Add0~15\ = CARRY((!\control_movimiento_inst|Add0~13\) # (!\control_movimiento_inst|piso_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(7),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~13\,
	combout => \control_movimiento_inst|Add0~14_combout\,
	cout => \control_movimiento_inst|Add0~15\);

-- Location: LCCOMB_X38_Y21_N14
\control_movimiento_inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~14_combout\ = (\control_movimiento_inst|piso_int\(7) & (\control_movimiento_inst|Add1~13\ & VCC)) # (!\control_movimiento_inst|piso_int\(7) & (!\control_movimiento_inst|Add1~13\))
-- \control_movimiento_inst|Add1~15\ = CARRY((!\control_movimiento_inst|piso_int\(7) & !\control_movimiento_inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(7),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~13\,
	combout => \control_movimiento_inst|Add1~14_combout\,
	cout => \control_movimiento_inst|Add1~15\);

-- Location: LCCOMB_X37_Y21_N4
\control_movimiento_inst|piso_int~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~26_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add0~14_combout\)) # (!\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add1~14_combout\ & 
-- !\control_movimiento_inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add0~14_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~14_combout\,
	datad => \control_movimiento_inst|Equal0~9_combout\,
	combout => \control_movimiento_inst|piso_int~26_combout\);

-- Location: FF_X37_Y21_N5
\control_movimiento_inst|piso_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(7));

-- Location: LCCOMB_X38_Y21_N16
\control_movimiento_inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~16_combout\ = (\control_movimiento_inst|piso_int\(8) & ((GND) # (!\control_movimiento_inst|Add1~15\))) # (!\control_movimiento_inst|piso_int\(8) & (\control_movimiento_inst|Add1~15\ $ (GND)))
-- \control_movimiento_inst|Add1~17\ = CARRY((\control_movimiento_inst|piso_int\(8)) # (!\control_movimiento_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(8),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~15\,
	combout => \control_movimiento_inst|Add1~16_combout\,
	cout => \control_movimiento_inst|Add1~17\);

-- Location: LCCOMB_X36_Y21_N16
\control_movimiento_inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~16_combout\ = (\control_movimiento_inst|piso_int\(8) & (\control_movimiento_inst|Add0~15\ $ (GND))) # (!\control_movimiento_inst|piso_int\(8) & (!\control_movimiento_inst|Add0~15\ & VCC))
-- \control_movimiento_inst|Add0~17\ = CARRY((\control_movimiento_inst|piso_int\(8) & !\control_movimiento_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(8),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~15\,
	combout => \control_movimiento_inst|Add0~16_combout\,
	cout => \control_movimiento_inst|Add0~17\);

-- Location: LCCOMB_X35_Y21_N12
\control_movimiento_inst|piso_int~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~25_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~16_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~16_combout\,
	datad => \control_movimiento_inst|Add0~16_combout\,
	combout => \control_movimiento_inst|piso_int~25_combout\);

-- Location: FF_X35_Y21_N13
\control_movimiento_inst|piso_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(8));

-- Location: LCCOMB_X36_Y21_N18
\control_movimiento_inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~18_combout\ = (\control_movimiento_inst|piso_int\(9) & (!\control_movimiento_inst|Add0~17\)) # (!\control_movimiento_inst|piso_int\(9) & ((\control_movimiento_inst|Add0~17\) # (GND)))
-- \control_movimiento_inst|Add0~19\ = CARRY((!\control_movimiento_inst|Add0~17\) # (!\control_movimiento_inst|piso_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(9),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~17\,
	combout => \control_movimiento_inst|Add0~18_combout\,
	cout => \control_movimiento_inst|Add0~19\);

-- Location: LCCOMB_X38_Y21_N18
\control_movimiento_inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~18_combout\ = (\control_movimiento_inst|piso_int\(9) & (\control_movimiento_inst|Add1~17\ & VCC)) # (!\control_movimiento_inst|piso_int\(9) & (!\control_movimiento_inst|Add1~17\))
-- \control_movimiento_inst|Add1~19\ = CARRY((!\control_movimiento_inst|piso_int\(9) & !\control_movimiento_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(9),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~17\,
	combout => \control_movimiento_inst|Add1~18_combout\,
	cout => \control_movimiento_inst|Add1~19\);

-- Location: LCCOMB_X35_Y21_N26
\control_movimiento_inst|piso_int~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~24_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~18_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|Add0~18_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~18_combout\,
	combout => \control_movimiento_inst|piso_int~24_combout\);

-- Location: FF_X35_Y21_N27
\control_movimiento_inst|piso_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(9));

-- Location: LCCOMB_X36_Y21_N20
\control_movimiento_inst|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~20_combout\ = (\control_movimiento_inst|piso_int\(10) & (\control_movimiento_inst|Add0~19\ $ (GND))) # (!\control_movimiento_inst|piso_int\(10) & (!\control_movimiento_inst|Add0~19\ & VCC))
-- \control_movimiento_inst|Add0~21\ = CARRY((\control_movimiento_inst|piso_int\(10) & !\control_movimiento_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(10),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~19\,
	combout => \control_movimiento_inst|Add0~20_combout\,
	cout => \control_movimiento_inst|Add0~21\);

-- Location: LCCOMB_X38_Y21_N20
\control_movimiento_inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~20_combout\ = (\control_movimiento_inst|piso_int\(10) & ((GND) # (!\control_movimiento_inst|Add1~19\))) # (!\control_movimiento_inst|piso_int\(10) & (\control_movimiento_inst|Add1~19\ $ (GND)))
-- \control_movimiento_inst|Add1~21\ = CARRY((\control_movimiento_inst|piso_int\(10)) # (!\control_movimiento_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(10),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~19\,
	combout => \control_movimiento_inst|Add1~20_combout\,
	cout => \control_movimiento_inst|Add1~21\);

-- Location: LCCOMB_X35_Y21_N24
\control_movimiento_inst|piso_int~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~23_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~20_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~20_combout\,
	datad => \control_movimiento_inst|Add1~20_combout\,
	combout => \control_movimiento_inst|piso_int~23_combout\);

-- Location: FF_X35_Y21_N25
\control_movimiento_inst|piso_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(10));

-- Location: LCCOMB_X36_Y21_N22
\control_movimiento_inst|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~22_combout\ = (\control_movimiento_inst|piso_int\(11) & (!\control_movimiento_inst|Add0~21\)) # (!\control_movimiento_inst|piso_int\(11) & ((\control_movimiento_inst|Add0~21\) # (GND)))
-- \control_movimiento_inst|Add0~23\ = CARRY((!\control_movimiento_inst|Add0~21\) # (!\control_movimiento_inst|piso_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(11),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~21\,
	combout => \control_movimiento_inst|Add0~22_combout\,
	cout => \control_movimiento_inst|Add0~23\);

-- Location: LCCOMB_X38_Y21_N22
\control_movimiento_inst|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~22_combout\ = (\control_movimiento_inst|piso_int\(11) & (\control_movimiento_inst|Add1~21\ & VCC)) # (!\control_movimiento_inst|piso_int\(11) & (!\control_movimiento_inst|Add1~21\))
-- \control_movimiento_inst|Add1~23\ = CARRY((!\control_movimiento_inst|piso_int\(11) & !\control_movimiento_inst|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(11),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~21\,
	combout => \control_movimiento_inst|Add1~22_combout\,
	cout => \control_movimiento_inst|Add1~23\);

-- Location: LCCOMB_X37_Y21_N8
\control_movimiento_inst|piso_int~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~22_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add0~22_combout\)) # (!\control_movimiento_inst|piso_int\(31) & (((!\control_movimiento_inst|Equal0~9_combout\ & 
-- \control_movimiento_inst|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add0~22_combout\,
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~22_combout\,
	combout => \control_movimiento_inst|piso_int~22_combout\);

-- Location: FF_X37_Y21_N9
\control_movimiento_inst|piso_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(11));

-- Location: LCCOMB_X38_Y21_N24
\control_movimiento_inst|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~24_combout\ = (\control_movimiento_inst|piso_int\(12) & ((GND) # (!\control_movimiento_inst|Add1~23\))) # (!\control_movimiento_inst|piso_int\(12) & (\control_movimiento_inst|Add1~23\ $ (GND)))
-- \control_movimiento_inst|Add1~25\ = CARRY((\control_movimiento_inst|piso_int\(12)) # (!\control_movimiento_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(12),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~23\,
	combout => \control_movimiento_inst|Add1~24_combout\,
	cout => \control_movimiento_inst|Add1~25\);

-- Location: LCCOMB_X36_Y21_N24
\control_movimiento_inst|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~24_combout\ = (\control_movimiento_inst|piso_int\(12) & (\control_movimiento_inst|Add0~23\ $ (GND))) # (!\control_movimiento_inst|piso_int\(12) & (!\control_movimiento_inst|Add0~23\ & VCC))
-- \control_movimiento_inst|Add0~25\ = CARRY((\control_movimiento_inst|piso_int\(12) & !\control_movimiento_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(12),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~23\,
	combout => \control_movimiento_inst|Add0~24_combout\,
	cout => \control_movimiento_inst|Add0~25\);

-- Location: LCCOMB_X37_Y21_N26
\control_movimiento_inst|piso_int~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~21_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~24_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add1~24_combout\ & 
-- (!\control_movimiento_inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add1~24_combout\,
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add0~24_combout\,
	combout => \control_movimiento_inst|piso_int~21_combout\);

-- Location: FF_X37_Y21_N27
\control_movimiento_inst|piso_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(12));

-- Location: LCCOMB_X36_Y21_N26
\control_movimiento_inst|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~26_combout\ = (\control_movimiento_inst|piso_int\(13) & (!\control_movimiento_inst|Add0~25\)) # (!\control_movimiento_inst|piso_int\(13) & ((\control_movimiento_inst|Add0~25\) # (GND)))
-- \control_movimiento_inst|Add0~27\ = CARRY((!\control_movimiento_inst|Add0~25\) # (!\control_movimiento_inst|piso_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(13),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~25\,
	combout => \control_movimiento_inst|Add0~26_combout\,
	cout => \control_movimiento_inst|Add0~27\);

-- Location: LCCOMB_X38_Y21_N26
\control_movimiento_inst|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~26_combout\ = (\control_movimiento_inst|piso_int\(13) & (\control_movimiento_inst|Add1~25\ & VCC)) # (!\control_movimiento_inst|piso_int\(13) & (!\control_movimiento_inst|Add1~25\))
-- \control_movimiento_inst|Add1~27\ = CARRY((!\control_movimiento_inst|piso_int\(13) & !\control_movimiento_inst|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(13),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~25\,
	combout => \control_movimiento_inst|Add1~26_combout\,
	cout => \control_movimiento_inst|Add1~27\);

-- Location: LCCOMB_X37_Y21_N0
\control_movimiento_inst|piso_int~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~20_combout\ = (\control_movimiento_inst|piso_int\(31) & (\control_movimiento_inst|Add0~26_combout\)) # (!\control_movimiento_inst|piso_int\(31) & (((!\control_movimiento_inst|Equal0~9_combout\ & 
-- \control_movimiento_inst|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Add0~26_combout\,
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~26_combout\,
	combout => \control_movimiento_inst|piso_int~20_combout\);

-- Location: FF_X37_Y21_N1
\control_movimiento_inst|piso_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(13));

-- Location: LCCOMB_X36_Y21_N28
\control_movimiento_inst|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~28_combout\ = (\control_movimiento_inst|piso_int\(14) & (\control_movimiento_inst|Add0~27\ $ (GND))) # (!\control_movimiento_inst|piso_int\(14) & (!\control_movimiento_inst|Add0~27\ & VCC))
-- \control_movimiento_inst|Add0~29\ = CARRY((\control_movimiento_inst|piso_int\(14) & !\control_movimiento_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(14),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~27\,
	combout => \control_movimiento_inst|Add0~28_combout\,
	cout => \control_movimiento_inst|Add0~29\);

-- Location: LCCOMB_X38_Y21_N28
\control_movimiento_inst|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~28_combout\ = (\control_movimiento_inst|piso_int\(14) & ((GND) # (!\control_movimiento_inst|Add1~27\))) # (!\control_movimiento_inst|piso_int\(14) & (\control_movimiento_inst|Add1~27\ $ (GND)))
-- \control_movimiento_inst|Add1~29\ = CARRY((\control_movimiento_inst|piso_int\(14)) # (!\control_movimiento_inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(14),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~27\,
	combout => \control_movimiento_inst|Add1~28_combout\,
	cout => \control_movimiento_inst|Add1~29\);

-- Location: LCCOMB_X37_Y21_N6
\control_movimiento_inst|piso_int~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~19_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~28_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|Add0~28_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~28_combout\,
	combout => \control_movimiento_inst|piso_int~19_combout\);

-- Location: FF_X37_Y21_N7
\control_movimiento_inst|piso_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(14));

-- Location: LCCOMB_X35_Y21_N18
\control_movimiento_inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~5_combout\ = (!\control_movimiento_inst|piso_int\(14) & (!\control_movimiento_inst|piso_int\(11) & (!\control_movimiento_inst|piso_int\(13) & !\control_movimiento_inst|piso_int\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(14),
	datab => \control_movimiento_inst|piso_int\(11),
	datac => \control_movimiento_inst|piso_int\(13),
	datad => \control_movimiento_inst|piso_int\(12),
	combout => \control_movimiento_inst|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y21_N0
\control_movimiento_inst|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~7_combout\ = (!\control_movimiento_inst|piso_int\(5) & (!\control_movimiento_inst|piso_int\(4) & (!\control_movimiento_inst|piso_int\(3) & !\control_movimiento_inst|piso_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(5),
	datab => \control_movimiento_inst|piso_int\(4),
	datac => \control_movimiento_inst|piso_int\(3),
	datad => \control_movimiento_inst|piso_int\(6),
	combout => \control_movimiento_inst|Equal0~7_combout\);

-- Location: LCCOMB_X35_Y21_N10
\control_movimiento_inst|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~8_combout\ = (!\control_movimiento_inst|piso_int\(2) & (!\control_movimiento_inst|piso_int\(0) & (!\control_movimiento_inst|piso_int\(1) & \control_movimiento_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(2),
	datab => \control_movimiento_inst|piso_int\(0),
	datac => \control_movimiento_inst|piso_int\(1),
	datad => \control_movimiento_inst|Equal0~7_combout\,
	combout => \control_movimiento_inst|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y21_N6
\control_movimiento_inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~6_combout\ = (!\control_movimiento_inst|piso_int\(8) & (!\control_movimiento_inst|piso_int\(10) & (!\control_movimiento_inst|piso_int\(9) & !\control_movimiento_inst|piso_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(8),
	datab => \control_movimiento_inst|piso_int\(10),
	datac => \control_movimiento_inst|piso_int\(9),
	datad => \control_movimiento_inst|piso_int\(7),
	combout => \control_movimiento_inst|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y21_N30
\control_movimiento_inst|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~30_combout\ = (\control_movimiento_inst|piso_int\(15) & (\control_movimiento_inst|Add1~29\ & VCC)) # (!\control_movimiento_inst|piso_int\(15) & (!\control_movimiento_inst|Add1~29\))
-- \control_movimiento_inst|Add1~31\ = CARRY((!\control_movimiento_inst|piso_int\(15) & !\control_movimiento_inst|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(15),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~29\,
	combout => \control_movimiento_inst|Add1~30_combout\,
	cout => \control_movimiento_inst|Add1~31\);

-- Location: LCCOMB_X36_Y21_N30
\control_movimiento_inst|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~30_combout\ = (\control_movimiento_inst|piso_int\(15) & (!\control_movimiento_inst|Add0~29\)) # (!\control_movimiento_inst|piso_int\(15) & ((\control_movimiento_inst|Add0~29\) # (GND)))
-- \control_movimiento_inst|Add0~31\ = CARRY((!\control_movimiento_inst|Add0~29\) # (!\control_movimiento_inst|piso_int\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(15),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~29\,
	combout => \control_movimiento_inst|Add0~30_combout\,
	cout => \control_movimiento_inst|Add0~31\);

-- Location: LCCOMB_X37_Y21_N14
\control_movimiento_inst|piso_int~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~18_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~30_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~30_combout\,
	datad => \control_movimiento_inst|Add0~30_combout\,
	combout => \control_movimiento_inst|piso_int~18_combout\);

-- Location: FF_X37_Y21_N15
\control_movimiento_inst|piso_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(15));

-- Location: LCCOMB_X38_Y20_N0
\control_movimiento_inst|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~32_combout\ = (\control_movimiento_inst|piso_int\(16) & ((GND) # (!\control_movimiento_inst|Add1~31\))) # (!\control_movimiento_inst|piso_int\(16) & (\control_movimiento_inst|Add1~31\ $ (GND)))
-- \control_movimiento_inst|Add1~33\ = CARRY((\control_movimiento_inst|piso_int\(16)) # (!\control_movimiento_inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(16),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~31\,
	combout => \control_movimiento_inst|Add1~32_combout\,
	cout => \control_movimiento_inst|Add1~33\);

-- Location: LCCOMB_X36_Y20_N0
\control_movimiento_inst|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~32_combout\ = (\control_movimiento_inst|piso_int\(16) & (\control_movimiento_inst|Add0~31\ $ (GND))) # (!\control_movimiento_inst|piso_int\(16) & (!\control_movimiento_inst|Add0~31\ & VCC))
-- \control_movimiento_inst|Add0~33\ = CARRY((\control_movimiento_inst|piso_int\(16) & !\control_movimiento_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(16),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~31\,
	combout => \control_movimiento_inst|Add0~32_combout\,
	cout => \control_movimiento_inst|Add0~33\);

-- Location: LCCOMB_X37_Y21_N24
\control_movimiento_inst|piso_int~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~17_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~32_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~32_combout\,
	datad => \control_movimiento_inst|Add0~32_combout\,
	combout => \control_movimiento_inst|piso_int~17_combout\);

-- Location: FF_X37_Y21_N25
\control_movimiento_inst|piso_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(16));

-- Location: LCCOMB_X36_Y20_N2
\control_movimiento_inst|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~34_combout\ = (\control_movimiento_inst|piso_int\(17) & (!\control_movimiento_inst|Add0~33\)) # (!\control_movimiento_inst|piso_int\(17) & ((\control_movimiento_inst|Add0~33\) # (GND)))
-- \control_movimiento_inst|Add0~35\ = CARRY((!\control_movimiento_inst|Add0~33\) # (!\control_movimiento_inst|piso_int\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(17),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~33\,
	combout => \control_movimiento_inst|Add0~34_combout\,
	cout => \control_movimiento_inst|Add0~35\);

-- Location: LCCOMB_X38_Y20_N2
\control_movimiento_inst|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~34_combout\ = (\control_movimiento_inst|piso_int\(17) & (\control_movimiento_inst|Add1~33\ & VCC)) # (!\control_movimiento_inst|piso_int\(17) & (!\control_movimiento_inst|Add1~33\))
-- \control_movimiento_inst|Add1~35\ = CARRY((!\control_movimiento_inst|piso_int\(17) & !\control_movimiento_inst|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(17),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~33\,
	combout => \control_movimiento_inst|Add1~34_combout\,
	cout => \control_movimiento_inst|Add1~35\);

-- Location: LCCOMB_X37_Y21_N22
\control_movimiento_inst|piso_int~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~16_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~34_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(31),
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|Add0~34_combout\,
	datad => \control_movimiento_inst|Add1~34_combout\,
	combout => \control_movimiento_inst|piso_int~16_combout\);

-- Location: FF_X37_Y21_N23
\control_movimiento_inst|piso_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(17));

-- Location: LCCOMB_X36_Y20_N4
\control_movimiento_inst|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~36_combout\ = (\control_movimiento_inst|piso_int\(18) & (\control_movimiento_inst|Add0~35\ $ (GND))) # (!\control_movimiento_inst|piso_int\(18) & (!\control_movimiento_inst|Add0~35\ & VCC))
-- \control_movimiento_inst|Add0~37\ = CARRY((\control_movimiento_inst|piso_int\(18) & !\control_movimiento_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(18),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~35\,
	combout => \control_movimiento_inst|Add0~36_combout\,
	cout => \control_movimiento_inst|Add0~37\);

-- Location: LCCOMB_X38_Y20_N4
\control_movimiento_inst|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~36_combout\ = (\control_movimiento_inst|piso_int\(18) & ((GND) # (!\control_movimiento_inst|Add1~35\))) # (!\control_movimiento_inst|piso_int\(18) & (\control_movimiento_inst|Add1~35\ $ (GND)))
-- \control_movimiento_inst|Add1~37\ = CARRY((\control_movimiento_inst|piso_int\(18)) # (!\control_movimiento_inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(18),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~35\,
	combout => \control_movimiento_inst|Add1~36_combout\,
	cout => \control_movimiento_inst|Add1~37\);

-- Location: LCCOMB_X37_Y21_N2
\control_movimiento_inst|piso_int~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~15_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~36_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(31),
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|Add0~36_combout\,
	datad => \control_movimiento_inst|Add1~36_combout\,
	combout => \control_movimiento_inst|piso_int~15_combout\);

-- Location: FF_X37_Y21_N3
\control_movimiento_inst|piso_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(18));

-- Location: LCCOMB_X36_Y20_N6
\control_movimiento_inst|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~38_combout\ = (\control_movimiento_inst|piso_int\(19) & (!\control_movimiento_inst|Add0~37\)) # (!\control_movimiento_inst|piso_int\(19) & ((\control_movimiento_inst|Add0~37\) # (GND)))
-- \control_movimiento_inst|Add0~39\ = CARRY((!\control_movimiento_inst|Add0~37\) # (!\control_movimiento_inst|piso_int\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(19),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~37\,
	combout => \control_movimiento_inst|Add0~38_combout\,
	cout => \control_movimiento_inst|Add0~39\);

-- Location: LCCOMB_X38_Y20_N6
\control_movimiento_inst|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~38_combout\ = (\control_movimiento_inst|piso_int\(19) & (\control_movimiento_inst|Add1~37\ & VCC)) # (!\control_movimiento_inst|piso_int\(19) & (!\control_movimiento_inst|Add1~37\))
-- \control_movimiento_inst|Add1~39\ = CARRY((!\control_movimiento_inst|piso_int\(19) & !\control_movimiento_inst|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(19),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~37\,
	combout => \control_movimiento_inst|Add1~38_combout\,
	cout => \control_movimiento_inst|Add1~39\);

-- Location: LCCOMB_X37_Y20_N4
\control_movimiento_inst|piso_int~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~14_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~38_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~38_combout\,
	datad => \control_movimiento_inst|Add1~38_combout\,
	combout => \control_movimiento_inst|piso_int~14_combout\);

-- Location: FF_X37_Y20_N5
\control_movimiento_inst|piso_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(19));

-- Location: LCCOMB_X38_Y20_N8
\control_movimiento_inst|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~40_combout\ = (\control_movimiento_inst|piso_int\(20) & ((GND) # (!\control_movimiento_inst|Add1~39\))) # (!\control_movimiento_inst|piso_int\(20) & (\control_movimiento_inst|Add1~39\ $ (GND)))
-- \control_movimiento_inst|Add1~41\ = CARRY((\control_movimiento_inst|piso_int\(20)) # (!\control_movimiento_inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(20),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~39\,
	combout => \control_movimiento_inst|Add1~40_combout\,
	cout => \control_movimiento_inst|Add1~41\);

-- Location: LCCOMB_X36_Y20_N8
\control_movimiento_inst|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~40_combout\ = (\control_movimiento_inst|piso_int\(20) & (\control_movimiento_inst|Add0~39\ $ (GND))) # (!\control_movimiento_inst|piso_int\(20) & (!\control_movimiento_inst|Add0~39\ & VCC))
-- \control_movimiento_inst|Add0~41\ = CARRY((\control_movimiento_inst|piso_int\(20) & !\control_movimiento_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(20),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~39\,
	combout => \control_movimiento_inst|Add0~40_combout\,
	cout => \control_movimiento_inst|Add0~41\);

-- Location: LCCOMB_X37_Y20_N14
\control_movimiento_inst|piso_int~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~13_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~40_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~40_combout\,
	datad => \control_movimiento_inst|Add0~40_combout\,
	combout => \control_movimiento_inst|piso_int~13_combout\);

-- Location: FF_X37_Y20_N15
\control_movimiento_inst|piso_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(20));

-- Location: LCCOMB_X38_Y20_N10
\control_movimiento_inst|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~42_combout\ = (\control_movimiento_inst|piso_int\(21) & (\control_movimiento_inst|Add1~41\ & VCC)) # (!\control_movimiento_inst|piso_int\(21) & (!\control_movimiento_inst|Add1~41\))
-- \control_movimiento_inst|Add1~43\ = CARRY((!\control_movimiento_inst|piso_int\(21) & !\control_movimiento_inst|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(21),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~41\,
	combout => \control_movimiento_inst|Add1~42_combout\,
	cout => \control_movimiento_inst|Add1~43\);

-- Location: LCCOMB_X36_Y20_N10
\control_movimiento_inst|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~42_combout\ = (\control_movimiento_inst|piso_int\(21) & (!\control_movimiento_inst|Add0~41\)) # (!\control_movimiento_inst|piso_int\(21) & ((\control_movimiento_inst|Add0~41\) # (GND)))
-- \control_movimiento_inst|Add0~43\ = CARRY((!\control_movimiento_inst|Add0~41\) # (!\control_movimiento_inst|piso_int\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(21),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~41\,
	combout => \control_movimiento_inst|Add0~42_combout\,
	cout => \control_movimiento_inst|Add0~43\);

-- Location: LCCOMB_X37_Y20_N16
\control_movimiento_inst|piso_int~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~12_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~42_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~42_combout\,
	datad => \control_movimiento_inst|Add0~42_combout\,
	combout => \control_movimiento_inst|piso_int~12_combout\);

-- Location: FF_X37_Y20_N17
\control_movimiento_inst|piso_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(21));

-- Location: LCCOMB_X38_Y20_N12
\control_movimiento_inst|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~44_combout\ = (\control_movimiento_inst|piso_int\(22) & ((GND) # (!\control_movimiento_inst|Add1~43\))) # (!\control_movimiento_inst|piso_int\(22) & (\control_movimiento_inst|Add1~43\ $ (GND)))
-- \control_movimiento_inst|Add1~45\ = CARRY((\control_movimiento_inst|piso_int\(22)) # (!\control_movimiento_inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(22),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~43\,
	combout => \control_movimiento_inst|Add1~44_combout\,
	cout => \control_movimiento_inst|Add1~45\);

-- Location: LCCOMB_X36_Y20_N12
\control_movimiento_inst|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~44_combout\ = (\control_movimiento_inst|piso_int\(22) & (\control_movimiento_inst|Add0~43\ $ (GND))) # (!\control_movimiento_inst|piso_int\(22) & (!\control_movimiento_inst|Add0~43\ & VCC))
-- \control_movimiento_inst|Add0~45\ = CARRY((\control_movimiento_inst|piso_int\(22) & !\control_movimiento_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(22),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~43\,
	combout => \control_movimiento_inst|Add0~44_combout\,
	cout => \control_movimiento_inst|Add0~45\);

-- Location: LCCOMB_X37_Y20_N2
\control_movimiento_inst|piso_int~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~11_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~44_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~44_combout\,
	datad => \control_movimiento_inst|Add0~44_combout\,
	combout => \control_movimiento_inst|piso_int~11_combout\);

-- Location: FF_X37_Y20_N3
\control_movimiento_inst|piso_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(22));

-- Location: LCCOMB_X37_Y20_N6
\control_movimiento_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~2_combout\ = (!\control_movimiento_inst|piso_int\(19) & (!\control_movimiento_inst|piso_int\(21) & (!\control_movimiento_inst|piso_int\(20) & !\control_movimiento_inst|piso_int\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(19),
	datab => \control_movimiento_inst|piso_int\(21),
	datac => \control_movimiento_inst|piso_int\(20),
	datad => \control_movimiento_inst|piso_int\(22),
	combout => \control_movimiento_inst|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y20_N14
\control_movimiento_inst|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~46_combout\ = (\control_movimiento_inst|piso_int\(23) & (\control_movimiento_inst|Add1~45\ & VCC)) # (!\control_movimiento_inst|piso_int\(23) & (!\control_movimiento_inst|Add1~45\))
-- \control_movimiento_inst|Add1~47\ = CARRY((!\control_movimiento_inst|piso_int\(23) & !\control_movimiento_inst|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(23),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~45\,
	combout => \control_movimiento_inst|Add1~46_combout\,
	cout => \control_movimiento_inst|Add1~47\);

-- Location: LCCOMB_X36_Y20_N14
\control_movimiento_inst|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~46_combout\ = (\control_movimiento_inst|piso_int\(23) & (!\control_movimiento_inst|Add0~45\)) # (!\control_movimiento_inst|piso_int\(23) & ((\control_movimiento_inst|Add0~45\) # (GND)))
-- \control_movimiento_inst|Add0~47\ = CARRY((!\control_movimiento_inst|Add0~45\) # (!\control_movimiento_inst|piso_int\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(23),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~45\,
	combout => \control_movimiento_inst|Add0~46_combout\,
	cout => \control_movimiento_inst|Add0~47\);

-- Location: LCCOMB_X37_Y20_N30
\control_movimiento_inst|piso_int~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~10_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~46_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~46_combout\,
	datad => \control_movimiento_inst|Add0~46_combout\,
	combout => \control_movimiento_inst|piso_int~10_combout\);

-- Location: FF_X37_Y20_N31
\control_movimiento_inst|piso_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(23));

-- Location: LCCOMB_X36_Y20_N16
\control_movimiento_inst|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~48_combout\ = (\control_movimiento_inst|piso_int\(24) & (\control_movimiento_inst|Add0~47\ $ (GND))) # (!\control_movimiento_inst|piso_int\(24) & (!\control_movimiento_inst|Add0~47\ & VCC))
-- \control_movimiento_inst|Add0~49\ = CARRY((\control_movimiento_inst|piso_int\(24) & !\control_movimiento_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(24),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~47\,
	combout => \control_movimiento_inst|Add0~48_combout\,
	cout => \control_movimiento_inst|Add0~49\);

-- Location: LCCOMB_X38_Y20_N16
\control_movimiento_inst|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~48_combout\ = (\control_movimiento_inst|piso_int\(24) & ((GND) # (!\control_movimiento_inst|Add1~47\))) # (!\control_movimiento_inst|piso_int\(24) & (\control_movimiento_inst|Add1~47\ $ (GND)))
-- \control_movimiento_inst|Add1~49\ = CARRY((\control_movimiento_inst|piso_int\(24)) # (!\control_movimiento_inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(24),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~47\,
	combout => \control_movimiento_inst|Add1~48_combout\,
	cout => \control_movimiento_inst|Add1~49\);

-- Location: LCCOMB_X37_Y20_N8
\control_movimiento_inst|piso_int~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~9_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~48_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~48_combout\,
	datad => \control_movimiento_inst|Add1~48_combout\,
	combout => \control_movimiento_inst|piso_int~9_combout\);

-- Location: FF_X37_Y20_N9
\control_movimiento_inst|piso_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(24));

-- Location: LCCOMB_X36_Y20_N18
\control_movimiento_inst|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~50_combout\ = (\control_movimiento_inst|piso_int\(25) & (!\control_movimiento_inst|Add0~49\)) # (!\control_movimiento_inst|piso_int\(25) & ((\control_movimiento_inst|Add0~49\) # (GND)))
-- \control_movimiento_inst|Add0~51\ = CARRY((!\control_movimiento_inst|Add0~49\) # (!\control_movimiento_inst|piso_int\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(25),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~49\,
	combout => \control_movimiento_inst|Add0~50_combout\,
	cout => \control_movimiento_inst|Add0~51\);

-- Location: LCCOMB_X38_Y20_N18
\control_movimiento_inst|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~50_combout\ = (\control_movimiento_inst|piso_int\(25) & (\control_movimiento_inst|Add1~49\ & VCC)) # (!\control_movimiento_inst|piso_int\(25) & (!\control_movimiento_inst|Add1~49\))
-- \control_movimiento_inst|Add1~51\ = CARRY((!\control_movimiento_inst|piso_int\(25) & !\control_movimiento_inst|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(25),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~49\,
	combout => \control_movimiento_inst|Add1~50_combout\,
	cout => \control_movimiento_inst|Add1~51\);

-- Location: LCCOMB_X37_Y20_N22
\control_movimiento_inst|piso_int~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~8_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~50_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~50_combout\,
	datad => \control_movimiento_inst|Add1~50_combout\,
	combout => \control_movimiento_inst|piso_int~8_combout\);

-- Location: FF_X37_Y20_N23
\control_movimiento_inst|piso_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(25));

-- Location: LCCOMB_X38_Y20_N20
\control_movimiento_inst|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~52_combout\ = (\control_movimiento_inst|piso_int\(26) & ((GND) # (!\control_movimiento_inst|Add1~51\))) # (!\control_movimiento_inst|piso_int\(26) & (\control_movimiento_inst|Add1~51\ $ (GND)))
-- \control_movimiento_inst|Add1~53\ = CARRY((\control_movimiento_inst|piso_int\(26)) # (!\control_movimiento_inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(26),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~51\,
	combout => \control_movimiento_inst|Add1~52_combout\,
	cout => \control_movimiento_inst|Add1~53\);

-- Location: LCCOMB_X36_Y20_N20
\control_movimiento_inst|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~52_combout\ = (\control_movimiento_inst|piso_int\(26) & (\control_movimiento_inst|Add0~51\ $ (GND))) # (!\control_movimiento_inst|piso_int\(26) & (!\control_movimiento_inst|Add0~51\ & VCC))
-- \control_movimiento_inst|Add0~53\ = CARRY((\control_movimiento_inst|piso_int\(26) & !\control_movimiento_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(26),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~51\,
	combout => \control_movimiento_inst|Add0~52_combout\,
	cout => \control_movimiento_inst|Add0~53\);

-- Location: LCCOMB_X37_Y20_N20
\control_movimiento_inst|piso_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~7_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~52_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~52_combout\,
	datad => \control_movimiento_inst|Add0~52_combout\,
	combout => \control_movimiento_inst|piso_int~7_combout\);

-- Location: FF_X37_Y20_N21
\control_movimiento_inst|piso_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(26));

-- Location: LCCOMB_X37_Y20_N24
\control_movimiento_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~1_combout\ = (!\control_movimiento_inst|piso_int\(23) & (!\control_movimiento_inst|piso_int\(24) & (!\control_movimiento_inst|piso_int\(25) & !\control_movimiento_inst|piso_int\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(23),
	datab => \control_movimiento_inst|piso_int\(24),
	datac => \control_movimiento_inst|piso_int\(25),
	datad => \control_movimiento_inst|piso_int\(26),
	combout => \control_movimiento_inst|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y21_N12
\control_movimiento_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~3_combout\ = (!\control_movimiento_inst|piso_int\(17) & (!\control_movimiento_inst|piso_int\(18) & (!\control_movimiento_inst|piso_int\(15) & !\control_movimiento_inst|piso_int\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(17),
	datab => \control_movimiento_inst|piso_int\(18),
	datac => \control_movimiento_inst|piso_int\(15),
	datad => \control_movimiento_inst|piso_int\(16),
	combout => \control_movimiento_inst|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y20_N22
\control_movimiento_inst|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~54_combout\ = (\control_movimiento_inst|piso_int\(27) & (!\control_movimiento_inst|Add0~53\)) # (!\control_movimiento_inst|piso_int\(27) & ((\control_movimiento_inst|Add0~53\) # (GND)))
-- \control_movimiento_inst|Add0~55\ = CARRY((!\control_movimiento_inst|Add0~53\) # (!\control_movimiento_inst|piso_int\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(27),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~53\,
	combout => \control_movimiento_inst|Add0~54_combout\,
	cout => \control_movimiento_inst|Add0~55\);

-- Location: LCCOMB_X38_Y20_N22
\control_movimiento_inst|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~54_combout\ = (\control_movimiento_inst|piso_int\(27) & (\control_movimiento_inst|Add1~53\ & VCC)) # (!\control_movimiento_inst|piso_int\(27) & (!\control_movimiento_inst|Add1~53\))
-- \control_movimiento_inst|Add1~55\ = CARRY((!\control_movimiento_inst|piso_int\(27) & !\control_movimiento_inst|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(27),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~53\,
	combout => \control_movimiento_inst|Add1~54_combout\,
	cout => \control_movimiento_inst|Add1~55\);

-- Location: LCCOMB_X37_Y20_N28
\control_movimiento_inst|piso_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~6_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~54_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add0~54_combout\,
	datad => \control_movimiento_inst|Add1~54_combout\,
	combout => \control_movimiento_inst|piso_int~6_combout\);

-- Location: FF_X37_Y20_N29
\control_movimiento_inst|piso_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(27));

-- Location: LCCOMB_X38_Y20_N24
\control_movimiento_inst|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~56_combout\ = (\control_movimiento_inst|piso_int\(28) & ((GND) # (!\control_movimiento_inst|Add1~55\))) # (!\control_movimiento_inst|piso_int\(28) & (\control_movimiento_inst|Add1~55\ $ (GND)))
-- \control_movimiento_inst|Add1~57\ = CARRY((\control_movimiento_inst|piso_int\(28)) # (!\control_movimiento_inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(28),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~55\,
	combout => \control_movimiento_inst|Add1~56_combout\,
	cout => \control_movimiento_inst|Add1~57\);

-- Location: LCCOMB_X36_Y20_N24
\control_movimiento_inst|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~56_combout\ = (\control_movimiento_inst|piso_int\(28) & (\control_movimiento_inst|Add0~55\ $ (GND))) # (!\control_movimiento_inst|piso_int\(28) & (!\control_movimiento_inst|Add0~55\ & VCC))
-- \control_movimiento_inst|Add0~57\ = CARRY((\control_movimiento_inst|piso_int\(28) & !\control_movimiento_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(28),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~55\,
	combout => \control_movimiento_inst|Add0~56_combout\,
	cout => \control_movimiento_inst|Add0~57\);

-- Location: LCCOMB_X37_Y20_N26
\control_movimiento_inst|piso_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~5_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~56_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~56_combout\,
	datad => \control_movimiento_inst|Add0~56_combout\,
	combout => \control_movimiento_inst|piso_int~5_combout\);

-- Location: FF_X37_Y20_N27
\control_movimiento_inst|piso_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(28));

-- Location: LCCOMB_X36_Y20_N26
\control_movimiento_inst|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~58_combout\ = (\control_movimiento_inst|piso_int\(29) & (!\control_movimiento_inst|Add0~57\)) # (!\control_movimiento_inst|piso_int\(29) & ((\control_movimiento_inst|Add0~57\) # (GND)))
-- \control_movimiento_inst|Add0~59\ = CARRY((!\control_movimiento_inst|Add0~57\) # (!\control_movimiento_inst|piso_int\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(29),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~57\,
	combout => \control_movimiento_inst|Add0~58_combout\,
	cout => \control_movimiento_inst|Add0~59\);

-- Location: LCCOMB_X38_Y20_N26
\control_movimiento_inst|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~58_combout\ = (\control_movimiento_inst|piso_int\(29) & (\control_movimiento_inst|Add1~57\ & VCC)) # (!\control_movimiento_inst|piso_int\(29) & (!\control_movimiento_inst|Add1~57\))
-- \control_movimiento_inst|Add1~59\ = CARRY((!\control_movimiento_inst|piso_int\(29) & !\control_movimiento_inst|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(29),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~57\,
	combout => \control_movimiento_inst|Add1~58_combout\,
	cout => \control_movimiento_inst|Add1~59\);

-- Location: LCCOMB_X37_Y21_N30
\control_movimiento_inst|piso_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~4_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~58_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(31),
	datab => \control_movimiento_inst|Equal0~9_combout\,
	datac => \control_movimiento_inst|Add0~58_combout\,
	datad => \control_movimiento_inst|Add1~58_combout\,
	combout => \control_movimiento_inst|piso_int~4_combout\);

-- Location: FF_X37_Y21_N31
\control_movimiento_inst|piso_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(29));

-- Location: LCCOMB_X38_Y20_N28
\control_movimiento_inst|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~60_combout\ = (\control_movimiento_inst|piso_int\(30) & ((GND) # (!\control_movimiento_inst|Add1~59\))) # (!\control_movimiento_inst|piso_int\(30) & (\control_movimiento_inst|Add1~59\ $ (GND)))
-- \control_movimiento_inst|Add1~61\ = CARRY((\control_movimiento_inst|piso_int\(30)) # (!\control_movimiento_inst|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(30),
	datad => VCC,
	cin => \control_movimiento_inst|Add1~59\,
	combout => \control_movimiento_inst|Add1~60_combout\,
	cout => \control_movimiento_inst|Add1~61\);

-- Location: LCCOMB_X36_Y20_N28
\control_movimiento_inst|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~60_combout\ = (\control_movimiento_inst|piso_int\(30) & (\control_movimiento_inst|Add0~59\ $ (GND))) # (!\control_movimiento_inst|piso_int\(30) & (!\control_movimiento_inst|Add0~59\ & VCC))
-- \control_movimiento_inst|Add0~61\ = CARRY((\control_movimiento_inst|piso_int\(30) & !\control_movimiento_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(30),
	datad => VCC,
	cin => \control_movimiento_inst|Add0~59\,
	combout => \control_movimiento_inst|Add0~60_combout\,
	cout => \control_movimiento_inst|Add0~61\);

-- Location: LCCOMB_X37_Y20_N12
\control_movimiento_inst|piso_int~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~37_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~60_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- (\control_movimiento_inst|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|piso_int\(31),
	datac => \control_movimiento_inst|Add1~60_combout\,
	datad => \control_movimiento_inst|Add0~60_combout\,
	combout => \control_movimiento_inst|piso_int~37_combout\);

-- Location: FF_X37_Y20_N13
\control_movimiento_inst|piso_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(30));

-- Location: LCCOMB_X37_Y20_N10
\control_movimiento_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~0_combout\ = (!\control_movimiento_inst|piso_int\(28) & (!\control_movimiento_inst|piso_int\(27) & (!\control_movimiento_inst|piso_int\(29) & !\control_movimiento_inst|piso_int\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|piso_int\(28),
	datab => \control_movimiento_inst|piso_int\(27),
	datac => \control_movimiento_inst|piso_int\(29),
	datad => \control_movimiento_inst|piso_int\(30),
	combout => \control_movimiento_inst|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y20_N0
\control_movimiento_inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~4_combout\ = (\control_movimiento_inst|Equal0~2_combout\ & (\control_movimiento_inst|Equal0~1_combout\ & (\control_movimiento_inst|Equal0~3_combout\ & \control_movimiento_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~2_combout\,
	datab => \control_movimiento_inst|Equal0~1_combout\,
	datac => \control_movimiento_inst|Equal0~3_combout\,
	datad => \control_movimiento_inst|Equal0~0_combout\,
	combout => \control_movimiento_inst|Equal0~4_combout\);

-- Location: LCCOMB_X37_Y21_N16
\control_movimiento_inst|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~9_combout\ = (\control_movimiento_inst|Equal0~5_combout\ & (\control_movimiento_inst|Equal0~8_combout\ & (\control_movimiento_inst|Equal0~6_combout\ & \control_movimiento_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~5_combout\,
	datab => \control_movimiento_inst|Equal0~8_combout\,
	datac => \control_movimiento_inst|Equal0~6_combout\,
	datad => \control_movimiento_inst|Equal0~4_combout\,
	combout => \control_movimiento_inst|Equal0~9_combout\);

-- Location: LCCOMB_X36_Y20_N30
\control_movimiento_inst|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add0~62_combout\ = \control_movimiento_inst|Add0~61\ $ (\control_movimiento_inst|piso_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_movimiento_inst|piso_int\(31),
	cin => \control_movimiento_inst|Add0~61\,
	combout => \control_movimiento_inst|Add0~62_combout\);

-- Location: LCCOMB_X38_Y20_N30
\control_movimiento_inst|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Add1~62_combout\ = \control_movimiento_inst|Add1~61\ $ (!\control_movimiento_inst|piso_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \control_movimiento_inst|piso_int\(31),
	cin => \control_movimiento_inst|Add1~61\,
	combout => \control_movimiento_inst|Add1~62_combout\);

-- Location: LCCOMB_X37_Y20_N18
\control_movimiento_inst|piso_int~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|piso_int~38_combout\ = (\control_movimiento_inst|piso_int\(31) & (((\control_movimiento_inst|Add0~62_combout\)))) # (!\control_movimiento_inst|piso_int\(31) & (!\control_movimiento_inst|Equal0~9_combout\ & 
-- ((\control_movimiento_inst|Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|Equal0~9_combout\,
	datab => \control_movimiento_inst|Add0~62_combout\,
	datac => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Add1~62_combout\,
	combout => \control_movimiento_inst|piso_int~38_combout\);

-- Location: FF_X37_Y20_N19
\control_movimiento_inst|piso_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|piso_int~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|piso_int\(31));

-- Location: LCCOMB_X35_Y21_N20
\control_movimiento_inst|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_movimiento_inst|Equal0~10_combout\ = (\control_movimiento_inst|piso_int\(31)) # (!\control_movimiento_inst|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_movimiento_inst|piso_int\(31),
	datad => \control_movimiento_inst|Equal0~9_combout\,
	combout => \control_movimiento_inst|Equal0~10_combout\);

-- Location: FF_X35_Y21_N21
\control_movimiento_inst|en_movimiento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_movimiento_inst|Equal0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_movimiento_inst|en_movimiento~q\);

-- Location: LCCOMB_X20_Y2_N0
\control_puertas_inst|contador[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[0]~32_combout\ = \control_puertas_inst|contador\(0) $ (VCC)
-- \control_puertas_inst|contador[0]~33\ = CARRY(\control_puertas_inst|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(0),
	datad => VCC,
	combout => \control_puertas_inst|contador[0]~32_combout\,
	cout => \control_puertas_inst|contador[0]~33\);

-- Location: IOIBUF_X14_Y0_N1
\seleccion_piso[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion_piso(4),
	o => \seleccion_piso[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\llamada_piso[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(4),
	o => \llamada_piso[4]~input_o\);

-- Location: LCCOMB_X14_Y1_N8
\gestion_llamadas_inst|solicitudes~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|solicitudes~4_combout\ = (\seleccion_piso[4]~input_o\) # ((\gestion_llamadas_inst|solicitudes\(4)) # (\llamada_piso[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seleccion_piso[4]~input_o\,
	datac => \gestion_llamadas_inst|solicitudes\(4),
	datad => \llamada_piso[4]~input_o\,
	combout => \gestion_llamadas_inst|solicitudes~4_combout\);

-- Location: FF_X14_Y1_N9
\gestion_llamadas_inst|solicitudes[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|solicitudes~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|solicitudes\(4));

-- Location: IOIBUF_X5_Y0_N29
\seleccion_piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion_piso(2),
	o => \seleccion_piso[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\llamada_piso[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(2),
	o => \llamada_piso[2]~input_o\);

-- Location: LCCOMB_X8_Y1_N12
\gestion_llamadas_inst|solicitudes~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|solicitudes~2_combout\ = (\seleccion_piso[2]~input_o\) # ((\gestion_llamadas_inst|solicitudes\(2)) # (\llamada_piso[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seleccion_piso[2]~input_o\,
	datac => \gestion_llamadas_inst|solicitudes\(2),
	datad => \llamada_piso[2]~input_o\,
	combout => \gestion_llamadas_inst|solicitudes~2_combout\);

-- Location: FF_X8_Y1_N13
\gestion_llamadas_inst|solicitudes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|solicitudes~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|solicitudes\(2));

-- Location: IOIBUF_X7_Y0_N1
\llamada_piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(0),
	o => \llamada_piso[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\seleccion_piso[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion_piso(0),
	o => \seleccion_piso[0]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\gestion_llamadas_inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|process_0~3_combout\ = (\gestion_llamadas_inst|process_0~2_combout\ & \gestion_llamadas_inst|solicitudes\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gestion_llamadas_inst|process_0~2_combout\,
	datad => \gestion_llamadas_inst|solicitudes\(4),
	combout => \gestion_llamadas_inst|process_0~3_combout\);

-- Location: FF_X8_Y1_N25
\gestion_llamadas_inst|destino_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|process_0~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|destino_int\(2));

-- Location: IOIBUF_X5_Y0_N22
\llamada_piso[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(3),
	o => \llamada_piso[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\seleccion_piso[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion_piso(3),
	o => \seleccion_piso[3]~input_o\);

-- Location: LCCOMB_X8_Y1_N22
\gestion_llamadas_inst|solicitudes~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|solicitudes~1_combout\ = (\llamada_piso[3]~input_o\) # ((\gestion_llamadas_inst|solicitudes\(3)) # (\seleccion_piso[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \llamada_piso[3]~input_o\,
	datac => \gestion_llamadas_inst|solicitudes\(3),
	datad => \seleccion_piso[3]~input_o\,
	combout => \gestion_llamadas_inst|solicitudes~1_combout\);

-- Location: FF_X8_Y1_N23
\gestion_llamadas_inst|solicitudes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|solicitudes~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|solicitudes\(3));

-- Location: IOIBUF_X9_Y0_N22
\seleccion_piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seleccion_piso(1),
	o => \seleccion_piso[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\llamada_piso[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_llamada_piso(1),
	o => \llamada_piso[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N4
\gestion_llamadas_inst|solicitudes~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|solicitudes~0_combout\ = (\seleccion_piso[1]~input_o\) # ((\gestion_llamadas_inst|solicitudes\(1)) # (\llamada_piso[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seleccion_piso[1]~input_o\,
	datac => \gestion_llamadas_inst|solicitudes\(1),
	datad => \llamada_piso[1]~input_o\,
	combout => \gestion_llamadas_inst|solicitudes~0_combout\);

-- Location: FF_X9_Y1_N5
\gestion_llamadas_inst|solicitudes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|solicitudes~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|solicitudes\(1));

-- Location: LCCOMB_X8_Y1_N4
\gestion_llamadas_inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|process_0~0_combout\ = (!\gestion_llamadas_inst|solicitudes\(0) & ((\gestion_llamadas_inst|solicitudes\(1)) # ((!\gestion_llamadas_inst|solicitudes\(2) & \gestion_llamadas_inst|solicitudes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_llamadas_inst|solicitudes\(2),
	datab => \gestion_llamadas_inst|solicitudes\(0),
	datac => \gestion_llamadas_inst|solicitudes\(3),
	datad => \gestion_llamadas_inst|solicitudes\(1),
	combout => \gestion_llamadas_inst|process_0~0_combout\);

-- Location: FF_X8_Y1_N5
\gestion_llamadas_inst|destino_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|process_0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|destino_int\(0));

-- Location: LCCOMB_X8_Y1_N6
\gestion_llamadas_inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|process_0~1_combout\ = (!\gestion_llamadas_inst|solicitudes\(0) & (!\gestion_llamadas_inst|solicitudes\(1) & ((\gestion_llamadas_inst|solicitudes\(2)) # (\gestion_llamadas_inst|solicitudes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_llamadas_inst|solicitudes\(2),
	datab => \gestion_llamadas_inst|solicitudes\(0),
	datac => \gestion_llamadas_inst|solicitudes\(3),
	datad => \gestion_llamadas_inst|solicitudes\(1),
	combout => \gestion_llamadas_inst|process_0~1_combout\);

-- Location: FF_X8_Y1_N7
\gestion_llamadas_inst|destino_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|process_0~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|destino_int\(1));

-- Location: LCCOMB_X8_Y1_N10
\gestion_llamadas_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|Equal0~0_combout\ = (!\gestion_llamadas_inst|destino_int\(2) & (!\gestion_llamadas_inst|destino_int\(0) & !\gestion_llamadas_inst|destino_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gestion_llamadas_inst|destino_int\(2),
	datac => \gestion_llamadas_inst|destino_int\(0),
	datad => \gestion_llamadas_inst|destino_int\(1),
	combout => \gestion_llamadas_inst|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y1_N2
\gestion_llamadas_inst|solicitudes~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|solicitudes~3_combout\ = (!\gestion_llamadas_inst|Equal0~0_combout\ & ((\llamada_piso[0]~input_o\) # ((\seleccion_piso[0]~input_o\) # (\gestion_llamadas_inst|solicitudes\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llamada_piso[0]~input_o\,
	datab => \seleccion_piso[0]~input_o\,
	datac => \gestion_llamadas_inst|solicitudes\(0),
	datad => \gestion_llamadas_inst|Equal0~0_combout\,
	combout => \gestion_llamadas_inst|solicitudes~3_combout\);

-- Location: FF_X8_Y1_N3
\gestion_llamadas_inst|solicitudes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|solicitudes~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|solicitudes\(0));

-- Location: LCCOMB_X8_Y1_N0
\gestion_llamadas_inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|process_0~2_combout\ = (!\gestion_llamadas_inst|solicitudes\(2) & (!\gestion_llamadas_inst|solicitudes\(0) & (!\gestion_llamadas_inst|solicitudes\(3) & !\gestion_llamadas_inst|solicitudes\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_llamadas_inst|solicitudes\(2),
	datab => \gestion_llamadas_inst|solicitudes\(0),
	datac => \gestion_llamadas_inst|solicitudes\(3),
	datad => \gestion_llamadas_inst|solicitudes\(1),
	combout => \gestion_llamadas_inst|process_0~2_combout\);

-- Location: LCCOMB_X19_Y2_N26
\gestion_llamadas_inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|process_0~4_combout\ = (\gestion_llamadas_inst|solicitudes\(4)) # (!\gestion_llamadas_inst|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gestion_llamadas_inst|solicitudes\(4),
	datad => \gestion_llamadas_inst|process_0~2_combout\,
	combout => \gestion_llamadas_inst|process_0~4_combout\);

-- Location: FF_X19_Y2_N27
\gestion_llamadas_inst|llamada_activada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|process_0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|llamada_activada~q\);

-- Location: LCCOMB_X20_Y2_N2
\control_puertas_inst|contador[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[1]~34_combout\ = (\control_puertas_inst|contador\(1) & (!\control_puertas_inst|contador[0]~33\)) # (!\control_puertas_inst|contador\(1) & ((\control_puertas_inst|contador[0]~33\) # (GND)))
-- \control_puertas_inst|contador[1]~35\ = CARRY((!\control_puertas_inst|contador[0]~33\) # (!\control_puertas_inst|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(1),
	datad => VCC,
	cin => \control_puertas_inst|contador[0]~33\,
	combout => \control_puertas_inst|contador[1]~34_combout\,
	cout => \control_puertas_inst|contador[1]~35\);

-- Location: LCCOMB_X20_Y2_N4
\control_puertas_inst|contador[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[2]~36_combout\ = (\control_puertas_inst|contador\(2) & (\control_puertas_inst|contador[1]~35\ $ (GND))) # (!\control_puertas_inst|contador\(2) & (!\control_puertas_inst|contador[1]~35\ & VCC))
-- \control_puertas_inst|contador[2]~37\ = CARRY((\control_puertas_inst|contador\(2) & !\control_puertas_inst|contador[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(2),
	datad => VCC,
	cin => \control_puertas_inst|contador[1]~35\,
	combout => \control_puertas_inst|contador[2]~36_combout\,
	cout => \control_puertas_inst|contador[2]~37\);

-- Location: LCCOMB_X21_Y2_N16
\control_puertas_inst|contador[28]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[28]~42_combout\ = (\control_puertas_inst|estado_puerta\(1)) # ((\control_puertas_inst|estado_puerta\(0)) # (\control_movimiento_inst|en_movimiento~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|estado_puerta\(1),
	datac => \control_puertas_inst|estado_puerta\(0),
	datad => \control_movimiento_inst|en_movimiento~q\,
	combout => \control_puertas_inst|contador[28]~42_combout\);

-- Location: FF_X20_Y2_N5
\control_puertas_inst|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[2]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(2));

-- Location: LCCOMB_X20_Y2_N6
\control_puertas_inst|contador[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[3]~38_combout\ = (\control_puertas_inst|contador\(3) & (!\control_puertas_inst|contador[2]~37\)) # (!\control_puertas_inst|contador\(3) & ((\control_puertas_inst|contador[2]~37\) # (GND)))
-- \control_puertas_inst|contador[3]~39\ = CARRY((!\control_puertas_inst|contador[2]~37\) # (!\control_puertas_inst|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(3),
	datad => VCC,
	cin => \control_puertas_inst|contador[2]~37\,
	combout => \control_puertas_inst|contador[3]~38_combout\,
	cout => \control_puertas_inst|contador[3]~39\);

-- Location: FF_X20_Y2_N7
\control_puertas_inst|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[3]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(3));

-- Location: LCCOMB_X20_Y2_N8
\control_puertas_inst|contador[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[4]~43_combout\ = (\control_puertas_inst|contador\(4) & (\control_puertas_inst|contador[3]~39\ $ (GND))) # (!\control_puertas_inst|contador\(4) & (!\control_puertas_inst|contador[3]~39\ & VCC))
-- \control_puertas_inst|contador[4]~44\ = CARRY((\control_puertas_inst|contador\(4) & !\control_puertas_inst|contador[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(4),
	datad => VCC,
	cin => \control_puertas_inst|contador[3]~39\,
	combout => \control_puertas_inst|contador[4]~43_combout\,
	cout => \control_puertas_inst|contador[4]~44\);

-- Location: FF_X20_Y2_N9
\control_puertas_inst|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[4]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(4));

-- Location: LCCOMB_X20_Y2_N10
\control_puertas_inst|contador[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[5]~45_combout\ = (\control_puertas_inst|contador\(5) & (!\control_puertas_inst|contador[4]~44\)) # (!\control_puertas_inst|contador\(5) & ((\control_puertas_inst|contador[4]~44\) # (GND)))
-- \control_puertas_inst|contador[5]~46\ = CARRY((!\control_puertas_inst|contador[4]~44\) # (!\control_puertas_inst|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(5),
	datad => VCC,
	cin => \control_puertas_inst|contador[4]~44\,
	combout => \control_puertas_inst|contador[5]~45_combout\,
	cout => \control_puertas_inst|contador[5]~46\);

-- Location: FF_X20_Y2_N11
\control_puertas_inst|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[5]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(5));

-- Location: LCCOMB_X19_Y2_N8
\control_puertas_inst|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~9_combout\ = (!\control_puertas_inst|contador\(1) & (\control_puertas_inst|contador\(5) & (\control_puertas_inst|contador\(0) & \control_puertas_inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(1),
	datab => \control_puertas_inst|contador\(5),
	datac => \control_puertas_inst|contador\(0),
	datad => \control_puertas_inst|contador\(2),
	combout => \control_puertas_inst|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y2_N12
\control_puertas_inst|contador[6]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[6]~47_combout\ = (\control_puertas_inst|contador\(6) & (\control_puertas_inst|contador[5]~46\ $ (GND))) # (!\control_puertas_inst|contador\(6) & (!\control_puertas_inst|contador[5]~46\ & VCC))
-- \control_puertas_inst|contador[6]~48\ = CARRY((\control_puertas_inst|contador\(6) & !\control_puertas_inst|contador[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(6),
	datad => VCC,
	cin => \control_puertas_inst|contador[5]~46\,
	combout => \control_puertas_inst|contador[6]~47_combout\,
	cout => \control_puertas_inst|contador[6]~48\);

-- Location: FF_X20_Y2_N13
\control_puertas_inst|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[6]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(6));

-- Location: LCCOMB_X20_Y2_N14
\control_puertas_inst|contador[7]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[7]~49_combout\ = (\control_puertas_inst|contador\(7) & (!\control_puertas_inst|contador[6]~48\)) # (!\control_puertas_inst|contador\(7) & ((\control_puertas_inst|contador[6]~48\) # (GND)))
-- \control_puertas_inst|contador[7]~50\ = CARRY((!\control_puertas_inst|contador[6]~48\) # (!\control_puertas_inst|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(7),
	datad => VCC,
	cin => \control_puertas_inst|contador[6]~48\,
	combout => \control_puertas_inst|contador[7]~49_combout\,
	cout => \control_puertas_inst|contador[7]~50\);

-- Location: FF_X20_Y2_N15
\control_puertas_inst|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[7]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(7));

-- Location: LCCOMB_X20_Y2_N16
\control_puertas_inst|contador[8]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[8]~51_combout\ = (\control_puertas_inst|contador\(8) & (\control_puertas_inst|contador[7]~50\ $ (GND))) # (!\control_puertas_inst|contador\(8) & (!\control_puertas_inst|contador[7]~50\ & VCC))
-- \control_puertas_inst|contador[8]~52\ = CARRY((\control_puertas_inst|contador\(8) & !\control_puertas_inst|contador[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(8),
	datad => VCC,
	cin => \control_puertas_inst|contador[7]~50\,
	combout => \control_puertas_inst|contador[8]~51_combout\,
	cout => \control_puertas_inst|contador[8]~52\);

-- Location: FF_X20_Y2_N17
\control_puertas_inst|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[8]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(8));

-- Location: LCCOMB_X20_Y2_N18
\control_puertas_inst|contador[9]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[9]~53_combout\ = (\control_puertas_inst|contador\(9) & (!\control_puertas_inst|contador[8]~52\)) # (!\control_puertas_inst|contador\(9) & ((\control_puertas_inst|contador[8]~52\) # (GND)))
-- \control_puertas_inst|contador[9]~54\ = CARRY((!\control_puertas_inst|contador[8]~52\) # (!\control_puertas_inst|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(9),
	datad => VCC,
	cin => \control_puertas_inst|contador[8]~52\,
	combout => \control_puertas_inst|contador[9]~53_combout\,
	cout => \control_puertas_inst|contador[9]~54\);

-- Location: FF_X20_Y2_N19
\control_puertas_inst|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[9]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(9));

-- Location: LCCOMB_X20_Y2_N20
\control_puertas_inst|contador[10]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[10]~55_combout\ = (\control_puertas_inst|contador\(10) & (\control_puertas_inst|contador[9]~54\ $ (GND))) # (!\control_puertas_inst|contador\(10) & (!\control_puertas_inst|contador[9]~54\ & VCC))
-- \control_puertas_inst|contador[10]~56\ = CARRY((\control_puertas_inst|contador\(10) & !\control_puertas_inst|contador[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(10),
	datad => VCC,
	cin => \control_puertas_inst|contador[9]~54\,
	combout => \control_puertas_inst|contador[10]~55_combout\,
	cout => \control_puertas_inst|contador[10]~56\);

-- Location: FF_X20_Y2_N21
\control_puertas_inst|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[10]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(10));

-- Location: LCCOMB_X20_Y2_N22
\control_puertas_inst|contador[11]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[11]~57_combout\ = (\control_puertas_inst|contador\(11) & (!\control_puertas_inst|contador[10]~56\)) # (!\control_puertas_inst|contador\(11) & ((\control_puertas_inst|contador[10]~56\) # (GND)))
-- \control_puertas_inst|contador[11]~58\ = CARRY((!\control_puertas_inst|contador[10]~56\) # (!\control_puertas_inst|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(11),
	datad => VCC,
	cin => \control_puertas_inst|contador[10]~56\,
	combout => \control_puertas_inst|contador[11]~57_combout\,
	cout => \control_puertas_inst|contador[11]~58\);

-- Location: FF_X20_Y2_N23
\control_puertas_inst|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[11]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(11));

-- Location: LCCOMB_X20_Y2_N24
\control_puertas_inst|contador[12]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[12]~59_combout\ = (\control_puertas_inst|contador\(12) & (\control_puertas_inst|contador[11]~58\ $ (GND))) # (!\control_puertas_inst|contador\(12) & (!\control_puertas_inst|contador[11]~58\ & VCC))
-- \control_puertas_inst|contador[12]~60\ = CARRY((\control_puertas_inst|contador\(12) & !\control_puertas_inst|contador[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(12),
	datad => VCC,
	cin => \control_puertas_inst|contador[11]~58\,
	combout => \control_puertas_inst|contador[12]~59_combout\,
	cout => \control_puertas_inst|contador[12]~60\);

-- Location: FF_X20_Y2_N25
\control_puertas_inst|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[12]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(12));

-- Location: LCCOMB_X20_Y2_N26
\control_puertas_inst|contador[13]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[13]~61_combout\ = (\control_puertas_inst|contador\(13) & (!\control_puertas_inst|contador[12]~60\)) # (!\control_puertas_inst|contador\(13) & ((\control_puertas_inst|contador[12]~60\) # (GND)))
-- \control_puertas_inst|contador[13]~62\ = CARRY((!\control_puertas_inst|contador[12]~60\) # (!\control_puertas_inst|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(13),
	datad => VCC,
	cin => \control_puertas_inst|contador[12]~60\,
	combout => \control_puertas_inst|contador[13]~61_combout\,
	cout => \control_puertas_inst|contador[13]~62\);

-- Location: FF_X20_Y2_N27
\control_puertas_inst|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[13]~61_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(13));

-- Location: LCCOMB_X20_Y2_N28
\control_puertas_inst|contador[14]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[14]~63_combout\ = (\control_puertas_inst|contador\(14) & (\control_puertas_inst|contador[13]~62\ $ (GND))) # (!\control_puertas_inst|contador\(14) & (!\control_puertas_inst|contador[13]~62\ & VCC))
-- \control_puertas_inst|contador[14]~64\ = CARRY((\control_puertas_inst|contador\(14) & !\control_puertas_inst|contador[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(14),
	datad => VCC,
	cin => \control_puertas_inst|contador[13]~62\,
	combout => \control_puertas_inst|contador[14]~63_combout\,
	cout => \control_puertas_inst|contador[14]~64\);

-- Location: FF_X20_Y2_N29
\control_puertas_inst|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[14]~63_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(14));

-- Location: LCCOMB_X20_Y2_N30
\control_puertas_inst|contador[15]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[15]~65_combout\ = (\control_puertas_inst|contador\(15) & (!\control_puertas_inst|contador[14]~64\)) # (!\control_puertas_inst|contador\(15) & ((\control_puertas_inst|contador[14]~64\) # (GND)))
-- \control_puertas_inst|contador[15]~66\ = CARRY((!\control_puertas_inst|contador[14]~64\) # (!\control_puertas_inst|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(15),
	datad => VCC,
	cin => \control_puertas_inst|contador[14]~64\,
	combout => \control_puertas_inst|contador[15]~65_combout\,
	cout => \control_puertas_inst|contador[15]~66\);

-- Location: FF_X20_Y2_N31
\control_puertas_inst|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[15]~65_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(15));

-- Location: LCCOMB_X20_Y1_N0
\control_puertas_inst|contador[16]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[16]~67_combout\ = (\control_puertas_inst|contador\(16) & (\control_puertas_inst|contador[15]~66\ $ (GND))) # (!\control_puertas_inst|contador\(16) & (!\control_puertas_inst|contador[15]~66\ & VCC))
-- \control_puertas_inst|contador[16]~68\ = CARRY((\control_puertas_inst|contador\(16) & !\control_puertas_inst|contador[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(16),
	datad => VCC,
	cin => \control_puertas_inst|contador[15]~66\,
	combout => \control_puertas_inst|contador[16]~67_combout\,
	cout => \control_puertas_inst|contador[16]~68\);

-- Location: FF_X20_Y1_N1
\control_puertas_inst|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[16]~67_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(16));

-- Location: LCCOMB_X20_Y1_N2
\control_puertas_inst|contador[17]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[17]~69_combout\ = (\control_puertas_inst|contador\(17) & (!\control_puertas_inst|contador[16]~68\)) # (!\control_puertas_inst|contador\(17) & ((\control_puertas_inst|contador[16]~68\) # (GND)))
-- \control_puertas_inst|contador[17]~70\ = CARRY((!\control_puertas_inst|contador[16]~68\) # (!\control_puertas_inst|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(17),
	datad => VCC,
	cin => \control_puertas_inst|contador[16]~68\,
	combout => \control_puertas_inst|contador[17]~69_combout\,
	cout => \control_puertas_inst|contador[17]~70\);

-- Location: FF_X20_Y1_N3
\control_puertas_inst|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[17]~69_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(17));

-- Location: LCCOMB_X20_Y1_N4
\control_puertas_inst|contador[18]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[18]~71_combout\ = (\control_puertas_inst|contador\(18) & (\control_puertas_inst|contador[17]~70\ $ (GND))) # (!\control_puertas_inst|contador\(18) & (!\control_puertas_inst|contador[17]~70\ & VCC))
-- \control_puertas_inst|contador[18]~72\ = CARRY((\control_puertas_inst|contador\(18) & !\control_puertas_inst|contador[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(18),
	datad => VCC,
	cin => \control_puertas_inst|contador[17]~70\,
	combout => \control_puertas_inst|contador[18]~71_combout\,
	cout => \control_puertas_inst|contador[18]~72\);

-- Location: FF_X20_Y1_N5
\control_puertas_inst|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[18]~71_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(18));

-- Location: LCCOMB_X20_Y1_N6
\control_puertas_inst|contador[19]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[19]~73_combout\ = (\control_puertas_inst|contador\(19) & (!\control_puertas_inst|contador[18]~72\)) # (!\control_puertas_inst|contador\(19) & ((\control_puertas_inst|contador[18]~72\) # (GND)))
-- \control_puertas_inst|contador[19]~74\ = CARRY((!\control_puertas_inst|contador[18]~72\) # (!\control_puertas_inst|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(19),
	datad => VCC,
	cin => \control_puertas_inst|contador[18]~72\,
	combout => \control_puertas_inst|contador[19]~73_combout\,
	cout => \control_puertas_inst|contador[19]~74\);

-- Location: FF_X20_Y1_N7
\control_puertas_inst|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[19]~73_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(19));

-- Location: LCCOMB_X20_Y1_N8
\control_puertas_inst|contador[20]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[20]~75_combout\ = (\control_puertas_inst|contador\(20) & (\control_puertas_inst|contador[19]~74\ $ (GND))) # (!\control_puertas_inst|contador\(20) & (!\control_puertas_inst|contador[19]~74\ & VCC))
-- \control_puertas_inst|contador[20]~76\ = CARRY((\control_puertas_inst|contador\(20) & !\control_puertas_inst|contador[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(20),
	datad => VCC,
	cin => \control_puertas_inst|contador[19]~74\,
	combout => \control_puertas_inst|contador[20]~75_combout\,
	cout => \control_puertas_inst|contador[20]~76\);

-- Location: FF_X20_Y1_N9
\control_puertas_inst|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[20]~75_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(20));

-- Location: LCCOMB_X20_Y1_N10
\control_puertas_inst|contador[21]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[21]~77_combout\ = (\control_puertas_inst|contador\(21) & (!\control_puertas_inst|contador[20]~76\)) # (!\control_puertas_inst|contador\(21) & ((\control_puertas_inst|contador[20]~76\) # (GND)))
-- \control_puertas_inst|contador[21]~78\ = CARRY((!\control_puertas_inst|contador[20]~76\) # (!\control_puertas_inst|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(21),
	datad => VCC,
	cin => \control_puertas_inst|contador[20]~76\,
	combout => \control_puertas_inst|contador[21]~77_combout\,
	cout => \control_puertas_inst|contador[21]~78\);

-- Location: FF_X20_Y1_N11
\control_puertas_inst|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[21]~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(21));

-- Location: LCCOMB_X20_Y1_N12
\control_puertas_inst|contador[22]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[22]~79_combout\ = (\control_puertas_inst|contador\(22) & (\control_puertas_inst|contador[21]~78\ $ (GND))) # (!\control_puertas_inst|contador\(22) & (!\control_puertas_inst|contador[21]~78\ & VCC))
-- \control_puertas_inst|contador[22]~80\ = CARRY((\control_puertas_inst|contador\(22) & !\control_puertas_inst|contador[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(22),
	datad => VCC,
	cin => \control_puertas_inst|contador[21]~78\,
	combout => \control_puertas_inst|contador[22]~79_combout\,
	cout => \control_puertas_inst|contador[22]~80\);

-- Location: FF_X20_Y1_N13
\control_puertas_inst|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[22]~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(22));

-- Location: LCCOMB_X20_Y1_N14
\control_puertas_inst|contador[23]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[23]~81_combout\ = (\control_puertas_inst|contador\(23) & (!\control_puertas_inst|contador[22]~80\)) # (!\control_puertas_inst|contador\(23) & ((\control_puertas_inst|contador[22]~80\) # (GND)))
-- \control_puertas_inst|contador[23]~82\ = CARRY((!\control_puertas_inst|contador[22]~80\) # (!\control_puertas_inst|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(23),
	datad => VCC,
	cin => \control_puertas_inst|contador[22]~80\,
	combout => \control_puertas_inst|contador[23]~81_combout\,
	cout => \control_puertas_inst|contador[23]~82\);

-- Location: FF_X20_Y1_N15
\control_puertas_inst|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[23]~81_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(23));

-- Location: LCCOMB_X19_Y1_N2
\control_puertas_inst|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~5_combout\ = (!\control_puertas_inst|contador\(21) & (!\control_puertas_inst|contador\(22) & (!\control_puertas_inst|contador\(20) & !\control_puertas_inst|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(21),
	datab => \control_puertas_inst|contador\(22),
	datac => \control_puertas_inst|contador\(20),
	datad => \control_puertas_inst|contador\(23),
	combout => \control_puertas_inst|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y1_N16
\control_puertas_inst|contador[24]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[24]~83_combout\ = (\control_puertas_inst|contador\(24) & (\control_puertas_inst|contador[23]~82\ $ (GND))) # (!\control_puertas_inst|contador\(24) & (!\control_puertas_inst|contador[23]~82\ & VCC))
-- \control_puertas_inst|contador[24]~84\ = CARRY((\control_puertas_inst|contador\(24) & !\control_puertas_inst|contador[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(24),
	datad => VCC,
	cin => \control_puertas_inst|contador[23]~82\,
	combout => \control_puertas_inst|contador[24]~83_combout\,
	cout => \control_puertas_inst|contador[24]~84\);

-- Location: FF_X20_Y1_N17
\control_puertas_inst|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[24]~83_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(24));

-- Location: LCCOMB_X20_Y1_N18
\control_puertas_inst|contador[25]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[25]~85_combout\ = (\control_puertas_inst|contador\(25) & (!\control_puertas_inst|contador[24]~84\)) # (!\control_puertas_inst|contador\(25) & ((\control_puertas_inst|contador[24]~84\) # (GND)))
-- \control_puertas_inst|contador[25]~86\ = CARRY((!\control_puertas_inst|contador[24]~84\) # (!\control_puertas_inst|contador\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(25),
	datad => VCC,
	cin => \control_puertas_inst|contador[24]~84\,
	combout => \control_puertas_inst|contador[25]~85_combout\,
	cout => \control_puertas_inst|contador[25]~86\);

-- Location: FF_X20_Y1_N19
\control_puertas_inst|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[25]~85_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(25));

-- Location: LCCOMB_X20_Y1_N20
\control_puertas_inst|contador[26]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[26]~87_combout\ = (\control_puertas_inst|contador\(26) & (\control_puertas_inst|contador[25]~86\ $ (GND))) # (!\control_puertas_inst|contador\(26) & (!\control_puertas_inst|contador[25]~86\ & VCC))
-- \control_puertas_inst|contador[26]~88\ = CARRY((\control_puertas_inst|contador\(26) & !\control_puertas_inst|contador[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(26),
	datad => VCC,
	cin => \control_puertas_inst|contador[25]~86\,
	combout => \control_puertas_inst|contador[26]~87_combout\,
	cout => \control_puertas_inst|contador[26]~88\);

-- Location: FF_X20_Y1_N21
\control_puertas_inst|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[26]~87_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(26));

-- Location: LCCOMB_X20_Y1_N22
\control_puertas_inst|contador[27]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[27]~89_combout\ = (\control_puertas_inst|contador\(27) & (!\control_puertas_inst|contador[26]~88\)) # (!\control_puertas_inst|contador\(27) & ((\control_puertas_inst|contador[26]~88\) # (GND)))
-- \control_puertas_inst|contador[27]~90\ = CARRY((!\control_puertas_inst|contador[26]~88\) # (!\control_puertas_inst|contador\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(27),
	datad => VCC,
	cin => \control_puertas_inst|contador[26]~88\,
	combout => \control_puertas_inst|contador[27]~89_combout\,
	cout => \control_puertas_inst|contador[27]~90\);

-- Location: FF_X20_Y1_N23
\control_puertas_inst|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[27]~89_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(27));

-- Location: LCCOMB_X20_Y1_N24
\control_puertas_inst|contador[28]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[28]~91_combout\ = (\control_puertas_inst|contador\(28) & (\control_puertas_inst|contador[27]~90\ $ (GND))) # (!\control_puertas_inst|contador\(28) & (!\control_puertas_inst|contador[27]~90\ & VCC))
-- \control_puertas_inst|contador[28]~92\ = CARRY((\control_puertas_inst|contador\(28) & !\control_puertas_inst|contador[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(28),
	datad => VCC,
	cin => \control_puertas_inst|contador[27]~90\,
	combout => \control_puertas_inst|contador[28]~91_combout\,
	cout => \control_puertas_inst|contador[28]~92\);

-- Location: FF_X20_Y1_N25
\control_puertas_inst|contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[28]~91_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(28));

-- Location: LCCOMB_X20_Y1_N26
\control_puertas_inst|contador[29]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[29]~93_combout\ = (\control_puertas_inst|contador\(29) & (!\control_puertas_inst|contador[28]~92\)) # (!\control_puertas_inst|contador\(29) & ((\control_puertas_inst|contador[28]~92\) # (GND)))
-- \control_puertas_inst|contador[29]~94\ = CARRY((!\control_puertas_inst|contador[28]~92\) # (!\control_puertas_inst|contador\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(29),
	datad => VCC,
	cin => \control_puertas_inst|contador[28]~92\,
	combout => \control_puertas_inst|contador[29]~93_combout\,
	cout => \control_puertas_inst|contador[29]~94\);

-- Location: FF_X20_Y1_N27
\control_puertas_inst|contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[29]~93_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(29));

-- Location: LCCOMB_X20_Y1_N28
\control_puertas_inst|contador[30]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[30]~95_combout\ = (\control_puertas_inst|contador\(30) & (\control_puertas_inst|contador[29]~94\ $ (GND))) # (!\control_puertas_inst|contador\(30) & (!\control_puertas_inst|contador[29]~94\ & VCC))
-- \control_puertas_inst|contador[30]~96\ = CARRY((\control_puertas_inst|contador\(30) & !\control_puertas_inst|contador[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|contador\(30),
	datad => VCC,
	cin => \control_puertas_inst|contador[29]~94\,
	combout => \control_puertas_inst|contador[30]~95_combout\,
	cout => \control_puertas_inst|contador[30]~96\);

-- Location: FF_X20_Y1_N29
\control_puertas_inst|contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[30]~95_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(30));

-- Location: LCCOMB_X20_Y1_N30
\control_puertas_inst|contador[31]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[31]~97_combout\ = \control_puertas_inst|contador\(31) $ (\control_puertas_inst|contador[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(31),
	cin => \control_puertas_inst|contador[30]~96\,
	combout => \control_puertas_inst|contador[31]~97_combout\);

-- Location: FF_X20_Y1_N31
\control_puertas_inst|contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[31]~97_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(31));

-- Location: LCCOMB_X19_Y1_N10
\control_puertas_inst|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~7_combout\ = (!\control_puertas_inst|contador\(31) & (!\control_puertas_inst|contador\(30) & (!\control_puertas_inst|contador\(28) & !\control_puertas_inst|contador\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(31),
	datab => \control_puertas_inst|contador\(30),
	datac => \control_puertas_inst|contador\(28),
	datad => \control_puertas_inst|contador\(29),
	combout => \control_puertas_inst|Equal0~7_combout\);

-- Location: LCCOMB_X19_Y1_N24
\control_puertas_inst|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~6_combout\ = (!\control_puertas_inst|contador\(27) & (!\control_puertas_inst|contador\(25) & (!\control_puertas_inst|contador\(26) & !\control_puertas_inst|contador\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(27),
	datab => \control_puertas_inst|contador\(25),
	datac => \control_puertas_inst|contador\(26),
	datad => \control_puertas_inst|contador\(24),
	combout => \control_puertas_inst|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y2_N12
\control_puertas_inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~0_combout\ = (!\control_puertas_inst|contador\(7) & (!\control_puertas_inst|contador\(6) & (!\control_puertas_inst|contador\(4) & \control_puertas_inst|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(7),
	datab => \control_puertas_inst|contador\(6),
	datac => \control_puertas_inst|contador\(4),
	datad => \control_puertas_inst|contador\(3),
	combout => \control_puertas_inst|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y2_N24
\control_puertas_inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~2_combout\ = (!\control_puertas_inst|contador\(15) & (!\control_puertas_inst|contador\(13) & (!\control_puertas_inst|contador\(12) & !\control_puertas_inst|contador\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(15),
	datab => \control_puertas_inst|contador\(13),
	datac => \control_puertas_inst|contador\(12),
	datad => \control_puertas_inst|contador\(14),
	combout => \control_puertas_inst|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y2_N22
\control_puertas_inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~1_combout\ = (!\control_puertas_inst|contador\(8) & (!\control_puertas_inst|contador\(9) & (!\control_puertas_inst|contador\(10) & !\control_puertas_inst|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(8),
	datab => \control_puertas_inst|contador\(9),
	datac => \control_puertas_inst|contador\(10),
	datad => \control_puertas_inst|contador\(11),
	combout => \control_puertas_inst|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y1_N0
\control_puertas_inst|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~3_combout\ = (!\control_puertas_inst|contador\(19) & (!\control_puertas_inst|contador\(16) & (!\control_puertas_inst|contador\(18) & !\control_puertas_inst|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(19),
	datab => \control_puertas_inst|contador\(16),
	datac => \control_puertas_inst|contador\(18),
	datad => \control_puertas_inst|contador\(17),
	combout => \control_puertas_inst|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y2_N18
\control_puertas_inst|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~4_combout\ = (\control_puertas_inst|Equal0~0_combout\ & (\control_puertas_inst|Equal0~2_combout\ & (\control_puertas_inst|Equal0~1_combout\ & \control_puertas_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|Equal0~0_combout\,
	datab => \control_puertas_inst|Equal0~2_combout\,
	datac => \control_puertas_inst|Equal0~1_combout\,
	datad => \control_puertas_inst|Equal0~3_combout\,
	combout => \control_puertas_inst|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y2_N16
\control_puertas_inst|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal0~8_combout\ = (\control_puertas_inst|Equal0~5_combout\ & (\control_puertas_inst|Equal0~7_combout\ & (\control_puertas_inst|Equal0~6_combout\ & \control_puertas_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|Equal0~5_combout\,
	datab => \control_puertas_inst|Equal0~7_combout\,
	datac => \control_puertas_inst|Equal0~6_combout\,
	datad => \control_puertas_inst|Equal0~4_combout\,
	combout => \control_puertas_inst|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y2_N6
\control_puertas_inst|estado_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|estado_puerta~0_combout\ = (\gestion_llamadas_inst|llamada_activada~q\) # ((\control_puertas_inst|estado_puerta\(1) & (\control_puertas_inst|Equal0~9_combout\ & \control_puertas_inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_llamadas_inst|llamada_activada~q\,
	datab => \control_puertas_inst|estado_puerta\(1),
	datac => \control_puertas_inst|Equal0~9_combout\,
	datad => \control_puertas_inst|Equal0~8_combout\,
	combout => \control_puertas_inst|estado_puerta~0_combout\);

-- Location: LCCOMB_X19_Y2_N28
\control_puertas_inst|estado_puerta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|estado_puerta~1_combout\ = (!\control_movimiento_inst|en_movimiento~q\ & ((\control_puertas_inst|estado_puerta\(0) & (!\control_puertas_inst|Equal1~1_combout\)) # (!\control_puertas_inst|estado_puerta\(0) & 
-- ((\control_puertas_inst|estado_puerta~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|en_movimiento~q\,
	datab => \control_puertas_inst|Equal1~1_combout\,
	datac => \control_puertas_inst|estado_puerta\(0),
	datad => \control_puertas_inst|estado_puerta~0_combout\,
	combout => \control_puertas_inst|estado_puerta~1_combout\);

-- Location: FF_X19_Y2_N29
\control_puertas_inst|estado_puerta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|estado_puerta~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|estado_puerta\(0));

-- Location: LCCOMB_X19_Y2_N20
\control_puertas_inst|contador[28]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[28]~40_combout\ = (!\control_puertas_inst|estado_puerta\(0) & ((\gestion_llamadas_inst|llamada_activada~q\) # ((\control_puertas_inst|Equal0~9_combout\ & \control_puertas_inst|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gestion_llamadas_inst|llamada_activada~q\,
	datab => \control_puertas_inst|estado_puerta\(0),
	datac => \control_puertas_inst|Equal0~9_combout\,
	datad => \control_puertas_inst|Equal0~8_combout\,
	combout => \control_puertas_inst|contador[28]~40_combout\);

-- Location: LCCOMB_X19_Y2_N10
\control_puertas_inst|contador[28]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|contador[28]~41_combout\ = (\control_movimiento_inst|en_movimiento~q\) # ((\control_puertas_inst|contador[28]~40_combout\) # ((\control_puertas_inst|estado_puerta\(0) & \control_puertas_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|en_movimiento~q\,
	datab => \control_puertas_inst|estado_puerta\(0),
	datac => \control_puertas_inst|Equal1~1_combout\,
	datad => \control_puertas_inst|contador[28]~40_combout\,
	combout => \control_puertas_inst|contador[28]~41_combout\);

-- Location: FF_X20_Y2_N1
\control_puertas_inst|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[0]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(0));

-- Location: FF_X20_Y2_N3
\control_puertas_inst|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|contador[1]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \control_puertas_inst|contador[28]~41_combout\,
	ena => \control_puertas_inst|contador[28]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|contador\(1));

-- Location: LCCOMB_X19_Y2_N14
\control_puertas_inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal1~0_combout\ = (\control_puertas_inst|contador\(1) & (!\control_puertas_inst|contador\(5) & (!\control_puertas_inst|contador\(0) & !\control_puertas_inst|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_puertas_inst|contador\(1),
	datab => \control_puertas_inst|contador\(5),
	datac => \control_puertas_inst|contador\(0),
	datad => \control_puertas_inst|contador\(2),
	combout => \control_puertas_inst|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y2_N4
\control_puertas_inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|Equal1~1_combout\ = (\control_puertas_inst|Equal1~0_combout\ & \control_puertas_inst|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_puertas_inst|Equal1~0_combout\,
	datad => \control_puertas_inst|Equal0~8_combout\,
	combout => \control_puertas_inst|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y2_N2
\control_puertas_inst|estado_puerta~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|estado_puerta~2_combout\ = (!\control_movimiento_inst|en_movimiento~q\ & (\control_puertas_inst|estado_puerta\(1) $ (((\control_puertas_inst|Equal1~1_combout\ & \control_puertas_inst|estado_puerta\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|en_movimiento~q\,
	datab => \control_puertas_inst|Equal1~1_combout\,
	datac => \control_puertas_inst|estado_puerta\(1),
	datad => \control_puertas_inst|estado_puerta\(0),
	combout => \control_puertas_inst|estado_puerta~2_combout\);

-- Location: FF_X19_Y2_N3
\control_puertas_inst|estado_puerta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|estado_puerta~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|estado_puerta\(1));

-- Location: LCCOMB_X19_Y2_N0
\control_puertas_inst|luz_puerta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|luz_puerta~0_combout\ = (!\control_movimiento_inst|en_movimiento~q\ & ((\control_puertas_inst|luz_puerta~q\) # ((!\control_puertas_inst|estado_puerta\(1) & \control_puertas_inst|estado_puerta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_movimiento_inst|en_movimiento~q\,
	datab => \control_puertas_inst|estado_puerta\(1),
	datac => \control_puertas_inst|luz_puerta~q\,
	datad => \control_puertas_inst|estado_puerta\(0),
	combout => \control_puertas_inst|luz_puerta~0_combout\);

-- Location: FF_X19_Y2_N1
\control_puertas_inst|luz_puerta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|luz_puerta~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|luz_puerta~q\);

-- Location: LCCOMB_X19_Y2_N30
\control_puertas_inst|alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \control_puertas_inst|alarma_sonora~0_combout\ = (!\control_movimiento_inst|en_movimiento~q\ & ((\control_puertas_inst|estado_puerta\(0)) # (\control_puertas_inst|alarma_sonora~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_puertas_inst|estado_puerta\(0),
	datac => \control_puertas_inst|alarma_sonora~q\,
	datad => \control_movimiento_inst|en_movimiento~q\,
	combout => \control_puertas_inst|alarma_sonora~0_combout\);

-- Location: FF_X19_Y2_N31
\control_puertas_inst|alarma_sonora\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_puertas_inst|alarma_sonora~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_puertas_inst|alarma_sonora~q\);

-- Location: IOIBUF_X19_Y0_N1
\personas[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(2),
	o => \personas[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\personas[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(1),
	o => \personas[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\personas[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(0),
	o => \personas[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\personas[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_personas(3),
	o => \personas[3]~input_o\);

-- Location: LCCOMB_X19_Y1_N12
\seguridad_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seguridad_inst|LessThan0~0_combout\ = (\personas[3]~input_o\ & ((\personas[2]~input_o\) # ((\personas[1]~input_o\ & \personas[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \personas[2]~input_o\,
	datab => \personas[1]~input_o\,
	datac => \personas[0]~input_o\,
	datad => \personas[3]~input_o\,
	combout => \seguridad_inst|LessThan0~0_combout\);

-- Location: FF_X19_Y1_N13
\seguridad_inst|alarma_personas\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seguridad_inst|LessThan0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seguridad_inst|alarma_personas~q\);

-- Location: LCCOMB_X19_Y1_N30
\alarma_sonora~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma_sonora~0_combout\ = (\control_puertas_inst|alarma_sonora~q\) # (\seguridad_inst|alarma_personas~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_puertas_inst|alarma_sonora~q\,
	datad => \seguridad_inst|alarma_personas~q\,
	combout => \alarma_sonora~0_combout\);

-- Location: FF_X8_Y1_N29
\gestion_llamadas_inst|piso_destino[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \gestion_llamadas_inst|destino_int\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|piso_destino\(0));

-- Location: LCCOMB_X7_Y1_N28
\gestion_llamadas_inst|piso_destino[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|piso_destino[1]~feeder_combout\ = \gestion_llamadas_inst|destino_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gestion_llamadas_inst|destino_int\(1),
	combout => \gestion_llamadas_inst|piso_destino[1]~feeder_combout\);

-- Location: FF_X7_Y1_N29
\gestion_llamadas_inst|piso_destino[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|piso_destino[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|piso_destino\(1));

-- Location: LCCOMB_X8_Y1_N30
\gestion_llamadas_inst|piso_destino[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gestion_llamadas_inst|piso_destino[2]~feeder_combout\ = \gestion_llamadas_inst|destino_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gestion_llamadas_inst|destino_int\(2),
	combout => \gestion_llamadas_inst|piso_destino[2]~feeder_combout\);

-- Location: FF_X8_Y1_N31
\gestion_llamadas_inst|piso_destino[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gestion_llamadas_inst|piso_destino[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gestion_llamadas_inst|piso_destino\(2));

-- Location: IOIBUF_X41_Y25_N8
\falla_energia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_falla_energia,
	o => \falla_energia~input_o\);

ww_piso_actual(0) <= \piso_actual[0]~output_o\;

ww_piso_actual(1) <= \piso_actual[1]~output_o\;

ww_piso_actual(2) <= \piso_actual[2]~output_o\;

ww_luz_puerta <= \luz_puerta~output_o\;

ww_alarma_sonora <= \alarma_sonora~output_o\;

ww_destino_piso(0) <= \destino_piso[0]~output_o\;

ww_destino_piso(1) <= \destino_piso[1]~output_o\;

ww_destino_piso(2) <= \destino_piso[2]~output_o\;
END structure;


