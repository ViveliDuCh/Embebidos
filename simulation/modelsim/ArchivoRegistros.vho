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

-- DATE "05/04/2023 15:42:04"

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
	SelDST : IN std_logic;
	SelSRC : IN std_logic;
	SelMAR : IN std_logic;
	Cmd : IN std_logic_vector(2 DOWNTO 0);
	DST_UC : IN std_logic_vector(4 DOWNTO 0);
	SRC_UC : IN std_logic_vector(4 DOWNTO 0);
	Enable_r : IN std_logic;
	DATA_BUS : IN std_logic_vector(7 DOWNTO 0);
	Ax_t : OUT std_logic_vector(7 DOWNTO 0);
	Bx_t : OUT std_logic_vector(7 DOWNTO 0);
	Cx_t : OUT std_logic_vector(7 DOWNTO 0);
	x_t : OUT std_logic_vector(7 DOWNTO 0);
	y_t : OUT std_logic_vector(7 DOWNTO 0);
	r_t : OUT std_logic_vector(7 DOWNTO 0);
	ALU_t : OUT std_logic_vector(7 DOWNTO 0);
	Bus_t : OUT std_logic_vector(7 DOWNTO 0);
	ADDR_BUS : OUT std_logic_vector(7 DOWNTO 0)
	);
END ArchivoRegistros;

-- Design Ports Information
-- SelMAR	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[5]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[5]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[5]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[2]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[7]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[6]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[6]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelSRC	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelDST	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[4]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[0]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable_r	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[6]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SelDST : std_logic;
SIGNAL ww_SelSRC : std_logic;
SIGNAL ww_SelMAR : std_logic;
SIGNAL ww_Cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DST_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SRC_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Enable_r : std_logic;
SIGNAL ww_DATA_BUS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Ax_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADDR_BUS : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SelMAR~input_o\ : std_logic;
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
SIGNAL \Cx_t[0]~output_o\ : std_logic;
SIGNAL \Cx_t[1]~output_o\ : std_logic;
SIGNAL \Cx_t[2]~output_o\ : std_logic;
SIGNAL \Cx_t[3]~output_o\ : std_logic;
SIGNAL \Cx_t[4]~output_o\ : std_logic;
SIGNAL \Cx_t[5]~output_o\ : std_logic;
SIGNAL \Cx_t[6]~output_o\ : std_logic;
SIGNAL \Cx_t[7]~output_o\ : std_logic;
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
SIGNAL \ALU_t[0]~output_o\ : std_logic;
SIGNAL \ALU_t[1]~output_o\ : std_logic;
SIGNAL \ALU_t[2]~output_o\ : std_logic;
SIGNAL \ALU_t[3]~output_o\ : std_logic;
SIGNAL \ALU_t[4]~output_o\ : std_logic;
SIGNAL \ALU_t[5]~output_o\ : std_logic;
SIGNAL \ALU_t[6]~output_o\ : std_logic;
SIGNAL \ALU_t[7]~output_o\ : std_logic;
SIGNAL \Bus_t[0]~output_o\ : std_logic;
SIGNAL \Bus_t[1]~output_o\ : std_logic;
SIGNAL \Bus_t[2]~output_o\ : std_logic;
SIGNAL \Bus_t[3]~output_o\ : std_logic;
SIGNAL \Bus_t[4]~output_o\ : std_logic;
SIGNAL \Bus_t[5]~output_o\ : std_logic;
SIGNAL \Bus_t[6]~output_o\ : std_logic;
SIGNAL \Bus_t[7]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[0]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[1]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[2]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[3]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[4]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[5]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[6]~output_o\ : std_logic;
SIGNAL \ADDR_BUS[7]~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cmd[0]~input_o\ : std_logic;
SIGNAL \Cmd[2]~input_o\ : std_logic;
SIGNAL \SelDST~input_o\ : std_logic;
SIGNAL \SRC_UC[1]~input_o\ : std_logic;
SIGNAL \SelSRC~input_o\ : std_logic;
SIGNAL \SRC_UC[2]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \DST_UC[3]~input_o\ : std_logic;
SIGNAL \SRC_UC[0]~input_o\ : std_logic;
SIGNAL \Cmd[1]~input_o\ : std_logic;
SIGNAL \DST_UC[2]~input_o\ : std_logic;
SIGNAL \SelMUX[2]~4_combout\ : std_logic;
SIGNAL \DST_UC[1]~input_o\ : std_logic;
SIGNAL \DST_UC[0]~input_o\ : std_logic;
SIGNAL \DST_UC[4]~input_o\ : std_logic;
SIGNAL \PC|_~1_combout\ : std_logic;
SIGNAL \PC|_~2_combout\ : std_logic;
SIGNAL \PC|op_2~1_cout\ : std_logic;
SIGNAL \PC|op_2~2_combout\ : std_logic;
SIGNAL \PC|R[1]~8_combout\ : std_logic;
SIGNAL \PC|_~3_combout\ : std_logic;
SIGNAL \PC|op_1~0_combout\ : std_logic;
SIGNAL \PC|R[1]~0_combout\ : std_logic;
SIGNAL \PC|R[2]~6_combout\ : std_logic;
SIGNAL \PC|R[1]~7_combout\ : std_logic;
SIGNAL \PC|R[1]~9_combout\ : std_logic;
SIGNAL \PC|R[1]~10_combout\ : std_logic;
SIGNAL \PC|op_2~3\ : std_logic;
SIGNAL \PC|op_2~4_combout\ : std_logic;
SIGNAL \PC|R[2]~12_combout\ : std_logic;
SIGNAL \PC|op_1~1\ : std_logic;
SIGNAL \PC|op_1~2_combout\ : std_logic;
SIGNAL \PC|R[2]~11_combout\ : std_logic;
SIGNAL \PC|R[2]~13_combout\ : std_logic;
SIGNAL \PC|R[2]~14_combout\ : std_logic;
SIGNAL \PC|op_2~5\ : std_logic;
SIGNAL \PC|op_2~6_combout\ : std_logic;
SIGNAL \PC|R[3]~16_combout\ : std_logic;
SIGNAL \PC|op_1~3\ : std_logic;
SIGNAL \PC|op_1~4_combout\ : std_logic;
SIGNAL \PC|R[3]~15_combout\ : std_logic;
SIGNAL \PC|R[3]~17_combout\ : std_logic;
SIGNAL \PC|R[3]~18_combout\ : std_logic;
SIGNAL \PC|op_2~7\ : std_logic;
SIGNAL \PC|op_2~8_combout\ : std_logic;
SIGNAL \PC|R[4]~20_combout\ : std_logic;
SIGNAL \PC|op_1~5\ : std_logic;
SIGNAL \PC|op_1~6_combout\ : std_logic;
SIGNAL \PC|op_1~7\ : std_logic;
SIGNAL \PC|op_1~8_combout\ : std_logic;
SIGNAL \PC|op_2~9\ : std_logic;
SIGNAL \PC|op_2~10_combout\ : std_logic;
SIGNAL \PC|R[5]~24_combout\ : std_logic;
SIGNAL \DATA_BUS[6]~input_o\ : std_logic;
SIGNAL \_~55_combout\ : std_logic;
SIGNAL \_~46_combout\ : std_logic;
SIGNAL \SRC_UC[3]~input_o\ : std_logic;
SIGNAL \SelBus[3]~1_combout\ : std_logic;
SIGNAL \SRC_UC[4]~input_o\ : std_logic;
SIGNAL \SelBus[4]~2_combout\ : std_logic;
SIGNAL \_~20_combout\ : std_logic;
SIGNAL \_~29_combout\ : std_logic;
SIGNAL \BUS[6]~62_combout\ : std_logic;
SIGNAL \SelMUX[0]~2_combout\ : std_logic;
SIGNAL \_~61_combout\ : std_logic;
SIGNAL \_~38_combout\ : std_logic;
SIGNAL \alu_y|R[6]~feeder_combout\ : std_logic;
SIGNAL \_~39_combout\ : std_logic;
SIGNAL \MAR|R[5]~feeder_combout\ : std_logic;
SIGNAL \_~42_combout\ : std_logic;
SIGNAL \_~41_combout\ : std_logic;
SIGNAL \_~21_combout\ : std_logic;
SIGNAL \BUS[5]~48_combout\ : std_logic;
SIGNAL \_~59_combout\ : std_logic;
SIGNAL \_~27_combout\ : std_logic;
SIGNAL \_~58_combout\ : std_logic;
SIGNAL \_~24_combout\ : std_logic;
SIGNAL \_~37_combout\ : std_logic;
SIGNAL \Cx|_~1_combout\ : std_logic;
SIGNAL \Cx|_~3_combout\ : std_logic;
SIGNAL \Cx|op_2~1_cout\ : std_logic;
SIGNAL \Cx|op_2~2_combout\ : std_logic;
SIGNAL \Cx|R[0]~3_combout\ : std_logic;
SIGNAL \Cx|_~2_combout\ : std_logic;
SIGNAL \Cx|R[1]~8_combout\ : std_logic;
SIGNAL \Cx|op_1~0_combout\ : std_logic;
SIGNAL \Cx|R[1]~0_combout\ : std_logic;
SIGNAL \Cx|R[2]~6_combout\ : std_logic;
SIGNAL \Cx|R[1]~7_combout\ : std_logic;
SIGNAL \Cx|R[1]~9_combout\ : std_logic;
SIGNAL \Cx|R[1]~10_combout\ : std_logic;
SIGNAL \Cx|R[0]~1_combout\ : std_logic;
SIGNAL \Cx|R[0]~2_combout\ : std_logic;
SIGNAL \Cx|op_2~7\ : std_logic;
SIGNAL \Cx|op_2~9\ : std_logic;
SIGNAL \Cx|op_2~11\ : std_logic;
SIGNAL \Cx|op_2~12_combout\ : std_logic;
SIGNAL \Cx|R[6]~28_combout\ : std_logic;
SIGNAL \Cx|R[6]~29_combout\ : std_logic;
SIGNAL \Cx|op_1~9\ : std_logic;
SIGNAL \Cx|op_1~10_combout\ : std_logic;
SIGNAL \Cx|R[6]~27_combout\ : std_logic;
SIGNAL \Cx|R[6]~30_combout\ : std_logic;
SIGNAL \Cx|op_1~11\ : std_logic;
SIGNAL \Cx|op_1~12_combout\ : std_logic;
SIGNAL \Cx|R[7]~31_combout\ : std_logic;
SIGNAL \_~49_combout\ : std_logic;
SIGNAL \DATA_BUS[7]~input_o\ : std_logic;
SIGNAL \_~56_combout\ : std_logic;
SIGNAL \_~33_combout\ : std_logic;
SIGNAL \BUS[7]~71_combout\ : std_logic;
SIGNAL \_~47_combout\ : std_logic;
SIGNAL \SP|_~1_combout\ : std_logic;
SIGNAL \SP|_~2_combout\ : std_logic;
SIGNAL \SP|_~3_combout\ : std_logic;
SIGNAL \SP|_~0_combout\ : std_logic;
SIGNAL \SP|R[0]~3_combout\ : std_logic;
SIGNAL \SP|R[0]~4_combout\ : std_logic;
SIGNAL \SP|R[1]~0_combout\ : std_logic;
SIGNAL \SP|R[0]~1_combout\ : std_logic;
SIGNAL \SP|R[0]~2_combout\ : std_logic;
SIGNAL \SP|R[0]~5_combout\ : std_logic;
SIGNAL \SP|op_1~0_combout\ : std_logic;
SIGNAL \SP|R[2]~6_combout\ : std_logic;
SIGNAL \SP|R[1]~7_combout\ : std_logic;
SIGNAL \SP|op_2~1_cout\ : std_logic;
SIGNAL \SP|op_2~2_combout\ : std_logic;
SIGNAL \SP|R[1]~8_combout\ : std_logic;
SIGNAL \SP|R[1]~9_combout\ : std_logic;
SIGNAL \SP|R[1]~10_combout\ : std_logic;
SIGNAL \SP|op_2~3\ : std_logic;
SIGNAL \SP|op_2~4_combout\ : std_logic;
SIGNAL \SP|R[2]~12_combout\ : std_logic;
SIGNAL \SP|op_1~1\ : std_logic;
SIGNAL \SP|op_1~2_combout\ : std_logic;
SIGNAL \SP|R[2]~11_combout\ : std_logic;
SIGNAL \SP|R[2]~13_combout\ : std_logic;
SIGNAL \SP|R[2]~14_combout\ : std_logic;
SIGNAL \SP|op_1~3\ : std_logic;
SIGNAL \SP|op_1~4_combout\ : std_logic;
SIGNAL \SP|R[3]~15_combout\ : std_logic;
SIGNAL \SP|op_2~5\ : std_logic;
SIGNAL \SP|op_2~6_combout\ : std_logic;
SIGNAL \SP|R[3]~16_combout\ : std_logic;
SIGNAL \SP|R[3]~17_combout\ : std_logic;
SIGNAL \SP|R[3]~18_combout\ : std_logic;
SIGNAL \SP|op_1~5\ : std_logic;
SIGNAL \SP|op_1~6_combout\ : std_logic;
SIGNAL \SP|R[4]~19_combout\ : std_logic;
SIGNAL \SP|op_2~7\ : std_logic;
SIGNAL \SP|op_2~8_combout\ : std_logic;
SIGNAL \SP|R[4]~20_combout\ : std_logic;
SIGNAL \SP|R[4]~21_combout\ : std_logic;
SIGNAL \SP|R[4]~22_combout\ : std_logic;
SIGNAL \SP|R[5]~23_combout\ : std_logic;
SIGNAL \SP|op_1~7\ : std_logic;
SIGNAL \SP|op_1~8_combout\ : std_logic;
SIGNAL \SP|op_2~9\ : std_logic;
SIGNAL \SP|op_2~10_combout\ : std_logic;
SIGNAL \SP|R[5]~24_combout\ : std_logic;
SIGNAL \SP|R[5]~25_combout\ : std_logic;
SIGNAL \SP|R[5]~26_combout\ : std_logic;
SIGNAL \SP|op_2~11\ : std_logic;
SIGNAL \SP|op_2~12_combout\ : std_logic;
SIGNAL \SP|R[6]~27_combout\ : std_logic;
SIGNAL \SP|op_1~9\ : std_logic;
SIGNAL \SP|op_1~10_combout\ : std_logic;
SIGNAL \SP|R[6]~28_combout\ : std_logic;
SIGNAL \SP|R[6]~29_combout\ : std_logic;
SIGNAL \SP|R[6]~30_combout\ : std_logic;
SIGNAL \SP|op_2~13\ : std_logic;
SIGNAL \SP|op_2~14_combout\ : std_logic;
SIGNAL \SP|R[7]~31_combout\ : std_logic;
SIGNAL \SP|R[7]~32_combout\ : std_logic;
SIGNAL \SP|op_1~11\ : std_logic;
SIGNAL \SP|op_1~12_combout\ : std_logic;
SIGNAL \SP|R[7]~33_combout\ : std_logic;
SIGNAL \SP|R[7]~34_combout\ : std_logic;
SIGNAL \SP|R[7]~35_combout\ : std_logic;
SIGNAL \_~48_combout\ : std_logic;
SIGNAL \SI|_~1_combout\ : std_logic;
SIGNAL \SI|R[2]~6_combout\ : std_logic;
SIGNAL \SI|_~2_combout\ : std_logic;
SIGNAL \SI|_~3_combout\ : std_logic;
SIGNAL \SI|R[1]~0_combout\ : std_logic;
SIGNAL \SI|R[0]~1_combout\ : std_logic;
SIGNAL \SI|R[0]~2_combout\ : std_logic;
SIGNAL \SI|R[0]~3_combout\ : std_logic;
SIGNAL \SI|_~0_combout\ : std_logic;
SIGNAL \SI|R[0]~4_combout\ : std_logic;
SIGNAL \SI|R[0]~5_combout\ : std_logic;
SIGNAL \SI|R[1]~7_combout\ : std_logic;
SIGNAL \SI|op_2~1_cout\ : std_logic;
SIGNAL \SI|op_2~2_combout\ : std_logic;
SIGNAL \SI|R[1]~8_combout\ : std_logic;
SIGNAL \SI|op_1~0_combout\ : std_logic;
SIGNAL \SI|R[1]~9_combout\ : std_logic;
SIGNAL \SI|R[1]~10_combout\ : std_logic;
SIGNAL \SI|R[2]~11_combout\ : std_logic;
SIGNAL \SI|op_1~1\ : std_logic;
SIGNAL \SI|op_1~2_combout\ : std_logic;
SIGNAL \SI|op_2~3\ : std_logic;
SIGNAL \SI|op_2~4_combout\ : std_logic;
SIGNAL \SI|R[2]~12_combout\ : std_logic;
SIGNAL \SI|R[2]~13_combout\ : std_logic;
SIGNAL \SI|R[2]~14_combout\ : std_logic;
SIGNAL \SI|R[3]~15_combout\ : std_logic;
SIGNAL \SI|op_2~5\ : std_logic;
SIGNAL \SI|op_2~6_combout\ : std_logic;
SIGNAL \SI|R[3]~16_combout\ : std_logic;
SIGNAL \SI|op_1~3\ : std_logic;
SIGNAL \SI|op_1~4_combout\ : std_logic;
SIGNAL \SI|R[3]~17_combout\ : std_logic;
SIGNAL \SI|R[3]~18_combout\ : std_logic;
SIGNAL \SI|op_1~5\ : std_logic;
SIGNAL \SI|op_1~6_combout\ : std_logic;
SIGNAL \SI|op_2~7\ : std_logic;
SIGNAL \SI|op_2~8_combout\ : std_logic;
SIGNAL \SI|R[4]~20_combout\ : std_logic;
SIGNAL \SI|R[4]~21_combout\ : std_logic;
SIGNAL \SI|R[4]~19_combout\ : std_logic;
SIGNAL \SI|R[4]~22_combout\ : std_logic;
SIGNAL \SI|R[5]~23_combout\ : std_logic;
SIGNAL \SI|op_1~7\ : std_logic;
SIGNAL \SI|op_1~8_combout\ : std_logic;
SIGNAL \SI|op_2~9\ : std_logic;
SIGNAL \SI|op_2~10_combout\ : std_logic;
SIGNAL \SI|R[5]~24_combout\ : std_logic;
SIGNAL \SI|R[5]~25_combout\ : std_logic;
SIGNAL \SI|R[5]~26_combout\ : std_logic;
SIGNAL \SI|R[6]~27_combout\ : std_logic;
SIGNAL \SI|op_2~11\ : std_logic;
SIGNAL \SI|op_2~12_combout\ : std_logic;
SIGNAL \SI|op_1~9\ : std_logic;
SIGNAL \SI|op_1~10_combout\ : std_logic;
SIGNAL \SI|R[6]~28_combout\ : std_logic;
SIGNAL \SI|R[6]~29_combout\ : std_logic;
SIGNAL \SI|R[6]~30_combout\ : std_logic;
SIGNAL \SI|op_1~11\ : std_logic;
SIGNAL \SI|op_1~12_combout\ : std_logic;
SIGNAL \SI|R[7]~31_combout\ : std_logic;
SIGNAL \SI|op_2~13\ : std_logic;
SIGNAL \SI|op_2~14_combout\ : std_logic;
SIGNAL \SI|R[7]~32_combout\ : std_logic;
SIGNAL \SI|R[7]~33_combout\ : std_logic;
SIGNAL \SI|R[7]~34_combout\ : std_logic;
SIGNAL \SI|R[7]~35_combout\ : std_logic;
SIGNAL \_~31_combout\ : std_logic;
SIGNAL \_~32_combout\ : std_logic;
SIGNAL \BUS[7]~72_combout\ : std_logic;
SIGNAL \PC|op_2~11\ : std_logic;
SIGNAL \PC|op_2~13\ : std_logic;
SIGNAL \PC|op_2~14_combout\ : std_logic;
SIGNAL \PC|op_1~9\ : std_logic;
SIGNAL \PC|op_1~11\ : std_logic;
SIGNAL \PC|op_1~12_combout\ : std_logic;
SIGNAL \PC|R[7]~33_combout\ : std_logic;
SIGNAL \PC|R[7]~31_combout\ : std_logic;
SIGNAL \PC|R[7]~32_combout\ : std_logic;
SIGNAL \PC|R[7]~34_combout\ : std_logic;
SIGNAL \PC|R[7]~35_combout\ : std_logic;
SIGNAL \alu_y|R[7]~feeder_combout\ : std_logic;
SIGNAL \alu_x|R[7]~feeder_combout\ : std_logic;
SIGNAL \ALU_prueba|R[6]~13\ : std_logic;
SIGNAL \ALU_prueba|R[7]~14_combout\ : std_logic;
SIGNAL \alu_r|R[7]~feeder_combout\ : std_logic;
SIGNAL \Enable_r~input_o\ : std_logic;
SIGNAL \BUS[7]~70_combout\ : std_logic;
SIGNAL \BUS[7]~73_combout\ : std_logic;
SIGNAL \Fx[7]~input_o\ : std_logic;
SIGNAL \_~43_combout\ : std_logic;
SIGNAL \DI|_~1_combout\ : std_logic;
SIGNAL \DI|_~2_combout\ : std_logic;
SIGNAL \DI|R[0]~3_combout\ : std_logic;
SIGNAL \DI|R[1]~0_combout\ : std_logic;
SIGNAL \DI|R[2]~6_combout\ : std_logic;
SIGNAL \DI|R[1]~7_combout\ : std_logic;
SIGNAL \DI|op_1~0_combout\ : std_logic;
SIGNAL \DI|_~3_combout\ : std_logic;
SIGNAL \DI|op_2~1_cout\ : std_logic;
SIGNAL \DI|op_2~2_combout\ : std_logic;
SIGNAL \DI|R[1]~8_combout\ : std_logic;
SIGNAL \DI|R[1]~9_combout\ : std_logic;
SIGNAL \DI|R[1]~10_combout\ : std_logic;
SIGNAL \DI|R[0]~1_combout\ : std_logic;
SIGNAL \DI|R[0]~2_combout\ : std_logic;
SIGNAL \DI|_~0_combout\ : std_logic;
SIGNAL \DI|R[0]~4_combout\ : std_logic;
SIGNAL \DI|R[0]~5_combout\ : std_logic;
SIGNAL \DI|op_1~1\ : std_logic;
SIGNAL \DI|op_1~2_combout\ : std_logic;
SIGNAL \DI|op_2~3\ : std_logic;
SIGNAL \DI|op_2~4_combout\ : std_logic;
SIGNAL \DI|R[2]~12_combout\ : std_logic;
SIGNAL \DI|R[2]~11_combout\ : std_logic;
SIGNAL \DI|R[2]~13_combout\ : std_logic;
SIGNAL \DI|R[2]~14_combout\ : std_logic;
SIGNAL \DI|R[3]~15_combout\ : std_logic;
SIGNAL \DI|op_1~3\ : std_logic;
SIGNAL \DI|op_1~4_combout\ : std_logic;
SIGNAL \DI|op_2~5\ : std_logic;
SIGNAL \DI|op_2~6_combout\ : std_logic;
SIGNAL \DI|R[3]~16_combout\ : std_logic;
SIGNAL \DI|R[3]~17_combout\ : std_logic;
SIGNAL \DI|R[3]~18_combout\ : std_logic;
SIGNAL \DI|op_2~7\ : std_logic;
SIGNAL \DI|op_2~8_combout\ : std_logic;
SIGNAL \DI|R[4]~20_combout\ : std_logic;
SIGNAL \DI|op_1~5\ : std_logic;
SIGNAL \DI|op_1~6_combout\ : std_logic;
SIGNAL \DI|R[4]~19_combout\ : std_logic;
SIGNAL \DI|R[4]~21_combout\ : std_logic;
SIGNAL \DI|R[4]~22_combout\ : std_logic;
SIGNAL \DI|op_1~7\ : std_logic;
SIGNAL \DI|op_1~8_combout\ : std_logic;
SIGNAL \DI|op_2~9\ : std_logic;
SIGNAL \DI|op_2~10_combout\ : std_logic;
SIGNAL \DI|R[5]~24_combout\ : std_logic;
SIGNAL \DI|R[5]~25_combout\ : std_logic;
SIGNAL \DI|R[5]~23_combout\ : std_logic;
SIGNAL \DI|R[5]~26_combout\ : std_logic;
SIGNAL \DI|op_2~11\ : std_logic;
SIGNAL \DI|op_2~12_combout\ : std_logic;
SIGNAL \DI|op_1~9\ : std_logic;
SIGNAL \DI|op_1~10_combout\ : std_logic;
SIGNAL \DI|R[6]~28_combout\ : std_logic;
SIGNAL \DI|R[6]~29_combout\ : std_logic;
SIGNAL \DI|R[6]~27_combout\ : std_logic;
SIGNAL \DI|R[6]~30_combout\ : std_logic;
SIGNAL \DI|op_2~13\ : std_logic;
SIGNAL \DI|op_2~14_combout\ : std_logic;
SIGNAL \DI|R[7]~31_combout\ : std_logic;
SIGNAL \DI|R[7]~32_combout\ : std_logic;
SIGNAL \DI|op_1~11\ : std_logic;
SIGNAL \DI|op_1~12_combout\ : std_logic;
SIGNAL \DI|R[7]~33_combout\ : std_logic;
SIGNAL \DI|R[7]~34_combout\ : std_logic;
SIGNAL \DI|R[7]~35_combout\ : std_logic;
SIGNAL \_~25_combout\ : std_logic;
SIGNAL \BUS[7]~68_combout\ : std_logic;
SIGNAL \_~36_combout\ : std_logic;
SIGNAL \Bx|_~1_combout\ : std_logic;
SIGNAL \Bx|_~3_combout\ : std_logic;
SIGNAL \Bx|R[1]~0_combout\ : std_logic;
SIGNAL \Bx|op_2~1_cout\ : std_logic;
SIGNAL \Bx|op_2~2_combout\ : std_logic;
SIGNAL \Bx|_~2_combout\ : std_logic;
SIGNAL \Bx|R[0]~3_combout\ : std_logic;
SIGNAL \Bx|R[1]~8_combout\ : std_logic;
SIGNAL \Bx|op_1~0_combout\ : std_logic;
SIGNAL \Bx|R[2]~6_combout\ : std_logic;
SIGNAL \Bx|R[1]~7_combout\ : std_logic;
SIGNAL \Bx|R[1]~9_combout\ : std_logic;
SIGNAL \Bx|R[1]~10_combout\ : std_logic;
SIGNAL \Bx|R[0]~1_combout\ : std_logic;
SIGNAL \Bx|R[0]~2_combout\ : std_logic;
SIGNAL \Bx|_~0_combout\ : std_logic;
SIGNAL \Bx|R[0]~4_combout\ : std_logic;
SIGNAL \Bx|R[0]~5_combout\ : std_logic;
SIGNAL \Bx|op_1~1\ : std_logic;
SIGNAL \Bx|op_1~2_combout\ : std_logic;
SIGNAL \Bx|op_2~3\ : std_logic;
SIGNAL \Bx|op_2~4_combout\ : std_logic;
SIGNAL \Bx|R[2]~12_combout\ : std_logic;
SIGNAL \Bx|R[2]~11_combout\ : std_logic;
SIGNAL \Bx|R[2]~13_combout\ : std_logic;
SIGNAL \Bx|R[2]~14_combout\ : std_logic;
SIGNAL \Bx|R[3]~15_combout\ : std_logic;
SIGNAL \Bx|op_1~3\ : std_logic;
SIGNAL \Bx|op_1~4_combout\ : std_logic;
SIGNAL \Bx|op_2~5\ : std_logic;
SIGNAL \Bx|op_2~6_combout\ : std_logic;
SIGNAL \Bx|R[3]~16_combout\ : std_logic;
SIGNAL \Bx|R[3]~17_combout\ : std_logic;
SIGNAL \Bx|R[3]~18_combout\ : std_logic;
SIGNAL \Bx|op_1~5\ : std_logic;
SIGNAL \Bx|op_1~6_combout\ : std_logic;
SIGNAL \Bx|op_2~7\ : std_logic;
SIGNAL \Bx|op_2~8_combout\ : std_logic;
SIGNAL \Bx|R[4]~20_combout\ : std_logic;
SIGNAL \Bx|R[4]~21_combout\ : std_logic;
SIGNAL \Bx|R[4]~19_combout\ : std_logic;
SIGNAL \Bx|R[4]~22_combout\ : std_logic;
SIGNAL \Bx|op_1~7\ : std_logic;
SIGNAL \Bx|op_1~8_combout\ : std_logic;
SIGNAL \Bx|R[5]~23_combout\ : std_logic;
SIGNAL \Bx|op_2~9\ : std_logic;
SIGNAL \Bx|op_2~10_combout\ : std_logic;
SIGNAL \Bx|R[5]~24_combout\ : std_logic;
SIGNAL \Bx|R[5]~25_combout\ : std_logic;
SIGNAL \Bx|R[5]~26_combout\ : std_logic;
SIGNAL \Bx|op_1~9\ : std_logic;
SIGNAL \Bx|op_1~10_combout\ : std_logic;
SIGNAL \Bx|R[6]~28_combout\ : std_logic;
SIGNAL \Bx|op_2~11\ : std_logic;
SIGNAL \Bx|op_2~12_combout\ : std_logic;
SIGNAL \Bx|R[6]~27_combout\ : std_logic;
SIGNAL \Bx|R[6]~29_combout\ : std_logic;
SIGNAL \Bx|R[6]~30_combout\ : std_logic;
SIGNAL \Bx|op_2~13\ : std_logic;
SIGNAL \Bx|op_2~14_combout\ : std_logic;
SIGNAL \Bx|R[7]~31_combout\ : std_logic;
SIGNAL \Bx|R[7]~32_combout\ : std_logic;
SIGNAL \Bx|op_1~11\ : std_logic;
SIGNAL \Bx|op_1~12_combout\ : std_logic;
SIGNAL \Bx|R[7]~33_combout\ : std_logic;
SIGNAL \Bx|R[7]~34_combout\ : std_logic;
SIGNAL \Bx|R[7]~35_combout\ : std_logic;
SIGNAL \_~23_combout\ : std_logic;
SIGNAL \_~26_combout\ : std_logic;
SIGNAL \BUS[7]~67_combout\ : std_logic;
SIGNAL \BUS[7]~69_combout\ : std_logic;
SIGNAL \MAR|R[7]~feeder_combout\ : std_logic;
SIGNAL \BUS[7]~66_combout\ : std_logic;
SIGNAL \BUS[7]~74_combout\ : std_logic;
SIGNAL \Cx|op_2~13\ : std_logic;
SIGNAL \Cx|op_2~14_combout\ : std_logic;
SIGNAL \Cx|R[7]~32_combout\ : std_logic;
SIGNAL \Cx|R[7]~33_combout\ : std_logic;
SIGNAL \Cx|R[7]~34_combout\ : std_logic;
SIGNAL \Cx|R[7]~35_combout\ : std_logic;
SIGNAL \Cx|_~0_combout\ : std_logic;
SIGNAL \Cx|R[0]~4_combout\ : std_logic;
SIGNAL \Cx|R[0]~5_combout\ : std_logic;
SIGNAL \Cx|op_1~1\ : std_logic;
SIGNAL \Cx|op_1~2_combout\ : std_logic;
SIGNAL \Cx|op_2~3\ : std_logic;
SIGNAL \Cx|op_2~4_combout\ : std_logic;
SIGNAL \Cx|R[2]~12_combout\ : std_logic;
SIGNAL \Cx|R[2]~11_combout\ : std_logic;
SIGNAL \Cx|R[2]~13_combout\ : std_logic;
SIGNAL \Cx|R[2]~14_combout\ : std_logic;
SIGNAL \Cx|op_2~5\ : std_logic;
SIGNAL \Cx|op_2~6_combout\ : std_logic;
SIGNAL \Cx|R[3]~16_combout\ : std_logic;
SIGNAL \Cx|op_1~3\ : std_logic;
SIGNAL \Cx|op_1~4_combout\ : std_logic;
SIGNAL \Cx|R[3]~15_combout\ : std_logic;
SIGNAL \Cx|R[3]~17_combout\ : std_logic;
SIGNAL \Cx|R[3]~18_combout\ : std_logic;
SIGNAL \Cx|op_1~5\ : std_logic;
SIGNAL \Cx|op_1~6_combout\ : std_logic;
SIGNAL \Cx|op_2~8_combout\ : std_logic;
SIGNAL \Cx|R[4]~20_combout\ : std_logic;
SIGNAL \Cx|R[4]~19_combout\ : std_logic;
SIGNAL \Cx|R[4]~21_combout\ : std_logic;
SIGNAL \Cx|R[4]~22_combout\ : std_logic;
SIGNAL \Cx|op_1~7\ : std_logic;
SIGNAL \Cx|op_1~8_combout\ : std_logic;
SIGNAL \Cx|op_2~10_combout\ : std_logic;
SIGNAL \Cx|R[5]~24_combout\ : std_logic;
SIGNAL \Cx|R[5]~23_combout\ : std_logic;
SIGNAL \Cx|R[5]~25_combout\ : std_logic;
SIGNAL \Cx|R[5]~26_combout\ : std_logic;
SIGNAL \BUS[5]~50_combout\ : std_logic;
SIGNAL \Fx[5]~input_o\ : std_logic;
SIGNAL \Ax|_~3_combout\ : std_logic;
SIGNAL \Ax|_~1_combout\ : std_logic;
SIGNAL \Ax|op_1~0_combout\ : std_logic;
SIGNAL \Ax|R[0]~3_combout\ : std_logic;
SIGNAL \Ax|op_2~1_cout\ : std_logic;
SIGNAL \Ax|op_2~2_combout\ : std_logic;
SIGNAL \Ax|_~2_combout\ : std_logic;
SIGNAL \Ax|R[1]~8_combout\ : std_logic;
SIGNAL \Ax|R[1]~0_combout\ : std_logic;
SIGNAL \Ax|R[1]~7_combout\ : std_logic;
SIGNAL \Ax|R[1]~9_combout\ : std_logic;
SIGNAL \Ax|R[1]~10_combout\ : std_logic;
SIGNAL \Ax|R[2]~11_combout\ : std_logic;
SIGNAL \Ax|op_1~1\ : std_logic;
SIGNAL \Ax|op_1~2_combout\ : std_logic;
SIGNAL \Ax|op_2~3\ : std_logic;
SIGNAL \Ax|op_2~4_combout\ : std_logic;
SIGNAL \Ax|R[2]~12_combout\ : std_logic;
SIGNAL \Ax|R[2]~13_combout\ : std_logic;
SIGNAL \Ax|R[2]~14_combout\ : std_logic;
SIGNAL \Ax|R[3]~15_combout\ : std_logic;
SIGNAL \Ax|op_1~3\ : std_logic;
SIGNAL \Ax|op_1~4_combout\ : std_logic;
SIGNAL \Ax|op_2~5\ : std_logic;
SIGNAL \Ax|op_2~6_combout\ : std_logic;
SIGNAL \Ax|R[3]~16_combout\ : std_logic;
SIGNAL \Ax|R[3]~17_combout\ : std_logic;
SIGNAL \Ax|R[3]~18_combout\ : std_logic;
SIGNAL \Ax|op_2~7\ : std_logic;
SIGNAL \Ax|op_2~8_combout\ : std_logic;
SIGNAL \Ax|R[4]~20_combout\ : std_logic;
SIGNAL \Ax|op_1~5\ : std_logic;
SIGNAL \Ax|op_1~6_combout\ : std_logic;
SIGNAL \Ax|R[4]~21_combout\ : std_logic;
SIGNAL \Ax|R[4]~19_combout\ : std_logic;
SIGNAL \Ax|R[4]~22_combout\ : std_logic;
SIGNAL \Ax|R[5]~23_combout\ : std_logic;
SIGNAL \Ax|op_2~9\ : std_logic;
SIGNAL \Ax|op_2~10_combout\ : std_logic;
SIGNAL \Ax|R[5]~24_combout\ : std_logic;
SIGNAL \Ax|op_1~7\ : std_logic;
SIGNAL \Ax|op_1~8_combout\ : std_logic;
SIGNAL \Ax|R[5]~25_combout\ : std_logic;
SIGNAL \Ax|R[5]~26_combout\ : std_logic;
SIGNAL \BUS[5]~49_combout\ : std_logic;
SIGNAL \BUS[5]~51_combout\ : std_logic;
SIGNAL \DATA_BUS[5]~input_o\ : std_logic;
SIGNAL \_~54_combout\ : std_logic;
SIGNAL \BUS[5]~53_combout\ : std_logic;
SIGNAL \alu_x|R[5]~feeder_combout\ : std_logic;
SIGNAL \alu_x|R[4]~feeder_combout\ : std_logic;
SIGNAL \alu_y|R[4]~feeder_combout\ : std_logic;
SIGNAL \alu_y|R[3]~feeder_combout\ : std_logic;
SIGNAL \alu_x|R[3]~feeder_combout\ : std_logic;
SIGNAL \alu_y|R[2]~feeder_combout\ : std_logic;
SIGNAL \alu_x|R[2]~feeder_combout\ : std_logic;
SIGNAL \alu_x|R[0]~feeder_combout\ : std_logic;
SIGNAL \alu_y|R[0]~feeder_combout\ : std_logic;
SIGNAL \ALU_prueba|R[0]~1\ : std_logic;
SIGNAL \ALU_prueba|R[1]~3\ : std_logic;
SIGNAL \ALU_prueba|R[2]~5\ : std_logic;
SIGNAL \ALU_prueba|R[3]~7\ : std_logic;
SIGNAL \ALU_prueba|R[4]~9\ : std_logic;
SIGNAL \ALU_prueba|R[5]~10_combout\ : std_logic;
SIGNAL \alu_r|R[5]~feeder_combout\ : std_logic;
SIGNAL \BUS[5]~52_combout\ : std_logic;
SIGNAL \BUS[5]~54_combout\ : std_logic;
SIGNAL \BUS[5]~55_combout\ : std_logic;
SIGNAL \BUS[5]~56_combout\ : std_logic;
SIGNAL \alu_y|R[5]~feeder_combout\ : std_logic;
SIGNAL \ALU_prueba|R[5]~11\ : std_logic;
SIGNAL \ALU_prueba|R[6]~12_combout\ : std_logic;
SIGNAL \alu_r|R[6]~feeder_combout\ : std_logic;
SIGNAL \Fx[6]~input_o\ : std_logic;
SIGNAL \BUS[6]~61_combout\ : std_logic;
SIGNAL \BUS[6]~63_combout\ : std_logic;
SIGNAL \BUS[6]~64_combout\ : std_logic;
SIGNAL \BUS[6]~59_combout\ : std_logic;
SIGNAL \BUS[6]~57_combout\ : std_logic;
SIGNAL \BUS[6]~58_combout\ : std_logic;
SIGNAL \BUS[6]~60_combout\ : std_logic;
SIGNAL \BUS[6]~65_combout\ : std_logic;
SIGNAL \PC|R[6]~27_combout\ : std_logic;
SIGNAL \PC|op_2~12_combout\ : std_logic;
SIGNAL \PC|op_1~10_combout\ : std_logic;
SIGNAL \PC|R[6]~28_combout\ : std_logic;
SIGNAL \PC|R[6]~29_combout\ : std_logic;
SIGNAL \PC|R[6]~30_combout\ : std_logic;
SIGNAL \PC|R[5]~23_combout\ : std_logic;
SIGNAL \PC|R[5]~25_combout\ : std_logic;
SIGNAL \PC|R[5]~26_combout\ : std_logic;
SIGNAL \PC|R[4]~19_combout\ : std_logic;
SIGNAL \PC|R[4]~21_combout\ : std_logic;
SIGNAL \PC|R[4]~22_combout\ : std_logic;
SIGNAL \DATA_BUS[4]~input_o\ : std_logic;
SIGNAL \_~53_combout\ : std_logic;
SIGNAL \BUS[4]~44_combout\ : std_logic;
SIGNAL \ALU_prueba|R[4]~8_combout\ : std_logic;
SIGNAL \alu_r|R[4]~feeder_combout\ : std_logic;
SIGNAL \Fx[4]~input_o\ : std_logic;
SIGNAL \BUS[4]~43_combout\ : std_logic;
SIGNAL \BUS[4]~41_combout\ : std_logic;
SIGNAL \MAR|R[4]~feeder_combout\ : std_logic;
SIGNAL \BUS[4]~39_combout\ : std_logic;
SIGNAL \BUS[4]~40_combout\ : std_logic;
SIGNAL \BUS[4]~42_combout\ : std_logic;
SIGNAL \BUS[4]~45_combout\ : std_logic;
SIGNAL \BUS[4]~46_combout\ : std_logic;
SIGNAL \BUS[4]~47_combout\ : std_logic;
SIGNAL \DST|R[4]~feeder_combout\ : std_logic;
SIGNAL \SelMUX[4]~1_combout\ : std_logic;
SIGNAL \_~62_combout\ : std_logic;
SIGNAL \_~57_combout\ : std_logic;
SIGNAL \SelMUX[1]~3_combout\ : std_logic;
SIGNAL \_~44_combout\ : std_logic;
SIGNAL \PC|R[0]~3_combout\ : std_logic;
SIGNAL \PC|_~0_combout\ : std_logic;
SIGNAL \PC|R[0]~4_combout\ : std_logic;
SIGNAL \PC|R[0]~1_combout\ : std_logic;
SIGNAL \PC|R[0]~2_combout\ : std_logic;
SIGNAL \PC|R[0]~5_combout\ : std_logic;
SIGNAL \DATA_BUS[0]~input_o\ : std_logic;
SIGNAL \_~45_combout\ : std_logic;
SIGNAL \BUS[0]~5_combout\ : std_logic;
SIGNAL \Fx[0]~input_o\ : std_logic;
SIGNAL \ALU_prueba|R[0]~0_combout\ : std_logic;
SIGNAL \alu_r|R[0]~feeder_combout\ : std_logic;
SIGNAL \BUS[0]~4_combout\ : std_logic;
SIGNAL \BUS[0]~6_combout\ : std_logic;
SIGNAL \BUS[0]~7_combout\ : std_logic;
SIGNAL \BUS[0]~2_combout\ : std_logic;
SIGNAL \MAR|R[0]~feeder_combout\ : std_logic;
SIGNAL \BUS[0]~0_combout\ : std_logic;
SIGNAL \BUS[0]~1_combout\ : std_logic;
SIGNAL \BUS[0]~3_combout\ : std_logic;
SIGNAL \BUS[0]~8_combout\ : std_logic;
SIGNAL \SelBus[0]~3_combout\ : std_logic;
SIGNAL \_~22_combout\ : std_logic;
SIGNAL \MAR|R[3]~feeder_combout\ : std_logic;
SIGNAL \BUS[3]~30_combout\ : std_logic;
SIGNAL \ALU_prueba|R[3]~6_combout\ : std_logic;
SIGNAL \alu_r|R[3]~feeder_combout\ : std_logic;
SIGNAL \BUS[3]~34_combout\ : std_logic;
SIGNAL \DATA_BUS[3]~input_o\ : std_logic;
SIGNAL \_~52_combout\ : std_logic;
SIGNAL \BUS[3]~35_combout\ : std_logic;
SIGNAL \BUS[3]~36_combout\ : std_logic;
SIGNAL \BUS[3]~37_combout\ : std_logic;
SIGNAL \Fx[3]~input_o\ : std_logic;
SIGNAL \BUS[3]~31_combout\ : std_logic;
SIGNAL \BUS[3]~32_combout\ : std_logic;
SIGNAL \BUS[3]~33_combout\ : std_logic;
SIGNAL \BUS[3]~38_combout\ : std_logic;
SIGNAL \SelMUX[3]~0_combout\ : std_logic;
SIGNAL \_~40_combout\ : std_logic;
SIGNAL \SelBus[2]~0_combout\ : std_logic;
SIGNAL \_~28_combout\ : std_logic;
SIGNAL \BUS[7]~17_combout\ : std_logic;
SIGNAL \_~60_combout\ : std_logic;
SIGNAL \BUS[7]~18_combout\ : std_logic;
SIGNAL \BUS[7]~19_combout\ : std_logic;
SIGNAL \MAR|R[1]~feeder_combout\ : std_logic;
SIGNAL \BUS[1]~9_combout\ : std_logic;
SIGNAL \BUS[1]~11_combout\ : std_logic;
SIGNAL \Fx[1]~input_o\ : std_logic;
SIGNAL \BUS[1]~10_combout\ : std_logic;
SIGNAL \BUS[1]~12_combout\ : std_logic;
SIGNAL \DATA_BUS[1]~input_o\ : std_logic;
SIGNAL \_~50_combout\ : std_logic;
SIGNAL \BUS[1]~14_combout\ : std_logic;
SIGNAL \ALU_prueba|R[1]~2_combout\ : std_logic;
SIGNAL \alu_r|R[1]~feeder_combout\ : std_logic;
SIGNAL \BUS[1]~13_combout\ : std_logic;
SIGNAL \BUS[1]~15_combout\ : std_logic;
SIGNAL \BUS[1]~16_combout\ : std_logic;
SIGNAL \BUS[1]~20_combout\ : std_logic;
SIGNAL \SelBus[1]~4_combout\ : std_logic;
SIGNAL \_~30_combout\ : std_logic;
SIGNAL \DATA_BUS[2]~input_o\ : std_logic;
SIGNAL \_~51_combout\ : std_logic;
SIGNAL \BUS[2]~26_combout\ : std_logic;
SIGNAL \BUS[2]~27_combout\ : std_logic;
SIGNAL \BUS[2]~28_combout\ : std_logic;
SIGNAL \ALU_prueba|R[2]~4_combout\ : std_logic;
SIGNAL \alu_r|R[2]~feeder_combout\ : std_logic;
SIGNAL \Fx[2]~input_o\ : std_logic;
SIGNAL \BUS[2]~25_combout\ : std_logic;
SIGNAL \BUS[2]~23_combout\ : std_logic;
SIGNAL \BUS[2]~21_combout\ : std_logic;
SIGNAL \BUS[2]~22_combout\ : std_logic;
SIGNAL \BUS[2]~24_combout\ : std_logic;
SIGNAL \BUS[2]~29_combout\ : std_logic;
SIGNAL \_~34_combout\ : std_logic;
SIGNAL \_~35_combout\ : std_logic;
SIGNAL \Ax|R[2]~6_combout\ : std_logic;
SIGNAL \Ax|R[6]~27_combout\ : std_logic;
SIGNAL \Ax|op_2~11\ : std_logic;
SIGNAL \Ax|op_2~12_combout\ : std_logic;
SIGNAL \Ax|op_1~9\ : std_logic;
SIGNAL \Ax|op_1~10_combout\ : std_logic;
SIGNAL \Ax|R[6]~28_combout\ : std_logic;
SIGNAL \Ax|R[6]~29_combout\ : std_logic;
SIGNAL \Ax|R[6]~30_combout\ : std_logic;
SIGNAL \Ax|op_2~13\ : std_logic;
SIGNAL \Ax|op_2~14_combout\ : std_logic;
SIGNAL \Ax|R[7]~34_combout\ : std_logic;
SIGNAL \Ax|R[7]~31_combout\ : std_logic;
SIGNAL \Ax|R[7]~32_combout\ : std_logic;
SIGNAL \Ax|op_1~11\ : std_logic;
SIGNAL \Ax|op_1~12_combout\ : std_logic;
SIGNAL \Ax|R[7]~33_combout\ : std_logic;
SIGNAL \Ax|R[7]~35_combout\ : std_logic;
SIGNAL \Ax|_~0_combout\ : std_logic;
SIGNAL \Ax|R[0]~4_combout\ : std_logic;
SIGNAL \Ax|R[0]~1_combout\ : std_logic;
SIGNAL \Ax|R[0]~2_combout\ : std_logic;
SIGNAL \Ax|R[0]~5_combout\ : std_logic;
SIGNAL \IR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ax|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Bx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SRC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_x|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Cx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_y|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_r|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MAR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MDR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DST|R\ : std_logic_vector(7 DOWNTO 0);
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
ww_SelDST <= SelDST;
ww_SelSRC <= SelSRC;
ww_SelMAR <= SelMAR;
ww_Cmd <= Cmd;
ww_DST_UC <= DST_UC;
ww_SRC_UC <= SRC_UC;
ww_Enable_r <= Enable_r;
ww_DATA_BUS <= DATA_BUS;
Ax_t <= ww_Ax_t;
Bx_t <= ww_Bx_t;
Cx_t <= ww_Cx_t;
x_t <= ww_x_t;
y_t <= ww_y_t;
r_t <= ww_r_t;
ALU_t <= ww_ALU_t;
Bus_t <= ww_Bus_t;
ADDR_BUS <= ww_ADDR_BUS;
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N30
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N30
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N9
\Cx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(0),
	devoe => ww_devoe,
	o => \Cx_t[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\Cx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(1),
	devoe => ww_devoe,
	o => \Cx_t[1]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\Cx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(2),
	devoe => ww_devoe,
	o => \Cx_t[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Cx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(3),
	devoe => ww_devoe,
	o => \Cx_t[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Cx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(4),
	devoe => ww_devoe,
	o => \Cx_t[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\Cx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(5),
	devoe => ww_devoe,
	o => \Cx_t[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\Cx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(6),
	devoe => ww_devoe,
	o => \Cx_t[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\Cx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cx|R\(7),
	devoe => ww_devoe,
	o => \Cx_t[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X0_Y3_N23
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X29_Y39_N2
\ALU_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_t[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\ALU_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[1]~2_combout\,
	devoe => ww_devoe,
	o => \ALU_t[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\ALU_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[2]~4_combout\,
	devoe => ww_devoe,
	o => \ALU_t[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ALU_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[3]~6_combout\,
	devoe => ww_devoe,
	o => \ALU_t[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\ALU_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[4]~8_combout\,
	devoe => ww_devoe,
	o => \ALU_t[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\ALU_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[5]~10_combout\,
	devoe => ww_devoe,
	o => \ALU_t[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\ALU_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[6]~12_combout\,
	devoe => ww_devoe,
	o => \ALU_t[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\ALU_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_prueba|R[7]~14_combout\,
	devoe => ww_devoe,
	o => \ALU_t[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Bus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[0]~8_combout\,
	devoe => ww_devoe,
	o => \Bus_t[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\Bus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[1]~20_combout\,
	devoe => ww_devoe,
	o => \Bus_t[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Bus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[2]~29_combout\,
	devoe => ww_devoe,
	o => \Bus_t[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\Bus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[3]~38_combout\,
	devoe => ww_devoe,
	o => \Bus_t[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Bus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[4]~47_combout\,
	devoe => ww_devoe,
	o => \Bus_t[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\Bus_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[5]~56_combout\,
	devoe => ww_devoe,
	o => \Bus_t[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Bus_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[6]~65_combout\,
	devoe => ww_devoe,
	o => \Bus_t[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\Bus_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS[7]~74_combout\,
	devoe => ww_devoe,
	o => \Bus_t[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\ADDR_BUS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(0),
	devoe => ww_devoe,
	o => \ADDR_BUS[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\ADDR_BUS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(1),
	devoe => ww_devoe,
	o => \ADDR_BUS[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\ADDR_BUS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(2),
	devoe => ww_devoe,
	o => \ADDR_BUS[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\ADDR_BUS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(3),
	devoe => ww_devoe,
	o => \ADDR_BUS[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\ADDR_BUS[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(4),
	devoe => ww_devoe,
	o => \ADDR_BUS[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\ADDR_BUS[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(5),
	devoe => ww_devoe,
	o => \ADDR_BUS[5]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\ADDR_BUS[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(6),
	devoe => ww_devoe,
	o => \ADDR_BUS[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\ADDR_BUS[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAR|R\(7),
	devoe => ww_devoe,
	o => \ADDR_BUS[7]~output_o\);

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

-- Location: IOIBUF_X40_Y0_N8
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

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: IOIBUF_X20_Y0_N8
\SelDST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelDST,
	o => \SelDST~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\SRC_UC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC_UC(1),
	o => \SRC_UC[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\SelSRC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelSRC,
	o => \SelSRC~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\SRC_UC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC_UC(2),
	o => \SRC_UC[2]~input_o\);

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

-- Location: IOIBUF_X29_Y39_N15
\DST_UC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST_UC(3),
	o => \DST_UC[3]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\SRC_UC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC_UC(0),
	o => \SRC_UC[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
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

-- Location: IOIBUF_X34_Y39_N22
\DST_UC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST_UC(2),
	o => \DST_UC[2]~input_o\);

-- Location: LCCOMB_X37_Y4_N2
\SelMUX[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelMUX[2]~4_combout\ = (\SelDST~input_o\ & (\DST_UC[2]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[2]~input_o\,
	datab => \DST|R\(2),
	datad => \SelDST~input_o\,
	combout => \SelMUX[2]~4_combout\);

-- Location: IOIBUF_X36_Y39_N22
\DST_UC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST_UC(1),
	o => \DST_UC[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\DST_UC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST_UC(0),
	o => \DST_UC[0]~input_o\);

-- Location: FF_X36_Y4_N29
\DST|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DST|R\(0));

-- Location: IOIBUF_X29_Y0_N22
\DST_UC[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DST_UC(4),
	o => \DST_UC[4]~input_o\);

-- Location: LCCOMB_X37_Y3_N26
\PC|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|_~1_combout\ = (!\Cmd[1]~input_o\ & (\_~44_combout\ & (\Cmd[0]~input_o\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \_~44_combout\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \PC|_~1_combout\);

-- Location: LCCOMB_X38_Y3_N6
\PC|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|_~2_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|_~2_combout\);

-- Location: LCCOMB_X36_Y3_N16
\PC|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~1_cout\ = CARRY(\PC|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(0),
	datad => VCC,
	cout => \PC|op_2~1_cout\);

-- Location: LCCOMB_X36_Y3_N18
\PC|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~2_combout\ = (\PC|R\(1) & (\PC|op_2~1_cout\ & VCC)) # (!\PC|R\(1) & (!\PC|op_2~1_cout\))
-- \PC|op_2~3\ = CARRY((!\PC|R\(1) & !\PC|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(1),
	datad => VCC,
	cin => \PC|op_2~1_cout\,
	combout => \PC|op_2~2_combout\,
	cout => \PC|op_2~3\);

-- Location: LCCOMB_X38_Y3_N8
\PC|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[1]~8_combout\ = (\PC|R[0]~3_combout\ & ((\PC|R\(1)) # ((\PC|op_2~2_combout\ & \PC|_~2_combout\)))) # (!\PC|R[0]~3_combout\ & (((\PC|op_2~2_combout\ & \PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~3_combout\,
	datab => \PC|R\(1),
	datac => \PC|op_2~2_combout\,
	datad => \PC|_~2_combout\,
	combout => \PC|R[1]~8_combout\);

-- Location: LCCOMB_X37_Y3_N24
\PC|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|_~3_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & \_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|_~3_combout\);

-- Location: LCCOMB_X36_Y3_N0
\PC|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~0_combout\ = (\PC|R\(1) & (\PC|R\(0) $ (VCC))) # (!\PC|R\(1) & (\PC|R\(0) & VCC))
-- \PC|op_1~1\ = CARRY((\PC|R\(1) & \PC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(1),
	datab => \PC|R\(0),
	datad => VCC,
	combout => \PC|op_1~0_combout\,
	cout => \PC|op_1~1\);

-- Location: LCCOMB_X38_Y3_N16
\PC|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|R[1]~0_combout\);

-- Location: LCCOMB_X37_Y4_N24
\PC|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[2]~6_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|R[2]~6_combout\);

-- Location: LCCOMB_X38_Y3_N24
\PC|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[1]~7_combout\ = (\PC|R\(0) & ((\PC|R[2]~6_combout\) # ((\PC|R[1]~0_combout\ & \PC|R\(2))))) # (!\PC|R\(0) & (\PC|R[1]~0_combout\ & ((\PC|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(0),
	datab => \PC|R[1]~0_combout\,
	datac => \PC|R[2]~6_combout\,
	datad => \PC|R\(2),
	combout => \PC|R[1]~7_combout\);

-- Location: LCCOMB_X39_Y3_N2
\PC|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[1]~9_combout\ = (\PC|R[1]~8_combout\) # ((\PC|R[1]~7_combout\) # ((\PC|_~3_combout\ & \PC|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[1]~8_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|op_1~0_combout\,
	datad => \PC|R[1]~7_combout\,
	combout => \PC|R[1]~9_combout\);

-- Location: LCCOMB_X39_Y3_N28
\PC|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[1]~10_combout\ = (\PC|R[1]~9_combout\) # ((\BUS[1]~20_combout\ & \PC|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[1]~20_combout\,
	datac => \PC|_~1_combout\,
	datad => \PC|R[1]~9_combout\,
	combout => \PC|R[1]~10_combout\);

-- Location: FF_X39_Y3_N29
\PC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(1));

-- Location: LCCOMB_X36_Y3_N20
\PC|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~4_combout\ = (\PC|R\(2) & ((GND) # (!\PC|op_2~3\))) # (!\PC|R\(2) & (\PC|op_2~3\ $ (GND)))
-- \PC|op_2~5\ = CARRY((\PC|R\(2)) # (!\PC|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(2),
	datad => VCC,
	cin => \PC|op_2~3\,
	combout => \PC|op_2~4_combout\,
	cout => \PC|op_2~5\);

-- Location: LCCOMB_X38_Y3_N10
\PC|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[2]~12_combout\ = (\PC|_~2_combout\ & ((\PC|op_2~4_combout\) # ((\PC|R[0]~3_combout\ & \PC|R\(2))))) # (!\PC|_~2_combout\ & (((\PC|R[0]~3_combout\ & \PC|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~2_combout\,
	datab => \PC|op_2~4_combout\,
	datac => \PC|R[0]~3_combout\,
	datad => \PC|R\(2),
	combout => \PC|R[2]~12_combout\);

-- Location: LCCOMB_X36_Y3_N2
\PC|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~2_combout\ = (\PC|R\(2) & (!\PC|op_1~1\)) # (!\PC|R\(2) & ((\PC|op_1~1\) # (GND)))
-- \PC|op_1~3\ = CARRY((!\PC|op_1~1\) # (!\PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(2),
	datad => VCC,
	cin => \PC|op_1~1\,
	combout => \PC|op_1~2_combout\,
	cout => \PC|op_1~3\);

-- Location: LCCOMB_X39_Y3_N12
\PC|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[2]~11_combout\ = (\PC|R[2]~6_combout\ & ((\PC|R\(1)) # ((\PC|R\(3) & \PC|R[1]~0_combout\)))) # (!\PC|R[2]~6_combout\ & (\PC|R\(3) & (\PC|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~6_combout\,
	datab => \PC|R\(3),
	datac => \PC|R[1]~0_combout\,
	datad => \PC|R\(1),
	combout => \PC|R[2]~11_combout\);

-- Location: LCCOMB_X39_Y3_N6
\PC|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[2]~13_combout\ = (\PC|R[2]~12_combout\) # ((\PC|R[2]~11_combout\) # ((\PC|_~3_combout\ & \PC|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~12_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|op_1~2_combout\,
	datad => \PC|R[2]~11_combout\,
	combout => \PC|R[2]~13_combout\);

-- Location: LCCOMB_X39_Y3_N30
\PC|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[2]~14_combout\ = (\PC|R[2]~13_combout\) # ((\BUS[2]~29_combout\ & \PC|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~13_combout\,
	datab => \BUS[2]~29_combout\,
	datac => \PC|_~1_combout\,
	combout => \PC|R[2]~14_combout\);

-- Location: FF_X39_Y3_N31
\PC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(2));

-- Location: LCCOMB_X36_Y3_N22
\PC|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~6_combout\ = (\PC|R\(3) & (\PC|op_2~5\ & VCC)) # (!\PC|R\(3) & (!\PC|op_2~5\))
-- \PC|op_2~7\ = CARRY((!\PC|R\(3) & !\PC|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(3),
	datad => VCC,
	cin => \PC|op_2~5\,
	combout => \PC|op_2~6_combout\,
	cout => \PC|op_2~7\);

-- Location: LCCOMB_X38_Y3_N26
\PC|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[3]~16_combout\ = (\PC|R[0]~3_combout\ & ((\PC|R\(3)) # ((\PC|op_2~6_combout\ & \PC|_~2_combout\)))) # (!\PC|R[0]~3_combout\ & (((\PC|op_2~6_combout\ & \PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~3_combout\,
	datab => \PC|R\(3),
	datac => \PC|op_2~6_combout\,
	datad => \PC|_~2_combout\,
	combout => \PC|R[3]~16_combout\);

-- Location: LCCOMB_X36_Y3_N4
\PC|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~4_combout\ = (\PC|R\(3) & (\PC|op_1~3\ $ (GND))) # (!\PC|R\(3) & (!\PC|op_1~3\ & VCC))
-- \PC|op_1~5\ = CARRY((\PC|R\(3) & !\PC|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(3),
	datad => VCC,
	cin => \PC|op_1~3\,
	combout => \PC|op_1~4_combout\,
	cout => \PC|op_1~5\);

-- Location: LCCOMB_X38_Y3_N12
\PC|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[3]~15_combout\ = (\PC|R\(4) & ((\PC|R[1]~0_combout\) # ((\PC|R\(2) & \PC|R[2]~6_combout\)))) # (!\PC|R\(4) & (\PC|R\(2) & (\PC|R[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(4),
	datab => \PC|R\(2),
	datac => \PC|R[2]~6_combout\,
	datad => \PC|R[1]~0_combout\,
	combout => \PC|R[3]~15_combout\);

-- Location: LCCOMB_X39_Y3_N20
\PC|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[3]~17_combout\ = (\PC|R[3]~16_combout\) # ((\PC|R[3]~15_combout\) # ((\PC|_~3_combout\ & \PC|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[3]~16_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|op_1~4_combout\,
	datad => \PC|R[3]~15_combout\,
	combout => \PC|R[3]~17_combout\);

-- Location: LCCOMB_X39_Y3_N24
\PC|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[3]~18_combout\ = (\PC|R[3]~17_combout\) # ((\PC|_~1_combout\ & \BUS[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~1_combout\,
	datab => \BUS[3]~38_combout\,
	datad => \PC|R[3]~17_combout\,
	combout => \PC|R[3]~18_combout\);

-- Location: FF_X39_Y3_N25
\PC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(3));

-- Location: LCCOMB_X36_Y3_N24
\PC|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~8_combout\ = (\PC|R\(4) & ((GND) # (!\PC|op_2~7\))) # (!\PC|R\(4) & (\PC|op_2~7\ $ (GND)))
-- \PC|op_2~9\ = CARRY((\PC|R\(4)) # (!\PC|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(4),
	datad => VCC,
	cin => \PC|op_2~7\,
	combout => \PC|op_2~8_combout\,
	cout => \PC|op_2~9\);

-- Location: LCCOMB_X37_Y3_N12
\PC|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[4]~20_combout\ = (\PC|R[0]~3_combout\ & ((\PC|R\(4)) # ((\PC|op_2~8_combout\ & \PC|_~2_combout\)))) # (!\PC|R[0]~3_combout\ & (\PC|op_2~8_combout\ & ((\PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~3_combout\,
	datab => \PC|op_2~8_combout\,
	datac => \PC|R\(4),
	datad => \PC|_~2_combout\,
	combout => \PC|R[4]~20_combout\);

-- Location: LCCOMB_X36_Y3_N6
\PC|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~6_combout\ = (\PC|R\(4) & (!\PC|op_1~5\)) # (!\PC|R\(4) & ((\PC|op_1~5\) # (GND)))
-- \PC|op_1~7\ = CARRY((!\PC|op_1~5\) # (!\PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(4),
	datad => VCC,
	cin => \PC|op_1~5\,
	combout => \PC|op_1~6_combout\,
	cout => \PC|op_1~7\);

-- Location: LCCOMB_X36_Y3_N8
\PC|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~8_combout\ = (\PC|R\(5) & (\PC|op_1~7\ $ (GND))) # (!\PC|R\(5) & (!\PC|op_1~7\ & VCC))
-- \PC|op_1~9\ = CARRY((\PC|R\(5) & !\PC|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(5),
	datad => VCC,
	cin => \PC|op_1~7\,
	combout => \PC|op_1~8_combout\,
	cout => \PC|op_1~9\);

-- Location: LCCOMB_X36_Y3_N26
\PC|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~10_combout\ = (\PC|R\(5) & (\PC|op_2~9\ & VCC)) # (!\PC|R\(5) & (!\PC|op_2~9\))
-- \PC|op_2~11\ = CARRY((!\PC|R\(5) & !\PC|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(5),
	datad => VCC,
	cin => \PC|op_2~9\,
	combout => \PC|op_2~10_combout\,
	cout => \PC|op_2~11\);

-- Location: LCCOMB_X37_Y3_N30
\PC|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[5]~24_combout\ = (\PC|R[0]~3_combout\ & ((\PC|R\(5)) # ((\PC|op_2~10_combout\ & \PC|_~2_combout\)))) # (!\PC|R[0]~3_combout\ & (((\PC|op_2~10_combout\ & \PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~3_combout\,
	datab => \PC|R\(5),
	datac => \PC|op_2~10_combout\,
	datad => \PC|_~2_combout\,
	combout => \PC|R[5]~24_combout\);

-- Location: IOIBUF_X46_Y0_N8
\DATA_BUS[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(6),
	o => \DATA_BUS[6]~input_o\);

-- Location: LCCOMB_X42_Y3_N6
\_~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~55_combout\ = (\DATA_BUS[6]~input_o\) # (\BUS[6]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_BUS[6]~input_o\,
	datad => \BUS[6]~65_combout\,
	combout => \_~55_combout\);

-- Location: LCCOMB_X39_Y3_N26
\_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~46_combout\ = (\_~62_combout\ & (\SelMUX[2]~4_combout\ & (\SelMUX[3]~0_combout\ & !\SelMUX[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~62_combout\,
	datab => \SelMUX[2]~4_combout\,
	datac => \SelMUX[3]~0_combout\,
	datad => \SelMUX[1]~3_combout\,
	combout => \_~46_combout\);

-- Location: FF_X42_Y3_N7
\MDR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(6));

-- Location: IOIBUF_X49_Y0_N8
\SRC_UC[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC_UC(3),
	o => \SRC_UC[3]~input_o\);

-- Location: FF_X41_Y4_N25
\SRC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRC|R\(3));

-- Location: LCCOMB_X41_Y4_N10
\SelBus[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelBus[3]~1_combout\ = (\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\SRC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[3]~input_o\,
	datab => \SelSRC~input_o\,
	datad => \SRC|R\(3),
	combout => \SelBus[3]~1_combout\);

-- Location: FF_X41_Y4_N9
\SRC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[4]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRC|R\(4));

-- Location: IOIBUF_X56_Y0_N15
\SRC_UC[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SRC_UC(4),
	o => \SRC_UC[4]~input_o\);

-- Location: LCCOMB_X41_Y4_N8
\SelBus[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelBus[4]~2_combout\ = (\SelSRC~input_o\ & ((\SRC_UC[4]~input_o\))) # (!\SelSRC~input_o\ & (\SRC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelSRC~input_o\,
	datac => \SRC|R\(4),
	datad => \SRC_UC[4]~input_o\,
	combout => \SelBus[4]~2_combout\);

-- Location: LCCOMB_X41_Y4_N22
\_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~20_combout\ = (\SelBus[3]~1_combout\ & (!\SelBus[4]~2_combout\ & \SelBus[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~1_combout\,
	datab => \SelBus[4]~2_combout\,
	datad => \SelBus[2]~0_combout\,
	combout => \_~20_combout\);

-- Location: LCCOMB_X42_Y4_N0
\_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~29_combout\ = (!\SelBus[1]~4_combout\ & (\SelBus[0]~3_combout\ & \_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~4_combout\,
	datac => \SelBus[0]~3_combout\,
	datad => \_~20_combout\,
	combout => \_~29_combout\);

-- Location: LCCOMB_X42_Y4_N6
\BUS[6]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~62_combout\ = (\PC|R\(6) & ((\_~30_combout\) # ((\MDR|R\(6) & \_~29_combout\)))) # (!\PC|R\(6) & (\MDR|R\(6) & ((\_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(6),
	datab => \MDR|R\(6),
	datac => \_~30_combout\,
	datad => \_~29_combout\,
	combout => \BUS[6]~62_combout\);

-- Location: LCCOMB_X36_Y4_N22
\SelMUX[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelMUX[0]~2_combout\ = (\SelDST~input_o\ & (\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST_UC[0]~input_o\,
	datac => \SelDST~input_o\,
	datad => \DST|R\(0),
	combout => \SelMUX[0]~2_combout\);

-- Location: LCCOMB_X37_Y4_N0
\_~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~61_combout\ = (!\SelMUX[0]~2_combout\ & ((\SelDST~input_o\ & (!\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((!\DST|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \SelMUX[0]~2_combout\,
	datac => \DST_UC[4]~input_o\,
	datad => \DST|R\(4),
	combout => \_~61_combout\);

-- Location: LCCOMB_X39_Y3_N10
\_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~38_combout\ = (\SelMUX[1]~3_combout\ & (!\SelMUX[3]~0_combout\ & (\_~61_combout\ & \SelMUX[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[1]~3_combout\,
	datab => \SelMUX[3]~0_combout\,
	datac => \_~61_combout\,
	datad => \SelMUX[2]~4_combout\,
	combout => \_~38_combout\);

-- Location: FF_X41_Y3_N31
\alu_x|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[6]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(6));

-- Location: LCCOMB_X37_Y3_N0
\alu_y|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[6]~feeder_combout\ = \BUS[6]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[6]~65_combout\,
	combout => \alu_y|R[6]~feeder_combout\);

-- Location: LCCOMB_X36_Y4_N2
\_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~39_combout\ = (\_~62_combout\ & (!\SelMUX[3]~0_combout\ & (\SelMUX[2]~4_combout\ & \SelMUX[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~62_combout\,
	datab => \SelMUX[3]~0_combout\,
	datac => \SelMUX[2]~4_combout\,
	datad => \SelMUX[1]~3_combout\,
	combout => \_~39_combout\);

-- Location: FF_X37_Y3_N1
\alu_y|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(6));

-- Location: LCCOMB_X41_Y2_N10
\MAR|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[5]~feeder_combout\ = \BUS[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[5]~56_combout\,
	combout => \MAR|R[5]~feeder_combout\);

-- Location: LCCOMB_X40_Y3_N12
\_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~42_combout\ = (!\SelMUX[1]~3_combout\ & (\SelMUX[2]~4_combout\ & (\SelMUX[3]~0_combout\ & \_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[1]~3_combout\,
	datab => \SelMUX[2]~4_combout\,
	datac => \SelMUX[3]~0_combout\,
	datad => \_~61_combout\,
	combout => \_~42_combout\);

-- Location: FF_X41_Y2_N11
\MAR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(5));

-- Location: LCCOMB_X40_Y3_N14
\_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~41_combout\ = (\SelMUX[1]~3_combout\ & (\_~61_combout\ & (\SelMUX[3]~0_combout\ & \SelMUX[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[1]~3_combout\,
	datab => \_~61_combout\,
	datac => \SelMUX[3]~0_combout\,
	datad => \SelMUX[2]~4_combout\,
	combout => \_~41_combout\);

-- Location: FF_X41_Y2_N1
\IR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[5]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(5));

-- Location: LCCOMB_X40_Y4_N10
\_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~21_combout\ = (!\SelBus[0]~3_combout\ & (!\SelBus[1]~4_combout\ & \_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[0]~3_combout\,
	datac => \SelBus[1]~4_combout\,
	datad => \_~20_combout\,
	combout => \_~21_combout\);

-- Location: LCCOMB_X41_Y2_N0
\BUS[5]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~48_combout\ = (\_~22_combout\ & ((\IR|R\(5)) # ((\MAR|R\(5) & \_~21_combout\)))) # (!\_~22_combout\ & (\MAR|R\(5) & ((\_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~22_combout\,
	datab => \MAR|R\(5),
	datac => \IR|R\(5),
	datad => \_~21_combout\,
	combout => \BUS[5]~48_combout\);

-- Location: LCCOMB_X41_Y4_N4
\_~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~59_combout\ = (!\SelBus[4]~2_combout\ & ((\SelSRC~input_o\ & (!\SRC_UC[1]~input_o\)) # (!\SelSRC~input_o\ & ((!\SRC|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[1]~input_o\,
	datab => \SelSRC~input_o\,
	datac => \SelBus[4]~2_combout\,
	datad => \SRC|R\(1),
	combout => \_~59_combout\);

-- Location: LCCOMB_X41_Y4_N28
\_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~27_combout\ = (!\SelBus[3]~1_combout\ & (\_~59_combout\ & (\SelBus[2]~0_combout\ & \SelBus[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[3]~1_combout\,
	datab => \_~59_combout\,
	datac => \SelBus[2]~0_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~27_combout\);

-- Location: LCCOMB_X41_Y4_N26
\_~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~58_combout\ = (!\SelBus[3]~1_combout\ & ((\SelSRC~input_o\ & ((!\SRC_UC[2]~input_o\))) # (!\SelSRC~input_o\ & (!\SRC|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC|R\(2),
	datab => \SelSRC~input_o\,
	datac => \SRC_UC[2]~input_o\,
	datad => \SelBus[3]~1_combout\,
	combout => \_~58_combout\);

-- Location: LCCOMB_X41_Y4_N16
\_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~24_combout\ = (\SelBus[4]~2_combout\ & (\SelBus[1]~4_combout\ & (\_~58_combout\ & !\SelBus[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[4]~2_combout\,
	datab => \SelBus[1]~4_combout\,
	datac => \_~58_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~24_combout\);

-- Location: LCCOMB_X40_Y5_N6
\_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~37_combout\ = (\_~61_combout\ & (\SelMUX[1]~3_combout\ & \_~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~61_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \_~34_combout\,
	combout => \_~37_combout\);

-- Location: LCCOMB_X39_Y5_N26
\Cx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|_~1_combout\ = (!\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|_~1_combout\);

-- Location: LCCOMB_X41_Y5_N8
\Cx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|_~3_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\_~37_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \_~37_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \Cx|_~3_combout\);

-- Location: LCCOMB_X42_Y5_N14
\Cx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~1_cout\ = CARRY(\Cx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(0),
	datad => VCC,
	cout => \Cx|op_2~1_cout\);

-- Location: LCCOMB_X42_Y5_N16
\Cx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~2_combout\ = (\Cx|R\(1) & (\Cx|op_2~1_cout\ & VCC)) # (!\Cx|R\(1) & (!\Cx|op_2~1_cout\))
-- \Cx|op_2~3\ = CARRY((!\Cx|R\(1) & !\Cx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R\(1),
	datad => VCC,
	cin => \Cx|op_2~1_cout\,
	combout => \Cx|op_2~2_combout\,
	cout => \Cx|op_2~3\);

-- Location: LCCOMB_X40_Y5_N10
\Cx|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[0]~3_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\_~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|R[0]~3_combout\);

-- Location: LCCOMB_X40_Y5_N2
\Cx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|_~2_combout\);

-- Location: LCCOMB_X41_Y5_N6
\Cx|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[1]~8_combout\ = (\Cx|R\(1) & ((\Cx|R[0]~3_combout\) # ((\Cx|op_2~2_combout\ & \Cx|_~2_combout\)))) # (!\Cx|R\(1) & (\Cx|op_2~2_combout\ & ((\Cx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(1),
	datab => \Cx|op_2~2_combout\,
	datac => \Cx|R[0]~3_combout\,
	datad => \Cx|_~2_combout\,
	combout => \Cx|R[1]~8_combout\);

-- Location: LCCOMB_X41_Y5_N14
\Cx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~0_combout\ = (\Cx|R\(0) & (\Cx|R\(1) $ (VCC))) # (!\Cx|R\(0) & (\Cx|R\(1) & VCC))
-- \Cx|op_1~1\ = CARRY((\Cx|R\(0) & \Cx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(0),
	datab => \Cx|R\(1),
	datad => VCC,
	combout => \Cx|op_1~0_combout\,
	cout => \Cx|op_1~1\);

-- Location: LCCOMB_X40_Y5_N24
\Cx|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|R[1]~0_combout\);

-- Location: LCCOMB_X40_Y5_N8
\Cx|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|R[2]~6_combout\);

-- Location: LCCOMB_X41_Y5_N28
\Cx|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[1]~7_combout\ = (\Cx|R\(0) & ((\Cx|R[2]~6_combout\) # ((\Cx|R[1]~0_combout\ & \Cx|R\(2))))) # (!\Cx|R\(0) & (\Cx|R[1]~0_combout\ & (\Cx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(0),
	datab => \Cx|R[1]~0_combout\,
	datac => \Cx|R\(2),
	datad => \Cx|R[2]~6_combout\,
	combout => \Cx|R[1]~7_combout\);

-- Location: LCCOMB_X41_Y5_N10
\Cx|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[1]~9_combout\ = (\Cx|R[1]~8_combout\) # ((\Cx|R[1]~7_combout\) # ((\Cx|op_1~0_combout\ & \Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[1]~8_combout\,
	datab => \Cx|op_1~0_combout\,
	datac => \Cx|_~3_combout\,
	datad => \Cx|R[1]~7_combout\,
	combout => \Cx|R[1]~9_combout\);

-- Location: LCCOMB_X41_Y5_N4
\Cx|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[1]~10_combout\ = (\Cx|R[1]~9_combout\) # ((\BUS[1]~20_combout\ & \Cx|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[1]~20_combout\,
	datac => \Cx|_~1_combout\,
	datad => \Cx|R[1]~9_combout\,
	combout => \Cx|R[1]~10_combout\);

-- Location: FF_X41_Y5_N5
\Cx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(1));

-- Location: LCCOMB_X38_Y5_N28
\Cx|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[0]~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \_~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|R[0]~1_combout\);

-- Location: LCCOMB_X38_Y5_N22
\Cx|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[0]~2_combout\ = (\Cx|R\(0) & (\Cx|R\(1) & (\Cx|R[1]~0_combout\))) # (!\Cx|R\(0) & ((\Cx|R[0]~1_combout\) # ((\Cx|R\(1) & \Cx|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(0),
	datab => \Cx|R\(1),
	datac => \Cx|R[1]~0_combout\,
	datad => \Cx|R[0]~1_combout\,
	combout => \Cx|R[0]~2_combout\);

-- Location: LCCOMB_X42_Y5_N20
\Cx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~6_combout\ = (\Cx|R\(3) & (\Cx|op_2~5\ & VCC)) # (!\Cx|R\(3) & (!\Cx|op_2~5\))
-- \Cx|op_2~7\ = CARRY((!\Cx|R\(3) & !\Cx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R\(3),
	datad => VCC,
	cin => \Cx|op_2~5\,
	combout => \Cx|op_2~6_combout\,
	cout => \Cx|op_2~7\);

-- Location: LCCOMB_X42_Y5_N22
\Cx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~8_combout\ = (\Cx|R\(4) & ((GND) # (!\Cx|op_2~7\))) # (!\Cx|R\(4) & (\Cx|op_2~7\ $ (GND)))
-- \Cx|op_2~9\ = CARRY((\Cx|R\(4)) # (!\Cx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(4),
	datad => VCC,
	cin => \Cx|op_2~7\,
	combout => \Cx|op_2~8_combout\,
	cout => \Cx|op_2~9\);

-- Location: LCCOMB_X42_Y5_N24
\Cx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~10_combout\ = (\Cx|R\(5) & (\Cx|op_2~9\ & VCC)) # (!\Cx|R\(5) & (!\Cx|op_2~9\))
-- \Cx|op_2~11\ = CARRY((!\Cx|R\(5) & !\Cx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(5),
	datad => VCC,
	cin => \Cx|op_2~9\,
	combout => \Cx|op_2~10_combout\,
	cout => \Cx|op_2~11\);

-- Location: LCCOMB_X42_Y5_N26
\Cx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~12_combout\ = (\Cx|R\(6) & ((GND) # (!\Cx|op_2~11\))) # (!\Cx|R\(6) & (\Cx|op_2~11\ $ (GND)))
-- \Cx|op_2~13\ = CARRY((\Cx|R\(6)) # (!\Cx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(6),
	datad => VCC,
	cin => \Cx|op_2~11\,
	combout => \Cx|op_2~12_combout\,
	cout => \Cx|op_2~13\);

-- Location: LCCOMB_X42_Y5_N10
\Cx|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[6]~28_combout\ = (\Cx|R\(5) & ((\Cx|R[2]~6_combout\) # ((\Cx|R[0]~3_combout\ & \Cx|R\(6))))) # (!\Cx|R\(5) & (\Cx|R[0]~3_combout\ & ((\Cx|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(5),
	datab => \Cx|R[0]~3_combout\,
	datac => \Cx|R[2]~6_combout\,
	datad => \Cx|R\(6),
	combout => \Cx|R[6]~28_combout\);

-- Location: LCCOMB_X42_Y5_N0
\Cx|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[6]~29_combout\ = (\Cx|R[6]~28_combout\) # ((\Cx|_~2_combout\ & \Cx|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cx|_~2_combout\,
	datac => \Cx|op_2~12_combout\,
	datad => \Cx|R[6]~28_combout\,
	combout => \Cx|R[6]~29_combout\);

-- Location: LCCOMB_X41_Y5_N22
\Cx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~8_combout\ = (\Cx|R\(5) & (\Cx|op_1~7\ $ (GND))) # (!\Cx|R\(5) & (!\Cx|op_1~7\ & VCC))
-- \Cx|op_1~9\ = CARRY((\Cx|R\(5) & !\Cx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R\(5),
	datad => VCC,
	cin => \Cx|op_1~7\,
	combout => \Cx|op_1~8_combout\,
	cout => \Cx|op_1~9\);

-- Location: LCCOMB_X41_Y5_N24
\Cx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~10_combout\ = (\Cx|R\(6) & (!\Cx|op_1~9\)) # (!\Cx|R\(6) & ((\Cx|op_1~9\) # (GND)))
-- \Cx|op_1~11\ = CARRY((!\Cx|op_1~9\) # (!\Cx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R\(6),
	datad => VCC,
	cin => \Cx|op_1~9\,
	combout => \Cx|op_1~10_combout\,
	cout => \Cx|op_1~11\);

-- Location: LCCOMB_X42_Y5_N4
\Cx|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[6]~27_combout\ = (\Cx|R\(7) & ((\Cx|R[1]~0_combout\) # ((\Cx|op_1~10_combout\ & \Cx|_~3_combout\)))) # (!\Cx|R\(7) & (\Cx|op_1~10_combout\ & ((\Cx|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(7),
	datab => \Cx|op_1~10_combout\,
	datac => \Cx|R[1]~0_combout\,
	datad => \Cx|_~3_combout\,
	combout => \Cx|R[6]~27_combout\);

-- Location: LCCOMB_X42_Y5_N6
\Cx|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[6]~30_combout\ = (\Cx|R[6]~29_combout\) # ((\Cx|R[6]~27_combout\) # ((\Cx|_~1_combout\ & \BUS[6]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|_~1_combout\,
	datab => \Cx|R[6]~29_combout\,
	datac => \Cx|R[6]~27_combout\,
	datad => \BUS[6]~65_combout\,
	combout => \Cx|R[6]~30_combout\);

-- Location: FF_X42_Y5_N7
\Cx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(6));

-- Location: LCCOMB_X41_Y5_N26
\Cx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~12_combout\ = \Cx|op_1~11\ $ (!\Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cx|R\(7),
	cin => \Cx|op_1~11\,
	combout => \Cx|op_1~12_combout\);

-- Location: LCCOMB_X38_Y5_N10
\Cx|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[7]~31_combout\ = (\Cx|R\(6) & ((\Cx|R[2]~6_combout\) # ((\Cx|op_1~12_combout\ & \Cx|_~3_combout\)))) # (!\Cx|R\(6) & (\Cx|op_1~12_combout\ & ((\Cx|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(6),
	datab => \Cx|op_1~12_combout\,
	datac => \Cx|R[2]~6_combout\,
	datad => \Cx|_~3_combout\,
	combout => \Cx|R[7]~31_combout\);

-- Location: LCCOMB_X39_Y4_N26
\_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~49_combout\ = (\SelMUX[3]~0_combout\ & (\_~62_combout\ & (\SelMUX[1]~3_combout\ & \SelMUX[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[3]~0_combout\,
	datab => \_~62_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \SelMUX[2]~4_combout\,
	combout => \_~49_combout\);

-- Location: FF_X39_Y5_N17
\BP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BUS[7]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(7));

-- Location: IOIBUF_X62_Y0_N29
\DATA_BUS[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(7),
	o => \DATA_BUS[7]~input_o\);

-- Location: LCCOMB_X40_Y5_N12
\_~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~56_combout\ = (\DATA_BUS[7]~input_o\) # (\BUS[7]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATA_BUS[7]~input_o\,
	datac => \BUS[7]~74_combout\,
	combout => \_~56_combout\);

-- Location: FF_X40_Y5_N13
\MDR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(7));

-- Location: LCCOMB_X41_Y4_N24
\_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~33_combout\ = (\_~20_combout\ & (\SelBus[1]~4_combout\ & \SelBus[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~20_combout\,
	datab => \SelBus[1]~4_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~33_combout\);

-- Location: LCCOMB_X39_Y5_N22
\BUS[7]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~71_combout\ = (\_~29_combout\ & ((\MDR|R\(7)) # ((\BP|R\(7) & \_~33_combout\)))) # (!\_~29_combout\ & (\BP|R\(7) & ((\_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~29_combout\,
	datab => \BP|R\(7),
	datac => \MDR|R\(7),
	datad => \_~33_combout\,
	combout => \BUS[7]~71_combout\);

-- Location: LCCOMB_X37_Y4_N8
\_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~47_combout\ = (\_~34_combout\ & (\SelMUX[4]~1_combout\ & (!\SelMUX[1]~3_combout\ & !\SelMUX[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~34_combout\,
	datab => \SelMUX[4]~1_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \SelMUX[0]~2_combout\,
	combout => \_~47_combout\);

-- Location: LCCOMB_X37_Y2_N18
\SP|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|_~1_combout\ = (!\Cmd[2]~input_o\ & (\_~47_combout\ & (\Cmd[0]~input_o\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \_~47_combout\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \SP|_~1_combout\);

-- Location: LCCOMB_X36_Y2_N10
\SP|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|_~2_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|_~2_combout\);

-- Location: LCCOMB_X37_Y2_N14
\SP|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|_~3_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|_~3_combout\);

-- Location: LCCOMB_X37_Y2_N22
\SP|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|_~0_combout\);

-- Location: LCCOMB_X38_Y2_N24
\SP|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[0]~3_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\_~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|R[0]~3_combout\);

-- Location: LCCOMB_X37_Y2_N28
\SP|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[0]~4_combout\ = (\SP|_~0_combout\ & ((\SP|R\(7)) # ((\SP|R\(0) & \SP|R[0]~3_combout\)))) # (!\SP|_~0_combout\ & (((\SP|R\(0) & \SP|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~0_combout\,
	datab => \SP|R\(7),
	datac => \SP|R\(0),
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[0]~4_combout\);

-- Location: LCCOMB_X37_Y2_N26
\SP|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|R[1]~0_combout\);

-- Location: LCCOMB_X36_Y2_N14
\SP|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[0]~1_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \_~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|R[0]~1_combout\);

-- Location: LCCOMB_X37_Y2_N0
\SP|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[0]~2_combout\ = (\SP|R[1]~0_combout\ & ((\SP|R\(1)) # ((!\SP|R\(0) & \SP|R[0]~1_combout\)))) # (!\SP|R[1]~0_combout\ & (((!\SP|R\(0) & \SP|R[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R[1]~0_combout\,
	datab => \SP|R\(1),
	datac => \SP|R\(0),
	datad => \SP|R[0]~1_combout\,
	combout => \SP|R[0]~2_combout\);

-- Location: LCCOMB_X37_Y2_N12
\SP|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[0]~5_combout\ = (\SP|R[0]~4_combout\) # ((\SP|R[0]~2_combout\) # ((\SP|_~1_combout\ & \BUS[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~1_combout\,
	datab => \SP|R[0]~4_combout\,
	datac => \BUS[0]~8_combout\,
	datad => \SP|R[0]~2_combout\,
	combout => \SP|R[0]~5_combout\);

-- Location: FF_X37_Y2_N13
\SP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(0));

-- Location: LCCOMB_X38_Y2_N8
\SP|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~0_combout\ = (\SP|R\(0) & (\SP|R\(1) $ (VCC))) # (!\SP|R\(0) & (\SP|R\(1) & VCC))
-- \SP|op_1~1\ = CARRY((\SP|R\(0) & \SP|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(0),
	datab => \SP|R\(1),
	datad => VCC,
	combout => \SP|op_1~0_combout\,
	cout => \SP|op_1~1\);

-- Location: LCCOMB_X37_Y2_N16
\SP|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~47_combout\,
	combout => \SP|R[2]~6_combout\);

-- Location: LCCOMB_X36_Y2_N4
\SP|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[1]~7_combout\ = (\SP|R\(2) & ((\SP|R[1]~0_combout\) # ((\SP|R[2]~6_combout\ & \SP|R\(0))))) # (!\SP|R\(2) & (\SP|R[2]~6_combout\ & (\SP|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(2),
	datab => \SP|R[2]~6_combout\,
	datac => \SP|R\(0),
	datad => \SP|R[1]~0_combout\,
	combout => \SP|R[1]~7_combout\);

-- Location: LCCOMB_X35_Y2_N0
\SP|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~1_cout\ = CARRY(\SP|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(0),
	datad => VCC,
	cout => \SP|op_2~1_cout\);

-- Location: LCCOMB_X35_Y2_N2
\SP|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~2_combout\ = (\SP|R\(1) & (\SP|op_2~1_cout\ & VCC)) # (!\SP|R\(1) & (!\SP|op_2~1_cout\))
-- \SP|op_2~3\ = CARRY((!\SP|R\(1) & !\SP|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(1),
	datad => VCC,
	cin => \SP|op_2~1_cout\,
	combout => \SP|op_2~2_combout\,
	cout => \SP|op_2~3\);

-- Location: LCCOMB_X36_Y2_N24
\SP|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[1]~8_combout\ = (\SP|_~2_combout\ & ((\SP|op_2~2_combout\) # ((\SP|R\(1) & \SP|R[0]~3_combout\)))) # (!\SP|_~2_combout\ & (((\SP|R\(1) & \SP|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~2_combout\,
	datab => \SP|op_2~2_combout\,
	datac => \SP|R\(1),
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[1]~8_combout\);

-- Location: LCCOMB_X36_Y2_N30
\SP|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[1]~9_combout\ = (\SP|R[1]~7_combout\) # ((\SP|R[1]~8_combout\) # ((\SP|op_1~0_combout\ & \SP|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|op_1~0_combout\,
	datab => \SP|_~3_combout\,
	datac => \SP|R[1]~7_combout\,
	datad => \SP|R[1]~8_combout\,
	combout => \SP|R[1]~9_combout\);

-- Location: LCCOMB_X36_Y2_N20
\SP|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[1]~10_combout\ = (\SP|R[1]~9_combout\) # ((\SP|_~1_combout\ & \BUS[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \SP|R[1]~9_combout\,
	datad => \BUS[1]~20_combout\,
	combout => \SP|R[1]~10_combout\);

-- Location: FF_X36_Y2_N21
\SP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(1));

-- Location: LCCOMB_X35_Y2_N4
\SP|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~4_combout\ = (\SP|R\(2) & ((GND) # (!\SP|op_2~3\))) # (!\SP|R\(2) & (\SP|op_2~3\ $ (GND)))
-- \SP|op_2~5\ = CARRY((\SP|R\(2)) # (!\SP|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(2),
	datad => VCC,
	cin => \SP|op_2~3\,
	combout => \SP|op_2~4_combout\,
	cout => \SP|op_2~5\);

-- Location: LCCOMB_X36_Y2_N26
\SP|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[2]~12_combout\ = (\SP|_~2_combout\ & ((\SP|op_2~4_combout\) # ((\SP|R\(2) & \SP|R[0]~3_combout\)))) # (!\SP|_~2_combout\ & (((\SP|R\(2) & \SP|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~2_combout\,
	datab => \SP|op_2~4_combout\,
	datac => \SP|R\(2),
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[2]~12_combout\);

-- Location: LCCOMB_X38_Y2_N10
\SP|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~2_combout\ = (\SP|R\(2) & (!\SP|op_1~1\)) # (!\SP|R\(2) & ((\SP|op_1~1\) # (GND)))
-- \SP|op_1~3\ = CARRY((!\SP|op_1~1\) # (!\SP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(2),
	datad => VCC,
	cin => \SP|op_1~1\,
	combout => \SP|op_1~2_combout\,
	cout => \SP|op_1~3\);

-- Location: LCCOMB_X36_Y2_N8
\SP|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[2]~11_combout\ = (\SP|R\(3) & ((\SP|R[1]~0_combout\) # ((\SP|R[2]~6_combout\ & \SP|R\(1))))) # (!\SP|R\(3) & (\SP|R[2]~6_combout\ & (\SP|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(3),
	datab => \SP|R[2]~6_combout\,
	datac => \SP|R\(1),
	datad => \SP|R[1]~0_combout\,
	combout => \SP|R[2]~11_combout\);

-- Location: LCCOMB_X36_Y2_N28
\SP|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[2]~13_combout\ = (\SP|R[2]~12_combout\) # ((\SP|R[2]~11_combout\) # ((\SP|_~3_combout\ & \SP|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R[2]~12_combout\,
	datab => \SP|_~3_combout\,
	datac => \SP|op_1~2_combout\,
	datad => \SP|R[2]~11_combout\,
	combout => \SP|R[2]~13_combout\);

-- Location: LCCOMB_X36_Y2_N6
\SP|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[2]~14_combout\ = (\SP|R[2]~13_combout\) # ((\SP|_~1_combout\ & \BUS[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \BUS[2]~29_combout\,
	datad => \SP|R[2]~13_combout\,
	combout => \SP|R[2]~14_combout\);

-- Location: FF_X36_Y2_N7
\SP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(2));

-- Location: LCCOMB_X38_Y2_N12
\SP|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~4_combout\ = (\SP|R\(3) & (\SP|op_1~3\ $ (GND))) # (!\SP|R\(3) & (!\SP|op_1~3\ & VCC))
-- \SP|op_1~5\ = CARRY((\SP|R\(3) & !\SP|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(3),
	datad => VCC,
	cin => \SP|op_1~3\,
	combout => \SP|op_1~4_combout\,
	cout => \SP|op_1~5\);

-- Location: LCCOMB_X36_Y2_N18
\SP|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[3]~15_combout\ = (\SP|R\(4) & ((\SP|R[1]~0_combout\) # ((\SP|R[2]~6_combout\ & \SP|R\(2))))) # (!\SP|R\(4) & (\SP|R[2]~6_combout\ & (\SP|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(4),
	datab => \SP|R[2]~6_combout\,
	datac => \SP|R\(2),
	datad => \SP|R[1]~0_combout\,
	combout => \SP|R[3]~15_combout\);

-- Location: LCCOMB_X35_Y2_N6
\SP|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~6_combout\ = (\SP|R\(3) & (\SP|op_2~5\ & VCC)) # (!\SP|R\(3) & (!\SP|op_2~5\))
-- \SP|op_2~7\ = CARRY((!\SP|R\(3) & !\SP|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(3),
	datad => VCC,
	cin => \SP|op_2~5\,
	combout => \SP|op_2~6_combout\,
	cout => \SP|op_2~7\);

-- Location: LCCOMB_X36_Y2_N16
\SP|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[3]~16_combout\ = (\SP|R\(3) & ((\SP|R[0]~3_combout\) # ((\SP|op_2~6_combout\ & \SP|_~2_combout\)))) # (!\SP|R\(3) & (\SP|op_2~6_combout\ & ((\SP|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(3),
	datab => \SP|op_2~6_combout\,
	datac => \SP|R[0]~3_combout\,
	datad => \SP|_~2_combout\,
	combout => \SP|R[3]~16_combout\);

-- Location: LCCOMB_X36_Y2_N22
\SP|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[3]~17_combout\ = (\SP|R[3]~15_combout\) # ((\SP|R[3]~16_combout\) # ((\SP|op_1~4_combout\ & \SP|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|op_1~4_combout\,
	datab => \SP|R[3]~15_combout\,
	datac => \SP|_~3_combout\,
	datad => \SP|R[3]~16_combout\,
	combout => \SP|R[3]~17_combout\);

-- Location: LCCOMB_X36_Y2_N12
\SP|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[3]~18_combout\ = (\SP|R[3]~17_combout\) # ((\SP|_~1_combout\ & \BUS[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \SP|R[3]~17_combout\,
	datad => \BUS[3]~38_combout\,
	combout => \SP|R[3]~18_combout\);

-- Location: FF_X36_Y2_N13
\SP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(3));

-- Location: LCCOMB_X38_Y2_N14
\SP|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~6_combout\ = (\SP|R\(4) & (!\SP|op_1~5\)) # (!\SP|R\(4) & ((\SP|op_1~5\) # (GND)))
-- \SP|op_1~7\ = CARRY((!\SP|op_1~5\) # (!\SP|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(4),
	datad => VCC,
	cin => \SP|op_1~5\,
	combout => \SP|op_1~6_combout\,
	cout => \SP|op_1~7\);

-- Location: LCCOMB_X37_Y2_N4
\SP|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[4]~19_combout\ = (\SP|R\(5) & ((\SP|R[1]~0_combout\) # ((\SP|R\(3) & \SP|R[2]~6_combout\)))) # (!\SP|R\(5) & (\SP|R\(3) & ((\SP|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(5),
	datab => \SP|R\(3),
	datac => \SP|R[1]~0_combout\,
	datad => \SP|R[2]~6_combout\,
	combout => \SP|R[4]~19_combout\);

-- Location: LCCOMB_X35_Y2_N8
\SP|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~8_combout\ = (\SP|R\(4) & ((GND) # (!\SP|op_2~7\))) # (!\SP|R\(4) & (\SP|op_2~7\ $ (GND)))
-- \SP|op_2~9\ = CARRY((\SP|R\(4)) # (!\SP|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(4),
	datad => VCC,
	cin => \SP|op_2~7\,
	combout => \SP|op_2~8_combout\,
	cout => \SP|op_2~9\);

-- Location: LCCOMB_X38_Y2_N6
\SP|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[4]~20_combout\ = (\SP|R\(4) & ((\SP|R[0]~3_combout\) # ((\SP|op_2~8_combout\ & \SP|_~2_combout\)))) # (!\SP|R\(4) & (\SP|op_2~8_combout\ & (\SP|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(4),
	datab => \SP|op_2~8_combout\,
	datac => \SP|_~2_combout\,
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[4]~20_combout\);

-- Location: LCCOMB_X38_Y2_N2
\SP|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[4]~21_combout\ = (\SP|R[4]~19_combout\) # ((\SP|R[4]~20_combout\) # ((\SP|_~3_combout\ & \SP|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~3_combout\,
	datab => \SP|op_1~6_combout\,
	datac => \SP|R[4]~19_combout\,
	datad => \SP|R[4]~20_combout\,
	combout => \SP|R[4]~21_combout\);

-- Location: LCCOMB_X38_Y2_N0
\SP|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[4]~22_combout\ = (\SP|R[4]~21_combout\) # ((\SP|_~1_combout\ & \BUS[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \BUS[4]~47_combout\,
	datad => \SP|R[4]~21_combout\,
	combout => \SP|R[4]~22_combout\);

-- Location: FF_X38_Y2_N1
\SP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(4));

-- Location: LCCOMB_X36_Y2_N0
\SP|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[5]~23_combout\ = (\SP|R\(4) & ((\SP|R[2]~6_combout\) # ((\SP|R\(6) & \SP|R[1]~0_combout\)))) # (!\SP|R\(4) & (((\SP|R\(6) & \SP|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(4),
	datab => \SP|R[2]~6_combout\,
	datac => \SP|R\(6),
	datad => \SP|R[1]~0_combout\,
	combout => \SP|R[5]~23_combout\);

-- Location: LCCOMB_X38_Y2_N16
\SP|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~8_combout\ = (\SP|R\(5) & (\SP|op_1~7\ $ (GND))) # (!\SP|R\(5) & (!\SP|op_1~7\ & VCC))
-- \SP|op_1~9\ = CARRY((\SP|R\(5) & !\SP|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(5),
	datad => VCC,
	cin => \SP|op_1~7\,
	combout => \SP|op_1~8_combout\,
	cout => \SP|op_1~9\);

-- Location: LCCOMB_X35_Y2_N10
\SP|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~10_combout\ = (\SP|R\(5) & (\SP|op_2~9\ & VCC)) # (!\SP|R\(5) & (!\SP|op_2~9\))
-- \SP|op_2~11\ = CARRY((!\SP|R\(5) & !\SP|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(5),
	datad => VCC,
	cin => \SP|op_2~9\,
	combout => \SP|op_2~10_combout\,
	cout => \SP|op_2~11\);

-- Location: LCCOMB_X37_Y2_N2
\SP|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[5]~24_combout\ = (\SP|R\(5) & ((\SP|R[0]~3_combout\) # ((\SP|op_2~10_combout\ & \SP|_~2_combout\)))) # (!\SP|R\(5) & (((\SP|op_2~10_combout\ & \SP|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(5),
	datab => \SP|R[0]~3_combout\,
	datac => \SP|op_2~10_combout\,
	datad => \SP|_~2_combout\,
	combout => \SP|R[5]~24_combout\);

-- Location: LCCOMB_X37_Y2_N8
\SP|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[5]~25_combout\ = (\SP|R[5]~23_combout\) # ((\SP|R[5]~24_combout\) # ((\SP|op_1~8_combout\ & \SP|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R[5]~23_combout\,
	datab => \SP|op_1~8_combout\,
	datac => \SP|_~3_combout\,
	datad => \SP|R[5]~24_combout\,
	combout => \SP|R[5]~25_combout\);

-- Location: LCCOMB_X37_Y2_N10
\SP|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[5]~26_combout\ = (\SP|R[5]~25_combout\) # ((\SP|_~1_combout\ & \BUS[5]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \SP|R[5]~25_combout\,
	datad => \BUS[5]~56_combout\,
	combout => \SP|R[5]~26_combout\);

-- Location: FF_X37_Y2_N11
\SP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(5));

-- Location: LCCOMB_X35_Y2_N12
\SP|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~12_combout\ = (\SP|R\(6) & ((GND) # (!\SP|op_2~11\))) # (!\SP|R\(6) & (\SP|op_2~11\ $ (GND)))
-- \SP|op_2~13\ = CARRY((\SP|R\(6)) # (!\SP|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SP|R\(6),
	datad => VCC,
	cin => \SP|op_2~11\,
	combout => \SP|op_2~12_combout\,
	cout => \SP|op_2~13\);

-- Location: LCCOMB_X37_Y2_N30
\SP|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[6]~27_combout\ = (\SP|R\(6) & ((\SP|R[0]~3_combout\) # ((\SP|R\(7) & \SP|R[1]~0_combout\)))) # (!\SP|R\(6) & (\SP|R\(7) & (\SP|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(6),
	datab => \SP|R\(7),
	datac => \SP|R[1]~0_combout\,
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[6]~27_combout\);

-- Location: LCCOMB_X38_Y2_N18
\SP|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~10_combout\ = (\SP|R\(6) & (!\SP|op_1~9\)) # (!\SP|R\(6) & ((\SP|op_1~9\) # (GND)))
-- \SP|op_1~11\ = CARRY((!\SP|op_1~9\) # (!\SP|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(6),
	datad => VCC,
	cin => \SP|op_1~9\,
	combout => \SP|op_1~10_combout\,
	cout => \SP|op_1~11\);

-- Location: LCCOMB_X37_Y2_N24
\SP|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[6]~28_combout\ = (\SP|R\(5) & ((\SP|R[2]~6_combout\) # ((\SP|_~3_combout\ & \SP|op_1~10_combout\)))) # (!\SP|R\(5) & (((\SP|_~3_combout\ & \SP|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(5),
	datab => \SP|R[2]~6_combout\,
	datac => \SP|_~3_combout\,
	datad => \SP|op_1~10_combout\,
	combout => \SP|R[6]~28_combout\);

-- Location: LCCOMB_X37_Y2_N6
\SP|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[6]~29_combout\ = (\SP|R[6]~27_combout\) # ((\SP|R[6]~28_combout\) # ((\SP|_~2_combout\ & \SP|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|_~2_combout\,
	datab => \SP|op_2~12_combout\,
	datac => \SP|R[6]~27_combout\,
	datad => \SP|R[6]~28_combout\,
	combout => \SP|R[6]~29_combout\);

-- Location: LCCOMB_X37_Y2_N20
\SP|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[6]~30_combout\ = (\SP|R[6]~29_combout\) # ((\SP|_~1_combout\ & \BUS[6]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \BUS[6]~65_combout\,
	datad => \SP|R[6]~29_combout\,
	combout => \SP|R[6]~30_combout\);

-- Location: FF_X37_Y2_N21
\SP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(6));

-- Location: LCCOMB_X35_Y2_N14
\SP|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_2~14_combout\ = \SP|op_2~13\ $ (!\SP|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SP|R\(7),
	cin => \SP|op_2~13\,
	combout => \SP|op_2~14_combout\);

-- Location: LCCOMB_X38_Y2_N4
\SP|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[7]~31_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \SP|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \SP|R\(0),
	combout => \SP|R[7]~31_combout\);

-- Location: LCCOMB_X38_Y2_N26
\SP|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[7]~32_combout\ = (\SP|R\(7) & ((\SP|R[0]~3_combout\) # ((\_~47_combout\ & \SP|R[7]~31_combout\)))) # (!\SP|R\(7) & (\_~47_combout\ & (\SP|R[7]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(7),
	datab => \_~47_combout\,
	datac => \SP|R[7]~31_combout\,
	datad => \SP|R[0]~3_combout\,
	combout => \SP|R[7]~32_combout\);

-- Location: LCCOMB_X38_Y2_N20
\SP|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|op_1~12_combout\ = \SP|R\(7) $ (!\SP|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(7),
	cin => \SP|op_1~11\,
	combout => \SP|op_1~12_combout\);

-- Location: LCCOMB_X38_Y2_N28
\SP|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[7]~33_combout\ = (\SP|R\(6) & ((\SP|R[2]~6_combout\) # ((\SP|op_1~12_combout\ & \SP|_~3_combout\)))) # (!\SP|R\(6) & (\SP|op_1~12_combout\ & ((\SP|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(6),
	datab => \SP|op_1~12_combout\,
	datac => \SP|R[2]~6_combout\,
	datad => \SP|_~3_combout\,
	combout => \SP|R[7]~33_combout\);

-- Location: LCCOMB_X38_Y2_N30
\SP|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[7]~34_combout\ = (\SP|R[7]~32_combout\) # ((\SP|R[7]~33_combout\) # ((\SP|op_2~14_combout\ & \SP|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|op_2~14_combout\,
	datab => \SP|_~2_combout\,
	datac => \SP|R[7]~32_combout\,
	datad => \SP|R[7]~33_combout\,
	combout => \SP|R[7]~34_combout\);

-- Location: LCCOMB_X38_Y2_N22
\SP|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SP|R[7]~35_combout\ = (\SP|R[7]~34_combout\) # ((\SP|_~1_combout\ & \BUS[7]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SP|_~1_combout\,
	datac => \SP|R[7]~34_combout\,
	datad => \BUS[7]~74_combout\,
	combout => \SP|R[7]~35_combout\);

-- Location: FF_X38_Y2_N23
\SP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SP|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SP|R\(7));

-- Location: LCCOMB_X37_Y4_N14
\_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~48_combout\ = (\_~34_combout\ & (\SelMUX[4]~1_combout\ & (!\SelMUX[1]~3_combout\ & \SelMUX[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~34_combout\,
	datab => \SelMUX[4]~1_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \SelMUX[0]~2_combout\,
	combout => \_~48_combout\);

-- Location: LCCOMB_X39_Y3_N8
\SI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|_~1_combout\ = (\_~48_combout\ & (!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~48_combout\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[0]~input_o\,
	combout => \SI|_~1_combout\);

-- Location: LCCOMB_X41_Y3_N24
\SI|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|R[2]~6_combout\);

-- Location: LCCOMB_X41_Y3_N16
\SI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|_~2_combout\);

-- Location: LCCOMB_X41_Y3_N18
\SI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|_~3_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|_~3_combout\);

-- Location: LCCOMB_X41_Y3_N30
\SI|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|R[1]~0_combout\);

-- Location: LCCOMB_X41_Y3_N4
\SI|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[0]~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|R[0]~1_combout\);

-- Location: LCCOMB_X41_Y3_N6
\SI|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[0]~2_combout\ = (\SI|R\(1) & ((\SI|R[1]~0_combout\) # ((\SI|R[0]~1_combout\ & !\SI|R\(0))))) # (!\SI|R\(1) & (\SI|R[0]~1_combout\ & ((!\SI|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(1),
	datab => \SI|R[0]~1_combout\,
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R\(0),
	combout => \SI|R[0]~2_combout\);

-- Location: LCCOMB_X41_Y3_N26
\SI|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[0]~3_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\_~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|R[0]~3_combout\);

-- Location: LCCOMB_X41_Y3_N28
\SI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|_~0_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~48_combout\,
	combout => \SI|_~0_combout\);

-- Location: LCCOMB_X41_Y3_N8
\SI|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[0]~4_combout\ = (\SI|R\(7) & ((\SI|_~0_combout\) # ((\SI|R\(0) & \SI|R[0]~3_combout\)))) # (!\SI|R\(7) & (\SI|R\(0) & (\SI|R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(7),
	datab => \SI|R\(0),
	datac => \SI|R[0]~3_combout\,
	datad => \SI|_~0_combout\,
	combout => \SI|R[0]~4_combout\);

-- Location: LCCOMB_X40_Y3_N0
\SI|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[0]~5_combout\ = (\SI|R[0]~2_combout\) # ((\SI|R[0]~4_combout\) # ((\BUS[0]~8_combout\ & \SI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[0]~2_combout\,
	datab => \SI|R[0]~4_combout\,
	datac => \BUS[0]~8_combout\,
	datad => \SI|_~1_combout\,
	combout => \SI|R[0]~5_combout\);

-- Location: FF_X40_Y3_N1
\SI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(0));

-- Location: LCCOMB_X41_Y3_N22
\SI|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[1]~7_combout\ = (\SI|R\(0) & ((\SI|R[2]~6_combout\) # ((\SI|R\(2) & \SI|R[1]~0_combout\)))) # (!\SI|R\(0) & (\SI|R\(2) & (\SI|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(0),
	datab => \SI|R\(2),
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[1]~7_combout\);

-- Location: LCCOMB_X43_Y3_N14
\SI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~1_cout\ = CARRY(\SI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SI|R\(0),
	datad => VCC,
	cout => \SI|op_2~1_cout\);

-- Location: LCCOMB_X43_Y3_N16
\SI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~2_combout\ = (\SI|R\(1) & (\SI|op_2~1_cout\ & VCC)) # (!\SI|R\(1) & (!\SI|op_2~1_cout\))
-- \SI|op_2~3\ = CARRY((!\SI|R\(1) & !\SI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(1),
	datad => VCC,
	cin => \SI|op_2~1_cout\,
	combout => \SI|op_2~2_combout\,
	cout => \SI|op_2~3\);

-- Location: LCCOMB_X40_Y3_N30
\SI|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[1]~8_combout\ = (\SI|R\(1) & ((\SI|R[0]~3_combout\) # ((\SI|_~2_combout\ & \SI|op_2~2_combout\)))) # (!\SI|R\(1) & (\SI|_~2_combout\ & (\SI|op_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(1),
	datab => \SI|_~2_combout\,
	datac => \SI|op_2~2_combout\,
	datad => \SI|R[0]~3_combout\,
	combout => \SI|R[1]~8_combout\);

-- Location: LCCOMB_X43_Y3_N0
\SI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~0_combout\ = (\SI|R\(1) & (\SI|R\(0) $ (VCC))) # (!\SI|R\(1) & (\SI|R\(0) & VCC))
-- \SI|op_1~1\ = CARRY((\SI|R\(1) & \SI|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(1),
	datab => \SI|R\(0),
	datad => VCC,
	combout => \SI|op_1~0_combout\,
	cout => \SI|op_1~1\);

-- Location: LCCOMB_X40_Y3_N24
\SI|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[1]~9_combout\ = (\SI|R[1]~8_combout\) # ((\SI|op_1~0_combout\ & \SI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[1]~8_combout\,
	datab => \SI|op_1~0_combout\,
	datad => \SI|_~3_combout\,
	combout => \SI|R[1]~9_combout\);

-- Location: LCCOMB_X40_Y3_N22
\SI|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[1]~10_combout\ = (\SI|R[1]~7_combout\) # ((\SI|R[1]~9_combout\) # ((\SI|_~1_combout\ & \BUS[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datab => \SI|R[1]~7_combout\,
	datac => \BUS[1]~20_combout\,
	datad => \SI|R[1]~9_combout\,
	combout => \SI|R[1]~10_combout\);

-- Location: FF_X40_Y3_N23
\SI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(1));

-- Location: LCCOMB_X41_Y3_N0
\SI|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[2]~11_combout\ = (\SI|R\(3) & ((\SI|R[1]~0_combout\) # ((\SI|R\(1) & \SI|R[2]~6_combout\)))) # (!\SI|R\(3) & (\SI|R\(1) & ((\SI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(3),
	datab => \SI|R\(1),
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[2]~11_combout\);

-- Location: LCCOMB_X43_Y3_N2
\SI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~2_combout\ = (\SI|R\(2) & (!\SI|op_1~1\)) # (!\SI|R\(2) & ((\SI|op_1~1\) # (GND)))
-- \SI|op_1~3\ = CARRY((!\SI|op_1~1\) # (!\SI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(2),
	datad => VCC,
	cin => \SI|op_1~1\,
	combout => \SI|op_1~2_combout\,
	cout => \SI|op_1~3\);

-- Location: LCCOMB_X43_Y3_N18
\SI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~4_combout\ = (\SI|R\(2) & ((GND) # (!\SI|op_2~3\))) # (!\SI|R\(2) & (\SI|op_2~3\ $ (GND)))
-- \SI|op_2~5\ = CARRY((\SI|R\(2)) # (!\SI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(2),
	datad => VCC,
	cin => \SI|op_2~3\,
	combout => \SI|op_2~4_combout\,
	cout => \SI|op_2~5\);

-- Location: LCCOMB_X42_Y3_N8
\SI|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[2]~12_combout\ = (\SI|_~2_combout\ & ((\SI|op_2~4_combout\) # ((\SI|R\(2) & \SI|R[0]~3_combout\)))) # (!\SI|_~2_combout\ & (\SI|R\(2) & (\SI|R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~2_combout\,
	datab => \SI|R\(2),
	datac => \SI|R[0]~3_combout\,
	datad => \SI|op_2~4_combout\,
	combout => \SI|R[2]~12_combout\);

-- Location: LCCOMB_X42_Y3_N22
\SI|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[2]~13_combout\ = (\SI|R[2]~11_combout\) # ((\SI|R[2]~12_combout\) # ((\SI|op_1~2_combout\ & \SI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[2]~11_combout\,
	datab => \SI|op_1~2_combout\,
	datac => \SI|R[2]~12_combout\,
	datad => \SI|_~3_combout\,
	combout => \SI|R[2]~13_combout\);

-- Location: LCCOMB_X42_Y3_N0
\SI|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[2]~14_combout\ = (\SI|R[2]~13_combout\) # ((\SI|_~1_combout\ & \BUS[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datac => \SI|R[2]~13_combout\,
	datad => \BUS[2]~29_combout\,
	combout => \SI|R[2]~14_combout\);

-- Location: FF_X42_Y3_N1
\SI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(2));

-- Location: LCCOMB_X41_Y3_N10
\SI|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[3]~15_combout\ = (\SI|R[1]~0_combout\ & ((\SI|R\(4)) # ((\SI|R\(2) & \SI|R[2]~6_combout\)))) # (!\SI|R[1]~0_combout\ & (\SI|R\(2) & ((\SI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[1]~0_combout\,
	datab => \SI|R\(2),
	datac => \SI|R\(4),
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[3]~15_combout\);

-- Location: LCCOMB_X43_Y3_N20
\SI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~6_combout\ = (\SI|R\(3) & (\SI|op_2~5\ & VCC)) # (!\SI|R\(3) & (!\SI|op_2~5\))
-- \SI|op_2~7\ = CARRY((!\SI|R\(3) & !\SI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(3),
	datad => VCC,
	cin => \SI|op_2~5\,
	combout => \SI|op_2~6_combout\,
	cout => \SI|op_2~7\);

-- Location: LCCOMB_X42_Y3_N24
\SI|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[3]~16_combout\ = (\SI|R[0]~3_combout\ & ((\SI|R\(3)) # ((\SI|_~2_combout\ & \SI|op_2~6_combout\)))) # (!\SI|R[0]~3_combout\ & (((\SI|_~2_combout\ & \SI|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[0]~3_combout\,
	datab => \SI|R\(3),
	datac => \SI|_~2_combout\,
	datad => \SI|op_2~6_combout\,
	combout => \SI|R[3]~16_combout\);

-- Location: LCCOMB_X43_Y3_N4
\SI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~4_combout\ = (\SI|R\(3) & (\SI|op_1~3\ $ (GND))) # (!\SI|R\(3) & (!\SI|op_1~3\ & VCC))
-- \SI|op_1~5\ = CARRY((\SI|R\(3) & !\SI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(3),
	datad => VCC,
	cin => \SI|op_1~3\,
	combout => \SI|op_1~4_combout\,
	cout => \SI|op_1~5\);

-- Location: LCCOMB_X42_Y3_N18
\SI|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[3]~17_combout\ = (\SI|R[3]~15_combout\) # ((\SI|R[3]~16_combout\) # ((\SI|op_1~4_combout\ & \SI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[3]~15_combout\,
	datab => \SI|R[3]~16_combout\,
	datac => \SI|op_1~4_combout\,
	datad => \SI|_~3_combout\,
	combout => \SI|R[3]~17_combout\);

-- Location: LCCOMB_X42_Y3_N2
\SI|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[3]~18_combout\ = (\SI|R[3]~17_combout\) # ((\SI|_~1_combout\ & \BUS[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datac => \BUS[3]~38_combout\,
	datad => \SI|R[3]~17_combout\,
	combout => \SI|R[3]~18_combout\);

-- Location: FF_X42_Y3_N3
\SI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(3));

-- Location: LCCOMB_X43_Y3_N6
\SI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~6_combout\ = (\SI|R\(4) & (!\SI|op_1~5\)) # (!\SI|R\(4) & ((\SI|op_1~5\) # (GND)))
-- \SI|op_1~7\ = CARRY((!\SI|op_1~5\) # (!\SI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(4),
	datad => VCC,
	cin => \SI|op_1~5\,
	combout => \SI|op_1~6_combout\,
	cout => \SI|op_1~7\);

-- Location: LCCOMB_X43_Y3_N22
\SI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~8_combout\ = (\SI|R\(4) & ((GND) # (!\SI|op_2~7\))) # (!\SI|R\(4) & (\SI|op_2~7\ $ (GND)))
-- \SI|op_2~9\ = CARRY((\SI|R\(4)) # (!\SI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(4),
	datad => VCC,
	cin => \SI|op_2~7\,
	combout => \SI|op_2~8_combout\,
	cout => \SI|op_2~9\);

-- Location: LCCOMB_X40_Y3_N20
\SI|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[4]~20_combout\ = (\SI|R\(4) & ((\SI|R[0]~3_combout\) # ((\SI|_~2_combout\ & \SI|op_2~8_combout\)))) # (!\SI|R\(4) & (\SI|_~2_combout\ & (\SI|op_2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(4),
	datab => \SI|_~2_combout\,
	datac => \SI|op_2~8_combout\,
	datad => \SI|R[0]~3_combout\,
	combout => \SI|R[4]~20_combout\);

-- Location: LCCOMB_X40_Y3_N18
\SI|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[4]~21_combout\ = (\SI|R[4]~20_combout\) # ((\SI|_~3_combout\ & \SI|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SI|_~3_combout\,
	datac => \SI|op_1~6_combout\,
	datad => \SI|R[4]~20_combout\,
	combout => \SI|R[4]~21_combout\);

-- Location: LCCOMB_X41_Y3_N12
\SI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[4]~19_combout\ = (\SI|R\(3) & ((\SI|R[2]~6_combout\) # ((\SI|R\(5) & \SI|R[1]~0_combout\)))) # (!\SI|R\(3) & (\SI|R\(5) & (\SI|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(3),
	datab => \SI|R\(5),
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[4]~19_combout\);

-- Location: LCCOMB_X40_Y3_N6
\SI|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[4]~22_combout\ = (\SI|R[4]~21_combout\) # ((\SI|R[4]~19_combout\) # ((\SI|_~1_combout\ & \BUS[4]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datab => \SI|R[4]~21_combout\,
	datac => \SI|R[4]~19_combout\,
	datad => \BUS[4]~47_combout\,
	combout => \SI|R[4]~22_combout\);

-- Location: FF_X40_Y3_N7
\SI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(4));

-- Location: LCCOMB_X41_Y3_N2
\SI|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[5]~23_combout\ = (\SI|R\(6) & ((\SI|R[1]~0_combout\) # ((\SI|R\(4) & \SI|R[2]~6_combout\)))) # (!\SI|R\(6) & (\SI|R\(4) & ((\SI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(6),
	datab => \SI|R\(4),
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[5]~23_combout\);

-- Location: LCCOMB_X43_Y3_N8
\SI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~8_combout\ = (\SI|R\(5) & (\SI|op_1~7\ $ (GND))) # (!\SI|R\(5) & (!\SI|op_1~7\ & VCC))
-- \SI|op_1~9\ = CARRY((\SI|R\(5) & !\SI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(5),
	datad => VCC,
	cin => \SI|op_1~7\,
	combout => \SI|op_1~8_combout\,
	cout => \SI|op_1~9\);

-- Location: LCCOMB_X43_Y3_N24
\SI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~10_combout\ = (\SI|R\(5) & (\SI|op_2~9\ & VCC)) # (!\SI|R\(5) & (!\SI|op_2~9\))
-- \SI|op_2~11\ = CARRY((!\SI|R\(5) & !\SI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(5),
	datad => VCC,
	cin => \SI|op_2~9\,
	combout => \SI|op_2~10_combout\,
	cout => \SI|op_2~11\);

-- Location: LCCOMB_X42_Y3_N28
\SI|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[5]~24_combout\ = (\SI|_~2_combout\ & ((\SI|op_2~10_combout\) # ((\SI|R[0]~3_combout\ & \SI|R\(5))))) # (!\SI|_~2_combout\ & (((\SI|R[0]~3_combout\ & \SI|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~2_combout\,
	datab => \SI|op_2~10_combout\,
	datac => \SI|R[0]~3_combout\,
	datad => \SI|R\(5),
	combout => \SI|R[5]~24_combout\);

-- Location: LCCOMB_X42_Y3_N26
\SI|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[5]~25_combout\ = (\SI|R[5]~24_combout\) # ((\SI|_~3_combout\ & \SI|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SI|_~3_combout\,
	datac => \SI|op_1~8_combout\,
	datad => \SI|R[5]~24_combout\,
	combout => \SI|R[5]~25_combout\);

-- Location: LCCOMB_X42_Y3_N12
\SI|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[5]~26_combout\ = (\SI|R[5]~23_combout\) # ((\SI|R[5]~25_combout\) # ((\BUS[5]~56_combout\ & \SI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[5]~23_combout\,
	datab => \BUS[5]~56_combout\,
	datac => \SI|R[5]~25_combout\,
	datad => \SI|_~1_combout\,
	combout => \SI|R[5]~26_combout\);

-- Location: FF_X42_Y3_N13
\SI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(5));

-- Location: LCCOMB_X41_Y3_N20
\SI|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[6]~27_combout\ = (\SI|R\(7) & ((\SI|R[1]~0_combout\) # ((\SI|R\(5) & \SI|R[2]~6_combout\)))) # (!\SI|R\(7) & (\SI|R\(5) & ((\SI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(7),
	datab => \SI|R\(5),
	datac => \SI|R[1]~0_combout\,
	datad => \SI|R[2]~6_combout\,
	combout => \SI|R[6]~27_combout\);

-- Location: LCCOMB_X43_Y3_N26
\SI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~12_combout\ = (\SI|R\(6) & ((GND) # (!\SI|op_2~11\))) # (!\SI|R\(6) & (\SI|op_2~11\ $ (GND)))
-- \SI|op_2~13\ = CARRY((\SI|R\(6)) # (!\SI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SI|R\(6),
	datad => VCC,
	cin => \SI|op_2~11\,
	combout => \SI|op_2~12_combout\,
	cout => \SI|op_2~13\);

-- Location: LCCOMB_X43_Y3_N10
\SI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~10_combout\ = (\SI|R\(6) & (!\SI|op_1~9\)) # (!\SI|R\(6) & ((\SI|op_1~9\) # (GND)))
-- \SI|op_1~11\ = CARRY((!\SI|op_1~9\) # (!\SI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SI|R\(6),
	datad => VCC,
	cin => \SI|op_1~9\,
	combout => \SI|op_1~10_combout\,
	cout => \SI|op_1~11\);

-- Location: LCCOMB_X42_Y3_N16
\SI|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[6]~28_combout\ = (\SI|R[0]~3_combout\ & ((\SI|R\(6)) # ((\SI|op_1~10_combout\ & \SI|_~3_combout\)))) # (!\SI|R[0]~3_combout\ & (((\SI|op_1~10_combout\ & \SI|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[0]~3_combout\,
	datab => \SI|R\(6),
	datac => \SI|op_1~10_combout\,
	datad => \SI|_~3_combout\,
	combout => \SI|R[6]~28_combout\);

-- Location: LCCOMB_X42_Y3_N14
\SI|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[6]~29_combout\ = (\SI|R[6]~27_combout\) # ((\SI|R[6]~28_combout\) # ((\SI|_~2_combout\ & \SI|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~2_combout\,
	datab => \SI|R[6]~27_combout\,
	datac => \SI|op_2~12_combout\,
	datad => \SI|R[6]~28_combout\,
	combout => \SI|R[6]~29_combout\);

-- Location: LCCOMB_X42_Y3_N4
\SI|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[6]~30_combout\ = (\SI|R[6]~29_combout\) # ((\SI|_~1_combout\ & \BUS[6]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datab => \SI|R[6]~29_combout\,
	datad => \BUS[6]~65_combout\,
	combout => \SI|R[6]~30_combout\);

-- Location: FF_X42_Y3_N5
\SI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(6));

-- Location: LCCOMB_X43_Y3_N12
\SI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_1~12_combout\ = \SI|op_1~11\ $ (!\SI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SI|R\(7),
	cin => \SI|op_1~11\,
	combout => \SI|op_1~12_combout\);

-- Location: LCCOMB_X42_Y3_N20
\SI|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[7]~31_combout\ = (\SI|R[2]~6_combout\ & ((\SI|R\(6)) # ((\SI|op_1~12_combout\ & \SI|_~3_combout\)))) # (!\SI|R[2]~6_combout\ & (((\SI|op_1~12_combout\ & \SI|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R[2]~6_combout\,
	datab => \SI|R\(6),
	datac => \SI|op_1~12_combout\,
	datad => \SI|_~3_combout\,
	combout => \SI|R[7]~31_combout\);

-- Location: LCCOMB_X43_Y3_N28
\SI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|op_2~14_combout\ = \SI|op_2~13\ $ (!\SI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SI|R\(7),
	cin => \SI|op_2~13\,
	combout => \SI|op_2~14_combout\);

-- Location: LCCOMB_X39_Y3_N14
\SI|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[7]~32_combout\ = (\SI|R\(0) & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(0),
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \SI|R[7]~32_combout\);

-- Location: LCCOMB_X41_Y3_N14
\SI|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[7]~33_combout\ = (\SI|R\(7) & ((\SI|R[0]~3_combout\) # ((\SI|R[7]~32_combout\ & \_~48_combout\)))) # (!\SI|R\(7) & (\SI|R[7]~32_combout\ & ((\_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(7),
	datab => \SI|R[7]~32_combout\,
	datac => \SI|R[0]~3_combout\,
	datad => \_~48_combout\,
	combout => \SI|R[7]~33_combout\);

-- Location: LCCOMB_X42_Y3_N10
\SI|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[7]~34_combout\ = (\SI|R[7]~33_combout\) # ((\SI|op_2~14_combout\ & \SI|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SI|op_2~14_combout\,
	datac => \SI|_~2_combout\,
	datad => \SI|R[7]~33_combout\,
	combout => \SI|R[7]~34_combout\);

-- Location: LCCOMB_X42_Y3_N30
\SI|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SI|R[7]~35_combout\ = (\SI|R[7]~31_combout\) # ((\SI|R[7]~34_combout\) # ((\SI|_~1_combout\ & \BUS[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|_~1_combout\,
	datab => \SI|R[7]~31_combout\,
	datac => \BUS[7]~74_combout\,
	datad => \SI|R[7]~34_combout\,
	combout => \SI|R[7]~35_combout\);

-- Location: FF_X42_Y3_N31
\SI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \SI|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SI|R\(7));

-- Location: LCCOMB_X41_Y4_N14
\_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~31_combout\ = (\SelBus[4]~2_combout\ & (!\SelBus[1]~4_combout\ & (\_~58_combout\ & \SelBus[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[4]~2_combout\,
	datab => \SelBus[1]~4_combout\,
	datac => \_~58_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~31_combout\);

-- Location: LCCOMB_X39_Y4_N30
\_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~32_combout\ = (!\SelBus[1]~4_combout\ & (!\SelBus[0]~3_combout\ & (\SelBus[4]~2_combout\ & \_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~4_combout\,
	datab => \SelBus[0]~3_combout\,
	datac => \SelBus[4]~2_combout\,
	datad => \_~58_combout\,
	combout => \_~32_combout\);

-- Location: LCCOMB_X39_Y5_N8
\BUS[7]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~72_combout\ = (\SP|R\(7) & ((\_~32_combout\) # ((\SI|R\(7) & \_~31_combout\)))) # (!\SP|R\(7) & (\SI|R\(7) & (\_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SP|R\(7),
	datab => \SI|R\(7),
	datac => \_~31_combout\,
	datad => \_~32_combout\,
	combout => \BUS[7]~72_combout\);

-- Location: LCCOMB_X36_Y3_N28
\PC|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~12_combout\ = (\PC|R\(6) & ((GND) # (!\PC|op_2~11\))) # (!\PC|R\(6) & (\PC|op_2~11\ $ (GND)))
-- \PC|op_2~13\ = CARRY((\PC|R\(6)) # (!\PC|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(6),
	datad => VCC,
	cin => \PC|op_2~11\,
	combout => \PC|op_2~12_combout\,
	cout => \PC|op_2~13\);

-- Location: LCCOMB_X36_Y3_N30
\PC|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_2~14_combout\ = \PC|op_2~13\ $ (!\PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|R\(7),
	cin => \PC|op_2~13\,
	combout => \PC|op_2~14_combout\);

-- Location: LCCOMB_X36_Y3_N10
\PC|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~10_combout\ = (\PC|R\(6) & (!\PC|op_1~9\)) # (!\PC|R\(6) & ((\PC|op_1~9\) # (GND)))
-- \PC|op_1~11\ = CARRY((!\PC|op_1~9\) # (!\PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|R\(6),
	datad => VCC,
	cin => \PC|op_1~9\,
	combout => \PC|op_1~10_combout\,
	cout => \PC|op_1~11\);

-- Location: LCCOMB_X36_Y3_N12
\PC|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|op_1~12_combout\ = \PC|op_1~11\ $ (!\PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|R\(7),
	cin => \PC|op_1~11\,
	combout => \PC|op_1~12_combout\);

-- Location: LCCOMB_X37_Y3_N8
\PC|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[7]~33_combout\ = (\PC|R[2]~6_combout\ & ((\PC|R\(6)) # ((\PC|_~3_combout\ & \PC|op_1~12_combout\)))) # (!\PC|R[2]~6_combout\ & (\PC|_~3_combout\ & ((\PC|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~6_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|R\(6),
	datad => \PC|op_1~12_combout\,
	combout => \PC|R[7]~33_combout\);

-- Location: LCCOMB_X37_Y3_N28
\PC|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[7]~31_combout\ = (\Cmd[1]~input_o\ & (\PC|R\(0) & (\Cmd[0]~input_o\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \PC|R\(0),
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \PC|R[7]~31_combout\);

-- Location: LCCOMB_X37_Y3_N6
\PC|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[7]~32_combout\ = (\PC|R\(7) & ((\PC|R[0]~3_combout\) # ((\PC|R[7]~31_combout\ & \_~44_combout\)))) # (!\PC|R\(7) & (\PC|R[7]~31_combout\ & ((\_~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(7),
	datab => \PC|R[7]~31_combout\,
	datac => \PC|R[0]~3_combout\,
	datad => \_~44_combout\,
	combout => \PC|R[7]~32_combout\);

-- Location: LCCOMB_X37_Y3_N10
\PC|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[7]~34_combout\ = (\PC|R[7]~33_combout\) # ((\PC|R[7]~32_combout\) # ((\PC|_~2_combout\ & \PC|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~2_combout\,
	datab => \PC|op_2~14_combout\,
	datac => \PC|R[7]~33_combout\,
	datad => \PC|R[7]~32_combout\,
	combout => \PC|R[7]~34_combout\);

-- Location: LCCOMB_X38_Y3_N22
\PC|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[7]~35_combout\ = (\PC|R[7]~34_combout\) # ((\PC|_~1_combout\ & \BUS[7]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~1_combout\,
	datac => \BUS[7]~74_combout\,
	datad => \PC|R[7]~34_combout\,
	combout => \PC|R[7]~35_combout\);

-- Location: FF_X38_Y3_N23
\PC|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(7));

-- Location: LCCOMB_X35_Y4_N4
\alu_y|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[7]~feeder_combout\ = \BUS[7]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[7]~74_combout\,
	combout => \alu_y|R[7]~feeder_combout\);

-- Location: FF_X35_Y4_N5
\alu_y|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(7));

-- Location: LCCOMB_X36_Y5_N28
\alu_x|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[7]~feeder_combout\ = \BUS[7]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[7]~74_combout\,
	combout => \alu_x|R[7]~feeder_combout\);

-- Location: FF_X36_Y5_N29
\alu_x|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(7));

-- Location: LCCOMB_X30_Y4_N20
\ALU_prueba|R[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[6]~12_combout\ = ((\alu_x|R\(6) $ (\alu_y|R\(6) $ (!\ALU_prueba|R[5]~11\)))) # (GND)
-- \ALU_prueba|R[6]~13\ = CARRY((\alu_x|R\(6) & ((\alu_y|R\(6)) # (!\ALU_prueba|R[5]~11\))) # (!\alu_x|R\(6) & (\alu_y|R\(6) & !\ALU_prueba|R[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(6),
	datab => \alu_y|R\(6),
	datad => VCC,
	cin => \ALU_prueba|R[5]~11\,
	combout => \ALU_prueba|R[6]~12_combout\,
	cout => \ALU_prueba|R[6]~13\);

-- Location: LCCOMB_X30_Y4_N22
\ALU_prueba|R[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[7]~14_combout\ = \alu_y|R\(7) $ (\ALU_prueba|R[6]~13\ $ (\alu_x|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_y|R\(7),
	datad => \alu_x|R\(7),
	cin => \ALU_prueba|R[6]~13\,
	combout => \ALU_prueba|R[7]~14_combout\);

-- Location: LCCOMB_X30_Y4_N26
\alu_r|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[7]~feeder_combout\ = \ALU_prueba|R[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_prueba|R[7]~14_combout\,
	combout => \alu_r|R[7]~feeder_combout\);

-- Location: IOIBUF_X31_Y39_N8
\Enable_r~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable_r,
	o => \Enable_r~input_o\);

-- Location: FF_X30_Y4_N27
\alu_r|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(7));

-- Location: LCCOMB_X39_Y5_N2
\BUS[7]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~70_combout\ = (\PC|R\(7) & ((\_~30_combout\) # ((\alu_r|R\(7) & \_~28_combout\)))) # (!\PC|R\(7) & (\alu_r|R\(7) & ((\_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(7),
	datab => \alu_r|R\(7),
	datac => \_~30_combout\,
	datad => \_~28_combout\,
	combout => \BUS[7]~70_combout\);

-- Location: LCCOMB_X39_Y5_N30
\BUS[7]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~73_combout\ = (\BUS[7]~71_combout\) # ((\BUS[7]~72_combout\) # (\BUS[7]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[7]~71_combout\,
	datac => \BUS[7]~72_combout\,
	datad => \BUS[7]~70_combout\,
	combout => \BUS[7]~73_combout\);

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: LCCOMB_X37_Y4_N26
\_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~43_combout\ = (\_~34_combout\ & (\SelMUX[4]~1_combout\ & (\SelMUX[1]~3_combout\ & !\SelMUX[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~34_combout\,
	datab => \SelMUX[4]~1_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \SelMUX[0]~2_combout\,
	combout => \_~43_combout\);

-- Location: LCCOMB_X36_Y5_N10
\DI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|_~1_combout\ = (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|_~1_combout\);

-- Location: LCCOMB_X36_Y5_N12
\DI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|_~2_combout\);

-- Location: LCCOMB_X36_Y5_N8
\DI|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[0]~3_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\_~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|R[0]~3_combout\);

-- Location: LCCOMB_X37_Y5_N6
\DI|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[1]~0_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|R[1]~0_combout\);

-- Location: LCCOMB_X37_Y5_N20
\DI|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|R[2]~6_combout\);

-- Location: LCCOMB_X37_Y5_N2
\DI|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[1]~7_combout\ = (\DI|R[1]~0_combout\ & ((\DI|R\(2)) # ((\DI|R\(0) & \DI|R[2]~6_combout\)))) # (!\DI|R[1]~0_combout\ & (((\DI|R\(0) & \DI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[1]~0_combout\,
	datab => \DI|R\(2),
	datac => \DI|R\(0),
	datad => \DI|R[2]~6_combout\,
	combout => \DI|R[1]~7_combout\);

-- Location: LCCOMB_X37_Y8_N18
\DI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~0_combout\ = (\DI|R\(0) & (\DI|R\(1) $ (VCC))) # (!\DI|R\(0) & (\DI|R\(1) & VCC))
-- \DI|op_1~1\ = CARRY((\DI|R\(0) & \DI|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(0),
	datab => \DI|R\(1),
	datad => VCC,
	combout => \DI|op_1~0_combout\,
	cout => \DI|op_1~1\);

-- Location: LCCOMB_X39_Y5_N24
\DI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|_~3_combout\ = (\Cmd[1]~input_o\ & (\_~43_combout\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \_~43_combout\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[0]~input_o\,
	combout => \DI|_~3_combout\);

-- Location: LCCOMB_X37_Y8_N2
\DI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~1_cout\ = CARRY(\DI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(0),
	datad => VCC,
	cout => \DI|op_2~1_cout\);

-- Location: LCCOMB_X37_Y8_N4
\DI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~2_combout\ = (\DI|R\(1) & (\DI|op_2~1_cout\ & VCC)) # (!\DI|R\(1) & (!\DI|op_2~1_cout\))
-- \DI|op_2~3\ = CARRY((!\DI|R\(1) & !\DI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DI|R\(1),
	datad => VCC,
	cin => \DI|op_2~1_cout\,
	combout => \DI|op_2~2_combout\,
	cout => \DI|op_2~3\);

-- Location: LCCOMB_X37_Y5_N12
\DI|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[1]~8_combout\ = (\DI|R\(1) & ((\DI|R[0]~3_combout\) # ((\DI|op_2~2_combout\ & \DI|_~2_combout\)))) # (!\DI|R\(1) & (\DI|op_2~2_combout\ & ((\DI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(1),
	datab => \DI|op_2~2_combout\,
	datac => \DI|R[0]~3_combout\,
	datad => \DI|_~2_combout\,
	combout => \DI|R[1]~8_combout\);

-- Location: LCCOMB_X37_Y5_N18
\DI|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[1]~9_combout\ = (\DI|R[1]~8_combout\) # ((\DI|op_1~0_combout\ & \DI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|op_1~0_combout\,
	datab => \DI|_~3_combout\,
	datad => \DI|R[1]~8_combout\,
	combout => \DI|R[1]~9_combout\);

-- Location: LCCOMB_X37_Y5_N22
\DI|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[1]~10_combout\ = (\DI|R[1]~7_combout\) # ((\DI|R[1]~9_combout\) # ((\DI|_~1_combout\ & \BUS[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datab => \DI|R[1]~7_combout\,
	datac => \BUS[1]~20_combout\,
	datad => \DI|R[1]~9_combout\,
	combout => \DI|R[1]~10_combout\);

-- Location: FF_X37_Y5_N23
\DI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(1));

-- Location: LCCOMB_X36_Y5_N0
\DI|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[0]~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|R[0]~1_combout\);

-- Location: LCCOMB_X37_Y5_N16
\DI|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[0]~2_combout\ = (\DI|R\(1) & ((\DI|R[1]~0_combout\) # ((!\DI|R\(0) & \DI|R[0]~1_combout\)))) # (!\DI|R\(1) & (!\DI|R\(0) & (\DI|R[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(1),
	datab => \DI|R\(0),
	datac => \DI|R[0]~1_combout\,
	datad => \DI|R[1]~0_combout\,
	combout => \DI|R[0]~2_combout\);

-- Location: LCCOMB_X36_Y5_N22
\DI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|_~0_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \_~43_combout\,
	combout => \DI|_~0_combout\);

-- Location: LCCOMB_X37_Y5_N26
\DI|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[0]~4_combout\ = (\DI|R\(0) & ((\DI|R[0]~3_combout\) # ((\DI|R\(7) & \DI|_~0_combout\)))) # (!\DI|R\(0) & (\DI|R\(7) & ((\DI|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(0),
	datab => \DI|R\(7),
	datac => \DI|R[0]~3_combout\,
	datad => \DI|_~0_combout\,
	combout => \DI|R[0]~4_combout\);

-- Location: LCCOMB_X37_Y5_N28
\DI|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[0]~5_combout\ = (\DI|R[0]~2_combout\) # ((\DI|R[0]~4_combout\) # ((\DI|_~1_combout\ & \BUS[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datab => \DI|R[0]~2_combout\,
	datac => \DI|R[0]~4_combout\,
	datad => \BUS[0]~8_combout\,
	combout => \DI|R[0]~5_combout\);

-- Location: FF_X37_Y5_N29
\DI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(0));

-- Location: LCCOMB_X37_Y8_N20
\DI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~2_combout\ = (\DI|R\(2) & (!\DI|op_1~1\)) # (!\DI|R\(2) & ((\DI|op_1~1\) # (GND)))
-- \DI|op_1~3\ = CARRY((!\DI|op_1~1\) # (!\DI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DI|R\(2),
	datad => VCC,
	cin => \DI|op_1~1\,
	combout => \DI|op_1~2_combout\,
	cout => \DI|op_1~3\);

-- Location: LCCOMB_X37_Y8_N6
\DI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~4_combout\ = (\DI|R\(2) & ((GND) # (!\DI|op_2~3\))) # (!\DI|R\(2) & (\DI|op_2~3\ $ (GND)))
-- \DI|op_2~5\ = CARRY((\DI|R\(2)) # (!\DI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DI|R\(2),
	datad => VCC,
	cin => \DI|op_2~3\,
	combout => \DI|op_2~4_combout\,
	cout => \DI|op_2~5\);

-- Location: LCCOMB_X36_Y5_N14
\DI|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[2]~12_combout\ = (\DI|_~2_combout\ & ((\DI|op_2~4_combout\) # ((\DI|R\(2) & \DI|R[0]~3_combout\)))) # (!\DI|_~2_combout\ & (\DI|R\(2) & (\DI|R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~2_combout\,
	datab => \DI|R\(2),
	datac => \DI|R[0]~3_combout\,
	datad => \DI|op_2~4_combout\,
	combout => \DI|R[2]~12_combout\);

-- Location: LCCOMB_X37_Y5_N8
\DI|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[2]~11_combout\ = (\DI|R[1]~0_combout\ & ((\DI|R\(3)) # ((\DI|R\(1) & \DI|R[2]~6_combout\)))) # (!\DI|R[1]~0_combout\ & (((\DI|R\(1) & \DI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[1]~0_combout\,
	datab => \DI|R\(3),
	datac => \DI|R\(1),
	datad => \DI|R[2]~6_combout\,
	combout => \DI|R[2]~11_combout\);

-- Location: LCCOMB_X36_Y5_N4
\DI|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[2]~13_combout\ = (\DI|R[2]~12_combout\) # ((\DI|R[2]~11_combout\) # ((\DI|op_1~2_combout\ & \DI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|op_1~2_combout\,
	datab => \DI|R[2]~12_combout\,
	datac => \DI|R[2]~11_combout\,
	datad => \DI|_~3_combout\,
	combout => \DI|R[2]~13_combout\);

-- Location: LCCOMB_X36_Y5_N18
\DI|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[2]~14_combout\ = (\DI|R[2]~13_combout\) # ((\DI|_~1_combout\ & \BUS[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datac => \DI|R[2]~13_combout\,
	datad => \BUS[2]~29_combout\,
	combout => \DI|R[2]~14_combout\);

-- Location: FF_X36_Y5_N19
\DI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(2));

-- Location: LCCOMB_X37_Y5_N10
\DI|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[3]~15_combout\ = (\DI|R[1]~0_combout\ & ((\DI|R\(4)) # ((\DI|R\(2) & \DI|R[2]~6_combout\)))) # (!\DI|R[1]~0_combout\ & (\DI|R\(2) & ((\DI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[1]~0_combout\,
	datab => \DI|R\(2),
	datac => \DI|R\(4),
	datad => \DI|R[2]~6_combout\,
	combout => \DI|R[3]~15_combout\);

-- Location: LCCOMB_X37_Y8_N22
\DI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~4_combout\ = (\DI|R\(3) & (\DI|op_1~3\ $ (GND))) # (!\DI|R\(3) & (!\DI|op_1~3\ & VCC))
-- \DI|op_1~5\ = CARRY((\DI|R\(3) & !\DI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DI|R\(3),
	datad => VCC,
	cin => \DI|op_1~3\,
	combout => \DI|op_1~4_combout\,
	cout => \DI|op_1~5\);

-- Location: LCCOMB_X37_Y8_N8
\DI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~6_combout\ = (\DI|R\(3) & (\DI|op_2~5\ & VCC)) # (!\DI|R\(3) & (!\DI|op_2~5\))
-- \DI|op_2~7\ = CARRY((!\DI|R\(3) & !\DI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DI|R\(3),
	datad => VCC,
	cin => \DI|op_2~5\,
	combout => \DI|op_2~6_combout\,
	cout => \DI|op_2~7\);

-- Location: LCCOMB_X37_Y5_N4
\DI|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[3]~16_combout\ = (\DI|R[0]~3_combout\ & ((\DI|R\(3)) # ((\DI|op_2~6_combout\ & \DI|_~2_combout\)))) # (!\DI|R[0]~3_combout\ & (((\DI|op_2~6_combout\ & \DI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[0]~3_combout\,
	datab => \DI|R\(3),
	datac => \DI|op_2~6_combout\,
	datad => \DI|_~2_combout\,
	combout => \DI|R[3]~16_combout\);

-- Location: LCCOMB_X37_Y5_N14
\DI|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[3]~17_combout\ = (\DI|R[3]~15_combout\) # ((\DI|R[3]~16_combout\) # ((\DI|op_1~4_combout\ & \DI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[3]~15_combout\,
	datab => \DI|op_1~4_combout\,
	datac => \DI|R[3]~16_combout\,
	datad => \DI|_~3_combout\,
	combout => \DI|R[3]~17_combout\);

-- Location: LCCOMB_X37_Y5_N24
\DI|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[3]~18_combout\ = (\DI|R[3]~17_combout\) # ((\DI|_~1_combout\ & \BUS[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datac => \DI|R[3]~17_combout\,
	datad => \BUS[3]~38_combout\,
	combout => \DI|R[3]~18_combout\);

-- Location: FF_X37_Y5_N25
\DI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(3));

-- Location: LCCOMB_X37_Y8_N10
\DI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~8_combout\ = (\DI|R\(4) & ((GND) # (!\DI|op_2~7\))) # (!\DI|R\(4) & (\DI|op_2~7\ $ (GND)))
-- \DI|op_2~9\ = CARRY((\DI|R\(4)) # (!\DI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(4),
	datad => VCC,
	cin => \DI|op_2~7\,
	combout => \DI|op_2~8_combout\,
	cout => \DI|op_2~9\);

-- Location: LCCOMB_X36_Y5_N30
\DI|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[4]~20_combout\ = (\DI|R[0]~3_combout\ & ((\DI|R\(4)) # ((\DI|op_2~8_combout\ & \DI|_~2_combout\)))) # (!\DI|R[0]~3_combout\ & (((\DI|op_2~8_combout\ & \DI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[0]~3_combout\,
	datab => \DI|R\(4),
	datac => \DI|op_2~8_combout\,
	datad => \DI|_~2_combout\,
	combout => \DI|R[4]~20_combout\);

-- Location: LCCOMB_X37_Y8_N24
\DI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~6_combout\ = (\DI|R\(4) & (!\DI|op_1~5\)) # (!\DI|R\(4) & ((\DI|op_1~5\) # (GND)))
-- \DI|op_1~7\ = CARRY((!\DI|op_1~5\) # (!\DI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(4),
	datad => VCC,
	cin => \DI|op_1~5\,
	combout => \DI|op_1~6_combout\,
	cout => \DI|op_1~7\);

-- Location: LCCOMB_X37_Y5_N0
\DI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[4]~19_combout\ = (\DI|R\(5) & ((\DI|R[1]~0_combout\) # ((\DI|R\(3) & \DI|R[2]~6_combout\)))) # (!\DI|R\(5) & (\DI|R\(3) & (\DI|R[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(5),
	datab => \DI|R\(3),
	datac => \DI|R[2]~6_combout\,
	datad => \DI|R[1]~0_combout\,
	combout => \DI|R[4]~19_combout\);

-- Location: LCCOMB_X36_Y5_N16
\DI|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[4]~21_combout\ = (\DI|R[4]~20_combout\) # ((\DI|R[4]~19_combout\) # ((\DI|op_1~6_combout\ & \DI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[4]~20_combout\,
	datab => \DI|op_1~6_combout\,
	datac => \DI|R[4]~19_combout\,
	datad => \DI|_~3_combout\,
	combout => \DI|R[4]~21_combout\);

-- Location: LCCOMB_X36_Y5_N24
\DI|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[4]~22_combout\ = (\DI|R[4]~21_combout\) # ((\DI|_~1_combout\ & \BUS[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datac => \BUS[4]~47_combout\,
	datad => \DI|R[4]~21_combout\,
	combout => \DI|R[4]~22_combout\);

-- Location: FF_X36_Y5_N25
\DI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(4));

-- Location: LCCOMB_X37_Y8_N26
\DI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~8_combout\ = (\DI|R\(5) & (\DI|op_1~7\ $ (GND))) # (!\DI|R\(5) & (!\DI|op_1~7\ & VCC))
-- \DI|op_1~9\ = CARRY((\DI|R\(5) & !\DI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(5),
	datad => VCC,
	cin => \DI|op_1~7\,
	combout => \DI|op_1~8_combout\,
	cout => \DI|op_1~9\);

-- Location: LCCOMB_X37_Y8_N12
\DI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~10_combout\ = (\DI|R\(5) & (\DI|op_2~9\ & VCC)) # (!\DI|R\(5) & (!\DI|op_2~9\))
-- \DI|op_2~11\ = CARRY((!\DI|R\(5) & !\DI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(5),
	datad => VCC,
	cin => \DI|op_2~9\,
	combout => \DI|op_2~10_combout\,
	cout => \DI|op_2~11\);

-- Location: LCCOMB_X36_Y5_N26
\DI|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[5]~24_combout\ = (\DI|op_2~10_combout\ & ((\DI|_~2_combout\) # ((\DI|R\(5) & \DI|R[0]~3_combout\)))) # (!\DI|op_2~10_combout\ & (\DI|R\(5) & (\DI|R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|op_2~10_combout\,
	datab => \DI|R\(5),
	datac => \DI|R[0]~3_combout\,
	datad => \DI|_~2_combout\,
	combout => \DI|R[5]~24_combout\);

-- Location: LCCOMB_X36_Y5_N20
\DI|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[5]~25_combout\ = (\DI|R[5]~24_combout\) # ((\DI|op_1~8_combout\ & \DI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DI|op_1~8_combout\,
	datac => \DI|R[5]~24_combout\,
	datad => \DI|_~3_combout\,
	combout => \DI|R[5]~25_combout\);

-- Location: LCCOMB_X37_Y5_N30
\DI|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[5]~23_combout\ = (\DI|R\(6) & ((\DI|R[1]~0_combout\) # ((\DI|R[2]~6_combout\ & \DI|R\(4))))) # (!\DI|R\(6) & (\DI|R[2]~6_combout\ & (\DI|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(6),
	datab => \DI|R[2]~6_combout\,
	datac => \DI|R\(4),
	datad => \DI|R[1]~0_combout\,
	combout => \DI|R[5]~23_combout\);

-- Location: LCCOMB_X36_Y5_N2
\DI|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[5]~26_combout\ = (\DI|R[5]~25_combout\) # ((\DI|R[5]~23_combout\) # ((\DI|_~1_combout\ & \BUS[5]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~1_combout\,
	datab => \DI|R[5]~25_combout\,
	datac => \DI|R[5]~23_combout\,
	datad => \BUS[5]~56_combout\,
	combout => \DI|R[5]~26_combout\);

-- Location: FF_X36_Y5_N3
\DI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(5));

-- Location: LCCOMB_X37_Y8_N14
\DI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~12_combout\ = (\DI|R\(6) & ((GND) # (!\DI|op_2~11\))) # (!\DI|R\(6) & (\DI|op_2~11\ $ (GND)))
-- \DI|op_2~13\ = CARRY((\DI|R\(6)) # (!\DI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(6),
	datad => VCC,
	cin => \DI|op_2~11\,
	combout => \DI|op_2~12_combout\,
	cout => \DI|op_2~13\);

-- Location: LCCOMB_X37_Y8_N28
\DI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~10_combout\ = (\DI|R\(6) & (!\DI|op_1~9\)) # (!\DI|R\(6) & ((\DI|op_1~9\) # (GND)))
-- \DI|op_1~11\ = CARRY((!\DI|op_1~9\) # (!\DI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(6),
	datad => VCC,
	cin => \DI|op_1~9\,
	combout => \DI|op_1~10_combout\,
	cout => \DI|op_1~11\);

-- Location: LCCOMB_X39_Y5_N10
\DI|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[6]~28_combout\ = (\DI|R[0]~3_combout\ & ((\DI|R\(6)) # ((\DI|op_1~10_combout\ & \DI|_~3_combout\)))) # (!\DI|R[0]~3_combout\ & (((\DI|op_1~10_combout\ & \DI|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[0]~3_combout\,
	datab => \DI|R\(6),
	datac => \DI|op_1~10_combout\,
	datad => \DI|_~3_combout\,
	combout => \DI|R[6]~28_combout\);

-- Location: LCCOMB_X39_Y5_N12
\DI|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[6]~29_combout\ = (\DI|R[6]~28_combout\) # ((\DI|_~2_combout\ & \DI|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~2_combout\,
	datac => \DI|op_2~12_combout\,
	datad => \DI|R[6]~28_combout\,
	combout => \DI|R[6]~29_combout\);

-- Location: LCCOMB_X38_Y5_N26
\DI|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[6]~27_combout\ = (\DI|R\(7) & ((\DI|R[1]~0_combout\) # ((\DI|R\(5) & \DI|R[2]~6_combout\)))) # (!\DI|R\(7) & (\DI|R\(5) & ((\DI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(7),
	datab => \DI|R\(5),
	datac => \DI|R[1]~0_combout\,
	datad => \DI|R[2]~6_combout\,
	combout => \DI|R[6]~27_combout\);

-- Location: LCCOMB_X39_Y5_N28
\DI|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[6]~30_combout\ = (\DI|R[6]~29_combout\) # ((\DI|R[6]~27_combout\) # ((\DI|_~1_combout\ & \BUS[6]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[6]~29_combout\,
	datab => \DI|_~1_combout\,
	datac => \DI|R[6]~27_combout\,
	datad => \BUS[6]~65_combout\,
	combout => \DI|R[6]~30_combout\);

-- Location: FF_X39_Y5_N29
\DI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(6));

-- Location: LCCOMB_X37_Y8_N16
\DI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_2~14_combout\ = \DI|op_2~13\ $ (!\DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DI|R\(7),
	cin => \DI|op_2~13\,
	combout => \DI|op_2~14_combout\);

-- Location: LCCOMB_X40_Y5_N30
\DI|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[7]~31_combout\ = (\DI|R\(0) & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(0),
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[0]~input_o\,
	combout => \DI|R[7]~31_combout\);

-- Location: LCCOMB_X39_Y5_N14
\DI|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[7]~32_combout\ = (\DI|R[7]~31_combout\ & ((\_~43_combout\) # ((\DI|R\(6) & \DI|R[2]~6_combout\)))) # (!\DI|R[7]~31_combout\ & (\DI|R\(6) & ((\DI|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R[7]~31_combout\,
	datab => \DI|R\(6),
	datac => \_~43_combout\,
	datad => \DI|R[2]~6_combout\,
	combout => \DI|R[7]~32_combout\);

-- Location: LCCOMB_X37_Y8_N30
\DI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|op_1~12_combout\ = \DI|op_1~11\ $ (!\DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DI|R\(7),
	cin => \DI|op_1~11\,
	combout => \DI|op_1~12_combout\);

-- Location: LCCOMB_X39_Y5_N0
\DI|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[7]~33_combout\ = (\DI|R\(7) & ((\DI|R[0]~3_combout\) # ((\DI|_~3_combout\ & \DI|op_1~12_combout\)))) # (!\DI|R\(7) & (\DI|_~3_combout\ & ((\DI|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(7),
	datab => \DI|_~3_combout\,
	datac => \DI|R[0]~3_combout\,
	datad => \DI|op_1~12_combout\,
	combout => \DI|R[7]~33_combout\);

-- Location: LCCOMB_X39_Y5_N18
\DI|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[7]~34_combout\ = (\DI|R[7]~32_combout\) # ((\DI|R[7]~33_combout\) # ((\DI|_~2_combout\ & \DI|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|_~2_combout\,
	datab => \DI|op_2~14_combout\,
	datac => \DI|R[7]~32_combout\,
	datad => \DI|R[7]~33_combout\,
	combout => \DI|R[7]~34_combout\);

-- Location: LCCOMB_X39_Y5_N6
\DI|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DI|R[7]~35_combout\ = (\DI|R[7]~34_combout\) # ((\BUS[7]~74_combout\ & \DI|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[7]~74_combout\,
	datac => \DI|_~1_combout\,
	datad => \DI|R[7]~34_combout\,
	combout => \DI|R[7]~35_combout\);

-- Location: FF_X39_Y5_N7
\DI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DI|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DI|R\(7));

-- Location: LCCOMB_X41_Y4_N6
\_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~25_combout\ = (!\SelBus[4]~2_combout\ & (\SelBus[1]~4_combout\ & (\_~58_combout\ & !\SelBus[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[4]~2_combout\,
	datab => \SelBus[1]~4_combout\,
	datac => \_~58_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~25_combout\);

-- Location: LCCOMB_X40_Y4_N22
\BUS[7]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~68_combout\ = (\Cx|R\(7) & ((\_~25_combout\) # ((\DI|R\(7) & \_~24_combout\)))) # (!\Cx|R\(7) & (\DI|R\(7) & (\_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(7),
	datab => \DI|R\(7),
	datac => \_~24_combout\,
	datad => \_~25_combout\,
	combout => \BUS[7]~68_combout\);

-- Location: LCCOMB_X37_Y4_N22
\_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~36_combout\ = (\_~34_combout\ & (!\SelMUX[1]~3_combout\ & \_~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~34_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \_~62_combout\,
	combout => \_~36_combout\);

-- Location: LCCOMB_X36_Y4_N12
\Bx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~1_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & \_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~36_combout\,
	combout => \Bx|_~1_combout\);

-- Location: LCCOMB_X39_Y2_N26
\Bx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~3_combout\ = (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\_~36_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \_~36_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Bx|_~3_combout\);

-- Location: LCCOMB_X36_Y4_N14
\Bx|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~36_combout\,
	combout => \Bx|R[1]~0_combout\);

-- Location: LCCOMB_X39_Y1_N4
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

-- Location: LCCOMB_X39_Y1_N6
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

-- Location: LCCOMB_X37_Y4_N12
\Bx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\_~36_combout\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \_~36_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \Bx|_~2_combout\);

-- Location: LCCOMB_X36_Y4_N24
\Bx|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~3_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))) # (!\_~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~36_combout\,
	combout => \Bx|R[0]~3_combout\);

-- Location: LCCOMB_X39_Y1_N26
\Bx|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~8_combout\ = (\Bx|op_2~2_combout\ & ((\Bx|_~2_combout\) # ((\Bx|R\(1) & \Bx|R[0]~3_combout\)))) # (!\Bx|op_2~2_combout\ & (\Bx|R\(1) & ((\Bx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_2~2_combout\,
	datab => \Bx|R\(1),
	datac => \Bx|_~2_combout\,
	datad => \Bx|R[0]~3_combout\,
	combout => \Bx|R[1]~8_combout\);

-- Location: LCCOMB_X38_Y1_N10
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

-- Location: LCCOMB_X39_Y2_N20
\Bx|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \_~36_combout\,
	combout => \Bx|R[2]~6_combout\);

-- Location: LCCOMB_X39_Y1_N20
\Bx|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~7_combout\ = (\Bx|R\(2) & ((\Bx|R[1]~0_combout\) # ((\Bx|R\(0) & \Bx|R[2]~6_combout\)))) # (!\Bx|R\(2) & (\Bx|R\(0) & (\Bx|R[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(2),
	datab => \Bx|R\(0),
	datac => \Bx|R[2]~6_combout\,
	datad => \Bx|R[1]~0_combout\,
	combout => \Bx|R[1]~7_combout\);

-- Location: LCCOMB_X39_Y1_N28
\Bx|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~9_combout\ = (\Bx|R[1]~8_combout\) # ((\Bx|R[1]~7_combout\) # ((\Bx|op_1~0_combout\ & \Bx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~8_combout\,
	datab => \Bx|op_1~0_combout\,
	datac => \Bx|_~3_combout\,
	datad => \Bx|R[1]~7_combout\,
	combout => \Bx|R[1]~9_combout\);

-- Location: LCCOMB_X39_Y1_N0
\Bx|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[1]~10_combout\ = (\Bx|R[1]~9_combout\) # ((\Bx|_~1_combout\ & \BUS[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|_~1_combout\,
	datac => \BUS[1]~20_combout\,
	datad => \Bx|R[1]~9_combout\,
	combout => \Bx|R[1]~10_combout\);

-- Location: FF_X39_Y1_N1
\Bx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(1));

-- Location: LCCOMB_X36_Y4_N28
\Bx|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \_~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~36_combout\,
	combout => \Bx|R[0]~1_combout\);

-- Location: LCCOMB_X36_Y4_N16
\Bx|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~2_combout\ = (\Bx|R\(1) & ((\Bx|R[1]~0_combout\) # ((!\Bx|R\(0) & \Bx|R[0]~1_combout\)))) # (!\Bx|R\(1) & (!\Bx|R\(0) & ((\Bx|R[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(1),
	datab => \Bx|R\(0),
	datac => \Bx|R[1]~0_combout\,
	datad => \Bx|R[0]~1_combout\,
	combout => \Bx|R[0]~2_combout\);

-- Location: LCCOMB_X36_Y4_N30
\Bx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~36_combout\,
	combout => \Bx|_~0_combout\);

-- Location: LCCOMB_X36_Y4_N18
\Bx|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~4_combout\ = (\Bx|_~0_combout\ & ((\Bx|R\(7)) # ((\Bx|R\(0) & \Bx|R[0]~3_combout\)))) # (!\Bx|_~0_combout\ & (\Bx|R\(0) & ((\Bx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~0_combout\,
	datab => \Bx|R\(0),
	datac => \Bx|R\(7),
	datad => \Bx|R[0]~3_combout\,
	combout => \Bx|R[0]~4_combout\);

-- Location: LCCOMB_X36_Y4_N8
\Bx|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[0]~5_combout\ = (\Bx|R[0]~2_combout\) # ((\Bx|R[0]~4_combout\) # ((\BUS[0]~8_combout\ & \Bx|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[0]~8_combout\,
	datab => \Bx|R[0]~2_combout\,
	datac => \Bx|_~1_combout\,
	datad => \Bx|R[0]~4_combout\,
	combout => \Bx|R[0]~5_combout\);

-- Location: FF_X36_Y4_N9
\Bx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(0));

-- Location: LCCOMB_X38_Y1_N12
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

-- Location: LCCOMB_X39_Y1_N8
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

-- Location: LCCOMB_X38_Y1_N26
\Bx|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~12_combout\ = (\Bx|R[0]~3_combout\ & ((\Bx|R\(2)) # ((\Bx|op_2~4_combout\ & \Bx|_~2_combout\)))) # (!\Bx|R[0]~3_combout\ & (((\Bx|op_2~4_combout\ & \Bx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[0]~3_combout\,
	datab => \Bx|R\(2),
	datac => \Bx|op_2~4_combout\,
	datad => \Bx|_~2_combout\,
	combout => \Bx|R[2]~12_combout\);

-- Location: LCCOMB_X38_Y1_N0
\Bx|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~11_combout\ = (\Bx|R\(3) & ((\Bx|R[1]~0_combout\) # ((\Bx|R\(1) & \Bx|R[2]~6_combout\)))) # (!\Bx|R\(3) & (\Bx|R\(1) & ((\Bx|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(3),
	datab => \Bx|R\(1),
	datac => \Bx|R[1]~0_combout\,
	datad => \Bx|R[2]~6_combout\,
	combout => \Bx|R[2]~11_combout\);

-- Location: LCCOMB_X38_Y1_N4
\Bx|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~13_combout\ = (\Bx|R[2]~12_combout\) # ((\Bx|R[2]~11_combout\) # ((\Bx|_~3_combout\ & \Bx|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~3_combout\,
	datab => \Bx|op_1~2_combout\,
	datac => \Bx|R[2]~12_combout\,
	datad => \Bx|R[2]~11_combout\,
	combout => \Bx|R[2]~13_combout\);

-- Location: LCCOMB_X38_Y1_N28
\Bx|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[2]~14_combout\ = (\Bx|R[2]~13_combout\) # ((\Bx|_~1_combout\ & \BUS[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|_~1_combout\,
	datac => \Bx|R[2]~13_combout\,
	datad => \BUS[2]~29_combout\,
	combout => \Bx|R[2]~14_combout\);

-- Location: FF_X38_Y1_N29
\Bx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(2));

-- Location: LCCOMB_X39_Y1_N30
\Bx|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~15_combout\ = (\Bx|R[1]~0_combout\ & ((\Bx|R\(4)) # ((\Bx|R\(2) & \Bx|R[2]~6_combout\)))) # (!\Bx|R[1]~0_combout\ & (((\Bx|R\(2) & \Bx|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~0_combout\,
	datab => \Bx|R\(4),
	datac => \Bx|R\(2),
	datad => \Bx|R[2]~6_combout\,
	combout => \Bx|R[3]~15_combout\);

-- Location: LCCOMB_X38_Y1_N14
\Bx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~4_combout\ = (\Bx|R\(3) & (\Bx|op_1~3\ $ (GND))) # (!\Bx|R\(3) & (!\Bx|op_1~3\ & VCC))
-- \Bx|op_1~5\ = CARRY((\Bx|R\(3) & !\Bx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(3),
	datad => VCC,
	cin => \Bx|op_1~3\,
	combout => \Bx|op_1~4_combout\,
	cout => \Bx|op_1~5\);

-- Location: LCCOMB_X39_Y1_N10
\Bx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~6_combout\ = (\Bx|R\(3) & (\Bx|op_2~5\ & VCC)) # (!\Bx|R\(3) & (!\Bx|op_2~5\))
-- \Bx|op_2~7\ = CARRY((!\Bx|R\(3) & !\Bx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(3),
	datad => VCC,
	cin => \Bx|op_2~5\,
	combout => \Bx|op_2~6_combout\,
	cout => \Bx|op_2~7\);

-- Location: LCCOMB_X39_Y1_N24
\Bx|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~16_combout\ = (\Bx|op_2~6_combout\ & ((\Bx|_~2_combout\) # ((\Bx|R\(3) & \Bx|R[0]~3_combout\)))) # (!\Bx|op_2~6_combout\ & (((\Bx|R\(3) & \Bx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_2~6_combout\,
	datab => \Bx|_~2_combout\,
	datac => \Bx|R\(3),
	datad => \Bx|R[0]~3_combout\,
	combout => \Bx|R[3]~16_combout\);

-- Location: LCCOMB_X39_Y1_N2
\Bx|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~17_combout\ = (\Bx|R[3]~16_combout\) # ((\Bx|op_1~4_combout\ & \Bx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_1~4_combout\,
	datac => \Bx|_~3_combout\,
	datad => \Bx|R[3]~16_combout\,
	combout => \Bx|R[3]~17_combout\);

-- Location: LCCOMB_X39_Y1_N22
\Bx|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[3]~18_combout\ = (\Bx|R[3]~15_combout\) # ((\Bx|R[3]~17_combout\) # ((\Bx|_~1_combout\ & \BUS[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[3]~15_combout\,
	datab => \Bx|_~1_combout\,
	datac => \BUS[3]~38_combout\,
	datad => \Bx|R[3]~17_combout\,
	combout => \Bx|R[3]~18_combout\);

-- Location: FF_X39_Y1_N23
\Bx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(3));

-- Location: LCCOMB_X38_Y1_N16
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

-- Location: LCCOMB_X39_Y1_N12
\Bx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~8_combout\ = (\Bx|R\(4) & ((GND) # (!\Bx|op_2~7\))) # (!\Bx|R\(4) & (\Bx|op_2~7\ $ (GND)))
-- \Bx|op_2~9\ = CARRY((\Bx|R\(4)) # (!\Bx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(4),
	datad => VCC,
	cin => \Bx|op_2~7\,
	combout => \Bx|op_2~8_combout\,
	cout => \Bx|op_2~9\);

-- Location: LCCOMB_X39_Y2_N18
\Bx|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~20_combout\ = (\Bx|op_2~8_combout\ & ((\Bx|_~2_combout\) # ((\Bx|R[0]~3_combout\ & \Bx|R\(4))))) # (!\Bx|op_2~8_combout\ & (\Bx|R[0]~3_combout\ & (\Bx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_2~8_combout\,
	datab => \Bx|R[0]~3_combout\,
	datac => \Bx|R\(4),
	datad => \Bx|_~2_combout\,
	combout => \Bx|R[4]~20_combout\);

-- Location: LCCOMB_X39_Y2_N4
\Bx|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~21_combout\ = (\Bx|R[4]~20_combout\) # ((\Bx|op_1~6_combout\ & \Bx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|op_1~6_combout\,
	datac => \Bx|_~3_combout\,
	datad => \Bx|R[4]~20_combout\,
	combout => \Bx|R[4]~21_combout\);

-- Location: LCCOMB_X39_Y2_N28
\Bx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~19_combout\ = (\Bx|R[1]~0_combout\ & ((\Bx|R\(5)) # ((\Bx|R\(3) & \Bx|R[2]~6_combout\)))) # (!\Bx|R[1]~0_combout\ & (\Bx|R\(3) & ((\Bx|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[1]~0_combout\,
	datab => \Bx|R\(3),
	datac => \Bx|R\(5),
	datad => \Bx|R[2]~6_combout\,
	combout => \Bx|R[4]~19_combout\);

-- Location: LCCOMB_X39_Y2_N24
\Bx|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[4]~22_combout\ = (\Bx|R[4]~21_combout\) # ((\Bx|R[4]~19_combout\) # ((\Bx|_~1_combout\ & \BUS[4]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datab => \Bx|R[4]~21_combout\,
	datac => \BUS[4]~47_combout\,
	datad => \Bx|R[4]~19_combout\,
	combout => \Bx|R[4]~22_combout\);

-- Location: FF_X39_Y2_N25
\Bx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(4));

-- Location: LCCOMB_X38_Y1_N18
\Bx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~8_combout\ = (\Bx|R\(5) & (\Bx|op_1~7\ $ (GND))) # (!\Bx|R\(5) & (!\Bx|op_1~7\ & VCC))
-- \Bx|op_1~9\ = CARRY((\Bx|R\(5) & !\Bx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(5),
	datad => VCC,
	cin => \Bx|op_1~7\,
	combout => \Bx|op_1~8_combout\,
	cout => \Bx|op_1~9\);

-- Location: LCCOMB_X38_Y1_N8
\Bx|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~23_combout\ = (\Bx|R\(4) & ((\Bx|R[2]~6_combout\) # ((\Bx|R\(6) & \Bx|R[1]~0_combout\)))) # (!\Bx|R\(4) & (\Bx|R\(6) & (\Bx|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(4),
	datab => \Bx|R\(6),
	datac => \Bx|R[1]~0_combout\,
	datad => \Bx|R[2]~6_combout\,
	combout => \Bx|R[5]~23_combout\);

-- Location: LCCOMB_X39_Y1_N14
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

-- Location: LCCOMB_X38_Y1_N6
\Bx|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~24_combout\ = (\Bx|R\(5) & ((\Bx|R[0]~3_combout\) # ((\Bx|_~2_combout\ & \Bx|op_2~10_combout\)))) # (!\Bx|R\(5) & (\Bx|_~2_combout\ & ((\Bx|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(5),
	datab => \Bx|_~2_combout\,
	datac => \Bx|R[0]~3_combout\,
	datad => \Bx|op_2~10_combout\,
	combout => \Bx|R[5]~24_combout\);

-- Location: LCCOMB_X38_Y1_N24
\Bx|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~25_combout\ = (\Bx|R[5]~23_combout\) # ((\Bx|R[5]~24_combout\) # ((\Bx|_~3_combout\ & \Bx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~3_combout\,
	datab => \Bx|op_1~8_combout\,
	datac => \Bx|R[5]~23_combout\,
	datad => \Bx|R[5]~24_combout\,
	combout => \Bx|R[5]~25_combout\);

-- Location: LCCOMB_X38_Y1_N30
\Bx|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[5]~26_combout\ = (\Bx|R[5]~25_combout\) # ((\Bx|_~1_combout\ & \BUS[5]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bx|_~1_combout\,
	datac => \BUS[5]~56_combout\,
	datad => \Bx|R[5]~25_combout\,
	combout => \Bx|R[5]~26_combout\);

-- Location: FF_X38_Y1_N31
\Bx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(5));

-- Location: LCCOMB_X38_Y1_N20
\Bx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_1~10_combout\ = (\Bx|R\(6) & (!\Bx|op_1~9\)) # (!\Bx|R\(6) & ((\Bx|op_1~9\) # (GND)))
-- \Bx|op_1~11\ = CARRY((!\Bx|op_1~9\) # (!\Bx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bx|R\(6),
	datad => VCC,
	cin => \Bx|op_1~9\,
	combout => \Bx|op_1~10_combout\,
	cout => \Bx|op_1~11\);

-- Location: LCCOMB_X39_Y2_N12
\Bx|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~28_combout\ = (\Bx|_~3_combout\ & ((\Bx|op_1~10_combout\) # ((\Bx|R\(5) & \Bx|R[2]~6_combout\)))) # (!\Bx|_~3_combout\ & (\Bx|R\(5) & ((\Bx|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~3_combout\,
	datab => \Bx|R\(5),
	datac => \Bx|op_1~10_combout\,
	datad => \Bx|R[2]~6_combout\,
	combout => \Bx|R[6]~28_combout\);

-- Location: LCCOMB_X39_Y1_N16
\Bx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|op_2~12_combout\ = (\Bx|R\(6) & ((GND) # (!\Bx|op_2~11\))) # (!\Bx|R\(6) & (\Bx|op_2~11\ $ (GND)))
-- \Bx|op_2~13\ = CARRY((\Bx|R\(6)) # (!\Bx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(6),
	datad => VCC,
	cin => \Bx|op_2~11\,
	combout => \Bx|op_2~12_combout\,
	cout => \Bx|op_2~13\);

-- Location: LCCOMB_X39_Y2_N22
\Bx|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~27_combout\ = (\Bx|R\(6) & ((\Bx|R[0]~3_combout\) # ((\Bx|R\(7) & \Bx|R[1]~0_combout\)))) # (!\Bx|R\(6) & (\Bx|R\(7) & (\Bx|R[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(6),
	datab => \Bx|R\(7),
	datac => \Bx|R[1]~0_combout\,
	datad => \Bx|R[0]~3_combout\,
	combout => \Bx|R[6]~27_combout\);

-- Location: LCCOMB_X39_Y2_N30
\Bx|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~29_combout\ = (\Bx|R[6]~28_combout\) # ((\Bx|R[6]~27_combout\) # ((\Bx|op_2~12_combout\ & \Bx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[6]~28_combout\,
	datab => \Bx|op_2~12_combout\,
	datac => \Bx|R[6]~27_combout\,
	datad => \Bx|_~2_combout\,
	combout => \Bx|R[6]~29_combout\);

-- Location: LCCOMB_X39_Y2_N6
\Bx|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[6]~30_combout\ = (\Bx|R[6]~29_combout\) # ((\Bx|_~1_combout\ & \BUS[6]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datac => \Bx|R[6]~29_combout\,
	datad => \BUS[6]~65_combout\,
	combout => \Bx|R[6]~30_combout\);

-- Location: FF_X39_Y2_N7
\Bx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(6));

-- Location: LCCOMB_X39_Y1_N18
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

-- Location: LCCOMB_X36_Y4_N10
\Bx|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~31_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Bx|R\(0) & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Bx|R\(0),
	datad => \Cmd[2]~input_o\,
	combout => \Bx|R[7]~31_combout\);

-- Location: LCCOMB_X36_Y4_N4
\Bx|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~32_combout\ = (\Bx|R[7]~31_combout\ & ((\_~36_combout\) # ((\Bx|R\(7) & \Bx|R[0]~3_combout\)))) # (!\Bx|R[7]~31_combout\ & (((\Bx|R\(7) & \Bx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R[7]~31_combout\,
	datab => \_~36_combout\,
	datac => \Bx|R\(7),
	datad => \Bx|R[0]~3_combout\,
	combout => \Bx|R[7]~32_combout\);

-- Location: LCCOMB_X38_Y1_N22
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

-- Location: LCCOMB_X39_Y2_N16
\Bx|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~33_combout\ = (\Bx|R\(6) & ((\Bx|R[2]~6_combout\) # ((\Bx|_~3_combout\ & \Bx|op_1~12_combout\)))) # (!\Bx|R\(6) & (((\Bx|_~3_combout\ & \Bx|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(6),
	datab => \Bx|R[2]~6_combout\,
	datac => \Bx|_~3_combout\,
	datad => \Bx|op_1~12_combout\,
	combout => \Bx|R[7]~33_combout\);

-- Location: LCCOMB_X39_Y2_N14
\Bx|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~34_combout\ = (\Bx|R[7]~32_combout\) # ((\Bx|R[7]~33_combout\) # ((\Bx|op_2~14_combout\ & \Bx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|op_2~14_combout\,
	datab => \Bx|_~2_combout\,
	datac => \Bx|R[7]~32_combout\,
	datad => \Bx|R[7]~33_combout\,
	combout => \Bx|R[7]~34_combout\);

-- Location: LCCOMB_X39_Y2_N8
\Bx|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Bx|R[7]~35_combout\ = (\Bx|R[7]~34_combout\) # ((\Bx|_~1_combout\ & \BUS[7]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|_~1_combout\,
	datac => \Bx|R[7]~34_combout\,
	datad => \BUS[7]~74_combout\,
	combout => \Bx|R[7]~35_combout\);

-- Location: FF_X39_Y2_N9
\Bx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Bx|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Bx|R\(7));

-- Location: LCCOMB_X40_Y4_N24
\_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~23_combout\ = (\_~59_combout\ & (!\SelBus[0]~3_combout\ & \_~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~59_combout\,
	datab => \SelBus[0]~3_combout\,
	datad => \_~58_combout\,
	combout => \_~23_combout\);

-- Location: LCCOMB_X41_Y4_N18
\_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~26_combout\ = (\_~58_combout\ & (\_~59_combout\ & \SelBus[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~58_combout\,
	datab => \_~59_combout\,
	datad => \SelBus[0]~3_combout\,
	combout => \_~26_combout\);

-- Location: LCCOMB_X40_Y4_N0
\BUS[7]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~67_combout\ = (\Bx|R\(7) & ((\_~26_combout\) # ((\_~23_combout\ & \Ax|R\(7))))) # (!\Bx|R\(7) & (\_~23_combout\ & (\Ax|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bx|R\(7),
	datab => \_~23_combout\,
	datac => \Ax|R\(7),
	datad => \_~26_combout\,
	combout => \BUS[7]~67_combout\);

-- Location: LCCOMB_X39_Y5_N4
\BUS[7]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~69_combout\ = (\BUS[7]~68_combout\) # ((\BUS[7]~67_combout\) # ((\Fx[7]~input_o\ & \_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[7]~input_o\,
	datab => \BUS[7]~68_combout\,
	datac => \BUS[7]~67_combout\,
	datad => \_~27_combout\,
	combout => \BUS[7]~69_combout\);

-- Location: LCCOMB_X40_Y2_N14
\MAR|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[7]~feeder_combout\ = \BUS[7]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[7]~74_combout\,
	combout => \MAR|R[7]~feeder_combout\);

-- Location: FF_X40_Y2_N15
\MAR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(7));

-- Location: FF_X40_Y2_N25
\IR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[7]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(7));

-- Location: LCCOMB_X40_Y2_N24
\BUS[7]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~66_combout\ = (\_~22_combout\ & ((\IR|R\(7)) # ((\MAR|R\(7) & \_~21_combout\)))) # (!\_~22_combout\ & (\MAR|R\(7) & ((\_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~22_combout\,
	datab => \MAR|R\(7),
	datac => \IR|R\(7),
	datad => \_~21_combout\,
	combout => \BUS[7]~66_combout\);

-- Location: LCCOMB_X39_Y5_N16
\BUS[7]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~74_combout\ = (\BUS[7]~73_combout\) # (((\BUS[7]~69_combout\) # (\BUS[7]~66_combout\)) # (!\BUS[7]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[7]~73_combout\,
	datab => \BUS[7]~19_combout\,
	datac => \BUS[7]~69_combout\,
	datad => \BUS[7]~66_combout\,
	combout => \BUS[7]~74_combout\);

-- Location: LCCOMB_X42_Y5_N28
\Cx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~14_combout\ = \Cx|op_2~13\ $ (!\Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cx|R\(7),
	cin => \Cx|op_2~13\,
	combout => \Cx|op_2~14_combout\);

-- Location: LCCOMB_X38_Y5_N16
\Cx|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[7]~32_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Cx|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Cx|R\(0),
	combout => \Cx|R[7]~32_combout\);

-- Location: LCCOMB_X38_Y5_N2
\Cx|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[7]~33_combout\ = (\_~37_combout\ & ((\Cx|R[7]~32_combout\) # ((\Cx|R\(7) & \Cx|R[0]~3_combout\)))) # (!\_~37_combout\ & (\Cx|R\(7) & ((\Cx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~37_combout\,
	datab => \Cx|R\(7),
	datac => \Cx|R[7]~32_combout\,
	datad => \Cx|R[0]~3_combout\,
	combout => \Cx|R[7]~33_combout\);

-- Location: LCCOMB_X38_Y5_N24
\Cx|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[7]~34_combout\ = (\Cx|R[7]~33_combout\) # ((\Cx|op_2~14_combout\ & \Cx|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|op_2~14_combout\,
	datac => \Cx|_~2_combout\,
	datad => \Cx|R[7]~33_combout\,
	combout => \Cx|R[7]~34_combout\);

-- Location: LCCOMB_X38_Y5_N20
\Cx|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[7]~35_combout\ = (\Cx|R[7]~31_combout\) # ((\Cx|R[7]~34_combout\) # ((\Cx|_~1_combout\ & \BUS[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[7]~31_combout\,
	datab => \Cx|_~1_combout\,
	datac => \BUS[7]~74_combout\,
	datad => \Cx|R[7]~34_combout\,
	combout => \Cx|R[7]~35_combout\);

-- Location: FF_X38_Y5_N21
\Cx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(7));

-- Location: LCCOMB_X39_Y5_N20
\Cx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \_~37_combout\,
	combout => \Cx|_~0_combout\);

-- Location: LCCOMB_X38_Y5_N4
\Cx|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[0]~4_combout\ = (\Cx|R\(0) & ((\Cx|R[0]~3_combout\) # ((\Cx|R\(7) & \Cx|_~0_combout\)))) # (!\Cx|R\(0) & (\Cx|R\(7) & (\Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(0),
	datab => \Cx|R\(7),
	datac => \Cx|_~0_combout\,
	datad => \Cx|R[0]~3_combout\,
	combout => \Cx|R[0]~4_combout\);

-- Location: LCCOMB_X38_Y5_N6
\Cx|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[0]~5_combout\ = (\Cx|R[0]~2_combout\) # ((\Cx|R[0]~4_combout\) # ((\Cx|_~1_combout\ & \BUS[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[0]~2_combout\,
	datab => \Cx|_~1_combout\,
	datac => \Cx|R[0]~4_combout\,
	datad => \BUS[0]~8_combout\,
	combout => \Cx|R[0]~5_combout\);

-- Location: FF_X38_Y5_N7
\Cx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(0));

-- Location: LCCOMB_X41_Y5_N16
\Cx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~2_combout\ = (\Cx|R\(2) & (!\Cx|op_1~1\)) # (!\Cx|R\(2) & ((\Cx|op_1~1\) # (GND)))
-- \Cx|op_1~3\ = CARRY((!\Cx|op_1~1\) # (!\Cx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(2),
	datad => VCC,
	cin => \Cx|op_1~1\,
	combout => \Cx|op_1~2_combout\,
	cout => \Cx|op_1~3\);

-- Location: LCCOMB_X42_Y5_N18
\Cx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_2~4_combout\ = (\Cx|R\(2) & ((GND) # (!\Cx|op_2~3\))) # (!\Cx|R\(2) & (\Cx|op_2~3\ $ (GND)))
-- \Cx|op_2~5\ = CARRY((\Cx|R\(2)) # (!\Cx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R\(2),
	datad => VCC,
	cin => \Cx|op_2~3\,
	combout => \Cx|op_2~4_combout\,
	cout => \Cx|op_2~5\);

-- Location: LCCOMB_X40_Y5_N18
\Cx|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[2]~12_combout\ = (\Cx|R[0]~3_combout\ & ((\Cx|R\(2)) # ((\Cx|op_2~4_combout\ & \Cx|_~2_combout\)))) # (!\Cx|R[0]~3_combout\ & (((\Cx|op_2~4_combout\ & \Cx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[0]~3_combout\,
	datab => \Cx|R\(2),
	datac => \Cx|op_2~4_combout\,
	datad => \Cx|_~2_combout\,
	combout => \Cx|R[2]~12_combout\);

-- Location: LCCOMB_X40_Y5_N20
\Cx|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[2]~11_combout\ = (\Cx|R\(3) & ((\Cx|R[1]~0_combout\) # ((\Cx|R[2]~6_combout\ & \Cx|R\(1))))) # (!\Cx|R\(3) & (\Cx|R[2]~6_combout\ & (\Cx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(3),
	datab => \Cx|R[2]~6_combout\,
	datac => \Cx|R\(1),
	datad => \Cx|R[1]~0_combout\,
	combout => \Cx|R[2]~11_combout\);

-- Location: LCCOMB_X40_Y5_N0
\Cx|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[2]~13_combout\ = (\Cx|R[2]~12_combout\) # ((\Cx|R[2]~11_combout\) # ((\Cx|op_1~2_combout\ & \Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|op_1~2_combout\,
	datab => \Cx|R[2]~12_combout\,
	datac => \Cx|_~3_combout\,
	datad => \Cx|R[2]~11_combout\,
	combout => \Cx|R[2]~13_combout\);

-- Location: LCCOMB_X40_Y5_N16
\Cx|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[2]~14_combout\ = (\Cx|R[2]~13_combout\) # ((\Cx|_~1_combout\ & \BUS[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R[2]~13_combout\,
	datac => \Cx|_~1_combout\,
	datad => \BUS[2]~29_combout\,
	combout => \Cx|R[2]~14_combout\);

-- Location: FF_X40_Y5_N17
\Cx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(2));

-- Location: LCCOMB_X41_Y5_N12
\Cx|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[3]~16_combout\ = (\Cx|op_2~6_combout\ & ((\Cx|_~2_combout\) # ((\Cx|R\(3) & \Cx|R[0]~3_combout\)))) # (!\Cx|op_2~6_combout\ & (\Cx|R\(3) & (\Cx|R[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|op_2~6_combout\,
	datab => \Cx|R\(3),
	datac => \Cx|R[0]~3_combout\,
	datad => \Cx|_~2_combout\,
	combout => \Cx|R[3]~16_combout\);

-- Location: LCCOMB_X41_Y5_N18
\Cx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~4_combout\ = (\Cx|R\(3) & (\Cx|op_1~3\ $ (GND))) # (!\Cx|R\(3) & (!\Cx|op_1~3\ & VCC))
-- \Cx|op_1~5\ = CARRY((\Cx|R\(3) & !\Cx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(3),
	datad => VCC,
	cin => \Cx|op_1~3\,
	combout => \Cx|op_1~4_combout\,
	cout => \Cx|op_1~5\);

-- Location: LCCOMB_X40_Y5_N14
\Cx|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[3]~15_combout\ = (\Cx|R\(4) & ((\Cx|R[1]~0_combout\) # ((\Cx|R\(2) & \Cx|R[2]~6_combout\)))) # (!\Cx|R\(4) & (\Cx|R\(2) & (\Cx|R[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(4),
	datab => \Cx|R\(2),
	datac => \Cx|R[2]~6_combout\,
	datad => \Cx|R[1]~0_combout\,
	combout => \Cx|R[3]~15_combout\);

-- Location: LCCOMB_X41_Y5_N0
\Cx|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[3]~17_combout\ = (\Cx|R[3]~16_combout\) # ((\Cx|R[3]~15_combout\) # ((\Cx|op_1~4_combout\ & \Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[3]~16_combout\,
	datab => \Cx|op_1~4_combout\,
	datac => \Cx|_~3_combout\,
	datad => \Cx|R[3]~15_combout\,
	combout => \Cx|R[3]~17_combout\);

-- Location: LCCOMB_X41_Y5_N30
\Cx|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[3]~18_combout\ = (\Cx|R[3]~17_combout\) # ((\Cx|_~1_combout\ & \BUS[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cx|R[3]~17_combout\,
	datac => \Cx|_~1_combout\,
	datad => \BUS[3]~38_combout\,
	combout => \Cx|R[3]~18_combout\);

-- Location: FF_X41_Y5_N31
\Cx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(3));

-- Location: LCCOMB_X41_Y5_N20
\Cx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|op_1~6_combout\ = (\Cx|R\(4) & (!\Cx|op_1~5\)) # (!\Cx|R\(4) & ((\Cx|op_1~5\) # (GND)))
-- \Cx|op_1~7\ = CARRY((!\Cx|op_1~5\) # (!\Cx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(4),
	datad => VCC,
	cin => \Cx|op_1~5\,
	combout => \Cx|op_1~6_combout\,
	cout => \Cx|op_1~7\);

-- Location: LCCOMB_X40_Y5_N26
\Cx|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[4]~20_combout\ = (\Cx|op_2~8_combout\ & ((\Cx|_~2_combout\) # ((\Cx|R\(4) & \Cx|R[0]~3_combout\)))) # (!\Cx|op_2~8_combout\ & (((\Cx|R\(4) & \Cx|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|op_2~8_combout\,
	datab => \Cx|_~2_combout\,
	datac => \Cx|R\(4),
	datad => \Cx|R[0]~3_combout\,
	combout => \Cx|R[4]~20_combout\);

-- Location: LCCOMB_X40_Y5_N28
\Cx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[4]~19_combout\ = (\Cx|R\(3) & ((\Cx|R[2]~6_combout\) # ((\Cx|R\(5) & \Cx|R[1]~0_combout\)))) # (!\Cx|R\(3) & (\Cx|R\(5) & ((\Cx|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(3),
	datab => \Cx|R\(5),
	datac => \Cx|R[2]~6_combout\,
	datad => \Cx|R[1]~0_combout\,
	combout => \Cx|R[4]~19_combout\);

-- Location: LCCOMB_X40_Y5_N4
\Cx|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[4]~21_combout\ = (\Cx|R[4]~20_combout\) # ((\Cx|R[4]~19_combout\) # ((\Cx|op_1~6_combout\ & \Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|op_1~6_combout\,
	datab => \Cx|_~3_combout\,
	datac => \Cx|R[4]~20_combout\,
	datad => \Cx|R[4]~19_combout\,
	combout => \Cx|R[4]~21_combout\);

-- Location: LCCOMB_X40_Y5_N22
\Cx|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[4]~22_combout\ = (\Cx|R[4]~21_combout\) # ((\Cx|_~1_combout\ & \BUS[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|_~1_combout\,
	datac => \Cx|R[4]~21_combout\,
	datad => \BUS[4]~47_combout\,
	combout => \Cx|R[4]~22_combout\);

-- Location: FF_X40_Y5_N23
\Cx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(4));

-- Location: LCCOMB_X42_Y5_N8
\Cx|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[5]~24_combout\ = (\Cx|R\(5) & ((\Cx|R[0]~3_combout\) # ((\Cx|_~2_combout\ & \Cx|op_2~10_combout\)))) # (!\Cx|R\(5) & (((\Cx|_~2_combout\ & \Cx|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(5),
	datab => \Cx|R[0]~3_combout\,
	datac => \Cx|_~2_combout\,
	datad => \Cx|op_2~10_combout\,
	combout => \Cx|R[5]~24_combout\);

-- Location: LCCOMB_X41_Y5_N2
\Cx|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[5]~23_combout\ = (\Cx|R[2]~6_combout\ & ((\Cx|R\(4)) # ((\Cx|R\(6) & \Cx|R[1]~0_combout\)))) # (!\Cx|R[2]~6_combout\ & (\Cx|R\(6) & ((\Cx|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R[2]~6_combout\,
	datab => \Cx|R\(6),
	datac => \Cx|R\(4),
	datad => \Cx|R[1]~0_combout\,
	combout => \Cx|R[5]~23_combout\);

-- Location: LCCOMB_X42_Y5_N2
\Cx|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[5]~25_combout\ = (\Cx|R[5]~24_combout\) # ((\Cx|R[5]~23_combout\) # ((\Cx|_~3_combout\ & \Cx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|_~3_combout\,
	datab => \Cx|op_1~8_combout\,
	datac => \Cx|R[5]~24_combout\,
	datad => \Cx|R[5]~23_combout\,
	combout => \Cx|R[5]~25_combout\);

-- Location: LCCOMB_X42_Y5_N12
\Cx|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Cx|R[5]~26_combout\ = (\Cx|R[5]~25_combout\) # ((\Cx|_~1_combout\ & \BUS[5]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|_~1_combout\,
	datac => \BUS[5]~56_combout\,
	datad => \Cx|R[5]~25_combout\,
	combout => \Cx|R[5]~26_combout\);

-- Location: FF_X42_Y5_N13
\Cx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Cx|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cx|R\(5));

-- Location: LCCOMB_X42_Y4_N8
\BUS[5]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~50_combout\ = (\_~24_combout\ & ((\DI|R\(5)) # ((\Cx|R\(5) & \_~25_combout\)))) # (!\_~24_combout\ & (\Cx|R\(5) & (\_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~24_combout\,
	datab => \Cx|R\(5),
	datac => \_~25_combout\,
	datad => \DI|R\(5),
	combout => \BUS[5]~50_combout\);

-- Location: IOIBUF_X46_Y54_N22
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

-- Location: LCCOMB_X38_Y6_N12
\Ax|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\_~35_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Ax|_~3_combout\);

-- Location: LCCOMB_X38_Y5_N18
\Ax|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~1_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\_~35_combout\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Ax|_~1_combout\);

-- Location: LCCOMB_X37_Y6_N16
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

-- Location: LCCOMB_X38_Y6_N10
\Ax|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~3_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\_~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Ax|R[0]~3_combout\);

-- Location: LCCOMB_X37_Y6_N0
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

-- Location: LCCOMB_X37_Y6_N2
\Ax|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~2_combout\ = (\Ax|R\(1) & (\Ax|op_2~1_cout\ & VCC)) # (!\Ax|R\(1) & (!\Ax|op_2~1_cout\))
-- \Ax|op_2~3\ = CARRY((!\Ax|R\(1) & !\Ax|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(1),
	datad => VCC,
	cin => \Ax|op_2~1_cout\,
	combout => \Ax|op_2~2_combout\,
	cout => \Ax|op_2~3\);

-- Location: LCCOMB_X38_Y6_N16
\Ax|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\_~35_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Ax|_~2_combout\);

-- Location: LCCOMB_X38_Y6_N18
\Ax|R[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~8_combout\ = (\Ax|R[0]~3_combout\ & ((\Ax|R\(1)) # ((\Ax|op_2~2_combout\ & \Ax|_~2_combout\)))) # (!\Ax|R[0]~3_combout\ & (((\Ax|op_2~2_combout\ & \Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~3_combout\,
	datab => \Ax|R\(1),
	datac => \Ax|op_2~2_combout\,
	datad => \Ax|_~2_combout\,
	combout => \Ax|R[1]~8_combout\);

-- Location: LCCOMB_X38_Y6_N20
\Ax|R[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~0_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~35_combout\,
	combout => \Ax|R[1]~0_combout\);

-- Location: LCCOMB_X38_Y6_N22
\Ax|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~7_combout\ = (\Ax|R\(0) & ((\Ax|R[2]~6_combout\) # ((\Ax|R\(2) & \Ax|R[1]~0_combout\)))) # (!\Ax|R\(0) & (((\Ax|R\(2) & \Ax|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(0),
	datab => \Ax|R[2]~6_combout\,
	datac => \Ax|R\(2),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[1]~7_combout\);

-- Location: LCCOMB_X38_Y6_N2
\Ax|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~9_combout\ = (\Ax|R[1]~8_combout\) # ((\Ax|R[1]~7_combout\) # ((\Ax|op_1~0_combout\ & \Ax|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_1~0_combout\,
	datab => \Ax|R[1]~8_combout\,
	datac => \Ax|R[1]~7_combout\,
	datad => \Ax|_~3_combout\,
	combout => \Ax|R[1]~9_combout\);

-- Location: LCCOMB_X37_Y6_N30
\Ax|R[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[1]~10_combout\ = (\Ax|R[1]~9_combout\) # ((\Ax|_~1_combout\ & \BUS[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datac => \BUS[1]~20_combout\,
	datad => \Ax|R[1]~9_combout\,
	combout => \Ax|R[1]~10_combout\);

-- Location: FF_X37_Y6_N31
\Ax|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[1]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(1));

-- Location: LCCOMB_X38_Y6_N8
\Ax|R[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~11_combout\ = (\Ax|R[2]~6_combout\ & ((\Ax|R\(1)) # ((\Ax|R\(3) & \Ax|R[1]~0_combout\)))) # (!\Ax|R[2]~6_combout\ & (((\Ax|R\(3) & \Ax|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[2]~6_combout\,
	datab => \Ax|R\(1),
	datac => \Ax|R\(3),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[2]~11_combout\);

-- Location: LCCOMB_X37_Y6_N18
\Ax|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~2_combout\ = (\Ax|R\(2) & (!\Ax|op_1~1\)) # (!\Ax|R\(2) & ((\Ax|op_1~1\) # (GND)))
-- \Ax|op_1~3\ = CARRY((!\Ax|op_1~1\) # (!\Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(2),
	datad => VCC,
	cin => \Ax|op_1~1\,
	combout => \Ax|op_1~2_combout\,
	cout => \Ax|op_1~3\);

-- Location: LCCOMB_X37_Y6_N4
\Ax|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_2~4_combout\ = (\Ax|R\(2) & ((GND) # (!\Ax|op_2~3\))) # (!\Ax|R\(2) & (\Ax|op_2~3\ $ (GND)))
-- \Ax|op_2~5\ = CARRY((\Ax|R\(2)) # (!\Ax|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(2),
	datad => VCC,
	cin => \Ax|op_2~3\,
	combout => \Ax|op_2~4_combout\,
	cout => \Ax|op_2~5\);

-- Location: LCCOMB_X38_Y6_N6
\Ax|R[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~12_combout\ = (\Ax|R[0]~3_combout\ & ((\Ax|R\(2)) # ((\Ax|op_2~4_combout\ & \Ax|_~2_combout\)))) # (!\Ax|R[0]~3_combout\ & (((\Ax|op_2~4_combout\ & \Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~3_combout\,
	datab => \Ax|R\(2),
	datac => \Ax|op_2~4_combout\,
	datad => \Ax|_~2_combout\,
	combout => \Ax|R[2]~12_combout\);

-- Location: LCCOMB_X38_Y6_N0
\Ax|R[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~13_combout\ = (\Ax|R[2]~12_combout\) # ((\Ax|_~3_combout\ & \Ax|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datab => \Ax|op_1~2_combout\,
	datad => \Ax|R[2]~12_combout\,
	combout => \Ax|R[2]~13_combout\);

-- Location: LCCOMB_X37_Y4_N4
\Ax|R[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~14_combout\ = (\Ax|R[2]~11_combout\) # ((\Ax|R[2]~13_combout\) # ((\Ax|_~1_combout\ & \BUS[2]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|R[2]~11_combout\,
	datac => \BUS[2]~29_combout\,
	datad => \Ax|R[2]~13_combout\,
	combout => \Ax|R[2]~14_combout\);

-- Location: FF_X37_Y4_N5
\Ax|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[2]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(2));

-- Location: LCCOMB_X39_Y6_N12
\Ax|R[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~15_combout\ = (\Ax|R\(2) & ((\Ax|R[2]~6_combout\) # ((\Ax|R\(4) & \Ax|R[1]~0_combout\)))) # (!\Ax|R\(2) & (((\Ax|R\(4) & \Ax|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(2),
	datab => \Ax|R[2]~6_combout\,
	datac => \Ax|R\(4),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[3]~15_combout\);

-- Location: LCCOMB_X37_Y6_N20
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

-- Location: LCCOMB_X37_Y6_N6
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

-- Location: LCCOMB_X39_Y6_N2
\Ax|R[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~16_combout\ = (\Ax|op_2~6_combout\ & ((\Ax|_~2_combout\) # ((\Ax|R\(3) & \Ax|R[0]~3_combout\)))) # (!\Ax|op_2~6_combout\ & (\Ax|R\(3) & ((\Ax|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_2~6_combout\,
	datab => \Ax|R\(3),
	datac => \Ax|_~2_combout\,
	datad => \Ax|R[0]~3_combout\,
	combout => \Ax|R[3]~16_combout\);

-- Location: LCCOMB_X39_Y6_N24
\Ax|R[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~17_combout\ = (\Ax|R[3]~16_combout\) # ((\Ax|_~3_combout\ & \Ax|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datac => \Ax|op_1~4_combout\,
	datad => \Ax|R[3]~16_combout\,
	combout => \Ax|R[3]~17_combout\);

-- Location: LCCOMB_X39_Y6_N8
\Ax|R[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[3]~18_combout\ = (\Ax|R[3]~15_combout\) # ((\Ax|R[3]~17_combout\) # ((\Ax|_~1_combout\ & \BUS[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[3]~15_combout\,
	datab => \Ax|_~1_combout\,
	datac => \BUS[3]~38_combout\,
	datad => \Ax|R[3]~17_combout\,
	combout => \Ax|R[3]~18_combout\);

-- Location: FF_X39_Y6_N9
\Ax|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[3]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(3));

-- Location: LCCOMB_X37_Y6_N8
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

-- Location: LCCOMB_X38_Y6_N26
\Ax|R[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~20_combout\ = (\Ax|op_2~8_combout\ & ((\Ax|_~2_combout\) # ((\Ax|R\(4) & \Ax|R[0]~3_combout\)))) # (!\Ax|op_2~8_combout\ & (((\Ax|R\(4) & \Ax|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_2~8_combout\,
	datab => \Ax|_~2_combout\,
	datac => \Ax|R\(4),
	datad => \Ax|R[0]~3_combout\,
	combout => \Ax|R[4]~20_combout\);

-- Location: LCCOMB_X37_Y6_N22
\Ax|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~6_combout\ = (\Ax|R\(4) & (!\Ax|op_1~5\)) # (!\Ax|R\(4) & ((\Ax|op_1~5\) # (GND)))
-- \Ax|op_1~7\ = CARRY((!\Ax|op_1~5\) # (!\Ax|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(4),
	datad => VCC,
	cin => \Ax|op_1~5\,
	combout => \Ax|op_1~6_combout\,
	cout => \Ax|op_1~7\);

-- Location: LCCOMB_X38_Y6_N24
\Ax|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~21_combout\ = (\Ax|R[4]~20_combout\) # ((\Ax|_~3_combout\ & \Ax|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datac => \Ax|R[4]~20_combout\,
	datad => \Ax|op_1~6_combout\,
	combout => \Ax|R[4]~21_combout\);

-- Location: LCCOMB_X39_Y6_N14
\Ax|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~19_combout\ = (\Ax|R\(5) & ((\Ax|R[1]~0_combout\) # ((\Ax|R[2]~6_combout\ & \Ax|R\(3))))) # (!\Ax|R\(5) & (\Ax|R[2]~6_combout\ & (\Ax|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(5),
	datab => \Ax|R[2]~6_combout\,
	datac => \Ax|R\(3),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[4]~19_combout\);

-- Location: LCCOMB_X38_Y6_N4
\Ax|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[4]~22_combout\ = (\Ax|R[4]~21_combout\) # ((\Ax|R[4]~19_combout\) # ((\Ax|_~1_combout\ & \BUS[4]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~1_combout\,
	datab => \Ax|R[4]~21_combout\,
	datac => \Ax|R[4]~19_combout\,
	datad => \BUS[4]~47_combout\,
	combout => \Ax|R[4]~22_combout\);

-- Location: FF_X38_Y6_N5
\Ax|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(4));

-- Location: LCCOMB_X39_Y6_N0
\Ax|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~23_combout\ = (\Ax|R\(6) & ((\Ax|R[1]~0_combout\) # ((\Ax|R[2]~6_combout\ & \Ax|R\(4))))) # (!\Ax|R\(6) & (\Ax|R[2]~6_combout\ & (\Ax|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(6),
	datab => \Ax|R[2]~6_combout\,
	datac => \Ax|R\(4),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[5]~23_combout\);

-- Location: LCCOMB_X37_Y6_N10
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

-- Location: LCCOMB_X39_Y6_N26
\Ax|R[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~24_combout\ = (\Ax|R\(5) & ((\Ax|R[0]~3_combout\) # ((\Ax|op_2~10_combout\ & \Ax|_~2_combout\)))) # (!\Ax|R\(5) & (\Ax|op_2~10_combout\ & (\Ax|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(5),
	datab => \Ax|op_2~10_combout\,
	datac => \Ax|_~2_combout\,
	datad => \Ax|R[0]~3_combout\,
	combout => \Ax|R[5]~24_combout\);

-- Location: LCCOMB_X37_Y6_N24
\Ax|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~8_combout\ = (\Ax|R\(5) & (\Ax|op_1~7\ $ (GND))) # (!\Ax|R\(5) & (!\Ax|op_1~7\ & VCC))
-- \Ax|op_1~9\ = CARRY((\Ax|R\(5) & !\Ax|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(5),
	datad => VCC,
	cin => \Ax|op_1~7\,
	combout => \Ax|op_1~8_combout\,
	cout => \Ax|op_1~9\);

-- Location: LCCOMB_X39_Y6_N16
\Ax|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~25_combout\ = (\Ax|R[5]~23_combout\) # ((\Ax|R[5]~24_combout\) # ((\Ax|_~3_combout\ & \Ax|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|_~3_combout\,
	datab => \Ax|R[5]~23_combout\,
	datac => \Ax|R[5]~24_combout\,
	datad => \Ax|op_1~8_combout\,
	combout => \Ax|R[5]~25_combout\);

-- Location: LCCOMB_X39_Y6_N18
\Ax|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[5]~26_combout\ = (\Ax|R[5]~25_combout\) # ((\Ax|_~1_combout\ & \BUS[5]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R[5]~25_combout\,
	datac => \Ax|_~1_combout\,
	datad => \BUS[5]~56_combout\,
	combout => \Ax|R[5]~26_combout\);

-- Location: FF_X39_Y6_N19
\Ax|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(5));

-- Location: LCCOMB_X41_Y4_N20
\BUS[5]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~49_combout\ = (\Ax|R\(5) & ((\_~23_combout\) # ((\Bx|R\(5) & \_~26_combout\)))) # (!\Ax|R\(5) & (\Bx|R\(5) & (\_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(5),
	datab => \Bx|R\(5),
	datac => \_~26_combout\,
	datad => \_~23_combout\,
	combout => \BUS[5]~49_combout\);

-- Location: LCCOMB_X42_Y4_N14
\BUS[5]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~51_combout\ = (\BUS[5]~50_combout\) # ((\BUS[5]~49_combout\) # ((\_~27_combout\ & \Fx[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~27_combout\,
	datab => \BUS[5]~50_combout\,
	datac => \Fx[5]~input_o\,
	datad => \BUS[5]~49_combout\,
	combout => \BUS[5]~51_combout\);

-- Location: IOIBUF_X34_Y39_N15
\DATA_BUS[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(5),
	o => \DATA_BUS[5]~input_o\);

-- Location: LCCOMB_X38_Y4_N2
\_~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~54_combout\ = (\DATA_BUS[5]~input_o\) # (\BUS[5]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[5]~input_o\,
	datad => \BUS[5]~56_combout\,
	combout => \_~54_combout\);

-- Location: FF_X38_Y4_N3
\MDR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~54_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(5));

-- Location: FF_X42_Y4_N23
\BP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BUS[5]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(5));

-- Location: LCCOMB_X42_Y4_N24
\BUS[5]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~53_combout\ = (\MDR|R\(5) & ((\_~29_combout\) # ((\BP|R\(5) & \_~33_combout\)))) # (!\MDR|R\(5) & (((\BP|R\(5) & \_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|R\(5),
	datab => \_~29_combout\,
	datac => \BP|R\(5),
	datad => \_~33_combout\,
	combout => \BUS[5]~53_combout\);

-- Location: LCCOMB_X34_Y4_N4
\alu_x|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[5]~feeder_combout\ = \BUS[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[5]~56_combout\,
	combout => \alu_x|R[5]~feeder_combout\);

-- Location: FF_X34_Y4_N5
\alu_x|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(5));

-- Location: LCCOMB_X34_Y4_N6
\alu_x|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[4]~feeder_combout\ = \BUS[4]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[4]~47_combout\,
	combout => \alu_x|R[4]~feeder_combout\);

-- Location: FF_X34_Y4_N7
\alu_x|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(4));

-- Location: LCCOMB_X35_Y4_N14
\alu_y|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[4]~feeder_combout\ = \BUS[4]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[4]~47_combout\,
	combout => \alu_y|R[4]~feeder_combout\);

-- Location: FF_X35_Y4_N15
\alu_y|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(4));

-- Location: LCCOMB_X34_Y4_N0
\alu_y|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[3]~feeder_combout\ = \BUS[3]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[3]~38_combout\,
	combout => \alu_y|R[3]~feeder_combout\);

-- Location: FF_X34_Y4_N1
\alu_y|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(3));

-- Location: LCCOMB_X34_Y4_N8
\alu_x|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[3]~feeder_combout\ = \BUS[3]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[3]~38_combout\,
	combout => \alu_x|R[3]~feeder_combout\);

-- Location: FF_X34_Y4_N9
\alu_x|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(3));

-- Location: LCCOMB_X34_Y4_N30
\alu_y|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[2]~feeder_combout\ = \BUS[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[2]~29_combout\,
	combout => \alu_y|R[2]~feeder_combout\);

-- Location: FF_X34_Y4_N31
\alu_y|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(2));

-- Location: LCCOMB_X34_Y4_N2
\alu_x|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[2]~feeder_combout\ = \BUS[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[2]~29_combout\,
	combout => \alu_x|R[2]~feeder_combout\);

-- Location: FF_X34_Y4_N3
\alu_x|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(2));

-- Location: FF_X41_Y3_N25
\alu_x|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(1));

-- Location: FF_X40_Y4_N25
\alu_y|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(1));

-- Location: LCCOMB_X34_Y4_N16
\alu_x|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_x|R[0]~feeder_combout\ = \BUS[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[0]~8_combout\,
	combout => \alu_x|R[0]~feeder_combout\);

-- Location: FF_X34_Y4_N17
\alu_x|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_x|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_x|R\(0));

-- Location: LCCOMB_X35_Y4_N28
\alu_y|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[0]~feeder_combout\ = \BUS[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[0]~8_combout\,
	combout => \alu_y|R[0]~feeder_combout\);

-- Location: FF_X35_Y4_N29
\alu_y|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(0));

-- Location: LCCOMB_X30_Y4_N8
\ALU_prueba|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[0]~0_combout\ = (\alu_x|R\(0) & (\alu_y|R\(0) $ (VCC))) # (!\alu_x|R\(0) & (\alu_y|R\(0) & VCC))
-- \ALU_prueba|R[0]~1\ = CARRY((\alu_x|R\(0) & \alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(0),
	datab => \alu_y|R\(0),
	datad => VCC,
	combout => \ALU_prueba|R[0]~0_combout\,
	cout => \ALU_prueba|R[0]~1\);

-- Location: LCCOMB_X30_Y4_N10
\ALU_prueba|R[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[1]~2_combout\ = (\alu_x|R\(1) & ((\alu_y|R\(1) & (\ALU_prueba|R[0]~1\ & VCC)) # (!\alu_y|R\(1) & (!\ALU_prueba|R[0]~1\)))) # (!\alu_x|R\(1) & ((\alu_y|R\(1) & (!\ALU_prueba|R[0]~1\)) # (!\alu_y|R\(1) & ((\ALU_prueba|R[0]~1\) # (GND)))))
-- \ALU_prueba|R[1]~3\ = CARRY((\alu_x|R\(1) & (!\alu_y|R\(1) & !\ALU_prueba|R[0]~1\)) # (!\alu_x|R\(1) & ((!\ALU_prueba|R[0]~1\) # (!\alu_y|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(1),
	datab => \alu_y|R\(1),
	datad => VCC,
	cin => \ALU_prueba|R[0]~1\,
	combout => \ALU_prueba|R[1]~2_combout\,
	cout => \ALU_prueba|R[1]~3\);

-- Location: LCCOMB_X30_Y4_N12
\ALU_prueba|R[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[2]~4_combout\ = ((\alu_y|R\(2) $ (\alu_x|R\(2) $ (!\ALU_prueba|R[1]~3\)))) # (GND)
-- \ALU_prueba|R[2]~5\ = CARRY((\alu_y|R\(2) & ((\alu_x|R\(2)) # (!\ALU_prueba|R[1]~3\))) # (!\alu_y|R\(2) & (\alu_x|R\(2) & !\ALU_prueba|R[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_y|R\(2),
	datab => \alu_x|R\(2),
	datad => VCC,
	cin => \ALU_prueba|R[1]~3\,
	combout => \ALU_prueba|R[2]~4_combout\,
	cout => \ALU_prueba|R[2]~5\);

-- Location: LCCOMB_X30_Y4_N14
\ALU_prueba|R[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[3]~6_combout\ = (\alu_y|R\(3) & ((\alu_x|R\(3) & (\ALU_prueba|R[2]~5\ & VCC)) # (!\alu_x|R\(3) & (!\ALU_prueba|R[2]~5\)))) # (!\alu_y|R\(3) & ((\alu_x|R\(3) & (!\ALU_prueba|R[2]~5\)) # (!\alu_x|R\(3) & ((\ALU_prueba|R[2]~5\) # (GND)))))
-- \ALU_prueba|R[3]~7\ = CARRY((\alu_y|R\(3) & (!\alu_x|R\(3) & !\ALU_prueba|R[2]~5\)) # (!\alu_y|R\(3) & ((!\ALU_prueba|R[2]~5\) # (!\alu_x|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_y|R\(3),
	datab => \alu_x|R\(3),
	datad => VCC,
	cin => \ALU_prueba|R[2]~5\,
	combout => \ALU_prueba|R[3]~6_combout\,
	cout => \ALU_prueba|R[3]~7\);

-- Location: LCCOMB_X30_Y4_N16
\ALU_prueba|R[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[4]~8_combout\ = ((\alu_x|R\(4) $ (\alu_y|R\(4) $ (!\ALU_prueba|R[3]~7\)))) # (GND)
-- \ALU_prueba|R[4]~9\ = CARRY((\alu_x|R\(4) & ((\alu_y|R\(4)) # (!\ALU_prueba|R[3]~7\))) # (!\alu_x|R\(4) & (\alu_y|R\(4) & !\ALU_prueba|R[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_x|R\(4),
	datab => \alu_y|R\(4),
	datad => VCC,
	cin => \ALU_prueba|R[3]~7\,
	combout => \ALU_prueba|R[4]~8_combout\,
	cout => \ALU_prueba|R[4]~9\);

-- Location: LCCOMB_X30_Y4_N18
\ALU_prueba|R[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_prueba|R[5]~10_combout\ = (\alu_y|R\(5) & ((\alu_x|R\(5) & (\ALU_prueba|R[4]~9\ & VCC)) # (!\alu_x|R\(5) & (!\ALU_prueba|R[4]~9\)))) # (!\alu_y|R\(5) & ((\alu_x|R\(5) & (!\ALU_prueba|R[4]~9\)) # (!\alu_x|R\(5) & ((\ALU_prueba|R[4]~9\) # (GND)))))
-- \ALU_prueba|R[5]~11\ = CARRY((\alu_y|R\(5) & (!\alu_x|R\(5) & !\ALU_prueba|R[4]~9\)) # (!\alu_y|R\(5) & ((!\ALU_prueba|R[4]~9\) # (!\alu_x|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_y|R\(5),
	datab => \alu_x|R\(5),
	datad => VCC,
	cin => \ALU_prueba|R[4]~9\,
	combout => \ALU_prueba|R[5]~10_combout\,
	cout => \ALU_prueba|R[5]~11\);

-- Location: LCCOMB_X30_Y4_N2
\alu_r|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[5]~feeder_combout\ = \ALU_prueba|R[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_prueba|R[5]~10_combout\,
	combout => \alu_r|R[5]~feeder_combout\);

-- Location: FF_X30_Y4_N3
\alu_r|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(5));

-- Location: LCCOMB_X42_Y4_N4
\BUS[5]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~52_combout\ = (\_~30_combout\ & ((\PC|R\(5)) # ((\alu_r|R\(5) & \_~28_combout\)))) # (!\_~30_combout\ & (((\alu_r|R\(5) & \_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~30_combout\,
	datab => \PC|R\(5),
	datac => \alu_r|R\(5),
	datad => \_~28_combout\,
	combout => \BUS[5]~52_combout\);

-- Location: LCCOMB_X42_Y4_N10
\BUS[5]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~54_combout\ = (\_~31_combout\ & ((\SI|R\(5)) # ((\SP|R\(5) & \_~32_combout\)))) # (!\_~31_combout\ & (((\SP|R\(5) & \_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~31_combout\,
	datab => \SI|R\(5),
	datac => \SP|R\(5),
	datad => \_~32_combout\,
	combout => \BUS[5]~54_combout\);

-- Location: LCCOMB_X42_Y4_N28
\BUS[5]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~55_combout\ = (\BUS[5]~53_combout\) # ((\BUS[5]~52_combout\) # (\BUS[5]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[5]~53_combout\,
	datac => \BUS[5]~52_combout\,
	datad => \BUS[5]~54_combout\,
	combout => \BUS[5]~55_combout\);

-- Location: LCCOMB_X42_Y4_N22
\BUS[5]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[5]~56_combout\ = (\BUS[5]~48_combout\) # (((\BUS[5]~51_combout\) # (\BUS[5]~55_combout\)) # (!\BUS[7]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[5]~48_combout\,
	datab => \BUS[7]~19_combout\,
	datac => \BUS[5]~51_combout\,
	datad => \BUS[5]~55_combout\,
	combout => \BUS[5]~56_combout\);

-- Location: LCCOMB_X34_Y4_N10
\alu_y|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_y|R[5]~feeder_combout\ = \BUS[5]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[5]~56_combout\,
	combout => \alu_y|R[5]~feeder_combout\);

-- Location: FF_X34_Y4_N11
\alu_y|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_y|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_y|R\(5));

-- Location: LCCOMB_X30_Y4_N0
\alu_r|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[6]~feeder_combout\ = \ALU_prueba|R[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_prueba|R[6]~12_combout\,
	combout => \alu_r|R[6]~feeder_combout\);

-- Location: FF_X30_Y4_N1
\alu_r|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(6));

-- Location: IOIBUF_X46_Y54_N1
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

-- Location: LCCOMB_X38_Y3_N20
\BUS[6]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~61_combout\ = (\alu_r|R\(6) & ((\_~28_combout\) # ((\Fx[6]~input_o\ & \_~27_combout\)))) # (!\alu_r|R\(6) & (\Fx[6]~input_o\ & ((\_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(6),
	datab => \Fx[6]~input_o\,
	datac => \_~28_combout\,
	datad => \_~27_combout\,
	combout => \BUS[6]~61_combout\);

-- Location: FF_X38_Y3_N31
\BP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \BUS[6]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(6));

-- Location: LCCOMB_X38_Y3_N0
\BUS[6]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~63_combout\ = (\SI|R\(6) & ((\_~31_combout\) # ((\SP|R\(6) & \_~32_combout\)))) # (!\SI|R\(6) & (\SP|R\(6) & (\_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(6),
	datab => \SP|R\(6),
	datac => \_~32_combout\,
	datad => \_~31_combout\,
	combout => \BUS[6]~63_combout\);

-- Location: LCCOMB_X38_Y3_N4
\BUS[6]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~64_combout\ = (\BUS[6]~63_combout\) # ((\BP|R\(6) & \_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BP|R\(6),
	datac => \_~33_combout\,
	datad => \BUS[6]~63_combout\,
	combout => \BUS[6]~64_combout\);

-- Location: LCCOMB_X38_Y4_N14
\BUS[6]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~59_combout\ = (\DI|R\(6) & ((\_~24_combout\) # ((\Cx|R\(6) & \_~25_combout\)))) # (!\DI|R\(6) & (\Cx|R\(6) & (\_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(6),
	datab => \Cx|R\(6),
	datac => \_~25_combout\,
	datad => \_~24_combout\,
	combout => \BUS[6]~59_combout\);

-- Location: FF_X41_Y3_N5
\MAR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[6]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(6));

-- Location: FF_X40_Y4_N15
\IR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[6]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(6));

-- Location: LCCOMB_X40_Y4_N14
\BUS[6]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~57_combout\ = (\_~21_combout\ & ((\MAR|R\(6)) # ((\IR|R\(6) & \_~22_combout\)))) # (!\_~21_combout\ & (((\IR|R\(6) & \_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~21_combout\,
	datab => \MAR|R\(6),
	datac => \IR|R\(6),
	datad => \_~22_combout\,
	combout => \BUS[6]~57_combout\);

-- Location: LCCOMB_X38_Y4_N12
\BUS[6]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~58_combout\ = (\BUS[6]~57_combout\) # ((\Ax|R\(6) & \_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(6),
	datac => \_~23_combout\,
	datad => \BUS[6]~57_combout\,
	combout => \BUS[6]~58_combout\);

-- Location: LCCOMB_X38_Y4_N20
\BUS[6]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~60_combout\ = (\BUS[6]~59_combout\) # ((\BUS[6]~58_combout\) # ((\_~26_combout\ & \Bx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~26_combout\,
	datab => \Bx|R\(6),
	datac => \BUS[6]~59_combout\,
	datad => \BUS[6]~58_combout\,
	combout => \BUS[6]~60_combout\);

-- Location: LCCOMB_X38_Y3_N30
\BUS[6]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[6]~65_combout\ = (\BUS[6]~62_combout\) # ((\BUS[6]~61_combout\) # ((\BUS[6]~64_combout\) # (\BUS[6]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[6]~62_combout\,
	datab => \BUS[6]~61_combout\,
	datac => \BUS[6]~64_combout\,
	datad => \BUS[6]~60_combout\,
	combout => \BUS[6]~65_combout\);

-- Location: LCCOMB_X37_Y3_N22
\PC|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[6]~27_combout\ = (\PC|R\(6) & ((\PC|R[0]~3_combout\) # ((\PC|R\(5) & \PC|R[2]~6_combout\)))) # (!\PC|R\(6) & (\PC|R\(5) & ((\PC|R[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(6),
	datab => \PC|R\(5),
	datac => \PC|R[0]~3_combout\,
	datad => \PC|R[2]~6_combout\,
	combout => \PC|R[6]~27_combout\);

-- Location: LCCOMB_X38_Y3_N28
\PC|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[6]~28_combout\ = (\PC|op_1~10_combout\ & ((\PC|_~3_combout\) # ((\PC|R[1]~0_combout\ & \PC|R\(7))))) # (!\PC|op_1~10_combout\ & (\PC|R[1]~0_combout\ & (\PC|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|op_1~10_combout\,
	datab => \PC|R[1]~0_combout\,
	datac => \PC|R\(7),
	datad => \PC|_~3_combout\,
	combout => \PC|R[6]~28_combout\);

-- Location: LCCOMB_X38_Y3_N18
\PC|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[6]~29_combout\ = (\PC|R[6]~27_combout\) # ((\PC|R[6]~28_combout\) # ((\PC|_~2_combout\ & \PC|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~2_combout\,
	datab => \PC|R[6]~27_combout\,
	datac => \PC|op_2~12_combout\,
	datad => \PC|R[6]~28_combout\,
	combout => \PC|R[6]~29_combout\);

-- Location: LCCOMB_X38_Y3_N2
\PC|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[6]~30_combout\ = (\PC|R[6]~29_combout\) # ((\PC|_~1_combout\ & \BUS[6]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~1_combout\,
	datab => \BUS[6]~65_combout\,
	datad => \PC|R[6]~29_combout\,
	combout => \PC|R[6]~30_combout\);

-- Location: FF_X38_Y3_N3
\PC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(6));

-- Location: LCCOMB_X37_Y3_N20
\PC|R[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[5]~23_combout\ = (\PC|R[2]~6_combout\ & ((\PC|R\(4)) # ((\PC|R\(6) & \PC|R[1]~0_combout\)))) # (!\PC|R[2]~6_combout\ & (((\PC|R\(6) & \PC|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~6_combout\,
	datab => \PC|R\(4),
	datac => \PC|R\(6),
	datad => \PC|R[1]~0_combout\,
	combout => \PC|R[5]~23_combout\);

-- Location: LCCOMB_X37_Y3_N4
\PC|R[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[5]~25_combout\ = (\PC|R[5]~24_combout\) # ((\PC|R[5]~23_combout\) # ((\PC|op_1~8_combout\ & \PC|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|op_1~8_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|R[5]~24_combout\,
	datad => \PC|R[5]~23_combout\,
	combout => \PC|R[5]~25_combout\);

-- Location: LCCOMB_X37_Y3_N16
\PC|R[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[5]~26_combout\ = (\PC|R[5]~25_combout\) # ((\PC|_~1_combout\ & \BUS[5]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~1_combout\,
	datac => \PC|R[5]~25_combout\,
	datad => \BUS[5]~56_combout\,
	combout => \PC|R[5]~26_combout\);

-- Location: FF_X37_Y3_N17
\PC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[5]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(5));

-- Location: LCCOMB_X37_Y3_N2
\PC|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[4]~19_combout\ = (\PC|R[2]~6_combout\ & ((\PC|R\(3)) # ((\PC|R\(5) & \PC|R[1]~0_combout\)))) # (!\PC|R[2]~6_combout\ & (((\PC|R\(5) & \PC|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[2]~6_combout\,
	datab => \PC|R\(3),
	datac => \PC|R\(5),
	datad => \PC|R[1]~0_combout\,
	combout => \PC|R[4]~19_combout\);

-- Location: LCCOMB_X37_Y3_N14
\PC|R[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[4]~21_combout\ = (\PC|R[4]~20_combout\) # ((\PC|R[4]~19_combout\) # ((\PC|_~3_combout\ & \PC|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[4]~20_combout\,
	datab => \PC|_~3_combout\,
	datac => \PC|op_1~6_combout\,
	datad => \PC|R[4]~19_combout\,
	combout => \PC|R[4]~21_combout\);

-- Location: LCCOMB_X37_Y3_N18
\PC|R[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[4]~22_combout\ = (\PC|R[4]~21_combout\) # ((\PC|_~1_combout\ & \BUS[4]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|_~1_combout\,
	datac => \PC|R[4]~21_combout\,
	datad => \BUS[4]~47_combout\,
	combout => \PC|R[4]~22_combout\);

-- Location: FF_X37_Y3_N19
\PC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[4]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(4));

-- Location: IOIBUF_X34_Y39_N8
\DATA_BUS[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(4),
	o => \DATA_BUS[4]~input_o\);

-- Location: LCCOMB_X38_Y4_N28
\_~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~53_combout\ = (\DATA_BUS[4]~input_o\) # (\BUS[4]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_BUS[4]~input_o\,
	datad => \BUS[4]~47_combout\,
	combout => \_~53_combout\);

-- Location: FF_X38_Y4_N29
\MDR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~53_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(4));

-- Location: LCCOMB_X38_Y4_N6
\BUS[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~44_combout\ = (\PC|R\(4) & ((\_~30_combout\) # ((\MDR|R\(4) & \_~29_combout\)))) # (!\PC|R\(4) & (\MDR|R\(4) & (\_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(4),
	datab => \MDR|R\(4),
	datac => \_~29_combout\,
	datad => \_~30_combout\,
	combout => \BUS[4]~44_combout\);

-- Location: LCCOMB_X30_Y4_N24
\alu_r|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[4]~feeder_combout\ = \ALU_prueba|R[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_prueba|R[4]~8_combout\,
	combout => \alu_r|R[4]~feeder_combout\);

-- Location: FF_X30_Y4_N25
\alu_r|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(4));

-- Location: IOIBUF_X58_Y0_N8
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

-- Location: LCCOMB_X39_Y4_N16
\BUS[4]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~43_combout\ = (\alu_r|R\(4) & ((\_~28_combout\) # ((\Fx[4]~input_o\ & \_~27_combout\)))) # (!\alu_r|R\(4) & (\Fx[4]~input_o\ & (\_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(4),
	datab => \Fx[4]~input_o\,
	datac => \_~27_combout\,
	datad => \_~28_combout\,
	combout => \BUS[4]~43_combout\);

-- Location: LCCOMB_X38_Y4_N24
\BUS[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~41_combout\ = (\Cx|R\(4) & ((\_~25_combout\) # ((\DI|R\(4) & \_~24_combout\)))) # (!\Cx|R\(4) & (\DI|R\(4) & ((\_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(4),
	datab => \DI|R\(4),
	datac => \_~25_combout\,
	datad => \_~24_combout\,
	combout => \BUS[4]~41_combout\);

-- Location: LCCOMB_X40_Y2_N2
\MAR|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[4]~feeder_combout\ = \BUS[4]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[4]~47_combout\,
	combout => \MAR|R[4]~feeder_combout\);

-- Location: FF_X40_Y2_N3
\MAR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(4));

-- Location: FF_X40_Y4_N17
\IR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[4]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(4));

-- Location: LCCOMB_X40_Y4_N16
\BUS[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~39_combout\ = (\_~21_combout\ & ((\MAR|R\(4)) # ((\IR|R\(4) & \_~22_combout\)))) # (!\_~21_combout\ & (((\IR|R\(4) & \_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~21_combout\,
	datab => \MAR|R\(4),
	datac => \IR|R\(4),
	datad => \_~22_combout\,
	combout => \BUS[4]~39_combout\);

-- Location: LCCOMB_X38_Y4_N10
\BUS[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~40_combout\ = (\BUS[4]~39_combout\) # ((\Ax|R\(4) & \_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(4),
	datac => \_~23_combout\,
	datad => \BUS[4]~39_combout\,
	combout => \BUS[4]~40_combout\);

-- Location: LCCOMB_X38_Y4_N30
\BUS[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~42_combout\ = (\BUS[4]~41_combout\) # ((\BUS[4]~40_combout\) # ((\_~26_combout\ & \Bx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~26_combout\,
	datab => \BUS[4]~41_combout\,
	datac => \Bx|R\(4),
	datad => \BUS[4]~40_combout\,
	combout => \BUS[4]~42_combout\);

-- Location: LCCOMB_X39_Y4_N14
\BUS[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~45_combout\ = (\SI|R\(4) & ((\_~31_combout\) # ((\SP|R\(4) & \_~32_combout\)))) # (!\SI|R\(4) & (\SP|R\(4) & (\_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(4),
	datab => \SP|R\(4),
	datac => \_~32_combout\,
	datad => \_~31_combout\,
	combout => \BUS[4]~45_combout\);

-- Location: FF_X39_Y4_N29
\BP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[4]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(4));

-- Location: LCCOMB_X39_Y4_N28
\BUS[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~46_combout\ = (\BUS[4]~45_combout\) # ((\BP|R\(4) & \_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[4]~45_combout\,
	datac => \BP|R\(4),
	datad => \_~33_combout\,
	combout => \BUS[4]~46_combout\);

-- Location: LCCOMB_X38_Y4_N0
\BUS[4]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[4]~47_combout\ = (\BUS[4]~44_combout\) # ((\BUS[4]~43_combout\) # ((\BUS[4]~42_combout\) # (\BUS[4]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[4]~44_combout\,
	datab => \BUS[4]~43_combout\,
	datac => \BUS[4]~42_combout\,
	datad => \BUS[4]~46_combout\,
	combout => \BUS[4]~47_combout\);

-- Location: LCCOMB_X38_Y4_N26
\DST|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DST|R[4]~feeder_combout\ = \BUS[4]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[4]~47_combout\,
	combout => \DST|R[4]~feeder_combout\);

-- Location: FF_X38_Y4_N27
\DST|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \DST|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DST|R\(4));

-- Location: LCCOMB_X37_Y4_N16
\SelMUX[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelMUX[4]~1_combout\ = (\SelDST~input_o\ & (\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \DST_UC[4]~input_o\,
	datad => \DST|R\(4),
	combout => \SelMUX[4]~1_combout\);

-- Location: LCCOMB_X37_Y4_N18
\_~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~62_combout\ = (!\SelMUX[4]~1_combout\ & ((\SelDST~input_o\ & (\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \DST_UC[0]~input_o\,
	datac => \DST|R\(0),
	datad => \SelMUX[4]~1_combout\,
	combout => \_~62_combout\);

-- Location: LCCOMB_X36_Y3_N14
\_~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~57_combout\ = (!\SelMUX[1]~3_combout\ & (\_~62_combout\ & (\SelMUX[3]~0_combout\ & !\SelMUX[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[1]~3_combout\,
	datab => \_~62_combout\,
	datac => \SelMUX[3]~0_combout\,
	datad => \SelMUX[2]~4_combout\,
	combout => \_~57_combout\);

-- Location: FF_X40_Y3_N25
\DST|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DST|R\(1));

-- Location: LCCOMB_X40_Y3_N10
\SelMUX[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelMUX[1]~3_combout\ = (\SelDST~input_o\ & (\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \DST_UC[1]~input_o\,
	datad => \DST|R\(1),
	combout => \SelMUX[1]~3_combout\);

-- Location: LCCOMB_X37_Y4_N28
\_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~44_combout\ = (!\SelMUX[2]~4_combout\ & (\SelMUX[3]~0_combout\ & (\SelMUX[1]~3_combout\ & \_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[2]~4_combout\,
	datab => \SelMUX[3]~0_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \_~62_combout\,
	combout => \_~44_combout\);

-- Location: LCCOMB_X37_Y4_N6
\PC|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[0]~3_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\_~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|R[0]~3_combout\);

-- Location: LCCOMB_X39_Y3_N16
\PC|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|_~0_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|_~0_combout\);

-- Location: LCCOMB_X38_Y3_N14
\PC|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[0]~4_combout\ = (\PC|R[0]~3_combout\ & ((\PC|R\(0)) # ((\PC|_~0_combout\ & \PC|R\(7))))) # (!\PC|R[0]~3_combout\ & (\PC|_~0_combout\ & (\PC|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~3_combout\,
	datab => \PC|_~0_combout\,
	datac => \PC|R\(7),
	datad => \PC|R\(0),
	combout => \PC|R[0]~4_combout\);

-- Location: LCCOMB_X39_Y3_N0
\PC|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[0]~1_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \_~44_combout\,
	combout => \PC|R[0]~1_combout\);

-- Location: LCCOMB_X39_Y3_N18
\PC|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[0]~2_combout\ = (\PC|R\(0) & (\PC|R\(1) & (\PC|R[1]~0_combout\))) # (!\PC|R\(0) & ((\PC|R[0]~1_combout\) # ((\PC|R\(1) & \PC|R[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R\(0),
	datab => \PC|R\(1),
	datac => \PC|R[1]~0_combout\,
	datad => \PC|R[0]~1_combout\,
	combout => \PC|R[0]~2_combout\);

-- Location: LCCOMB_X39_Y3_N4
\PC|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC|R[0]~5_combout\ = (\PC|R[0]~4_combout\) # ((\PC|R[0]~2_combout\) # ((\PC|_~1_combout\ & \BUS[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|R[0]~4_combout\,
	datab => \PC|R[0]~2_combout\,
	datac => \PC|_~1_combout\,
	datad => \BUS[0]~8_combout\,
	combout => \PC|R[0]~5_combout\);

-- Location: FF_X39_Y3_N5
\PC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \PC|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|R\(0));

-- Location: IOIBUF_X31_Y0_N22
\DATA_BUS[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(0),
	o => \DATA_BUS[0]~input_o\);

-- Location: LCCOMB_X35_Y4_N10
\_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~45_combout\ = (\DATA_BUS[0]~input_o\) # (\BUS[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_BUS[0]~input_o\,
	datad => \BUS[0]~8_combout\,
	combout => \_~45_combout\);

-- Location: FF_X35_Y4_N11
\MDR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~45_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(0));

-- Location: LCCOMB_X42_Y4_N16
\BUS[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~5_combout\ = (\_~30_combout\ & ((\PC|R\(0)) # ((\MDR|R\(0) & \_~29_combout\)))) # (!\_~30_combout\ & (((\MDR|R\(0) & \_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~30_combout\,
	datab => \PC|R\(0),
	datac => \MDR|R\(0),
	datad => \_~29_combout\,
	combout => \BUS[0]~5_combout\);

-- Location: IOIBUF_X20_Y0_N29
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

-- Location: LCCOMB_X30_Y4_N28
\alu_r|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[0]~feeder_combout\ = \ALU_prueba|R[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_prueba|R[0]~0_combout\,
	combout => \alu_r|R[0]~feeder_combout\);

-- Location: FF_X30_Y4_N29
\alu_r|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(0));

-- Location: LCCOMB_X39_Y4_N8
\BUS[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~4_combout\ = (\Fx[0]~input_o\ & ((\_~27_combout\) # ((\alu_r|R\(0) & \_~28_combout\)))) # (!\Fx[0]~input_o\ & (\alu_r|R\(0) & ((\_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[0]~input_o\,
	datab => \alu_r|R\(0),
	datac => \_~27_combout\,
	datad => \_~28_combout\,
	combout => \BUS[0]~4_combout\);

-- Location: FF_X39_Y4_N23
\BP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(0));

-- Location: LCCOMB_X39_Y4_N24
\BUS[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~6_combout\ = (\SI|R\(0) & ((\_~31_combout\) # ((\SP|R\(0) & \_~32_combout\)))) # (!\SI|R\(0) & (\SP|R\(0) & (\_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(0),
	datab => \SP|R\(0),
	datac => \_~32_combout\,
	datad => \_~31_combout\,
	combout => \BUS[0]~6_combout\);

-- Location: LCCOMB_X39_Y4_N22
\BUS[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~7_combout\ = (\BUS[0]~6_combout\) # ((\_~33_combout\ & \BP|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~33_combout\,
	datac => \BP|R\(0),
	datad => \BUS[0]~6_combout\,
	combout => \BUS[0]~7_combout\);

-- Location: LCCOMB_X40_Y4_N8
\BUS[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~2_combout\ = (\DI|R\(0) & ((\_~24_combout\) # ((\Cx|R\(0) & \_~25_combout\)))) # (!\DI|R\(0) & (\Cx|R\(0) & ((\_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(0),
	datab => \Cx|R\(0),
	datac => \_~24_combout\,
	datad => \_~25_combout\,
	combout => \BUS[0]~2_combout\);

-- Location: LCCOMB_X40_Y2_N12
\MAR|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[0]~feeder_combout\ = \BUS[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS[0]~8_combout\,
	combout => \MAR|R[0]~feeder_combout\);

-- Location: FF_X40_Y2_N13
\MAR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(0));

-- Location: FF_X40_Y4_N27
\IR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(0));

-- Location: LCCOMB_X40_Y4_N26
\BUS[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~0_combout\ = (\_~21_combout\ & ((\MAR|R\(0)) # ((\IR|R\(0) & \_~22_combout\)))) # (!\_~21_combout\ & (((\IR|R\(0) & \_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~21_combout\,
	datab => \MAR|R\(0),
	datac => \IR|R\(0),
	datad => \_~22_combout\,
	combout => \BUS[0]~0_combout\);

-- Location: LCCOMB_X36_Y4_N6
\BUS[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~1_combout\ = (\BUS[0]~0_combout\) # ((\Ax|R\(0) & \_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ax|R\(0),
	datac => \_~23_combout\,
	datad => \BUS[0]~0_combout\,
	combout => \BUS[0]~1_combout\);

-- Location: LCCOMB_X36_Y4_N20
\BUS[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~3_combout\ = (\BUS[0]~2_combout\) # ((\BUS[0]~1_combout\) # ((\_~26_combout\ & \Bx|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~26_combout\,
	datab => \Bx|R\(0),
	datac => \BUS[0]~2_combout\,
	datad => \BUS[0]~1_combout\,
	combout => \BUS[0]~3_combout\);

-- Location: LCCOMB_X36_Y4_N26
\BUS[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[0]~8_combout\ = (\BUS[0]~5_combout\) # ((\BUS[0]~4_combout\) # ((\BUS[0]~7_combout\) # (\BUS[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[0]~5_combout\,
	datab => \BUS[0]~4_combout\,
	datac => \BUS[0]~7_combout\,
	datad => \BUS[0]~3_combout\,
	combout => \BUS[0]~8_combout\);

-- Location: FF_X41_Y4_N1
\SRC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRC|R\(0));

-- Location: LCCOMB_X41_Y4_N0
\SelBus[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelBus[0]~3_combout\ = (\SelSRC~input_o\ & (\SRC_UC[0]~input_o\)) # (!\SelSRC~input_o\ & ((\SRC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[0]~input_o\,
	datac => \SRC|R\(0),
	datad => \SelSRC~input_o\,
	combout => \SelBus[0]~3_combout\);

-- Location: LCCOMB_X40_Y4_N28
\_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~22_combout\ = (!\SelBus[0]~3_combout\ & (\SelBus[1]~4_combout\ & \_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelBus[0]~3_combout\,
	datac => \SelBus[1]~4_combout\,
	datad => \_~20_combout\,
	combout => \_~22_combout\);

-- Location: LCCOMB_X40_Y2_N8
\MAR|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[3]~feeder_combout\ = \BUS[3]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[3]~38_combout\,
	combout => \MAR|R[3]~feeder_combout\);

-- Location: FF_X40_Y2_N9
\MAR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(3));

-- Location: FF_X39_Y2_N11
\IR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(3));

-- Location: LCCOMB_X39_Y2_N10
\BUS[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~30_combout\ = (\_~22_combout\ & ((\IR|R\(3)) # ((\MAR|R\(3) & \_~21_combout\)))) # (!\_~22_combout\ & (\MAR|R\(3) & ((\_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~22_combout\,
	datab => \MAR|R\(3),
	datac => \IR|R\(3),
	datad => \_~21_combout\,
	combout => \BUS[3]~30_combout\);

-- Location: LCCOMB_X30_Y4_N6
\alu_r|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[3]~feeder_combout\ = \ALU_prueba|R[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_prueba|R[3]~6_combout\,
	combout => \alu_r|R[3]~feeder_combout\);

-- Location: FF_X30_Y4_N7
\alu_r|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(3));

-- Location: LCCOMB_X38_Y4_N16
\BUS[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~34_combout\ = (\alu_r|R\(3) & ((\_~28_combout\) # ((\PC|R\(3) & \_~30_combout\)))) # (!\alu_r|R\(3) & (\PC|R\(3) & ((\_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(3),
	datab => \PC|R\(3),
	datac => \_~28_combout\,
	datad => \_~30_combout\,
	combout => \BUS[3]~34_combout\);

-- Location: IOIBUF_X24_Y0_N22
\DATA_BUS[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(3),
	o => \DATA_BUS[3]~input_o\);

-- Location: LCCOMB_X35_Y4_N20
\_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~52_combout\ = (\DATA_BUS[3]~input_o\) # (\BUS[3]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATA_BUS[3]~input_o\,
	datad => \BUS[3]~38_combout\,
	combout => \_~52_combout\);

-- Location: FF_X35_Y4_N21
\MDR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~52_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(3));

-- Location: FF_X39_Y4_N21
\BP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(3));

-- Location: LCCOMB_X39_Y4_N20
\BUS[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~35_combout\ = (\MDR|R\(3) & ((\_~29_combout\) # ((\_~33_combout\ & \BP|R\(3))))) # (!\MDR|R\(3) & (\_~33_combout\ & (\BP|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|R\(3),
	datab => \_~33_combout\,
	datac => \BP|R\(3),
	datad => \_~29_combout\,
	combout => \BUS[3]~35_combout\);

-- Location: LCCOMB_X39_Y4_N2
\BUS[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~36_combout\ = (\SI|R\(3) & ((\_~31_combout\) # ((\SP|R\(3) & \_~32_combout\)))) # (!\SI|R\(3) & (\SP|R\(3) & (\_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(3),
	datab => \SP|R\(3),
	datac => \_~32_combout\,
	datad => \_~31_combout\,
	combout => \BUS[3]~36_combout\);

-- Location: LCCOMB_X38_Y4_N22
\BUS[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~37_combout\ = (\BUS[3]~34_combout\) # ((\BUS[3]~35_combout\) # (\BUS[3]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS[3]~34_combout\,
	datac => \BUS[3]~35_combout\,
	datad => \BUS[3]~36_combout\,
	combout => \BUS[3]~37_combout\);

-- Location: IOIBUF_X56_Y0_N1
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

-- Location: LCCOMB_X40_Y4_N12
\BUS[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~31_combout\ = (\Ax|R\(3) & ((\_~23_combout\) # ((\Bx|R\(3) & \_~26_combout\)))) # (!\Ax|R\(3) & (((\Bx|R\(3) & \_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(3),
	datab => \_~23_combout\,
	datac => \Bx|R\(3),
	datad => \_~26_combout\,
	combout => \BUS[3]~31_combout\);

-- Location: LCCOMB_X40_Y4_N18
\BUS[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~32_combout\ = (\Cx|R\(3) & ((\_~25_combout\) # ((\DI|R\(3) & \_~24_combout\)))) # (!\Cx|R\(3) & (\DI|R\(3) & (\_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cx|R\(3),
	datab => \DI|R\(3),
	datac => \_~24_combout\,
	datad => \_~25_combout\,
	combout => \BUS[3]~32_combout\);

-- Location: LCCOMB_X39_Y4_N18
\BUS[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~33_combout\ = (\BUS[3]~31_combout\) # ((\BUS[3]~32_combout\) # ((\_~27_combout\ & \Fx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~27_combout\,
	datab => \Fx[3]~input_o\,
	datac => \BUS[3]~31_combout\,
	datad => \BUS[3]~32_combout\,
	combout => \BUS[3]~33_combout\);

-- Location: LCCOMB_X38_Y4_N8
\BUS[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[3]~38_combout\ = ((\BUS[3]~30_combout\) # ((\BUS[3]~37_combout\) # (\BUS[3]~33_combout\))) # (!\BUS[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[7]~19_combout\,
	datab => \BUS[3]~30_combout\,
	datac => \BUS[3]~37_combout\,
	datad => \BUS[3]~33_combout\,
	combout => \BUS[3]~38_combout\);

-- Location: FF_X37_Y4_N3
\DST|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[3]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DST|R\(3));

-- Location: LCCOMB_X37_Y4_N20
\SelMUX[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelMUX[3]~0_combout\ = (\SelDST~input_o\ & (\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((\DST|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \DST_UC[3]~input_o\,
	datad => \DST|R\(3),
	combout => \SelMUX[3]~0_combout\);

-- Location: LCCOMB_X40_Y3_N16
\_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~40_combout\ = (\SelMUX[3]~0_combout\ & (!\SelMUX[2]~4_combout\ & (\SelMUX[1]~3_combout\ & \_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMUX[3]~0_combout\,
	datab => \SelMUX[2]~4_combout\,
	datac => \SelMUX[1]~3_combout\,
	datad => \_~61_combout\,
	combout => \_~40_combout\);

-- Location: FF_X41_Y4_N13
\SRC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRC|R\(2));

-- Location: LCCOMB_X41_Y4_N2
\SelBus[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelBus[2]~0_combout\ = (\SelSRC~input_o\ & (\SRC_UC[2]~input_o\)) # (!\SelSRC~input_o\ & ((\SRC|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelSRC~input_o\,
	datac => \SRC_UC[2]~input_o\,
	datad => \SRC|R\(2),
	combout => \SelBus[2]~0_combout\);

-- Location: LCCOMB_X40_Y4_N2
\_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~28_combout\ = (!\SelBus[2]~0_combout\ & (\SelBus[3]~1_combout\ & (!\SelBus[0]~3_combout\ & \_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[2]~0_combout\,
	datab => \SelBus[3]~1_combout\,
	datac => \SelBus[0]~3_combout\,
	datad => \_~59_combout\,
	combout => \_~28_combout\);

-- Location: LCCOMB_X39_Y4_N4
\BUS[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~17_combout\ = (\_~58_combout\ & ((!\SelBus[0]~3_combout\) # (!\SelBus[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~4_combout\,
	datac => \SelBus[0]~3_combout\,
	datad => \_~58_combout\,
	combout => \BUS[7]~17_combout\);

-- Location: LCCOMB_X41_Y4_N30
\_~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~60_combout\ = (!\SelBus[4]~2_combout\ & ((\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\SRC|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[3]~input_o\,
	datab => \SelSRC~input_o\,
	datac => \SRC|R\(3),
	datad => \SelBus[4]~2_combout\,
	combout => \_~60_combout\);

-- Location: LCCOMB_X42_Y4_N18
\BUS[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~18_combout\ = (\_~60_combout\ & ((\SelBus[2]~0_combout\) # ((\SelBus[1]~4_combout\ & \SelBus[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~4_combout\,
	datab => \_~60_combout\,
	datac => \SelBus[0]~3_combout\,
	datad => \SelBus[2]~0_combout\,
	combout => \BUS[7]~18_combout\);

-- Location: LCCOMB_X39_Y4_N6
\BUS[7]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[7]~19_combout\ = (\_~28_combout\) # ((\BUS[7]~17_combout\) # ((\_~27_combout\) # (\BUS[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~28_combout\,
	datab => \BUS[7]~17_combout\,
	datac => \_~27_combout\,
	datad => \BUS[7]~18_combout\,
	combout => \BUS[7]~19_combout\);

-- Location: LCCOMB_X40_Y2_N30
\MAR|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MAR|R[1]~feeder_combout\ = \BUS[1]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[1]~20_combout\,
	combout => \MAR|R[1]~feeder_combout\);

-- Location: FF_X40_Y2_N31
\MAR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \MAR|R[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(1));

-- Location: FF_X39_Y3_N23
\IR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(1));

-- Location: LCCOMB_X39_Y3_N22
\BUS[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~9_combout\ = (\_~22_combout\ & ((\IR|R\(1)) # ((\MAR|R\(1) & \_~21_combout\)))) # (!\_~22_combout\ & (\MAR|R\(1) & ((\_~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~22_combout\,
	datab => \MAR|R\(1),
	datac => \IR|R\(1),
	datad => \_~21_combout\,
	combout => \BUS[1]~9_combout\);

-- Location: LCCOMB_X40_Y4_N30
\BUS[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~11_combout\ = (\DI|R\(1) & ((\_~24_combout\) # ((\Cx|R\(1) & \_~25_combout\)))) # (!\DI|R\(1) & (\Cx|R\(1) & ((\_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(1),
	datab => \Cx|R\(1),
	datac => \_~24_combout\,
	datad => \_~25_combout\,
	combout => \BUS[1]~11_combout\);

-- Location: IOIBUF_X69_Y0_N15
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

-- Location: LCCOMB_X40_Y4_N4
\BUS[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~10_combout\ = (\Ax|R\(1) & ((\_~23_combout\) # ((\Bx|R\(1) & \_~26_combout\)))) # (!\Ax|R\(1) & (((\Bx|R\(1) & \_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(1),
	datab => \_~23_combout\,
	datac => \Bx|R\(1),
	datad => \_~26_combout\,
	combout => \BUS[1]~10_combout\);

-- Location: LCCOMB_X40_Y3_N26
\BUS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~12_combout\ = (\BUS[1]~11_combout\) # ((\BUS[1]~10_combout\) # ((\Fx[1]~input_o\ & \_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[1]~11_combout\,
	datab => \Fx[1]~input_o\,
	datac => \_~27_combout\,
	datad => \BUS[1]~10_combout\,
	combout => \BUS[1]~12_combout\);

-- Location: IOIBUF_X54_Y0_N15
\DATA_BUS[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(1),
	o => \DATA_BUS[1]~input_o\);

-- Location: LCCOMB_X42_Y4_N12
\_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~50_combout\ = (\DATA_BUS[1]~input_o\) # (\BUS[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATA_BUS[1]~input_o\,
	datac => \BUS[1]~20_combout\,
	combout => \_~50_combout\);

-- Location: FF_X42_Y4_N13
\MDR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(1));

-- Location: FF_X42_Y4_N31
\BP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(1));

-- Location: LCCOMB_X42_Y4_N30
\BUS[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~14_combout\ = (\MDR|R\(1) & ((\_~29_combout\) # ((\BP|R\(1) & \_~33_combout\)))) # (!\MDR|R\(1) & (((\BP|R\(1) & \_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|R\(1),
	datab => \_~29_combout\,
	datac => \BP|R\(1),
	datad => \_~33_combout\,
	combout => \BUS[1]~14_combout\);

-- Location: LCCOMB_X30_Y4_N30
\alu_r|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[1]~feeder_combout\ = \ALU_prueba|R[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_prueba|R[1]~2_combout\,
	combout => \alu_r|R[1]~feeder_combout\);

-- Location: FF_X30_Y4_N31
\alu_r|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(1));

-- Location: LCCOMB_X40_Y3_N8
\BUS[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~13_combout\ = (\alu_r|R\(1) & ((\_~28_combout\) # ((\PC|R\(1) & \_~30_combout\)))) # (!\alu_r|R\(1) & (\PC|R\(1) & ((\_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(1),
	datab => \PC|R\(1),
	datac => \_~28_combout\,
	datad => \_~30_combout\,
	combout => \BUS[1]~13_combout\);

-- Location: LCCOMB_X40_Y3_N28
\BUS[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~15_combout\ = (\SI|R\(1) & ((\_~31_combout\) # ((\SP|R\(1) & \_~32_combout\)))) # (!\SI|R\(1) & (\SP|R\(1) & ((\_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SI|R\(1),
	datab => \SP|R\(1),
	datac => \_~31_combout\,
	datad => \_~32_combout\,
	combout => \BUS[1]~15_combout\);

-- Location: LCCOMB_X40_Y3_N2
\BUS[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~16_combout\ = (\BUS[1]~14_combout\) # ((\BUS[1]~13_combout\) # (\BUS[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[1]~14_combout\,
	datac => \BUS[1]~13_combout\,
	datad => \BUS[1]~15_combout\,
	combout => \BUS[1]~16_combout\);

-- Location: LCCOMB_X40_Y3_N4
\BUS[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[1]~20_combout\ = ((\BUS[1]~9_combout\) # ((\BUS[1]~12_combout\) # (\BUS[1]~16_combout\))) # (!\BUS[7]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[7]~19_combout\,
	datab => \BUS[1]~9_combout\,
	datac => \BUS[1]~12_combout\,
	datad => \BUS[1]~16_combout\,
	combout => \BUS[1]~20_combout\);

-- Location: FF_X41_Y4_N19
\SRC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SRC|R\(1));

-- Location: LCCOMB_X41_Y4_N12
\SelBus[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SelBus[1]~4_combout\ = (\SelSRC~input_o\ & (\SRC_UC[1]~input_o\)) # (!\SelSRC~input_o\ & ((\SRC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[1]~input_o\,
	datab => \SelSRC~input_o\,
	datad => \SRC|R\(1),
	combout => \SelBus[1]~4_combout\);

-- Location: LCCOMB_X42_Y4_N26
\_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~30_combout\ = (\SelBus[1]~4_combout\ & (\_~60_combout\ & (\SelBus[0]~3_combout\ & !\SelBus[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBus[1]~4_combout\,
	datab => \_~60_combout\,
	datac => \SelBus[0]~3_combout\,
	datad => \SelBus[2]~0_combout\,
	combout => \_~30_combout\);

-- Location: IOIBUF_X51_Y0_N8
\DATA_BUS[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_BUS(2),
	o => \DATA_BUS[2]~input_o\);

-- Location: LCCOMB_X42_Y4_N20
\_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~51_combout\ = (\BUS[2]~29_combout\) # (\DATA_BUS[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS[2]~29_combout\,
	datad => \DATA_BUS[2]~input_o\,
	combout => \_~51_combout\);

-- Location: FF_X42_Y4_N21
\MDR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \_~51_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \_~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MDR|R\(2));

-- Location: LCCOMB_X42_Y4_N2
\BUS[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~26_combout\ = (\_~30_combout\ & ((\PC|R\(2)) # ((\MDR|R\(2) & \_~29_combout\)))) # (!\_~30_combout\ & (\MDR|R\(2) & ((\_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~30_combout\,
	datab => \MDR|R\(2),
	datac => \PC|R\(2),
	datad => \_~29_combout\,
	combout => \BUS[2]~26_combout\);

-- Location: FF_X39_Y4_N13
\BP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BP|R\(2));

-- Location: LCCOMB_X39_Y4_N10
\BUS[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~27_combout\ = (\_~32_combout\ & ((\SP|R\(2)) # ((\SI|R\(2) & \_~31_combout\)))) # (!\_~32_combout\ & (\SI|R\(2) & ((\_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~32_combout\,
	datab => \SI|R\(2),
	datac => \SP|R\(2),
	datad => \_~31_combout\,
	combout => \BUS[2]~27_combout\);

-- Location: LCCOMB_X39_Y4_N12
\BUS[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~28_combout\ = (\BUS[2]~27_combout\) # ((\_~33_combout\ & \BP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~33_combout\,
	datac => \BP|R\(2),
	datad => \BUS[2]~27_combout\,
	combout => \BUS[2]~28_combout\);

-- Location: LCCOMB_X30_Y4_N4
\alu_r|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_r|R[2]~feeder_combout\ = \ALU_prueba|R[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_prueba|R[2]~4_combout\,
	combout => \alu_r|R[2]~feeder_combout\);

-- Location: FF_X30_Y4_N5
\alu_r|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \alu_r|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alu_r|R\(2));

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: LCCOMB_X39_Y4_N0
\BUS[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~25_combout\ = (\alu_r|R\(2) & ((\_~28_combout\) # ((\Fx[2]~input_o\ & \_~27_combout\)))) # (!\alu_r|R\(2) & (\Fx[2]~input_o\ & (\_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_r|R\(2),
	datab => \Fx[2]~input_o\,
	datac => \_~27_combout\,
	datad => \_~28_combout\,
	combout => \BUS[2]~25_combout\);

-- Location: LCCOMB_X38_Y4_N4
\BUS[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~23_combout\ = (\DI|R\(2) & ((\_~24_combout\) # ((\Cx|R\(2) & \_~25_combout\)))) # (!\DI|R\(2) & (\Cx|R\(2) & (\_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DI|R\(2),
	datab => \Cx|R\(2),
	datac => \_~25_combout\,
	datad => \_~24_combout\,
	combout => \BUS[2]~23_combout\);

-- Location: FF_X41_Y4_N11
\MAR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MAR|R\(2));

-- Location: FF_X40_Y4_N21
\IR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|R\(2));

-- Location: LCCOMB_X40_Y4_N20
\BUS[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~21_combout\ = (\_~21_combout\ & ((\MAR|R\(2)) # ((\IR|R\(2) & \_~22_combout\)))) # (!\_~21_combout\ & (((\IR|R\(2) & \_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~21_combout\,
	datab => \MAR|R\(2),
	datac => \IR|R\(2),
	datad => \_~22_combout\,
	combout => \BUS[2]~21_combout\);

-- Location: LCCOMB_X40_Y4_N6
\BUS[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~22_combout\ = (\BUS[2]~21_combout\) # ((\_~23_combout\ & \Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \_~23_combout\,
	datac => \Ax|R\(2),
	datad => \BUS[2]~21_combout\,
	combout => \BUS[2]~22_combout\);

-- Location: LCCOMB_X38_Y4_N18
\BUS[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~24_combout\ = (\BUS[2]~23_combout\) # ((\BUS[2]~22_combout\) # ((\_~26_combout\ & \Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~26_combout\,
	datab => \BUS[2]~23_combout\,
	datac => \Bx|R\(2),
	datad => \BUS[2]~22_combout\,
	combout => \BUS[2]~24_combout\);

-- Location: LCCOMB_X37_Y4_N30
\BUS[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BUS[2]~29_combout\ = (\BUS[2]~26_combout\) # ((\BUS[2]~28_combout\) # ((\BUS[2]~25_combout\) # (\BUS[2]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS[2]~26_combout\,
	datab => \BUS[2]~28_combout\,
	datac => \BUS[2]~25_combout\,
	datad => \BUS[2]~24_combout\,
	combout => \BUS[2]~29_combout\);

-- Location: FF_X37_Y4_N25
\DST|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \BUS[2]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \_~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DST|R\(2));

-- Location: LCCOMB_X37_Y4_N10
\_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~34_combout\ = (!\SelMUX[3]~0_combout\ & ((\SelDST~input_o\ & ((!\DST_UC[2]~input_o\))) # (!\SelDST~input_o\ & (!\DST|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \DST|R\(2),
	datac => \DST_UC[2]~input_o\,
	datad => \SelMUX[3]~0_combout\,
	combout => \_~34_combout\);

-- Location: LCCOMB_X38_Y6_N30
\_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \_~35_combout\ = (\_~34_combout\ & (!\SelMUX[1]~3_combout\ & \_~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \_~34_combout\,
	datab => \SelMUX[1]~3_combout\,
	datad => \_~61_combout\,
	combout => \_~35_combout\);

-- Location: LCCOMB_X38_Y6_N28
\Ax|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[2]~6_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \_~35_combout\,
	combout => \Ax|R[2]~6_combout\);

-- Location: LCCOMB_X39_Y6_N30
\Ax|R[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~27_combout\ = (\Ax|R\(7) & ((\Ax|R[1]~0_combout\) # ((\Ax|R[2]~6_combout\ & \Ax|R\(5))))) # (!\Ax|R\(7) & (\Ax|R[2]~6_combout\ & (\Ax|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(7),
	datab => \Ax|R[2]~6_combout\,
	datac => \Ax|R\(5),
	datad => \Ax|R[1]~0_combout\,
	combout => \Ax|R[6]~27_combout\);

-- Location: LCCOMB_X37_Y6_N12
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

-- Location: LCCOMB_X37_Y6_N26
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

-- Location: LCCOMB_X38_Y6_N14
\Ax|R[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~28_combout\ = (\Ax|R\(6) & ((\Ax|R[0]~3_combout\) # ((\Ax|op_1~10_combout\ & \Ax|_~3_combout\)))) # (!\Ax|R\(6) & (((\Ax|op_1~10_combout\ & \Ax|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(6),
	datab => \Ax|R[0]~3_combout\,
	datac => \Ax|op_1~10_combout\,
	datad => \Ax|_~3_combout\,
	combout => \Ax|R[6]~28_combout\);

-- Location: LCCOMB_X39_Y6_N28
\Ax|R[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~29_combout\ = (\Ax|R[6]~28_combout\) # ((\Ax|op_2~12_combout\ & \Ax|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|op_2~12_combout\,
	datac => \Ax|_~2_combout\,
	datad => \Ax|R[6]~28_combout\,
	combout => \Ax|R[6]~29_combout\);

-- Location: LCCOMB_X39_Y6_N20
\Ax|R[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[6]~30_combout\ = (\Ax|R[6]~27_combout\) # ((\Ax|R[6]~29_combout\) # ((\Ax|_~1_combout\ & \BUS[6]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[6]~27_combout\,
	datab => \Ax|_~1_combout\,
	datac => \Ax|R[6]~29_combout\,
	datad => \BUS[6]~65_combout\,
	combout => \Ax|R[6]~30_combout\);

-- Location: FF_X39_Y6_N21
\Ax|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[6]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(6));

-- Location: LCCOMB_X37_Y6_N14
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

-- Location: LCCOMB_X39_Y6_N6
\Ax|R[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~34_combout\ = (\Ax|R\(7) & ((\Ax|R[0]~3_combout\) # ((\Ax|op_2~14_combout\ & \Ax|_~2_combout\)))) # (!\Ax|R\(7) & (\Ax|op_2~14_combout\ & (\Ax|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(7),
	datab => \Ax|op_2~14_combout\,
	datac => \Ax|_~2_combout\,
	datad => \Ax|R[0]~3_combout\,
	combout => \Ax|R[7]~34_combout\);

-- Location: LCCOMB_X36_Y4_N0
\Ax|R[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~31_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Ax|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Ax|R\(0),
	combout => \Ax|R[7]~31_combout\);

-- Location: LCCOMB_X39_Y6_N10
\Ax|R[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~32_combout\ = (\Ax|R\(6) & ((\Ax|R[2]~6_combout\) # ((\_~35_combout\ & \Ax|R[7]~31_combout\)))) # (!\Ax|R\(6) & (\_~35_combout\ & (\Ax|R[7]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(6),
	datab => \_~35_combout\,
	datac => \Ax|R[7]~31_combout\,
	datad => \Ax|R[2]~6_combout\,
	combout => \Ax|R[7]~32_combout\);

-- Location: LCCOMB_X37_Y6_N28
\Ax|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|op_1~12_combout\ = \Ax|op_1~11\ $ (!\Ax|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Ax|R\(7),
	cin => \Ax|op_1~11\,
	combout => \Ax|op_1~12_combout\);

-- Location: LCCOMB_X39_Y6_N4
\Ax|R[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~33_combout\ = (\Ax|R[7]~32_combout\) # ((\Ax|op_1~12_combout\ & \Ax|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[7]~32_combout\,
	datac => \Ax|op_1~12_combout\,
	datad => \Ax|_~3_combout\,
	combout => \Ax|R[7]~33_combout\);

-- Location: LCCOMB_X39_Y6_N22
\Ax|R[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[7]~35_combout\ = (\Ax|R[7]~34_combout\) # ((\Ax|R[7]~33_combout\) # ((\Ax|_~1_combout\ & \BUS[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[7]~34_combout\,
	datab => \Ax|_~1_combout\,
	datac => \Ax|R[7]~33_combout\,
	datad => \BUS[7]~74_combout\,
	combout => \Ax|R[7]~35_combout\);

-- Location: FF_X39_Y6_N23
\Ax|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[7]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(7));

-- Location: LCCOMB_X38_Y5_N14
\Ax|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\_~35_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Ax|_~0_combout\);

-- Location: LCCOMB_X38_Y5_N12
\Ax|R[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~4_combout\ = (\Ax|R\(7) & ((\Ax|_~0_combout\) # ((\Ax|R\(0) & \Ax|R[0]~3_combout\)))) # (!\Ax|R\(7) & (\Ax|R\(0) & ((\Ax|R[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R\(7),
	datab => \Ax|R\(0),
	datac => \Ax|_~0_combout\,
	datad => \Ax|R[0]~3_combout\,
	combout => \Ax|R[0]~4_combout\);

-- Location: LCCOMB_X38_Y5_N30
\Ax|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~1_combout\ = (!\Cmd[2]~input_o\ & (\_~35_combout\ & \Cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \_~35_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Ax|R[0]~1_combout\);

-- Location: LCCOMB_X38_Y5_N8
\Ax|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~2_combout\ = (\Ax|R[1]~0_combout\ & ((\Ax|R\(1)) # ((!\Ax|R\(0) & \Ax|R[0]~1_combout\)))) # (!\Ax|R[1]~0_combout\ & (!\Ax|R\(0) & (\Ax|R[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[1]~0_combout\,
	datab => \Ax|R\(0),
	datac => \Ax|R[0]~1_combout\,
	datad => \Ax|R\(1),
	combout => \Ax|R[0]~2_combout\);

-- Location: LCCOMB_X38_Y5_N0
\Ax|R[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Ax|R[0]~5_combout\ = (\Ax|R[0]~4_combout\) # ((\Ax|R[0]~2_combout\) # ((\Ax|_~1_combout\ & \BUS[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ax|R[0]~4_combout\,
	datab => \Ax|_~1_combout\,
	datac => \Ax|R[0]~2_combout\,
	datad => \BUS[0]~8_combout\,
	combout => \Ax|R[0]~5_combout\);

-- Location: FF_X38_Y5_N1
\Ax|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Ax|R[0]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ax|R\(0));

-- Location: IOIBUF_X62_Y0_N8
\SelMAR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelMAR,
	o => \SelMAR~input_o\);

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

ww_Cx_t(0) <= \Cx_t[0]~output_o\;

ww_Cx_t(1) <= \Cx_t[1]~output_o\;

ww_Cx_t(2) <= \Cx_t[2]~output_o\;

ww_Cx_t(3) <= \Cx_t[3]~output_o\;

ww_Cx_t(4) <= \Cx_t[4]~output_o\;

ww_Cx_t(5) <= \Cx_t[5]~output_o\;

ww_Cx_t(6) <= \Cx_t[6]~output_o\;

ww_Cx_t(7) <= \Cx_t[7]~output_o\;

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

ww_ALU_t(0) <= \ALU_t[0]~output_o\;

ww_ALU_t(1) <= \ALU_t[1]~output_o\;

ww_ALU_t(2) <= \ALU_t[2]~output_o\;

ww_ALU_t(3) <= \ALU_t[3]~output_o\;

ww_ALU_t(4) <= \ALU_t[4]~output_o\;

ww_ALU_t(5) <= \ALU_t[5]~output_o\;

ww_ALU_t(6) <= \ALU_t[6]~output_o\;

ww_ALU_t(7) <= \ALU_t[7]~output_o\;

ww_Bus_t(0) <= \Bus_t[0]~output_o\;

ww_Bus_t(1) <= \Bus_t[1]~output_o\;

ww_Bus_t(2) <= \Bus_t[2]~output_o\;

ww_Bus_t(3) <= \Bus_t[3]~output_o\;

ww_Bus_t(4) <= \Bus_t[4]~output_o\;

ww_Bus_t(5) <= \Bus_t[5]~output_o\;

ww_Bus_t(6) <= \Bus_t[6]~output_o\;

ww_Bus_t(7) <= \Bus_t[7]~output_o\;

ww_ADDR_BUS(0) <= \ADDR_BUS[0]~output_o\;

ww_ADDR_BUS(1) <= \ADDR_BUS[1]~output_o\;

ww_ADDR_BUS(2) <= \ADDR_BUS[2]~output_o\;

ww_ADDR_BUS(3) <= \ADDR_BUS[3]~output_o\;

ww_ADDR_BUS(4) <= \ADDR_BUS[4]~output_o\;

ww_ADDR_BUS(5) <= \ADDR_BUS[5]~output_o\;

ww_ADDR_BUS(6) <= \ADDR_BUS[6]~output_o\;

ww_ADDR_BUS(7) <= \ADDR_BUS[7]~output_o\;
END structure;


