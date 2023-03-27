-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/27/2023 12:11:53"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArchivoRegistros IS
    PORT (
	Reloj : IN std_logic;
	Reset : IN std_logic;
	Fx : IN std_logic_vector(7 DOWNTO 0);
	SelBus : IN std_logic_vector(4 DOWNTO 0);
	Cmd : IN std_logic_vector(2 DOWNTO 0);
	DST : IN std_logic_vector(4 DOWNTO 0);
	SRC : IN std_logic_vector(4 DOWNTO 0);
	Ax_t : OUT std_logic_vector(7 DOWNTO 0);
	Bx_t : OUT std_logic_vector(7 DOWNTO 0);
	x_t : OUT std_logic_vector(7 DOWNTO 0);
	y_t : OUT std_logic_vector(7 DOWNTO 0);
	r_t : OUT std_logic_vector(7 DOWNTO 0);
	Bus_t : OUT std_logic_vector(7 DOWNTO 0)
	);
END ArchivoRegistros;

-- Design Ports Information
-- SRC[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[1]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[4]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[6]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[7]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[4]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[7]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[0]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[6]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[4]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[3]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArchivoRegistros IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Fx : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelBus : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DST : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SRC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Ax_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRC[0]~input_o\ : std_logic;
SIGNAL \SRC[1]~input_o\ : std_logic;
SIGNAL \SRC[2]~input_o\ : std_logic;
SIGNAL \SRC[3]~input_o\ : std_logic;
SIGNAL \SRC[4]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Ax_t[0]~output_o\ : std_logic;
SIGNAL \Ax_t[1]~output_o\ : std_logic;
SIGNAL \Ax_t[2]~output_o\ : std_logic;
SIGNAL \Ax_t[3]~output_o\ : std_logic;
SIGNAL \Ax_t[4]~output_o\ : std_logic;
SIGNAL \Ax_t[5]~output_o\ : std_logic;
SIGNAL \Ax_t[6]~output_o\ : std_logic;
SIGNAL \Ax_t[7]~output_o\ : std_logic;
SIGNAL \Bx_t[0]~output_o\ : std_logic;
SIGNAL \Bx_t[1]~output_o\ : std_logic;
SIGNAL \Bx_t[2]~output_o\ : std_logic;
SIGNAL \Bx_t[3]~output_o\ : std_logic;
SIGNAL \Bx_t[4]~output_o\ : std_logic;
SIGNAL \Bx_t[5]~output_o\ : std_logic;
SIGNAL \Bx_t[6]~output_o\ : std_logic;
SIGNAL \Bx_t[7]~output_o\ : std_logic;
SIGNAL \x_t[0]~output_o\ : std_logic;
SIGNAL \x_t[1]~output_o\ : std_logic;
SIGNAL \x_t[2]~output_o\ : std_logic;
SIGNAL \x_t[3]~output_o\ : std_logic;
SIGNAL \x_t[4]~output_o\ : std_logic;
SIGNAL \x_t[5]~output_o\ : std_logic;
SIGNAL \x_t[6]~output_o\ : std_logic;
SIGNAL \x_t[7]~output_o\ : std_logic;
SIGNAL \y_t[0]~output_o\ : std_logic;
SIGNAL \y_t[1]~output_o\ : std_logic;
SIGNAL \y_t[2]~output_o\ : std_logic;
SIGNAL \y_t[3]~output_o\ : std_logic;
SIGNAL \y_t[4]~output_o\ : std_logic;
SIGNAL \y_t[5]~output_o\ : std_logic;
SIGNAL \y_t[6]~output_o\ : std_logic;
SIGNAL \y_t[7]~output_o\ : std_logic;
SIGNAL \r_t[0]~output_o\ : std_logic;
SIGNAL \r_t[1]~output_o\ : std_logic;
SIGNAL \r_t[2]~output_o\ : std_logic;
SIGNAL \r_t[3]~output_o\ : std_logic;
SIGNAL \r_t[4]~output_o\ : std_logic;
SIGNAL \r_t[5]~output_o\ : std_logic;
SIGNAL \r_t[6]~output_o\ : std_logic;
SIGNAL \r_t[7]~output_o\ : std_logic;
SIGNAL \Bus_t[0]~output_o\ : std_logic;
SIGNAL \Bus_t[1]~output_o\ : std_logic;
SIGNAL \Bus_t[2]~output_o\ : std_logic;
SIGNAL \Bus_t[3]~output_o\ : std_logic;
SIGNAL \Bus_t[4]~output_o\ : std_logic;
SIGNAL \Bus_t[5]~output_o\ : std_logic;
SIGNAL \Bus_t[6]~output_o\ : std_logic;
SIGNAL \Bus_t[7]~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cmd[0]~input_o\ : std_logic;
SIGNAL \DST[0]~input_o\ : std_logic;
SIGNAL \Cmd[2]~input_o\ : std_logic;
SIGNAL \DST[4]~input_o\ : std_logic;
SIGNAL \DST[3]~input_o\ : std_logic;
SIGNAL \DST[2]~input_o\ : std_logic;
SIGNAL \DST[1]~input_o\ : std_logic;
SIGNAL \_~4_combout\ : std_logic;
SIGNAL \Ax|R[0]~37_combout\ : std_logic;
SIGNAL \Cmd[1]~input_o\ : std_logic;
SIGNAL \_~5_combout\ : std_logic;
SIGNAL \Ax|_~1_combout\ : std_logic;
SIGNAL \Ax|R[1]~38_combout\ : std_logic;
SIGNAL \Ax|_~0_combout\ : std_logic;
SIGNAL \Ax|R[0]~4_combout\ : std_logic;
SIGNAL \Ax|R[6]~29_combout\ : std_logic;
SIGNAL \Ax|_~3_combout\ : std_logic;
SIGNAL \Ax|R[1]~10_combout\ : std_logic;
SIGNAL \SelBus[1]~input_o\ : std_logic;
SIGNAL \SelBus[2]~input_o\ : std_logic;
SIGNAL \SelBus[0]~input_o\ : std_logic;
SIGNAL \SelBus[3]~input_o\ : std_logic;
SIGNAL \_~1_combout\ : std_logic;
SIGNAL \SelBus[4]~input_o\ : std_logic;
SIGNAL \_~3_combout\ : std_logic;
SIGNAL \Fx[1]~input_o\ : std_logic;
SIGNAL \_~6_combout\ : std_logic;
SIGNAL \Bx|R[0]~6_combout\ : std_logic;
SIGNAL \Bx|_~2_combout\ : std_logic;
SIGNAL \Bx|R[0]~38_combout\ : std_logic;
SIGNAL \Bx|_~1_combout\ : std_logic;
SIGNAL \Bx|_~3_combout\ : std_logic;
SIGNAL \Bx|R[1]~39_combout\ : std_logic;
SIGNAL \_~2_combout\ : std_logic;
SIGNAL \Fx[6]~input_o\ : std_logic;
SIGNAL \BUS[6]~19_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \_~7_combout\ : std_logic;
SIGNAL \_~8_combout\ : std_logic;
SIGNAL \_~9_combout\ : std_logic;
SIGNAL \Fx[5]~input_o\ : std_logic;
SIGNAL \Bx|R[2]~16_combout\ : std_logic;
SIGNAL \Fx[2]~input_o\ : std_logic;
SIGNAL \BUS[2]~7_combout\ : std_logic;
SIGNAL \Bx|op_2~1_cout\ : std_logic;
SIGNAL \Bx|op_2~3\ : std_logic;
SIGNAL \Bx|op_2~4_combout\ : std_logic;
SIGNAL \Bx|op_1~1\ : std_logic;
SIGNAL \Bx|op_1~2_combout\ : std_logic;
SIGNAL \Bx|_~0_combout\ : std_logic;
SIGNAL \Bx|R[2]~14_combout\ : std_logic;
SIGNAL \BUS[2]~8_combout\ : std_logic;
SIGNAL \Fx[0]~input_o\ : std_logic;
SIGNAL \BUS[0]~1_combout\ : std_logic;
SIGNAL \op_1~0_combout\ : std_logic;
SIGNAL \op_2~0_combout\ : std_logic;
SIGNAL \_~10_combout\ : std_logic;
SIGNAL \_~0_combout\ : std_logic;
SIGNAL \BUS[0]~0_combout\ : std_logic;
SIGNAL \BUS[0]~2_combout\ : std_logic;
SIGNAL \op_1~1\ : std_logic;
SIGNAL \op_1~2_combout\ : std_logic;
SIGNAL \op_2~1\ : std_logic;
SIGNAL \op_2~2_combout\ : std_logic;
SIGNAL \_~11_combout\ : std_logic;
SIGNAL \BUS[1]~3_combout\ : std_logic;
SIGNAL \BUS[1]~5_combout\ : std_logic;
SIGNAL \op_1~3\ : std_logic;
SIGNAL \op_1~4_combout\ : std_logic;
SIGNAL \op_2~3\ : std_logic;
SIGNAL \op_2~4_combout\ : std_logic;
SIGNAL \_~12_combout\ : std_logic;
SIGNAL \BUS[2]~6_combout\ : std_logic;
SIGNAL \Bx|R[2]~15_combout\ : std_logic;
SIGNAL \Bx|R[2]~17_combout\ : std_logic;
SIGNAL \Bx|R[3]~19_combout\ : std_logic;
SIGNAL \Fx[3]~input_o\ : std_logic;
SIGNAL \BUS[3]~10_combout\ : std_logic;
SIGNAL \BUS[3]~11_combout\ : std_logic;
SIGNAL \op_1~5\ : std_logic;
SIGNAL \op_1~6_combout\ : std_logic;
SIGNAL \op_2~5\ : std_logic;
SIGNAL \op_2~6_combout\ : std_logic;
SIGNAL \_~13_combout\ : std_logic;
SIGNAL \BUS[3]~9_combout\ : std_logic;
SIGNAL \Bx|op_1~3\ : std_logic;
SIGNAL \Bx|op_1~4_combout\ : std_logic;
SIGNAL \Bx|op_2~5\ : std_logic;
SIGNAL \Bx|op_2~6_combout\ : std_logic;
SIGNAL \Bx|R[3]~18_combout\ : std_logic;
SIGNAL \Bx|R[3]~40_combout\ : std_logic;
SIGNAL \Bx|R[3]~20_combout\ : std_logic;
SIGNAL \Bx|R[4]~22_combout\ : std_logic;
SIGNAL \op_1~7\ : std_logic;
SIGNAL \op_1~8_combout\ : std_logic;
SIGNAL \op_2~7\ : std_logic;
SIGNAL \op_2~8_combout\ : std_logic;
SIGNAL \Fx[4]~input_o\ : std_logic;
SIGNAL \BUS[4]~13_combout\ : std_logic;
SIGNAL \_~14_combout\ : std_logic;
SIGNAL \BUS[4]~12_combout\ : std_logic;
SIGNAL \BUS[4]~14_combout\ : std_logic;
SIGNAL \Bx|op_1~5\ : std_logic;
SIGNAL \Bx|op_1~6_combout\ : std_logic;
SIGNAL \Bx|op_2~7\ : std_logic;
SIGNAL \Bx|op_2~8_combout\ : std_logic;
SIGNAL \Bx|R[4]~21_combout\ : std_logic;
SIGNAL \Bx|R[4]~23_combout\ : std_logic;
SIGNAL \Bx|R[4]~24_combout\ : std_logic;
SIGNAL \Bx|R[5]~26_combout\ : std_logic;
SIGNAL \Bx|op_2~9\ : std_logic;
SIGNAL \Bx|op_2~10_combout\ : std_logic;
SIGNAL \Bx|op_1~7\ : std_logic;
SIGNAL \Bx|op_1~8_combout\ : std_logic;
SIGNAL \Bx|R[5]~25_combout\ : std_logic;
SIGNAL \Bx|R[5]~27_combout\ : std_logic;
SIGNAL \Bx|R[5]~28_combout\ : std_logic;
SIGNAL \BUS[5]~16_combout\ : std_logic;
SIGNAL \op_1~9\ : std_logic;
SIGNAL \op_1~10_combout\ : std_logic;
SIGNAL \op_2~9\ : std_logic;
SIGNAL \op_2~10_combout\ : std_logic;
SIGNAL \_~15_combout\ : std_logic;
SIGNAL \BUS[5]~15_combout\ : std_logic;
SIGNAL \BUS[5]~17_combout\ : std_logic;
SIGNAL \op_1~11\ : std_logic;
SIGNAL \op_1~12_combout\ : std_logic;
SIGNAL \op_2~11\ : std_logic;
SIGNAL \op_2~12_combout\ : std_logic;
SIGNAL \_~16_combout\ : std_logic;
SIGNAL \BUS[6]~18_combout\ : std_logic;
SIGNAL \BUS[6]~20_combout\ : std_logic;
SIGNAL \Bx|R[6]~29_combout\ : std_logic;
SIGNAL \Bx|op_2~11\ : std_logic;
SIGNAL \Bx|op_2~12_combout\ : std_logic;
SIGNAL \Bx|R[6]~30_combout\ : std_logic;
SIGNAL \Bx|op_1~9\ : std_logic;
SIGNAL \Bx|op_1~10_combout\ : std_logic;
SIGNAL \Bx|R[6]~31_combout\ : std_logic;
SIGNAL \Bx|R[6]~32_combout\ : std_logic;
SIGNAL \Bx|op_2~13\ : std_logic;
SIGNAL \Bx|op_2~14_combout\ : std_logic;
SIGNAL \Bx|R[7]~33_combout\ : std_logic;
SIGNAL \op_1~13\ : std_logic;
SIGNAL \op_1~14_combout\ : std_logic;
SIGNAL \op_2~13\ : std_logic;
SIGNAL \op_2~14_combout\ : std_logic;
SIGNAL \Fx[7]~input_o\ : std_logic;
SIGNAL \BUS[7]~22_combout\ : std_logic;
SIGNAL \_~17_combout\ : std_logic;
SIGNAL \BUS[7]~21_combout\ : std_logic;
SIGNAL \BUS[7]~23_combout\ : std_logic;
SIGNAL \Bx|R[7]~34_combout\ : std_logic;
SIGNAL \Bx|R[7]~35_combout\ : std_logic;
SIGNAL \Bx|op_1~11\ : std_logic;
SIGNAL \Bx|op_1~12_combout\ : std_logic;
SIGNAL \Bx|R[7]~36_combout\ : std_logic;
SIGNAL \Bx|R[7]~37_combout\ : std_logic;
SIGNAL \Bx|R[0]~8_combout\ : std_logic;
SIGNAL \Bx|R[0]~7_combout\ : std_logic;
SIGNAL \Bx|R[0]~9_combout\ : std_logic;
SIGNAL \Bx|R[1]~11_combout\ : std_logic;
SIGNAL \Bx|op_1~0_combout\ : std_logic;
SIGNAL \Bx|op_2~2_combout\ : std_logic;
SIGNAL \Bx|R[1]~10_combout\ : std_logic;
SIGNAL \Bx|R[1]~12_combout\ : std_logic;
SIGNAL \Bx|R[1]~13_combout\ : std_logic;
SIGNAL \BUS[1]~4_combout\ : std_logic;
SIGNAL \Ax|op_1~0_combout\ : std_logic;
SIGNAL \Ax|op_2~1_cout\ : std_logic;
SIGNAL \Ax|op_2~2_combout\ : std_logic;
SIGNAL \Ax|R[1]~8_combout\ : std_logic;
SIGNAL \Ax|R[1]~9_combout\ : std_logic;
SIGNAL \Ax|R[1]~11_combout\ : std_logic;
SIGNAL \Ax|R[2]~14_combout\ : std_logic;
SIGNAL \Ax|op_2~3\ : std_logic;
SIGNAL \Ax|op_2~4_combout\ : std_logic;
SIGNAL \Ax|op_1~1\ : std_logic;
SIGNAL \Ax|op_1~2_combout\ : std_logic;
SIGNAL \Ax|R[2]~12_combout\ : std_logic;
SIGNAL \Ax|R[2]~13_combout\ : std_logic;
SIGNAL \Ax|R[2]~15_combout\ : std_logic;
SIGNAL \Ax|R[3]~17_combout\ : std_logic;
SIGNAL \Ax|op_2~5\ : std_logic;
SIGNAL \Ax|op_2~6_combout\ : std_logic;
SIGNAL \Ax|op_1~3\ : std_logic;
SIGNAL \Ax|op_1~4_combout\ : std_logic;
SIGNAL \Ax|R[3]~16_combout\ : std_logic;
SIGNAL \Ax|R[3]~18_combout\ : std_logic;
SIGNAL \Ax|R[3]~19_combout\ : std_logic;
SIGNAL \Ax|R[4]~22_combout\ : std_logic;
SIGNAL \Ax|op_1~5\ : std_logic;
SIGNAL \Ax|op_1~6_combout\ : std_logic;
SIGNAL \Ax|op_2~7\ : std_logic;
SIGNAL \Ax|op_2~8_combout\ : std_logic;
SIGNAL \Ax|R[4]~20_combout\ : std_logic;
SIGNAL \Ax|R[4]~21_combout\ : std_logic;
SIGNAL \Ax|R[4]~23_combout\ : std_logic;
SIGNAL \Ax|R[5]~25_combout\ : std_logic;
SIGNAL \Ax|op_1~7\ : std_logic;
SIGNAL \Ax|op_1~8_combout\ : std_logic;
SIGNAL \Ax|op_2~9\ : std_logic;
SIGNAL \Ax|op_2~10_combout\ : std_logic;
SIGNAL \Ax|R[5]~24_combout\ : std_logic;
SIGNAL \Ax|R[5]~26_combout\ : std_logic;
SIGNAL \Ax|R[5]~27_combout\ : std_logic;
SIGNAL \Ax|op_1~9\ : std_logic;
SIGNAL \Ax|op_1~10_combout\ : std_logic;
SIGNAL \Ax|R[6]~30_combout\ : std_logic;
SIGNAL \Ax|op_2~11\ : std_logic;
SIGNAL \Ax|op_2~12_combout\ : std_logic;
SIGNAL \Ax|R[6]~28_combout\ : std_logic;
SIGNAL \Ax|R[6]~31_combout\ : std_logic;
SIGNAL \Ax|R[7]~32_combout\ : std_logic;
SIGNAL \Ax|op_2~13\ : std_logic;
SIGNAL \Ax|op_2~14_combout\ : std_logic;
SIGNAL \Ax|op_1~11\ : std_logic;
SIGNAL \Ax|op_1~12_combout\ : std_logic;
SIGNAL \Ax|R[7]~33_combout\ : std_logic;
SIGNAL \Ax|R[7]~34_combout\ : std_logic;
SIGNAL \Ax|R[7]~35_combout\ : std_logic;
SIGNAL \Ax|R[7]~36_combout\ : std_logic;
SIGNAL \Ax|_~2_combout\ : std_logic;
SIGNAL \Ax|R[0]~6_combout\ : std_logic;
SIGNAL \Ax|R[0]~5_combout\ : std_logic;
SIGNAL \Ax|R[0]~7_combout\ : std_logic;
SIGNAL \alu_y|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ax|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_x|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_r|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reloj <= Reloj;
ww_Reset <= Reset;
ww_Fx <= Fx;
ww_SelBus <= SelBus;
ww_Cmd <= Cmd;
ww_DST <= DST;
ww_SRC <= SRC;
Ax_t <= ww_Ax_t;
Bx_t <= ww_Bx_t;
x_t <= ww_x_t;
y_t <= ww_y_t;
r_t <= ww_r_t;
Bus_t <= ww_Bus_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y42_N16
\Ax_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(0),
	devoe => ww_devoe,
	o => \Ax_t[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\Ax_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(1),
	devoe => ww_devoe,
	o => \Ax_t[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Ax_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(2),
	devoe => ww_devoe,
	o => \Ax_t[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\Ax_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(3),
	devoe => ww_devoe,
	o => \Ax_t[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\Ax_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(4),
	devoe => ww_devoe,
	o => \Ax_t[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\Ax_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(5),
	devoe => ww_devoe,
	o => \Ax_t[5]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\Ax_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(6),
	devoe => ww_devoe,
	o => \Ax_t[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\Ax_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ax|R\(7),
	devoe => ww_devoe,
	o => \Ax_t[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\Bx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(0),
	devoe => ww_devoe,
	o => \Bx_t[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\Bx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(1),
	devoe => ww_devoe,
	o => \Bx_t[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\Bx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(2),
	devoe => ww_devoe,
	o => \Bx_t[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\Bx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(3),
	devoe => ww_devoe,
	o => \Bx_t[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Bx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(4),
	devoe => ww_devoe,
	o => \Bx_t[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\Bx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(5),
	devoe => ww_devoe,
	o => \Bx_t[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Bx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(6),
	devoe => ww_devoe,
	o => \Bx_t[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\Bx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bx|R\(7),
	devoe => ww_devoe,
	o => \Bx_t[7]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\x_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(0),
	devoe => ww_devoe,
	o => \x_t[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\x_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(1),
	devoe => ww_devoe,
	o => \x_t[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\x_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(2),
	devoe => ww_devoe,
	o => \x_t[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\x_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(3),
	devoe => ww_devoe,
	o => \x_t[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\x_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(4),
	devoe => ww_devoe,
	o => \x_t[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\x_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(5),
	devoe => ww_devoe,
	o => \x_t[5]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\x_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(6),
	devoe => ww_devoe,
	o => \x_t[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\x_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_x|R\(7),
	devoe => ww_devoe,
	o => \x_t[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\y_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(0),
	devoe => ww_devoe,
	o => \y_t[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\y_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(1),
	devoe => ww_devoe,
	o => \y_t[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\y_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(2),
	devoe => ww_devoe,
	o => \y_t[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\y_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(3),
	devoe => ww_devoe,
	o => \y_t[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\y_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(4),
	devoe => ww_devoe,
	o => \y_t[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\y_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(5),
	devoe => ww_devoe,
	o => \y_t[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\y_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(6),
	devoe => ww_devoe,
	o => \y_t[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\y_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_y|R\(7),
	devoe => ww_devoe,
	o => \y_t[7]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\r_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(0),
	devoe => ww_devoe,
	o => \r_t[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\r_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(1),
	devoe => ww_devoe,
	o => \r_t[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\r_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(2),
	devoe => ww_devoe,
	o => \r_t[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\r_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(3),
	devoe => ww_devoe,
	o => \r_t[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\r_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(4),
	devoe => ww_devoe,
	o => \r_t[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\r_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(5),
	devoe => ww_devoe,
	o => \r_t[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\r_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(6),
	devoe => ww_devoe,
	o => \r_t[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\r_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_r|R\(7),
	devoe => ww_devoe,
	o => \r_t[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\Bus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[0]~2_combout\,
	devoe => ww_devoe,
	o => \Bus_t[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\Bus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[1]~5_combout\,
	devoe => ww_devoe,
	o => \Bus_t[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\Bus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[2]~8_combout\,
	devoe => ww_devoe,
	o => \Bus_t[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\Bus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[3]~11_combout\,
	devoe => ww_devoe,
	o => \Bus_t[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\Bus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[4]~14_combout\,
	devoe => ww_devoe,
	o => \Bus_t[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\Bus_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[5]~17_combout\,
	devoe => ww_devoe,
	o => \Bus_t[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\Bus_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[6]~20_combout\,
	devoe => ww_devoe,
	o => \Bus_t[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\Bus_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[7]~23_combout\,
	devoe => ww_devoe,
	o => \Bus_t[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\Reloj~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G3
\Reloj~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X66_Y54_N1
\Cmd[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd(0),
	o => \Cmd[0]~input_o\);

-- Location: IOIBUF_X66_Y54_N29
\DST[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST(0),
	o => \DST[0]~input_o\);

-- Location: IOIBUF_X66_Y54_N15
\Cmd[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd(2),
	o => \Cmd[2]~input_o\);

-- Location: IOIBUF_X69_Y54_N22
\DST[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST(4),
	o => \DST[4]~input_o\);

-- Location: IOIBUF_X64_Y54_N1
\DST[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST(3),
	o => \DST[3]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\DST[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST(2),
	o => \DST[2]~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\DST[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST(1),
	o => \DST[1]~input_o\);

-- Location: LCCOMB_X72_Y46_N12
\_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~4_combout\ = (!\DST[4]~input_o\ & (!\DST[3]~input_o\ & (!\DST[2]~input_o\ & !\DST[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST[4]~input_o\,
	datab => \DST[3]~input_o\,
	datac => \DST[2]~input_o\,
	datad => \DST[1]~input_o\,
	combout => \_~4_combout\);

-- Location: LCCOMB_X72_Y46_N20
\Ax|R[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~37_combout\ = (\Cmd[0]~input_o\ & (!\DST[0]~input_o\ & (\Cmd[2]~input_o\ & \_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \DST[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~4_combout\,
	combout => \Ax|R[0]~37_combout\);

-- Location: IOIBUF_X78_Y34_N8
\Cmd[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cmd(1),
	o => \Cmd[1]~input_o\);

-- Location: LCCOMB_X72_Y46_N18
\_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~5_combout\ = (!\DST[0]~input_o\ & \_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST[0]~input_o\,
	datad => \_~4_combout\,
	combout => \_~5_combout\);

-- Location: LCCOMB_X74_Y42_N30
\Ax|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~5_combout\,
	combout => \Ax|_~1_combout\);

-- Location: LCCOMB_X72_Y46_N14
\Ax|R[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~38_combout\ = (!\Cmd[0]~input_o\ & (!\DST[0]~input_o\ & (\Cmd[2]~input_o\ & \_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \DST[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~4_combout\,
	combout => \Ax|R[1]~38_combout\);

-- Location: LCCOMB_X74_Y42_N20
\Ax|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~5_combout\,
	combout => \Ax|_~0_combout\);

-- Location: LCCOMB_X74_Y42_N22
\Ax|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~4_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~5_combout\,
	combout => \Ax|R[0]~4_combout\);

-- Location: LCCOMB_X74_Y42_N26
\Ax|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~29_combout\ = (\Ax|R[0]~37_combout\ & ((\Ax|R\(7)) # ((\Ax|R[0]~4_combout\ & \Ax|R\(6))))) # (!\Ax|R[0]~37_combout\ & (((\Ax|R[0]~4_combout\ & \Ax|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~37_combout\,
	datab => \Ax|R\(7),
	datac => \Ax|R[0]~4_combout\,
	datad => \Ax|R\(6),
	combout => \Ax|R[6]~29_combout\);

-- Location: LCCOMB_X74_Y42_N4
\Ax|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~3_combout\ = (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~5_combout\,
	combout => \Ax|_~3_combout\);

-- Location: LCCOMB_X74_Y42_N2
\Ax|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~10_combout\ = (\Ax|R[1]~38_combout\ & ((\Ax|R\(0)) # ((\Ax|R\(2) & \Ax|R[0]~37_combout\)))) # (!\Ax|R[1]~38_combout\ & (\Ax|R\(2) & ((\Ax|R[0]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[1]~38_combout\,
	datab => \Ax|R\(2),
	datac => \Ax|R\(0),
	datad => \Ax|R[0]~37_combout\,
	combout => \Ax|R[1]~10_combout\);

-- Location: IOIBUF_X78_Y36_N1
\SelBus[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(1),
	o => \SelBus[1]~input_o\);

-- Location: IOIBUF_X78_Y33_N22
\SelBus[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(2),
	o => \SelBus[2]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\SelBus[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(0),
	o => \SelBus[0]~input_o\);

-- Location: IOIBUF_X78_Y43_N8
\SelBus[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(3),
	o => \SelBus[3]~input_o\);

-- Location: LCCOMB_X77_Y43_N4
\_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~1_combout\ = (\SelBus[0]~input_o\ & !\SelBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[0]~input_o\,
	datad => \SelBus[3]~input_o\,
	combout => \_~1_combout\);

-- Location: IOIBUF_X78_Y37_N1
\SelBus[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelBus(4),
	o => \SelBus[4]~input_o\);

-- Location: LCCOMB_X77_Y43_N28
\_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~3_combout\ = (!\SelBus[1]~input_o\ & (!\SelBus[2]~input_o\ & (\_~1_combout\ & !\SelBus[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \_~1_combout\,
	datad => \SelBus[4]~input_o\,
	combout => \_~3_combout\);

-- Location: IOIBUF_X78_Y36_N8
\Fx[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(1),
	o => \Fx[1]~input_o\);

-- Location: LCCOMB_X72_Y46_N24
\_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~6_combout\ = (\DST[0]~input_o\ & \_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST[0]~input_o\,
	datad => \_~4_combout\,
	combout => \_~6_combout\);

-- Location: LCCOMB_X70_Y43_N18
\Bx|R[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~6_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\_~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~6_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|R[0]~6_combout\);

-- Location: LCCOMB_X70_Y43_N6
\Bx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~2_combout\ = (\_~6_combout\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~6_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|_~2_combout\);

-- Location: LCCOMB_X72_Y46_N16
\Bx|R[0]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~38_combout\ = (\Cmd[0]~input_o\ & (\DST[0]~input_o\ & (\Cmd[2]~input_o\ & \_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \DST[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~4_combout\,
	combout => \Bx|R[0]~38_combout\);

-- Location: LCCOMB_X70_Y43_N10
\Bx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~1_combout\ = (\_~6_combout\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~6_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|_~1_combout\);

-- Location: LCCOMB_X70_Y43_N30
\Bx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~3_combout\ = (\_~6_combout\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~6_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|_~3_combout\);

-- Location: LCCOMB_X72_Y46_N6
\Bx|R[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~39_combout\ = (!\Cmd[0]~input_o\ & (\DST[0]~input_o\ & (\Cmd[2]~input_o\ & \_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \DST[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~4_combout\,
	combout => \Bx|R[1]~39_combout\);

-- Location: LCCOMB_X77_Y43_N26
\_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~2_combout\ = (!\SelBus[1]~input_o\ & (\SelBus[2]~input_o\ & (\_~1_combout\ & !\SelBus[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \_~1_combout\,
	datad => \SelBus[4]~input_o\,
	combout => \_~2_combout\);

-- Location: IOIBUF_X74_Y54_N22
\Fx[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(6),
	o => \Fx[6]~input_o\);

-- Location: LCCOMB_X74_Y43_N20
\BUS[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~19_combout\ = (\_~2_combout\ & ((\Fx[6]~input_o\) # ((\_~3_combout\ & \Bx|R\(6))))) # (!\_~2_combout\ & (((\_~3_combout\ & \Bx|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \Fx[6]~input_o\,
	datac => \_~3_combout\,
	datad => \Bx|R\(6),
	combout => \BUS[6]~19_combout\);

-- Location: IOIBUF_X0_Y18_N22
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X72_Y46_N26
\_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~7_combout\ = (!\DST[4]~input_o\ & (!\DST[3]~input_o\ & (\DST[2]~input_o\ & \DST[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST[4]~input_o\,
	datab => \DST[3]~input_o\,
	datac => \DST[2]~input_o\,
	datad => \DST[1]~input_o\,
	combout => \_~7_combout\);

-- Location: LCCOMB_X72_Y46_N8
\_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~8_combout\ = (!\DST[0]~input_o\ & \_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST[0]~input_o\,
	datac => \_~7_combout\,
	combout => \_~8_combout\);

-- Location: FF_X76_Y43_N29
\alu_x|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[6]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(6));

-- Location: LCCOMB_X72_Y46_N30
\_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~9_combout\ = (\DST[0]~input_o\ & \_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST[0]~input_o\,
	datac => \_~7_combout\,
	combout => \_~9_combout\);

-- Location: FF_X76_Y43_N1
\alu_y|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[6]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(6));

-- Location: IOIBUF_X78_Y37_N22
\Fx[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(5),
	o => \Fx[5]~input_o\);

-- Location: LCCOMB_X71_Y43_N22
\Bx|R[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~16_combout\ = (\Bx|R[0]~38_combout\ & ((\Bx|R\(3)) # ((\Bx|R\(1) & \Bx|R[1]~39_combout\)))) # (!\Bx|R[0]~38_combout\ & (((\Bx|R\(1) & \Bx|R[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[0]~38_combout\,
	datab => \Bx|R\(3),
	datac => \Bx|R\(1),
	datad => \Bx|R[1]~39_combout\,
	combout => \Bx|R[2]~16_combout\);

-- Location: IOIBUF_X78_Y34_N1
\Fx[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(2),
	o => \Fx[2]~input_o\);

-- Location: LCCOMB_X77_Y43_N12
\BUS[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~7_combout\ = (\_~2_combout\ & ((\Fx[2]~input_o\) # ((\_~3_combout\ & \Bx|R\(2))))) # (!\_~2_combout\ & (\_~3_combout\ & ((\Bx|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \_~3_combout\,
	datac => \Fx[2]~input_o\,
	datad => \Bx|R\(2),
	combout => \BUS[2]~7_combout\);

-- Location: LCCOMB_X71_Y43_N4
\Bx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~1_cout\ = CARRY(\Bx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(0),
	datad => VCC,
	cout => \Bx|op_2~1_cout\);

-- Location: LCCOMB_X71_Y43_N6
\Bx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~2_combout\ = (\Bx|R\(1) & (\Bx|op_2~1_cout\ & VCC)) # (!\Bx|R\(1) & (!\Bx|op_2~1_cout\))
-- \Bx|op_2~3\ = CARRY((!\Bx|R\(1) & !\Bx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(1),
	datad => VCC,
	cin => \Bx|op_2~1_cout\,
	combout => \Bx|op_2~2_combout\,
	cout => \Bx|op_2~3\);

-- Location: LCCOMB_X71_Y43_N8
\Bx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~4_combout\ = (\Bx|R\(2) & ((GND) # (!\Bx|op_2~3\))) # (!\Bx|R\(2) & (\Bx|op_2~3\ $ (GND)))
-- \Bx|op_2~5\ = CARRY((\Bx|R\(2)) # (!\Bx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(2),
	datad => VCC,
	cin => \Bx|op_2~3\,
	combout => \Bx|op_2~4_combout\,
	cout => \Bx|op_2~5\);

-- Location: LCCOMB_X72_Y43_N10
\Bx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~0_combout\ = (\Bx|R\(0) & (\Bx|R\(1) $ (VCC))) # (!\Bx|R\(0) & (\Bx|R\(1) & VCC))
-- \Bx|op_1~1\ = CARRY((\Bx|R\(0) & \Bx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(0),
	datab => \Bx|R\(1),
	datad => VCC,
	combout => \Bx|op_1~0_combout\,
	cout => \Bx|op_1~1\);

-- Location: LCCOMB_X72_Y43_N12
\Bx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~2_combout\ = (\Bx|R\(2) & (!\Bx|op_1~1\)) # (!\Bx|R\(2) & ((\Bx|op_1~1\) # (GND)))
-- \Bx|op_1~3\ = CARRY((!\Bx|op_1~1\) # (!\Bx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(2),
	datad => VCC,
	cin => \Bx|op_1~1\,
	combout => \Bx|op_1~2_combout\,
	cout => \Bx|op_1~3\);

-- Location: LCCOMB_X70_Y43_N12
\Bx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~0_combout\ = (\_~6_combout\ & (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~6_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|_~0_combout\);

-- Location: LCCOMB_X71_Y43_N26
\Bx|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~14_combout\ = (\Bx|_~1_combout\ & ((\Bx|op_2~4_combout\) # ((\Bx|op_1~2_combout\ & \Bx|_~0_combout\)))) # (!\Bx|_~1_combout\ & (((\Bx|op_1~2_combout\ & \Bx|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|op_2~4_combout\,
	datac => \Bx|op_1~2_combout\,
	datad => \Bx|_~0_combout\,
	combout => \Bx|R[2]~14_combout\);

-- Location: LCCOMB_X77_Y43_N10
\BUS[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~8_combout\ = (\BUS[2]~6_combout\) # (\BUS[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[2]~6_combout\,
	datad => \BUS[2]~7_combout\,
	combout => \BUS[2]~8_combout\);

-- Location: FF_X76_Y43_N21
\alu_x|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(2));

-- Location: FF_X76_Y43_N3
\alu_y|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(2));

-- Location: FF_X76_Y43_N7
\alu_y|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(1));

-- Location: IOIBUF_X78_Y31_N8
\Fx[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(0),
	o => \Fx[0]~input_o\);

-- Location: LCCOMB_X74_Y43_N26
\BUS[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~1_combout\ = (\_~2_combout\ & ((\Fx[0]~input_o\) # ((\_~3_combout\ & \Bx|R\(0))))) # (!\_~2_combout\ & (((\_~3_combout\ & \Bx|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \Fx[0]~input_o\,
	datac => \_~3_combout\,
	datad => \Bx|R\(0),
	combout => \BUS[0]~1_combout\);

-- Location: FF_X76_Y43_N9
\alu_y|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(0));

-- Location: LCCOMB_X76_Y43_N16
\op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~0_combout\ = (\alu_x|R\(0) & (\alu_y|R\(0) $ (VCC))) # (!\alu_x|R\(0) & (\alu_y|R\(0) & VCC))
-- \op_1~1\ = CARRY((\alu_x|R\(0) & \alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(0),
	datab => \alu_y|R\(0),
	datad => VCC,
	combout => \op_1~0_combout\,
	cout => \op_1~1\);

-- Location: LCCOMB_X76_Y43_N0
\op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~0_combout\ = \op_1~0_combout\ $ (VCC)
-- \op_2~1\ = CARRY(\op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_1~0_combout\,
	datad => VCC,
	combout => \op_2~0_combout\,
	cout => \op_2~1\);

-- Location: LCCOMB_X75_Y43_N12
\_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~10_combout\ = (\BUS[0]~0_combout\) # ((\op_2~0_combout\) # (\BUS[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[0]~0_combout\,
	datac => \op_2~0_combout\,
	datad => \BUS[0]~1_combout\,
	combout => \_~10_combout\);

-- Location: FF_X75_Y43_N13
\alu_r|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(0));

-- Location: LCCOMB_X77_Y43_N16
\_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~0_combout\ = (!\SelBus[1]~input_o\ & (!\SelBus[2]~input_o\ & (!\SelBus[0]~input_o\ & !\SelBus[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~input_o\,
	datab => \SelBus[2]~input_o\,
	datac => \SelBus[0]~input_o\,
	datad => \SelBus[4]~input_o\,
	combout => \_~0_combout\);

-- Location: LCCOMB_X75_Y43_N26
\BUS[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~0_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(0))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(0),
	datab => \SelBus[3]~input_o\,
	datac => \Ax|R\(0),
	datad => \_~0_combout\,
	combout => \BUS[0]~0_combout\);

-- Location: LCCOMB_X74_Y43_N16
\BUS[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~2_combout\ = (\BUS[0]~1_combout\) # (\BUS[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[0]~1_combout\,
	datad => \BUS[0]~0_combout\,
	combout => \BUS[0]~2_combout\);

-- Location: FF_X76_Y43_N17
\alu_x|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(0));

-- Location: LCCOMB_X76_Y43_N18
\op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~2_combout\ = (\alu_x|R\(1) & ((\alu_y|R\(1) & (\op_1~1\ & VCC)) # (!\alu_y|R\(1) & (!\op_1~1\)))) # (!\alu_x|R\(1) & ((\alu_y|R\(1) & (!\op_1~1\)) # (!\alu_y|R\(1) & ((\op_1~1\) # (GND)))))
-- \op_1~3\ = CARRY((\alu_x|R\(1) & (!\alu_y|R\(1) & !\op_1~1\)) # (!\alu_x|R\(1) & ((!\op_1~1\) # (!\alu_y|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(1),
	datab => \alu_y|R\(1),
	datad => VCC,
	cin => \op_1~1\,
	combout => \op_1~2_combout\,
	cout => \op_1~3\);

-- Location: LCCOMB_X76_Y43_N2
\op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~2_combout\ = (\op_1~2_combout\ & (!\op_2~1\)) # (!\op_1~2_combout\ & ((\op_2~1\) # (GND)))
-- \op_2~3\ = CARRY((!\op_2~1\) # (!\op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op_1~2_combout\,
	datad => VCC,
	cin => \op_2~1\,
	combout => \op_2~2_combout\,
	cout => \op_2~3\);

-- Location: LCCOMB_X75_Y43_N14
\_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~11_combout\ = (\BUS[1]~4_combout\) # ((\op_2~2_combout\) # (\BUS[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[1]~4_combout\,
	datac => \op_2~2_combout\,
	datad => \BUS[1]~3_combout\,
	combout => \_~11_combout\);

-- Location: FF_X75_Y43_N15
\alu_r|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(1));

-- Location: LCCOMB_X75_Y43_N16
\BUS[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~3_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(1))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \alu_r|R\(1),
	datac => \_~0_combout\,
	datad => \Ax|R\(1),
	combout => \BUS[1]~3_combout\);

-- Location: LCCOMB_X74_Y43_N12
\BUS[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~5_combout\ = (\BUS[1]~4_combout\) # (\BUS[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[1]~4_combout\,
	datad => \BUS[1]~3_combout\,
	combout => \BUS[1]~5_combout\);

-- Location: FF_X76_Y43_N19
\alu_x|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(1));

-- Location: LCCOMB_X76_Y43_N20
\op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~4_combout\ = ((\alu_x|R\(2) $ (\alu_y|R\(2) $ (!\op_1~3\)))) # (GND)
-- \op_1~5\ = CARRY((\alu_x|R\(2) & ((\alu_y|R\(2)) # (!\op_1~3\))) # (!\alu_x|R\(2) & (\alu_y|R\(2) & !\op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(2),
	datab => \alu_y|R\(2),
	datad => VCC,
	cin => \op_1~3\,
	combout => \op_1~4_combout\,
	cout => \op_1~5\);

-- Location: LCCOMB_X76_Y43_N4
\op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~4_combout\ = (\op_1~4_combout\ & ((GND) # (!\op_2~3\))) # (!\op_1~4_combout\ & (\op_2~3\ $ (GND)))
-- \op_2~5\ = CARRY((\op_1~4_combout\) # (!\op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op_1~4_combout\,
	datad => VCC,
	cin => \op_2~3\,
	combout => \op_2~4_combout\,
	cout => \op_2~5\);

-- Location: LCCOMB_X77_Y43_N6
\_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~12_combout\ = (\BUS[2]~7_combout\) # ((\op_2~4_combout\) # (\BUS[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[2]~7_combout\,
	datac => \op_2~4_combout\,
	datad => \BUS[2]~6_combout\,
	combout => \_~12_combout\);

-- Location: FF_X77_Y43_N7
\alu_r|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(2));

-- Location: LCCOMB_X77_Y43_N22
\BUS[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~6_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(2))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(2),
	datab => \SelBus[3]~input_o\,
	datac => \_~0_combout\,
	datad => \Ax|R\(2),
	combout => \BUS[2]~6_combout\);

-- Location: LCCOMB_X71_Y43_N0
\Bx|R[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~15_combout\ = (\Bx|R[2]~14_combout\) # ((\Bx|_~3_combout\ & ((\BUS[2]~7_combout\) # (\BUS[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[2]~7_combout\,
	datab => \Bx|_~3_combout\,
	datac => \Bx|R[2]~14_combout\,
	datad => \BUS[2]~6_combout\,
	combout => \Bx|R[2]~15_combout\);

-- Location: LCCOMB_X71_Y43_N30
\Bx|R[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~17_combout\ = (\Bx|R[2]~16_combout\) # ((\Bx|R[2]~15_combout\) # ((\Bx|R[0]~6_combout\ & \Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[2]~16_combout\,
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|R\(2),
	datad => \Bx|R[2]~15_combout\,
	combout => \Bx|R[2]~17_combout\);

-- Location: FF_X71_Y43_N31
\Bx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[2]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(2));

-- Location: LCCOMB_X70_Y43_N14
\Bx|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~19_combout\ = (\Bx|R\(2) & ((\Bx|R[1]~39_combout\) # ((\Bx|R\(4) & \Bx|R[0]~38_combout\)))) # (!\Bx|R\(2) & (\Bx|R\(4) & (\Bx|R[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(2),
	datab => \Bx|R\(4),
	datac => \Bx|R[0]~38_combout\,
	datad => \Bx|R[1]~39_combout\,
	combout => \Bx|R[3]~19_combout\);

-- Location: IOIBUF_X78_Y33_N15
\Fx[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(3),
	o => \Fx[3]~input_o\);

-- Location: LCCOMB_X77_Y43_N18
\BUS[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~10_combout\ = (\_~2_combout\ & ((\Fx[3]~input_o\) # ((\_~3_combout\ & \Bx|R\(3))))) # (!\_~2_combout\ & (\_~3_combout\ & (\Bx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \_~3_combout\,
	datac => \Bx|R\(3),
	datad => \Fx[3]~input_o\,
	combout => \BUS[3]~10_combout\);

-- Location: LCCOMB_X77_Y43_N8
\BUS[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~11_combout\ = (\BUS[3]~9_combout\) # (\BUS[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[3]~9_combout\,
	datad => \BUS[3]~10_combout\,
	combout => \BUS[3]~11_combout\);

-- Location: FF_X76_Y43_N5
\alu_y|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(3));

-- Location: FF_X76_Y43_N23
\alu_x|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(3));

-- Location: LCCOMB_X76_Y43_N22
\op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~6_combout\ = (\alu_y|R\(3) & ((\alu_x|R\(3) & (\op_1~5\ & VCC)) # (!\alu_x|R\(3) & (!\op_1~5\)))) # (!\alu_y|R\(3) & ((\alu_x|R\(3) & (!\op_1~5\)) # (!\alu_x|R\(3) & ((\op_1~5\) # (GND)))))
-- \op_1~7\ = CARRY((\alu_y|R\(3) & (!\alu_x|R\(3) & !\op_1~5\)) # (!\alu_y|R\(3) & ((!\op_1~5\) # (!\alu_x|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_y|R\(3),
	datab => \alu_x|R\(3),
	datad => VCC,
	cin => \op_1~5\,
	combout => \op_1~6_combout\,
	cout => \op_1~7\);

-- Location: LCCOMB_X76_Y43_N6
\op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~6_combout\ = (\op_1~6_combout\ & (!\op_2~5\)) # (!\op_1~6_combout\ & ((\op_2~5\) # (GND)))
-- \op_2~7\ = CARRY((!\op_2~5\) # (!\op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_1~6_combout\,
	datad => VCC,
	cin => \op_2~5\,
	combout => \op_2~6_combout\,
	cout => \op_2~7\);

-- Location: LCCOMB_X77_Y43_N24
\_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~13_combout\ = (\BUS[3]~10_combout\) # ((\op_2~6_combout\) # (\BUS[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[3]~10_combout\,
	datac => \op_2~6_combout\,
	datad => \BUS[3]~9_combout\,
	combout => \_~13_combout\);

-- Location: FF_X77_Y43_N25
\alu_r|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~13_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(3));

-- Location: LCCOMB_X77_Y43_N20
\BUS[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~9_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & ((\alu_r|R\(3)))) # (!\SelBus[3]~input_o\ & (\Ax|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \SelBus[3]~input_o\,
	datac => \Ax|R\(3),
	datad => \alu_r|R\(3),
	combout => \BUS[3]~9_combout\);

-- Location: LCCOMB_X72_Y43_N14
\Bx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~4_combout\ = (\Bx|R\(3) & (\Bx|op_1~3\ $ (GND))) # (!\Bx|R\(3) & (!\Bx|op_1~3\ & VCC))
-- \Bx|op_1~5\ = CARRY((\Bx|R\(3) & !\Bx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(3),
	datad => VCC,
	cin => \Bx|op_1~3\,
	combout => \Bx|op_1~4_combout\,
	cout => \Bx|op_1~5\);

-- Location: LCCOMB_X71_Y43_N10
\Bx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~6_combout\ = (\Bx|R\(3) & (\Bx|op_2~5\ & VCC)) # (!\Bx|R\(3) & (!\Bx|op_2~5\))
-- \Bx|op_2~7\ = CARRY((!\Bx|R\(3) & !\Bx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(3),
	datad => VCC,
	cin => \Bx|op_2~5\,
	combout => \Bx|op_2~6_combout\,
	cout => \Bx|op_2~7\);

-- Location: LCCOMB_X72_Y43_N6
\Bx|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~18_combout\ = (\Bx|_~1_combout\ & ((\Bx|op_2~6_combout\) # ((\Bx|_~0_combout\ & \Bx|op_1~4_combout\)))) # (!\Bx|_~1_combout\ & (\Bx|_~0_combout\ & (\Bx|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|_~0_combout\,
	datac => \Bx|op_1~4_combout\,
	datad => \Bx|op_2~6_combout\,
	combout => \Bx|R[3]~18_combout\);

-- Location: LCCOMB_X72_Y43_N26
\Bx|R[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~40_combout\ = (\Bx|R[3]~18_combout\) # ((\Bx|_~3_combout\ & ((\BUS[3]~9_combout\) # (\BUS[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[3]~9_combout\,
	datab => \BUS[3]~10_combout\,
	datac => \Bx|_~3_combout\,
	datad => \Bx|R[3]~18_combout\,
	combout => \Bx|R[3]~40_combout\);

-- Location: LCCOMB_X71_Y43_N20
\Bx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~20_combout\ = (\Bx|R[3]~19_combout\) # ((\Bx|R[3]~40_combout\) # ((\Bx|R[0]~6_combout\ & \Bx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[3]~19_combout\,
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|R\(3),
	datad => \Bx|R[3]~40_combout\,
	combout => \Bx|R[3]~20_combout\);

-- Location: FF_X71_Y43_N21
\Bx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[3]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(3));

-- Location: LCCOMB_X74_Y43_N8
\Bx|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~22_combout\ = (\Bx|R[0]~38_combout\ & ((\Bx|R\(5)) # ((\Bx|R[1]~39_combout\ & \Bx|R\(3))))) # (!\Bx|R[0]~38_combout\ & (\Bx|R[1]~39_combout\ & (\Bx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[0]~38_combout\,
	datab => \Bx|R[1]~39_combout\,
	datac => \Bx|R\(3),
	datad => \Bx|R\(5),
	combout => \Bx|R[4]~22_combout\);

-- Location: FF_X76_Y43_N25
\alu_x|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[4]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(4));

-- Location: FF_X76_Y43_N15
\alu_y|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[4]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(4));

-- Location: LCCOMB_X76_Y43_N24
\op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~8_combout\ = ((\alu_x|R\(4) $ (\alu_y|R\(4) $ (!\op_1~7\)))) # (GND)
-- \op_1~9\ = CARRY((\alu_x|R\(4) & ((\alu_y|R\(4)) # (!\op_1~7\))) # (!\alu_x|R\(4) & (\alu_y|R\(4) & !\op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(4),
	datab => \alu_y|R\(4),
	datad => VCC,
	cin => \op_1~7\,
	combout => \op_1~8_combout\,
	cout => \op_1~9\);

-- Location: LCCOMB_X76_Y43_N8
\op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~8_combout\ = (\op_1~8_combout\ & (\op_2~7\ $ (GND))) # (!\op_1~8_combout\ & (!\op_2~7\ & VCC))
-- \op_2~9\ = CARRY((\op_1~8_combout\ & !\op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op_1~8_combout\,
	datad => VCC,
	cin => \op_2~7\,
	combout => \op_2~8_combout\,
	cout => \op_2~9\);

-- Location: IOIBUF_X66_Y54_N22
\Fx[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(4),
	o => \Fx[4]~input_o\);

-- Location: LCCOMB_X74_Y43_N14
\BUS[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~13_combout\ = (\_~2_combout\ & ((\Fx[4]~input_o\) # ((\_~3_combout\ & \Bx|R\(4))))) # (!\_~2_combout\ & (((\_~3_combout\ & \Bx|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \Fx[4]~input_o\,
	datac => \_~3_combout\,
	datad => \Bx|R\(4),
	combout => \BUS[4]~13_combout\);

-- Location: LCCOMB_X75_Y43_N0
\_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~14_combout\ = (\BUS[4]~12_combout\) # ((\op_2~8_combout\) # (\BUS[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[4]~12_combout\,
	datac => \op_2~8_combout\,
	datad => \BUS[4]~13_combout\,
	combout => \_~14_combout\);

-- Location: FF_X75_Y43_N1
\alu_r|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(4));

-- Location: LCCOMB_X75_Y43_N22
\BUS[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~12_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(4))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \alu_r|R\(4),
	datac => \Ax|R\(4),
	datad => \SelBus[3]~input_o\,
	combout => \BUS[4]~12_combout\);

-- Location: LCCOMB_X75_Y43_N2
\BUS[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~14_combout\ = (\BUS[4]~12_combout\) # (\BUS[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[4]~12_combout\,
	datad => \BUS[4]~13_combout\,
	combout => \BUS[4]~14_combout\);

-- Location: LCCOMB_X72_Y43_N16
\Bx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~6_combout\ = (\Bx|R\(4) & (!\Bx|op_1~5\)) # (!\Bx|R\(4) & ((\Bx|op_1~5\) # (GND)))
-- \Bx|op_1~7\ = CARRY((!\Bx|op_1~5\) # (!\Bx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(4),
	datad => VCC,
	cin => \Bx|op_1~5\,
	combout => \Bx|op_1~6_combout\,
	cout => \Bx|op_1~7\);

-- Location: LCCOMB_X71_Y43_N12
\Bx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~8_combout\ = (\Bx|R\(4) & ((GND) # (!\Bx|op_2~7\))) # (!\Bx|R\(4) & (\Bx|op_2~7\ $ (GND)))
-- \Bx|op_2~9\ = CARRY((\Bx|R\(4)) # (!\Bx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(4),
	datad => VCC,
	cin => \Bx|op_2~7\,
	combout => \Bx|op_2~8_combout\,
	cout => \Bx|op_2~9\);

-- Location: LCCOMB_X72_Y43_N28
\Bx|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~21_combout\ = (\Bx|_~0_combout\ & ((\Bx|op_1~6_combout\) # ((\Bx|_~1_combout\ & \Bx|op_2~8_combout\)))) # (!\Bx|_~0_combout\ & (((\Bx|_~1_combout\ & \Bx|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~0_combout\,
	datab => \Bx|op_1~6_combout\,
	datac => \Bx|_~1_combout\,
	datad => \Bx|op_2~8_combout\,
	combout => \Bx|R[4]~21_combout\);

-- Location: LCCOMB_X72_Y43_N0
\Bx|R[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~23_combout\ = (\Bx|R[4]~22_combout\) # ((\Bx|R[4]~21_combout\) # ((\Bx|_~3_combout\ & \BUS[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[4]~22_combout\,
	datab => \Bx|_~3_combout\,
	datac => \BUS[4]~14_combout\,
	datad => \Bx|R[4]~21_combout\,
	combout => \Bx|R[4]~23_combout\);

-- Location: LCCOMB_X72_Y43_N30
\Bx|R[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~24_combout\ = (\Bx|R[4]~23_combout\) # ((\Bx|R[0]~6_combout\ & \Bx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|R\(4),
	datad => \Bx|R[4]~23_combout\,
	combout => \Bx|R[4]~24_combout\);

-- Location: FF_X72_Y43_N31
\Bx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[4]~24_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(4));

-- Location: LCCOMB_X70_Y43_N0
\Bx|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~26_combout\ = (\Bx|R[1]~39_combout\ & ((\Bx|R\(4)) # ((\Bx|R[0]~38_combout\ & \Bx|R\(6))))) # (!\Bx|R[1]~39_combout\ & (((\Bx|R[0]~38_combout\ & \Bx|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~39_combout\,
	datab => \Bx|R\(4),
	datac => \Bx|R[0]~38_combout\,
	datad => \Bx|R\(6),
	combout => \Bx|R[5]~26_combout\);

-- Location: LCCOMB_X71_Y43_N14
\Bx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~10_combout\ = (\Bx|R\(5) & (\Bx|op_2~9\ & VCC)) # (!\Bx|R\(5) & (!\Bx|op_2~9\))
-- \Bx|op_2~11\ = CARRY((!\Bx|R\(5) & !\Bx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(5),
	datad => VCC,
	cin => \Bx|op_2~9\,
	combout => \Bx|op_2~10_combout\,
	cout => \Bx|op_2~11\);

-- Location: LCCOMB_X72_Y43_N18
\Bx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~8_combout\ = (\Bx|R\(5) & (\Bx|op_1~7\ $ (GND))) # (!\Bx|R\(5) & (!\Bx|op_1~7\ & VCC))
-- \Bx|op_1~9\ = CARRY((\Bx|R\(5) & !\Bx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(5),
	datad => VCC,
	cin => \Bx|op_1~7\,
	combout => \Bx|op_1~8_combout\,
	cout => \Bx|op_1~9\);

-- Location: LCCOMB_X72_Y43_N2
\Bx|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~25_combout\ = (\Bx|op_2~10_combout\ & ((\Bx|_~1_combout\) # ((\Bx|_~0_combout\ & \Bx|op_1~8_combout\)))) # (!\Bx|op_2~10_combout\ & (\Bx|_~0_combout\ & ((\Bx|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_2~10_combout\,
	datab => \Bx|_~0_combout\,
	datac => \Bx|_~1_combout\,
	datad => \Bx|op_1~8_combout\,
	combout => \Bx|R[5]~25_combout\);

-- Location: LCCOMB_X72_Y43_N24
\Bx|R[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~27_combout\ = (\Bx|R[5]~26_combout\) # ((\Bx|R[5]~25_combout\) # ((\Bx|_~3_combout\ & \BUS[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[5]~26_combout\,
	datab => \Bx|_~3_combout\,
	datac => \BUS[5]~17_combout\,
	datad => \Bx|R[5]~25_combout\,
	combout => \Bx|R[5]~27_combout\);

-- Location: LCCOMB_X72_Y43_N8
\Bx|R[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~28_combout\ = (\Bx|R[5]~27_combout\) # ((\Bx|R[0]~6_combout\ & \Bx|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|R\(5),
	datad => \Bx|R[5]~27_combout\,
	combout => \Bx|R[5]~28_combout\);

-- Location: FF_X72_Y43_N9
\Bx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[5]~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(5));

-- Location: LCCOMB_X77_Y43_N0
\BUS[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~16_combout\ = (\Fx[5]~input_o\ & ((\_~2_combout\) # ((\_~3_combout\ & \Bx|R\(5))))) # (!\Fx[5]~input_o\ & (\_~3_combout\ & ((\Bx|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[5]~input_o\,
	datab => \_~3_combout\,
	datac => \_~2_combout\,
	datad => \Bx|R\(5),
	combout => \BUS[5]~16_combout\);

-- Location: FF_X76_Y43_N27
\alu_x|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[5]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(5));

-- Location: LCCOMB_X76_Y43_N26
\op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~10_combout\ = (\alu_y|R\(5) & ((\alu_x|R\(5) & (\op_1~9\ & VCC)) # (!\alu_x|R\(5) & (!\op_1~9\)))) # (!\alu_y|R\(5) & ((\alu_x|R\(5) & (!\op_1~9\)) # (!\alu_x|R\(5) & ((\op_1~9\) # (GND)))))
-- \op_1~11\ = CARRY((\alu_y|R\(5) & (!\alu_x|R\(5) & !\op_1~9\)) # (!\alu_y|R\(5) & ((!\op_1~9\) # (!\alu_x|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_y|R\(5),
	datab => \alu_x|R\(5),
	datad => VCC,
	cin => \op_1~9\,
	combout => \op_1~10_combout\,
	cout => \op_1~11\);

-- Location: LCCOMB_X76_Y43_N10
\op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~10_combout\ = (\op_1~10_combout\ & (!\op_2~9\)) # (!\op_1~10_combout\ & ((\op_2~9\) # (GND)))
-- \op_2~11\ = CARRY((!\op_2~9\) # (!\op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op_1~10_combout\,
	datad => VCC,
	cin => \op_2~9\,
	combout => \op_2~10_combout\,
	cout => \op_2~11\);

-- Location: LCCOMB_X77_Y43_N2
\_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~15_combout\ = (\BUS[5]~16_combout\) # ((\BUS[5]~15_combout\) # (\op_2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[5]~16_combout\,
	datac => \BUS[5]~15_combout\,
	datad => \op_2~10_combout\,
	combout => \_~15_combout\);

-- Location: FF_X77_Y43_N3
\alu_r|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(5));

-- Location: LCCOMB_X77_Y43_N14
\BUS[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~15_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & ((\alu_r|R\(5)))) # (!\SelBus[3]~input_o\ & (\Ax|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~0_combout\,
	datab => \SelBus[3]~input_o\,
	datac => \Ax|R\(5),
	datad => \alu_r|R\(5),
	combout => \BUS[5]~15_combout\);

-- Location: LCCOMB_X77_Y43_N30
\BUS[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~17_combout\ = (\BUS[5]~16_combout\) # (\BUS[5]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[5]~16_combout\,
	datac => \BUS[5]~15_combout\,
	combout => \BUS[5]~17_combout\);

-- Location: FF_X77_Y43_N5
\alu_y|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[5]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(5));

-- Location: LCCOMB_X76_Y43_N28
\op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~12_combout\ = ((\alu_x|R\(6) $ (\alu_y|R\(6) $ (!\op_1~11\)))) # (GND)
-- \op_1~13\ = CARRY((\alu_x|R\(6) & ((\alu_y|R\(6)) # (!\op_1~11\))) # (!\alu_x|R\(6) & (\alu_y|R\(6) & !\op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(6),
	datab => \alu_y|R\(6),
	datad => VCC,
	cin => \op_1~11\,
	combout => \op_1~12_combout\,
	cout => \op_1~13\);

-- Location: LCCOMB_X76_Y43_N12
\op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~12_combout\ = (\op_1~12_combout\ & (\op_2~11\ $ (GND))) # (!\op_1~12_combout\ & (!\op_2~11\ & VCC))
-- \op_2~13\ = CARRY((\op_1~12_combout\ & !\op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op_1~12_combout\,
	datad => VCC,
	cin => \op_2~11\,
	combout => \op_2~12_combout\,
	cout => \op_2~13\);

-- Location: LCCOMB_X75_Y43_N18
\_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~16_combout\ = (\BUS[6]~19_combout\) # ((\op_2~12_combout\) # (\BUS[6]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[6]~19_combout\,
	datac => \op_2~12_combout\,
	datad => \BUS[6]~18_combout\,
	combout => \_~16_combout\);

-- Location: FF_X75_Y43_N19
\alu_r|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~16_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(6));

-- Location: LCCOMB_X75_Y43_N28
\BUS[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~18_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(6))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \alu_r|R\(6),
	datac => \_~0_combout\,
	datad => \Ax|R\(6),
	combout => \BUS[6]~18_combout\);

-- Location: LCCOMB_X75_Y43_N10
\BUS[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~20_combout\ = (\BUS[6]~19_combout\) # (\BUS[6]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[6]~19_combout\,
	datad => \BUS[6]~18_combout\,
	combout => \BUS[6]~20_combout\);

-- Location: LCCOMB_X74_Y43_N30
\Bx|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~29_combout\ = (\Bx|_~3_combout\ & ((\BUS[6]~20_combout\) # ((\Bx|R[1]~39_combout\ & \Bx|R\(5))))) # (!\Bx|_~3_combout\ & (\Bx|R[1]~39_combout\ & ((\Bx|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~3_combout\,
	datab => \Bx|R[1]~39_combout\,
	datac => \BUS[6]~20_combout\,
	datad => \Bx|R\(5),
	combout => \Bx|R[6]~29_combout\);

-- Location: LCCOMB_X71_Y43_N16
\Bx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~12_combout\ = (\Bx|R\(6) & ((GND) # (!\Bx|op_2~11\))) # (!\Bx|R\(6) & (\Bx|op_2~11\ $ (GND)))
-- \Bx|op_2~13\ = CARRY((\Bx|R\(6)) # (!\Bx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(6),
	datad => VCC,
	cin => \Bx|op_2~11\,
	combout => \Bx|op_2~12_combout\,
	cout => \Bx|op_2~13\);

-- Location: LCCOMB_X74_Y43_N28
\Bx|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~30_combout\ = (\Bx|R[0]~38_combout\ & ((\Bx|R\(7)) # ((\Bx|R[0]~6_combout\ & \Bx|R\(6))))) # (!\Bx|R[0]~38_combout\ & (((\Bx|R[0]~6_combout\ & \Bx|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[0]~38_combout\,
	datab => \Bx|R\(7),
	datac => \Bx|R[0]~6_combout\,
	datad => \Bx|R\(6),
	combout => \Bx|R[6]~30_combout\);

-- Location: LCCOMB_X72_Y43_N20
\Bx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~10_combout\ = (\Bx|R\(6) & (!\Bx|op_1~9\)) # (!\Bx|R\(6) & ((\Bx|op_1~9\) # (GND)))
-- \Bx|op_1~11\ = CARRY((!\Bx|op_1~9\) # (!\Bx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(6),
	datad => VCC,
	cin => \Bx|op_1~9\,
	combout => \Bx|op_1~10_combout\,
	cout => \Bx|op_1~11\);

-- Location: LCCOMB_X74_Y43_N2
\Bx|R[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~31_combout\ = (\Bx|R[6]~30_combout\) # ((\Bx|_~0_combout\ & \Bx|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R[6]~30_combout\,
	datac => \Bx|_~0_combout\,
	datad => \Bx|op_1~10_combout\,
	combout => \Bx|R[6]~31_combout\);

-- Location: LCCOMB_X74_Y43_N24
\Bx|R[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~32_combout\ = (\Bx|R[6]~29_combout\) # ((\Bx|R[6]~31_combout\) # ((\Bx|_~1_combout\ & \Bx|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|R[6]~29_combout\,
	datac => \Bx|op_2~12_combout\,
	datad => \Bx|R[6]~31_combout\,
	combout => \Bx|R[6]~32_combout\);

-- Location: FF_X74_Y43_N25
\Bx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[6]~32_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(6));

-- Location: LCCOMB_X71_Y43_N18
\Bx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~14_combout\ = \Bx|op_2~13\ $ (!\Bx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Bx|R\(7),
	cin => \Bx|op_2~13\,
	combout => \Bx|op_2~14_combout\);

-- Location: LCCOMB_X70_Y43_N22
\Bx|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~33_combout\ = (\Bx|R\(0) & (\Cmd[2]~input_o\ & (\_~6_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(0),
	datab => \Cmd[2]~input_o\,
	datac => \_~6_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|R[7]~33_combout\);

-- Location: FF_X76_Y43_N31
\alu_x|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[7]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(7));

-- Location: FF_X75_Y43_N3
\alu_y|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[7]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(7));

-- Location: LCCOMB_X76_Y43_N30
\op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_1~14_combout\ = \alu_x|R\(7) $ (\op_1~13\ $ (\alu_y|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(7),
	datad => \alu_y|R\(7),
	cin => \op_1~13\,
	combout => \op_1~14_combout\);

-- Location: LCCOMB_X76_Y43_N14
\op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \op_2~14_combout\ = \op_2~13\ $ (\op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \op_1~14_combout\,
	cin => \op_2~13\,
	combout => \op_2~14_combout\);

-- Location: IOIBUF_X74_Y54_N15
\Fx[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Fx(7),
	o => \Fx[7]~input_o\);

-- Location: LCCOMB_X74_Y43_N18
\BUS[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~22_combout\ = (\_~2_combout\ & ((\Fx[7]~input_o\) # ((\_~3_combout\ & \Bx|R\(7))))) # (!\_~2_combout\ & (((\_~3_combout\ & \Bx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~2_combout\,
	datab => \Fx[7]~input_o\,
	datac => \_~3_combout\,
	datad => \Bx|R\(7),
	combout => \BUS[7]~22_combout\);

-- Location: LCCOMB_X75_Y43_N4
\_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~17_combout\ = (\BUS[7]~21_combout\) # ((\op_2~14_combout\) # (\BUS[7]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[7]~21_combout\,
	datac => \op_2~14_combout\,
	datad => \BUS[7]~22_combout\,
	combout => \_~17_combout\);

-- Location: FF_X75_Y43_N5
\alu_r|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(7));

-- Location: LCCOMB_X75_Y43_N8
\BUS[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~21_combout\ = (\_~0_combout\ & ((\SelBus[3]~input_o\ & (\alu_r|R\(7))) # (!\SelBus[3]~input_o\ & ((\Ax|R\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~input_o\,
	datab => \alu_r|R\(7),
	datac => \_~0_combout\,
	datad => \Ax|R\(7),
	combout => \BUS[7]~21_combout\);

-- Location: LCCOMB_X75_Y43_N30
\BUS[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~23_combout\ = (\BUS[7]~21_combout\) # (\BUS[7]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[7]~21_combout\,
	datad => \BUS[7]~22_combout\,
	combout => \BUS[7]~23_combout\);

-- Location: LCCOMB_X70_Y43_N4
\Bx|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~34_combout\ = (\Bx|R[7]~33_combout\ & ((\Cmd[0]~input_o\) # ((\Bx|_~3_combout\ & \BUS[7]~23_combout\)))) # (!\Bx|R[7]~33_combout\ & (((\Bx|_~3_combout\ & \BUS[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[7]~33_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Bx|_~3_combout\,
	datad => \BUS[7]~23_combout\,
	combout => \Bx|R[7]~34_combout\);

-- Location: LCCOMB_X70_Y43_N26
\Bx|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~35_combout\ = (\Bx|R[1]~39_combout\ & ((\Bx|R\(6)) # ((\Bx|R\(7) & \Bx|R[0]~6_combout\)))) # (!\Bx|R[1]~39_combout\ & (\Bx|R\(7) & (\Bx|R[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~39_combout\,
	datab => \Bx|R\(7),
	datac => \Bx|R[0]~6_combout\,
	datad => \Bx|R\(6),
	combout => \Bx|R[7]~35_combout\);

-- Location: LCCOMB_X72_Y43_N22
\Bx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~12_combout\ = \Bx|op_1~11\ $ (!\Bx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Bx|R\(7),
	cin => \Bx|op_1~11\,
	combout => \Bx|op_1~12_combout\);

-- Location: LCCOMB_X70_Y43_N28
\Bx|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~36_combout\ = (\Bx|R[7]~35_combout\) # ((\Bx|_~0_combout\ & \Bx|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~0_combout\,
	datac => \Bx|R[7]~35_combout\,
	datad => \Bx|op_1~12_combout\,
	combout => \Bx|R[7]~36_combout\);

-- Location: LCCOMB_X70_Y43_N16
\Bx|R[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~37_combout\ = (\Bx|R[7]~34_combout\) # ((\Bx|R[7]~36_combout\) # ((\Bx|_~1_combout\ & \Bx|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|op_2~14_combout\,
	datac => \Bx|R[7]~34_combout\,
	datad => \Bx|R[7]~36_combout\,
	combout => \Bx|R[7]~37_combout\);

-- Location: FF_X70_Y43_N17
\Bx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[7]~37_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(7));

-- Location: LCCOMB_X70_Y43_N24
\Bx|R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~8_combout\ = (\Bx|_~2_combout\ & ((\Bx|R\(7)) # ((\Bx|R[0]~38_combout\ & \Bx|R\(1))))) # (!\Bx|_~2_combout\ & (\Bx|R[0]~38_combout\ & (\Bx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~2_combout\,
	datab => \Bx|R[0]~38_combout\,
	datac => \Bx|R\(1),
	datad => \Bx|R\(7),
	combout => \Bx|R[0]~8_combout\);

-- Location: LCCOMB_X70_Y43_N20
\Bx|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~7_combout\ = (\Bx|R\(0) & (((\Bx|R[0]~6_combout\)))) # (!\Bx|R\(0) & ((\Bx|_~0_combout\) # ((\Bx|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~0_combout\,
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|_~1_combout\,
	datad => \Bx|R\(0),
	combout => \Bx|R[0]~7_combout\);

-- Location: LCCOMB_X72_Y43_N4
\Bx|R[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~9_combout\ = (\Bx|R[0]~8_combout\) # ((\Bx|R[0]~7_combout\) # ((\Bx|_~3_combout\ & \BUS[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[0]~8_combout\,
	datab => \Bx|_~3_combout\,
	datac => \Bx|R[0]~7_combout\,
	datad => \BUS[0]~2_combout\,
	combout => \Bx|R[0]~9_combout\);

-- Location: FF_X72_Y43_N5
\Bx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[0]~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(0));

-- Location: LCCOMB_X70_Y43_N8
\Bx|R[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~11_combout\ = (\Bx|R\(0) & ((\Bx|R[1]~39_combout\) # ((\Bx|R[0]~38_combout\ & \Bx|R\(2))))) # (!\Bx|R\(0) & (\Bx|R[0]~38_combout\ & (\Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(0),
	datab => \Bx|R[0]~38_combout\,
	datac => \Bx|R\(2),
	datad => \Bx|R[1]~39_combout\,
	combout => \Bx|R[1]~11_combout\);

-- Location: LCCOMB_X71_Y43_N2
\Bx|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~10_combout\ = (\Bx|_~1_combout\ & ((\Bx|op_2~2_combout\) # ((\Bx|_~0_combout\ & \Bx|op_1~0_combout\)))) # (!\Bx|_~1_combout\ & (\Bx|_~0_combout\ & (\Bx|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|_~0_combout\,
	datac => \Bx|op_1~0_combout\,
	datad => \Bx|op_2~2_combout\,
	combout => \Bx|R[1]~10_combout\);

-- Location: LCCOMB_X71_Y43_N28
\Bx|R[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~12_combout\ = (\Bx|R[1]~11_combout\) # ((\Bx|R[1]~10_combout\) # ((\Bx|_~3_combout\ & \BUS[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~11_combout\,
	datab => \Bx|_~3_combout\,
	datac => \BUS[1]~5_combout\,
	datad => \Bx|R[1]~10_combout\,
	combout => \Bx|R[1]~12_combout\);

-- Location: LCCOMB_X71_Y43_N24
\Bx|R[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~13_combout\ = (\Bx|R[1]~12_combout\) # ((\Bx|R[0]~6_combout\ & \Bx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R[0]~6_combout\,
	datac => \Bx|R\(1),
	datad => \Bx|R[1]~12_combout\,
	combout => \Bx|R[1]~13_combout\);

-- Location: FF_X71_Y43_N25
\Bx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[1]~13_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(1));

-- Location: LCCOMB_X74_Y43_N10
\BUS[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~4_combout\ = (\_~3_combout\ & ((\Bx|R\(1)) # ((\Fx[1]~input_o\ & \_~2_combout\)))) # (!\_~3_combout\ & (\Fx[1]~input_o\ & ((\_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~3_combout\,
	datab => \Fx[1]~input_o\,
	datac => \Bx|R\(1),
	datad => \_~2_combout\,
	combout => \BUS[1]~4_combout\);

-- Location: LCCOMB_X75_Y42_N0
\Ax|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~0_combout\ = (\Ax|R\(1) & (\Ax|R\(0) $ (VCC))) # (!\Ax|R\(1) & (\Ax|R\(0) & VCC))
-- \Ax|op_1~1\ = CARRY((\Ax|R\(1) & \Ax|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(1),
	datab => \Ax|R\(0),
	datad => VCC,
	combout => \Ax|op_1~0_combout\,
	cout => \Ax|op_1~1\);

-- Location: LCCOMB_X76_Y42_N8
\Ax|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~1_cout\ = CARRY(\Ax|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(0),
	datad => VCC,
	cout => \Ax|op_2~1_cout\);

-- Location: LCCOMB_X76_Y42_N10
\Ax|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~2_combout\ = (\Ax|R\(1) & (\Ax|op_2~1_cout\ & VCC)) # (!\Ax|R\(1) & (!\Ax|op_2~1_cout\))
-- \Ax|op_2~3\ = CARRY((!\Ax|R\(1) & !\Ax|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(1),
	datad => VCC,
	cin => \Ax|op_2~1_cout\,
	combout => \Ax|op_2~2_combout\,
	cout => \Ax|op_2~3\);

-- Location: LCCOMB_X75_Y43_N24
\Ax|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~8_combout\ = (\Ax|_~1_combout\ & ((\Ax|op_2~2_combout\) # ((\Ax|op_1~0_combout\ & \Ax|_~0_combout\)))) # (!\Ax|_~1_combout\ & (\Ax|op_1~0_combout\ & (\Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|op_1~0_combout\,
	datac => \Ax|_~0_combout\,
	datad => \Ax|op_2~2_combout\,
	combout => \Ax|R[1]~8_combout\);

-- Location: LCCOMB_X75_Y43_N6
\Ax|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~9_combout\ = (\Ax|R[1]~8_combout\) # ((\Ax|_~3_combout\ & ((\BUS[1]~4_combout\) # (\BUS[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[1]~4_combout\,
	datab => \BUS[1]~3_combout\,
	datac => \Ax|_~3_combout\,
	datad => \Ax|R[1]~8_combout\,
	combout => \Ax|R[1]~9_combout\);

-- Location: LCCOMB_X75_Y43_N20
\Ax|R[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~11_combout\ = (\Ax|R[1]~10_combout\) # ((\Ax|R[1]~9_combout\) # ((\Ax|R[0]~4_combout\ & \Ax|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[1]~10_combout\,
	datab => \Ax|R[0]~4_combout\,
	datac => \Ax|R\(1),
	datad => \Ax|R[1]~9_combout\,
	combout => \Ax|R[1]~11_combout\);

-- Location: FF_X75_Y43_N21
\Ax|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[1]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(1));

-- Location: LCCOMB_X76_Y42_N24
\Ax|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~14_combout\ = (\Ax|R\(3) & ((\Ax|R[0]~37_combout\) # ((\Ax|R\(1) & \Ax|R[1]~38_combout\)))) # (!\Ax|R\(3) & (((\Ax|R\(1) & \Ax|R[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(3),
	datab => \Ax|R[0]~37_combout\,
	datac => \Ax|R\(1),
	datad => \Ax|R[1]~38_combout\,
	combout => \Ax|R[2]~14_combout\);

-- Location: LCCOMB_X76_Y42_N12
\Ax|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~4_combout\ = (\Ax|R\(2) & ((GND) # (!\Ax|op_2~3\))) # (!\Ax|R\(2) & (\Ax|op_2~3\ $ (GND)))
-- \Ax|op_2~5\ = CARRY((\Ax|R\(2)) # (!\Ax|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(2),
	datad => VCC,
	cin => \Ax|op_2~3\,
	combout => \Ax|op_2~4_combout\,
	cout => \Ax|op_2~5\);

-- Location: LCCOMB_X75_Y42_N2
\Ax|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~2_combout\ = (\Ax|R\(2) & (!\Ax|op_1~1\)) # (!\Ax|R\(2) & ((\Ax|op_1~1\) # (GND)))
-- \Ax|op_1~3\ = CARRY((!\Ax|op_1~1\) # (!\Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(2),
	datad => VCC,
	cin => \Ax|op_1~1\,
	combout => \Ax|op_1~2_combout\,
	cout => \Ax|op_1~3\);

-- Location: LCCOMB_X76_Y42_N28
\Ax|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~12_combout\ = (\Ax|op_2~4_combout\ & ((\Ax|_~1_combout\) # ((\Ax|_~0_combout\ & \Ax|op_1~2_combout\)))) # (!\Ax|op_2~4_combout\ & (\Ax|_~0_combout\ & ((\Ax|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_2~4_combout\,
	datab => \Ax|_~0_combout\,
	datac => \Ax|_~1_combout\,
	datad => \Ax|op_1~2_combout\,
	combout => \Ax|R[2]~12_combout\);

-- Location: LCCOMB_X76_Y42_N6
\Ax|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~13_combout\ = (\Ax|R[2]~12_combout\) # ((\Ax|_~3_combout\ & ((\BUS[2]~7_combout\) # (\BUS[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datab => \BUS[2]~7_combout\,
	datac => \BUS[2]~6_combout\,
	datad => \Ax|R[2]~12_combout\,
	combout => \Ax|R[2]~13_combout\);

-- Location: LCCOMB_X76_Y42_N0
\Ax|R[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~15_combout\ = (\Ax|R[2]~14_combout\) # ((\Ax|R[2]~13_combout\) # ((\Ax|R[0]~4_combout\ & \Ax|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~4_combout\,
	datab => \Ax|R[2]~14_combout\,
	datac => \Ax|R\(2),
	datad => \Ax|R[2]~13_combout\,
	combout => \Ax|R[2]~15_combout\);

-- Location: FF_X76_Y42_N1
\Ax|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[2]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(2));

-- Location: LCCOMB_X76_Y42_N4
\Ax|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~17_combout\ = (\Ax|R[0]~37_combout\ & ((\Ax|R\(4)) # ((\Ax|R\(2) & \Ax|R[1]~38_combout\)))) # (!\Ax|R[0]~37_combout\ & (\Ax|R\(2) & ((\Ax|R[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~37_combout\,
	datab => \Ax|R\(2),
	datac => \Ax|R\(4),
	datad => \Ax|R[1]~38_combout\,
	combout => \Ax|R[3]~17_combout\);

-- Location: LCCOMB_X76_Y42_N14
\Ax|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~6_combout\ = (\Ax|R\(3) & (\Ax|op_2~5\ & VCC)) # (!\Ax|R\(3) & (!\Ax|op_2~5\))
-- \Ax|op_2~7\ = CARRY((!\Ax|R\(3) & !\Ax|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(3),
	datad => VCC,
	cin => \Ax|op_2~5\,
	combout => \Ax|op_2~6_combout\,
	cout => \Ax|op_2~7\);

-- Location: LCCOMB_X75_Y42_N4
\Ax|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~4_combout\ = (\Ax|R\(3) & (\Ax|op_1~3\ $ (GND))) # (!\Ax|R\(3) & (!\Ax|op_1~3\ & VCC))
-- \Ax|op_1~5\ = CARRY((\Ax|R\(3) & !\Ax|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(3),
	datad => VCC,
	cin => \Ax|op_1~3\,
	combout => \Ax|op_1~4_combout\,
	cout => \Ax|op_1~5\);

-- Location: LCCOMB_X76_Y42_N26
\Ax|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~16_combout\ = (\Ax|_~1_combout\ & ((\Ax|op_2~6_combout\) # ((\Ax|op_1~4_combout\ & \Ax|_~0_combout\)))) # (!\Ax|_~1_combout\ & (((\Ax|op_1~4_combout\ & \Ax|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|op_2~6_combout\,
	datac => \Ax|op_1~4_combout\,
	datad => \Ax|_~0_combout\,
	combout => \Ax|R[3]~16_combout\);

-- Location: LCCOMB_X76_Y42_N2
\Ax|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~18_combout\ = (\Ax|R[3]~17_combout\) # ((\Ax|R[3]~16_combout\) # ((\Ax|_~3_combout\ & \BUS[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datab => \Ax|R[3]~17_combout\,
	datac => \Ax|R[3]~16_combout\,
	datad => \BUS[3]~11_combout\,
	combout => \Ax|R[3]~18_combout\);

-- Location: LCCOMB_X76_Y42_N30
\Ax|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~19_combout\ = (\Ax|R[3]~18_combout\) # ((\Ax|R[0]~4_combout\ & \Ax|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~4_combout\,
	datac => \Ax|R\(3),
	datad => \Ax|R[3]~18_combout\,
	combout => \Ax|R[3]~19_combout\);

-- Location: FF_X76_Y42_N31
\Ax|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[3]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(3));

-- Location: LCCOMB_X74_Y42_N8
\Ax|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~22_combout\ = (\Ax|R[0]~37_combout\ & ((\Ax|R\(5)) # ((\Ax|R\(3) & \Ax|R[1]~38_combout\)))) # (!\Ax|R[0]~37_combout\ & (\Ax|R\(3) & ((\Ax|R[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~37_combout\,
	datab => \Ax|R\(3),
	datac => \Ax|R\(5),
	datad => \Ax|R[1]~38_combout\,
	combout => \Ax|R[4]~22_combout\);

-- Location: LCCOMB_X75_Y42_N6
\Ax|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~6_combout\ = (\Ax|R\(4) & (!\Ax|op_1~5\)) # (!\Ax|R\(4) & ((\Ax|op_1~5\) # (GND)))
-- \Ax|op_1~7\ = CARRY((!\Ax|op_1~5\) # (!\Ax|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(4),
	datad => VCC,
	cin => \Ax|op_1~5\,
	combout => \Ax|op_1~6_combout\,
	cout => \Ax|op_1~7\);

-- Location: LCCOMB_X76_Y42_N16
\Ax|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~8_combout\ = (\Ax|R\(4) & ((GND) # (!\Ax|op_2~7\))) # (!\Ax|R\(4) & (\Ax|op_2~7\ $ (GND)))
-- \Ax|op_2~9\ = CARRY((\Ax|R\(4)) # (!\Ax|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(4),
	datad => VCC,
	cin => \Ax|op_2~7\,
	combout => \Ax|op_2~8_combout\,
	cout => \Ax|op_2~9\);

-- Location: LCCOMB_X75_Y42_N18
\Ax|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~20_combout\ = (\Ax|op_1~6_combout\ & ((\Ax|_~0_combout\) # ((\Ax|_~1_combout\ & \Ax|op_2~8_combout\)))) # (!\Ax|op_1~6_combout\ & (((\Ax|_~1_combout\ & \Ax|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_1~6_combout\,
	datab => \Ax|_~0_combout\,
	datac => \Ax|_~1_combout\,
	datad => \Ax|op_2~8_combout\,
	combout => \Ax|R[4]~20_combout\);

-- Location: LCCOMB_X75_Y42_N24
\Ax|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~21_combout\ = (\Ax|R[4]~20_combout\) # ((\Ax|_~3_combout\ & ((\BUS[4]~13_combout\) # (\BUS[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[4]~13_combout\,
	datab => \BUS[4]~12_combout\,
	datac => \Ax|_~3_combout\,
	datad => \Ax|R[4]~20_combout\,
	combout => \Ax|R[4]~21_combout\);

-- Location: LCCOMB_X75_Y42_N16
\Ax|R[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~23_combout\ = (\Ax|R[4]~22_combout\) # ((\Ax|R[4]~21_combout\) # ((\Ax|R[0]~4_combout\ & \Ax|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[4]~22_combout\,
	datab => \Ax|R[0]~4_combout\,
	datac => \Ax|R\(4),
	datad => \Ax|R[4]~21_combout\,
	combout => \Ax|R[4]~23_combout\);

-- Location: FF_X75_Y42_N17
\Ax|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[4]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(4));

-- Location: LCCOMB_X74_Y42_N6
\Ax|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~25_combout\ = (\Ax|R[0]~37_combout\ & ((\Ax|R\(6)) # ((\Ax|R\(4) & \Ax|R[1]~38_combout\)))) # (!\Ax|R[0]~37_combout\ & (((\Ax|R\(4) & \Ax|R[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~37_combout\,
	datab => \Ax|R\(6),
	datac => \Ax|R\(4),
	datad => \Ax|R[1]~38_combout\,
	combout => \Ax|R[5]~25_combout\);

-- Location: LCCOMB_X75_Y42_N8
\Ax|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~8_combout\ = (\Ax|R\(5) & (\Ax|op_1~7\ $ (GND))) # (!\Ax|R\(5) & (!\Ax|op_1~7\ & VCC))
-- \Ax|op_1~9\ = CARRY((\Ax|R\(5) & !\Ax|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(5),
	datad => VCC,
	cin => \Ax|op_1~7\,
	combout => \Ax|op_1~8_combout\,
	cout => \Ax|op_1~9\);

-- Location: LCCOMB_X76_Y42_N18
\Ax|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~10_combout\ = (\Ax|R\(5) & (\Ax|op_2~9\ & VCC)) # (!\Ax|R\(5) & (!\Ax|op_2~9\))
-- \Ax|op_2~11\ = CARRY((!\Ax|R\(5) & !\Ax|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(5),
	datad => VCC,
	cin => \Ax|op_2~9\,
	combout => \Ax|op_2~10_combout\,
	cout => \Ax|op_2~11\);

-- Location: LCCOMB_X75_Y42_N14
\Ax|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~24_combout\ = (\Ax|_~1_combout\ & ((\Ax|op_2~10_combout\) # ((\Ax|_~0_combout\ & \Ax|op_1~8_combout\)))) # (!\Ax|_~1_combout\ & (\Ax|_~0_combout\ & (\Ax|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|_~0_combout\,
	datac => \Ax|op_1~8_combout\,
	datad => \Ax|op_2~10_combout\,
	combout => \Ax|R[5]~24_combout\);

-- Location: LCCOMB_X75_Y42_N20
\Ax|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~26_combout\ = (\Ax|R[5]~25_combout\) # ((\Ax|R[5]~24_combout\) # ((\Ax|_~3_combout\ & \BUS[5]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[5]~25_combout\,
	datab => \Ax|_~3_combout\,
	datac => \Ax|R[5]~24_combout\,
	datad => \BUS[5]~17_combout\,
	combout => \Ax|R[5]~26_combout\);

-- Location: LCCOMB_X75_Y42_N30
\Ax|R[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~27_combout\ = (\Ax|R[5]~26_combout\) # ((\Ax|R[0]~4_combout\ & \Ax|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R[0]~4_combout\,
	datac => \Ax|R\(5),
	datad => \Ax|R[5]~26_combout\,
	combout => \Ax|R[5]~27_combout\);

-- Location: FF_X75_Y42_N31
\Ax|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[5]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(5));

-- Location: LCCOMB_X75_Y42_N10
\Ax|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~10_combout\ = (\Ax|R\(6) & (!\Ax|op_1~9\)) # (!\Ax|R\(6) & ((\Ax|op_1~9\) # (GND)))
-- \Ax|op_1~11\ = CARRY((!\Ax|op_1~9\) # (!\Ax|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(6),
	datad => VCC,
	cin => \Ax|op_1~9\,
	combout => \Ax|op_1~10_combout\,
	cout => \Ax|op_1~11\);

-- Location: LCCOMB_X75_Y42_N26
\Ax|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~30_combout\ = (\Ax|R[6]~29_combout\) # ((\Ax|_~0_combout\ & \Ax|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|_~0_combout\,
	datac => \Ax|R[6]~29_combout\,
	datad => \Ax|op_1~10_combout\,
	combout => \Ax|R[6]~30_combout\);

-- Location: LCCOMB_X76_Y42_N20
\Ax|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~12_combout\ = (\Ax|R\(6) & ((GND) # (!\Ax|op_2~11\))) # (!\Ax|R\(6) & (\Ax|op_2~11\ $ (GND)))
-- \Ax|op_2~13\ = CARRY((\Ax|R\(6)) # (!\Ax|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(6),
	datad => VCC,
	cin => \Ax|op_2~11\,
	combout => \Ax|op_2~12_combout\,
	cout => \Ax|op_2~13\);

-- Location: LCCOMB_X74_Y42_N12
\Ax|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~28_combout\ = (\Ax|R[1]~38_combout\ & ((\Ax|R\(5)) # ((\Ax|_~3_combout\ & \BUS[6]~20_combout\)))) # (!\Ax|R[1]~38_combout\ & (\Ax|_~3_combout\ & ((\BUS[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[1]~38_combout\,
	datab => \Ax|_~3_combout\,
	datac => \Ax|R\(5),
	datad => \BUS[6]~20_combout\,
	combout => \Ax|R[6]~28_combout\);

-- Location: LCCOMB_X75_Y42_N28
\Ax|R[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~31_combout\ = (\Ax|R[6]~30_combout\) # ((\Ax|R[6]~28_combout\) # ((\Ax|_~1_combout\ & \Ax|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[6]~30_combout\,
	datab => \Ax|_~1_combout\,
	datac => \Ax|op_2~12_combout\,
	datad => \Ax|R[6]~28_combout\,
	combout => \Ax|R[6]~31_combout\);

-- Location: FF_X75_Y42_N29
\Ax|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[6]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(6));

-- Location: LCCOMB_X74_Y42_N28
\Ax|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~32_combout\ = (\Ax|R[1]~38_combout\ & ((\Ax|R\(6)) # ((\Ax|_~3_combout\ & \BUS[7]~23_combout\)))) # (!\Ax|R[1]~38_combout\ & (((\Ax|_~3_combout\ & \BUS[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[1]~38_combout\,
	datab => \Ax|R\(6),
	datac => \Ax|_~3_combout\,
	datad => \BUS[7]~23_combout\,
	combout => \Ax|R[7]~32_combout\);

-- Location: LCCOMB_X76_Y42_N22
\Ax|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~14_combout\ = \Ax|op_2~13\ $ (!\Ax|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ax|R\(7),
	cin => \Ax|op_2~13\,
	combout => \Ax|op_2~14_combout\);

-- Location: LCCOMB_X75_Y42_N12
\Ax|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~12_combout\ = \Ax|R\(7) $ (!\Ax|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(7),
	cin => \Ax|op_1~11\,
	combout => \Ax|op_1~12_combout\);

-- Location: LCCOMB_X74_Y42_N18
\Ax|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~33_combout\ = (\Cmd[2]~input_o\ & (\_~5_combout\ & (\Ax|R\(0) & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \_~5_combout\,
	datac => \Ax|R\(0),
	datad => \Cmd[1]~input_o\,
	combout => \Ax|R[7]~33_combout\);

-- Location: LCCOMB_X74_Y42_N16
\Ax|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~34_combout\ = (\Ax|R[0]~4_combout\ & ((\Ax|R\(7)) # ((\Cmd[0]~input_o\ & \Ax|R[7]~33_combout\)))) # (!\Ax|R[0]~4_combout\ & (((\Cmd[0]~input_o\ & \Ax|R[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~4_combout\,
	datab => \Ax|R\(7),
	datac => \Cmd[0]~input_o\,
	datad => \Ax|R[7]~33_combout\,
	combout => \Ax|R[7]~34_combout\);

-- Location: LCCOMB_X74_Y42_N10
\Ax|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~35_combout\ = (\Ax|R[7]~34_combout\) # ((\Ax|_~0_combout\ & \Ax|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|_~0_combout\,
	datac => \Ax|op_1~12_combout\,
	datad => \Ax|R[7]~34_combout\,
	combout => \Ax|R[7]~35_combout\);

-- Location: LCCOMB_X74_Y42_N0
\Ax|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~36_combout\ = (\Ax|R[7]~32_combout\) # ((\Ax|R[7]~35_combout\) # ((\Ax|_~1_combout\ & \Ax|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|R[7]~32_combout\,
	datac => \Ax|op_2~14_combout\,
	datad => \Ax|R[7]~35_combout\,
	combout => \Ax|R[7]~36_combout\);

-- Location: FF_X74_Y42_N1
\Ax|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[7]~36_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(7));

-- Location: LCCOMB_X74_Y42_N24
\Ax|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~2_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~5_combout\,
	combout => \Ax|_~2_combout\);

-- Location: LCCOMB_X74_Y42_N14
\Ax|R[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~6_combout\ = (\Ax|R[0]~37_combout\ & ((\Ax|R\(1)) # ((\Ax|R\(7) & \Ax|_~2_combout\)))) # (!\Ax|R[0]~37_combout\ & (\Ax|R\(7) & ((\Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~37_combout\,
	datab => \Ax|R\(7),
	datac => \Ax|R\(1),
	datad => \Ax|_~2_combout\,
	combout => \Ax|R[0]~6_combout\);

-- Location: LCCOMB_X77_Y42_N28
\Ax|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~5_combout\ = (\Ax|R\(0) & (((\Ax|R[0]~4_combout\)))) # (!\Ax|R\(0) & ((\Ax|_~0_combout\) # ((\Ax|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~0_combout\,
	datab => \Ax|_~1_combout\,
	datac => \Ax|R\(0),
	datad => \Ax|R[0]~4_combout\,
	combout => \Ax|R[0]~5_combout\);

-- Location: LCCOMB_X75_Y42_N22
\Ax|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~7_combout\ = (\Ax|R[0]~6_combout\) # ((\Ax|R[0]~5_combout\) # ((\Ax|_~3_combout\ & \BUS[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~6_combout\,
	datab => \Ax|_~3_combout\,
	datac => \Ax|R[0]~5_combout\,
	datad => \BUS[0]~2_combout\,
	combout => \Ax|R[0]~7_combout\);

-- Location: FF_X75_Y42_N23
\Ax|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(0));

-- Location: IOIBUF_X0_Y26_N15
\SRC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC(0),
	o => \SRC[0]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\SRC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC(1),
	o => \SRC[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\SRC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC(2),
	o => \SRC[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SRC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC(3),
	o => \SRC[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\SRC[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC(4),
	o => \SRC[4]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Ax_t(0) <= \Ax_t[0]~output_o\;

ww_Ax_t(1) <= \Ax_t[1]~output_o\;

ww_Ax_t(2) <= \Ax_t[2]~output_o\;

ww_Ax_t(3) <= \Ax_t[3]~output_o\;

ww_Ax_t(4) <= \Ax_t[4]~output_o\;

ww_Ax_t(5) <= \Ax_t[5]~output_o\;

ww_Ax_t(6) <= \Ax_t[6]~output_o\;

ww_Ax_t(7) <= \Ax_t[7]~output_o\;

ww_Bx_t(0) <= \Bx_t[0]~output_o\;

ww_Bx_t(1) <= \Bx_t[1]~output_o\;

ww_Bx_t(2) <= \Bx_t[2]~output_o\;

ww_Bx_t(3) <= \Bx_t[3]~output_o\;

ww_Bx_t(4) <= \Bx_t[4]~output_o\;

ww_Bx_t(5) <= \Bx_t[5]~output_o\;

ww_Bx_t(6) <= \Bx_t[6]~output_o\;

ww_Bx_t(7) <= \Bx_t[7]~output_o\;

ww_x_t(0) <= \x_t[0]~output_o\;

ww_x_t(1) <= \x_t[1]~output_o\;

ww_x_t(2) <= \x_t[2]~output_o\;

ww_x_t(3) <= \x_t[3]~output_o\;

ww_x_t(4) <= \x_t[4]~output_o\;

ww_x_t(5) <= \x_t[5]~output_o\;

ww_x_t(6) <= \x_t[6]~output_o\;

ww_x_t(7) <= \x_t[7]~output_o\;

ww_y_t(0) <= \y_t[0]~output_o\;

ww_y_t(1) <= \y_t[1]~output_o\;

ww_y_t(2) <= \y_t[2]~output_o\;

ww_y_t(3) <= \y_t[3]~output_o\;

ww_y_t(4) <= \y_t[4]~output_o\;

ww_y_t(5) <= \y_t[5]~output_o\;

ww_y_t(6) <= \y_t[6]~output_o\;

ww_y_t(7) <= \y_t[7]~output_o\;

ww_r_t(0) <= \r_t[0]~output_o\;

ww_r_t(1) <= \r_t[1]~output_o\;

ww_r_t(2) <= \r_t[2]~output_o\;

ww_r_t(3) <= \r_t[3]~output_o\;

ww_r_t(4) <= \r_t[4]~output_o\;

ww_r_t(5) <= \r_t[5]~output_o\;

ww_r_t(6) <= \r_t[6]~output_o\;

ww_r_t(7) <= \r_t[7]~output_o\;

ww_Bus_t(0) <= \Bus_t[0]~output_o\;

ww_Bus_t(1) <= \Bus_t[1]~output_o\;

ww_Bus_t(2) <= \Bus_t[2]~output_o\;

ww_Bus_t(3) <= \Bus_t[3]~output_o\;

ww_Bus_t(4) <= \Bus_t[4]~output_o\;

ww_Bus_t(5) <= \Bus_t[5]~output_o\;

ww_Bus_t(6) <= \Bus_t[6]~output_o\;

ww_Bus_t(7) <= \Bus_t[7]~output_o\;
END structure;


