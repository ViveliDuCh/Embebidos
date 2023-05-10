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

-- DATE "05/09/2023 18:45:57"

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

ENTITY 	MiQRObio IS
    PORT (
	ALU_t : OUT std_logic_vector(7 DOWNTO 0);
	Reloj : IN std_logic;
	Reset : IN std_logic;
	SelDST : IN std_logic;
	SelSRC : IN std_logic;
	SelMAR : IN std_logic;
	SelMDR : IN std_logic;
	Enable_t : IN std_logic;
	Cmd : IN std_logic_vector(2 DOWNTO 0);
	Write_En : IN std_logic;
	DST_UC : IN std_logic_vector(4 DOWNTO 0);
	Fx : IN std_logic_vector(7 DOWNTO 0);
	SRC_UC : IN std_logic_vector(4 DOWNTO 0);
	Ax_t : OUT std_logic_vector(7 DOWNTO 0);
	Bus_t : OUT std_logic_vector(7 DOWNTO 0);
	Bx_t : OUT std_logic_vector(7 DOWNTO 0);
	Cx_t : OUT std_logic_vector(7 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	MAR : OUT std_logic_vector(7 DOWNTO 0);
	MDR : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	r_t : OUT std_logic_vector(7 DOWNTO 0);
	x_t : OUT std_logic_vector(7 DOWNTO 0);
	y_t : OUT std_logic_vector(7 DOWNTO 0)
	);
END MiQRObio;

-- Design Ports Information
-- ALU_t[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[7]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[4]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[0]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[2]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[3]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[2]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelSRC	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[6]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelDST	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[1]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMAR	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable_t	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMDR	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_En	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MiQRObio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALU_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_SelDST : std_logic;
SIGNAL ww_SelSRC : std_logic;
SIGNAL ww_SelMAR : std_logic;
SIGNAL ww_SelMDR : std_logic;
SIGNAL ww_Enable_t : std_logic;
SIGNAL ww_Cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Write_En : std_logic;
SIGNAL ww_DST_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Fx : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SRC_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Ax_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ALU_t[7]~output_o\ : std_logic;
SIGNAL \ALU_t[6]~output_o\ : std_logic;
SIGNAL \ALU_t[5]~output_o\ : std_logic;
SIGNAL \ALU_t[4]~output_o\ : std_logic;
SIGNAL \ALU_t[3]~output_o\ : std_logic;
SIGNAL \ALU_t[2]~output_o\ : std_logic;
SIGNAL \ALU_t[1]~output_o\ : std_logic;
SIGNAL \ALU_t[0]~output_o\ : std_logic;
SIGNAL \Ax_t[7]~output_o\ : std_logic;
SIGNAL \Ax_t[6]~output_o\ : std_logic;
SIGNAL \Ax_t[5]~output_o\ : std_logic;
SIGNAL \Ax_t[4]~output_o\ : std_logic;
SIGNAL \Ax_t[3]~output_o\ : std_logic;
SIGNAL \Ax_t[2]~output_o\ : std_logic;
SIGNAL \Ax_t[1]~output_o\ : std_logic;
SIGNAL \Ax_t[0]~output_o\ : std_logic;
SIGNAL \Bus_t[7]~output_o\ : std_logic;
SIGNAL \Bus_t[6]~output_o\ : std_logic;
SIGNAL \Bus_t[5]~output_o\ : std_logic;
SIGNAL \Bus_t[4]~output_o\ : std_logic;
SIGNAL \Bus_t[3]~output_o\ : std_logic;
SIGNAL \Bus_t[2]~output_o\ : std_logic;
SIGNAL \Bus_t[1]~output_o\ : std_logic;
SIGNAL \Bus_t[0]~output_o\ : std_logic;
SIGNAL \Bx_t[7]~output_o\ : std_logic;
SIGNAL \Bx_t[6]~output_o\ : std_logic;
SIGNAL \Bx_t[5]~output_o\ : std_logic;
SIGNAL \Bx_t[4]~output_o\ : std_logic;
SIGNAL \Bx_t[3]~output_o\ : std_logic;
SIGNAL \Bx_t[2]~output_o\ : std_logic;
SIGNAL \Bx_t[1]~output_o\ : std_logic;
SIGNAL \Bx_t[0]~output_o\ : std_logic;
SIGNAL \Cx_t[7]~output_o\ : std_logic;
SIGNAL \Cx_t[6]~output_o\ : std_logic;
SIGNAL \Cx_t[5]~output_o\ : std_logic;
SIGNAL \Cx_t[4]~output_o\ : std_logic;
SIGNAL \Cx_t[3]~output_o\ : std_logic;
SIGNAL \Cx_t[2]~output_o\ : std_logic;
SIGNAL \Cx_t[1]~output_o\ : std_logic;
SIGNAL \Cx_t[0]~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[4]~output_o\ : std_logic;
SIGNAL \IR[3]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \MAR[7]~output_o\ : std_logic;
SIGNAL \MAR[6]~output_o\ : std_logic;
SIGNAL \MAR[5]~output_o\ : std_logic;
SIGNAL \MAR[4]~output_o\ : std_logic;
SIGNAL \MAR[3]~output_o\ : std_logic;
SIGNAL \MAR[2]~output_o\ : std_logic;
SIGNAL \MAR[1]~output_o\ : std_logic;
SIGNAL \MAR[0]~output_o\ : std_logic;
SIGNAL \MDR[7]~output_o\ : std_logic;
SIGNAL \MDR[6]~output_o\ : std_logic;
SIGNAL \MDR[5]~output_o\ : std_logic;
SIGNAL \MDR[4]~output_o\ : std_logic;
SIGNAL \MDR[3]~output_o\ : std_logic;
SIGNAL \MDR[2]~output_o\ : std_logic;
SIGNAL \MDR[1]~output_o\ : std_logic;
SIGNAL \MDR[0]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \r_t[7]~output_o\ : std_logic;
SIGNAL \r_t[6]~output_o\ : std_logic;
SIGNAL \r_t[5]~output_o\ : std_logic;
SIGNAL \r_t[4]~output_o\ : std_logic;
SIGNAL \r_t[3]~output_o\ : std_logic;
SIGNAL \r_t[2]~output_o\ : std_logic;
SIGNAL \r_t[1]~output_o\ : std_logic;
SIGNAL \r_t[0]~output_o\ : std_logic;
SIGNAL \x_t[7]~output_o\ : std_logic;
SIGNAL \x_t[6]~output_o\ : std_logic;
SIGNAL \x_t[5]~output_o\ : std_logic;
SIGNAL \x_t[4]~output_o\ : std_logic;
SIGNAL \x_t[3]~output_o\ : std_logic;
SIGNAL \x_t[2]~output_o\ : std_logic;
SIGNAL \x_t[1]~output_o\ : std_logic;
SIGNAL \x_t[0]~output_o\ : std_logic;
SIGNAL \y_t[7]~output_o\ : std_logic;
SIGNAL \y_t[6]~output_o\ : std_logic;
SIGNAL \y_t[5]~output_o\ : std_logic;
SIGNAL \y_t[4]~output_o\ : std_logic;
SIGNAL \y_t[3]~output_o\ : std_logic;
SIGNAL \y_t[2]~output_o\ : std_logic;
SIGNAL \y_t[1]~output_o\ : std_logic;
SIGNAL \y_t[0]~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \SelSRC~input_o\ : std_logic;
SIGNAL \SRC_UC[2]~input_o\ : std_logic;
SIGNAL \Arch|alu_y|R[2]~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \DST_UC[3]~input_o\ : std_logic;
SIGNAL \SelDST~input_o\ : std_logic;
SIGNAL \SRC_UC[4]~input_o\ : std_logic;
SIGNAL \Arch|alu_y|R[4]~feeder_combout\ : std_logic;
SIGNAL \Arch|alu_x|R[4]~feeder_combout\ : std_logic;
SIGNAL \DST_UC[1]~input_o\ : std_logic;
SIGNAL \Cmd[2]~input_o\ : std_logic;
SIGNAL \Cmd[1]~input_o\ : std_logic;
SIGNAL \Cmd[0]~input_o\ : std_logic;
SIGNAL \DST_UC[0]~input_o\ : std_logic;
SIGNAL \Arch|SelMUX[0]~0_combout\ : std_logic;
SIGNAL \DST_UC[4]~input_o\ : std_logic;
SIGNAL \Arch|SelMUX[4]~3_combout\ : std_logic;
SIGNAL \Arch|_~48_combout\ : std_logic;
SIGNAL \Arch|_~49_combout\ : std_logic;
SIGNAL \Arch|PC|_~2_combout\ : std_logic;
SIGNAL \Arch|PC|_~0_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~1_cout\ : std_logic;
SIGNAL \Arch|PC|op_2~3\ : std_logic;
SIGNAL \Arch|PC|op_2~4_combout\ : std_logic;
SIGNAL \Arch|PC|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|PC|_~1_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~1\ : std_logic;
SIGNAL \Arch|PC|op_1~2_combout\ : std_logic;
SIGNAL \Arch|PC|R[5]~8_combout\ : std_logic;
SIGNAL \Arch|PC|R[6]~0_combout\ : std_logic;
SIGNAL \Arch|PC|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|PC|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|PC|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~3\ : std_logic;
SIGNAL \Arch|PC|op_1~4_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~5\ : std_logic;
SIGNAL \Arch|PC|op_2~6_combout\ : std_logic;
SIGNAL \Arch|PC|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|PC|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|PC|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|PC|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~5\ : std_logic;
SIGNAL \Arch|PC|op_1~6_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~7\ : std_logic;
SIGNAL \Arch|PC|op_2~8_combout\ : std_logic;
SIGNAL \Arch|PC|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|PC|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|PC|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|PC|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~9\ : std_logic;
SIGNAL \Arch|PC|op_2~10_combout\ : std_logic;
SIGNAL \Arch|PC|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~7\ : std_logic;
SIGNAL \Arch|PC|op_1~8_combout\ : std_logic;
SIGNAL \Arch|PC|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|PC|R[5]~14_combout\ : std_logic;
SIGNAL \SRC_UC[1]~input_o\ : std_logic;
SIGNAL \Arch|_~42_combout\ : std_logic;
SIGNAL \Arch|_~43_combout\ : std_logic;
SIGNAL \Arch|SelBus[1]~4_combout\ : std_logic;
SIGNAL \SRC_UC[3]~input_o\ : std_logic;
SIGNAL \Arch|SelBus[3]~1_combout\ : std_logic;
SIGNAL \Arch|SelBus[4]~2_combout\ : std_logic;
SIGNAL \Arch|_~24_combout\ : std_logic;
SIGNAL \Arch|_~26_combout\ : std_logic;
SIGNAL \SelMAR~input_o\ : std_logic;
SIGNAL \Arch|MAR|R[5]~2_combout\ : std_logic;
SIGNAL \Arch|_~45_combout\ : std_logic;
SIGNAL \Arch|_~44_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~21_combout\ : std_logic;
SIGNAL \Fx[5]~input_o\ : std_logic;
SIGNAL \Arch|_~47_combout\ : std_logic;
SIGNAL \Arch|_~58_combout\ : std_logic;
SIGNAL \Arch|DI|_~0_combout\ : std_logic;
SIGNAL \Arch|DI|_~1_combout\ : std_logic;
SIGNAL \Arch|DI|R[5]~7_combout\ : std_logic;
SIGNAL \Arch|DI|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|DI|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~9\ : std_logic;
SIGNAL \Arch|DI|op_1~10_combout\ : std_logic;
SIGNAL \Arch|DI|R[6]~0_combout\ : std_logic;
SIGNAL \Arch|DI|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~7\ : std_logic;
SIGNAL \Arch|DI|op_2~9\ : std_logic;
SIGNAL \Arch|DI|op_2~11\ : std_logic;
SIGNAL \Arch|DI|op_2~12_combout\ : std_logic;
SIGNAL \Arch|DI|_~2_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|DI|R[6]~8_combout\ : std_logic;
SIGNAL \Arch|DI|R[6]~10_combout\ : std_logic;
SIGNAL \Fx[6]~input_o\ : std_logic;
SIGNAL \Arch|_~33_combout\ : std_logic;
SIGNAL \Arch|alu_y|R[6]~feeder_combout\ : std_logic;
SIGNAL \Arch|alu_y|R[5]~feeder_combout\ : std_logic;
SIGNAL \Arch|alu_y|R[3]~feeder_combout\ : std_logic;
SIGNAL \Arch|alu_y|R[1]~feeder_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[0]~1\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[1]~3\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[2]~5\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[3]~7\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[4]~9\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[5]~11\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[6]~12_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[6]~feeder_combout\ : std_logic;
SIGNAL \Enable_t~input_o\ : std_logic;
SIGNAL \Arch|BUS[6]~16_combout\ : std_logic;
SIGNAL \Arch|_~34_combout\ : std_logic;
SIGNAL \SelMDR~input_o\ : std_logic;
SIGNAL \Write_En~input_o\ : std_logic;
SIGNAL \Arch|MAR|R[0]~7_combout\ : std_logic;
SIGNAL \Arch|MAR|R[2]~5_combout\ : std_logic;
SIGNAL \Arch|MAR|R[3]~4_combout\ : std_logic;
SIGNAL \Arch|MAR|R[4]~3_combout\ : std_logic;
SIGNAL \Arch|MAR|R[6]~1_combout\ : std_logic;
SIGNAL \Arch|MAR|R[7]~0_combout\ : std_logic;
SIGNAL \Arch|MDR|R[7]~0_combout\ : std_logic;
SIGNAL \Arch|_~51_combout\ : std_logic;
SIGNAL \Arch|MDR|R[5]~2_combout\ : std_logic;
SIGNAL \Arch|MDR|R[4]~3_combout\ : std_logic;
SIGNAL \Arch|MDR|R[3]~4_combout\ : std_logic;
SIGNAL \Arch|MDR|R[2]~5_combout\ : std_logic;
SIGNAL \Arch|MDR|R[1]~6_combout\ : std_logic;
SIGNAL \Arch|MDR|R[0]~7_combout\ : std_logic;
SIGNAL \Arch|MDR|R[6]~1_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~17_combout\ : std_logic;
SIGNAL \Arch|_~50_combout\ : std_logic;
SIGNAL \Arch|_~46_combout\ : std_logic;
SIGNAL \Arch|_~60_combout\ : std_logic;
SIGNAL \Arch|SI|_~0_combout\ : std_logic;
SIGNAL \Arch|SI|_~2_combout\ : std_logic;
SIGNAL \Arch|SI|R[5]~7_combout\ : std_logic;
SIGNAL \Arch|SI|_~1_combout\ : std_logic;
SIGNAL \Arch|SI|R[6]~0_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|SI|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|SI|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|SI|_~3_combout\ : std_logic;
SIGNAL \Arch|SI|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|SI|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~1_cout\ : std_logic;
SIGNAL \Arch|SI|op_2~2_combout\ : std_logic;
SIGNAL \Arch|SI|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~0_combout\ : std_logic;
SIGNAL \Arch|SI|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|SI|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|SI|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~1\ : std_logic;
SIGNAL \Arch|SI|op_1~2_combout\ : std_logic;
SIGNAL \Arch|SI|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~3\ : std_logic;
SIGNAL \Arch|SI|op_2~4_combout\ : std_logic;
SIGNAL \Arch|SI|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|SI|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|SI|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|SI|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~3\ : std_logic;
SIGNAL \Arch|SI|op_1~4_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~5\ : std_logic;
SIGNAL \Arch|SI|op_2~6_combout\ : std_logic;
SIGNAL \Arch|SI|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|SI|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|SI|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~5\ : std_logic;
SIGNAL \Arch|SI|op_1~6_combout\ : std_logic;
SIGNAL \Arch|SI|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~7\ : std_logic;
SIGNAL \Arch|SI|op_2~8_combout\ : std_logic;
SIGNAL \Arch|SI|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|SI|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|SI|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~7\ : std_logic;
SIGNAL \Arch|SI|op_1~8_combout\ : std_logic;
SIGNAL \Arch|SI|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~9\ : std_logic;
SIGNAL \Arch|SI|op_2~10_combout\ : std_logic;
SIGNAL \Arch|SI|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|SI|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|SI|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~9\ : std_logic;
SIGNAL \Arch|SI|op_1~11\ : std_logic;
SIGNAL \Arch|SI|op_1~12_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~11\ : std_logic;
SIGNAL \Arch|SI|op_2~13\ : std_logic;
SIGNAL \Arch|SI|op_2~14_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~3_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|SI|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|SI|R[6]~8_combout\ : std_logic;
SIGNAL \Arch|SI|op_2~12_combout\ : std_logic;
SIGNAL \Arch|SI|op_1~10_combout\ : std_logic;
SIGNAL \Arch|SI|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|SI|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|SI|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|_~61_combout\ : std_logic;
SIGNAL \Arch|SP|_~1_combout\ : std_logic;
SIGNAL \Arch|SP|_~2_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~0_combout\ : std_logic;
SIGNAL \Arch|SP|_~3_combout\ : std_logic;
SIGNAL \Arch|SP|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~0_combout\ : std_logic;
SIGNAL \Arch|SP|_~0_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~1_cout\ : std_logic;
SIGNAL \Arch|SP|op_2~3\ : std_logic;
SIGNAL \Arch|SP|op_2~4_combout\ : std_logic;
SIGNAL \Arch|SP|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~1\ : std_logic;
SIGNAL \Arch|SP|op_1~2_combout\ : std_logic;
SIGNAL \Arch|SP|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|SP|R[5]~7_combout\ : std_logic;
SIGNAL \Arch|SP|R[6]~3_combout\ : std_logic;
SIGNAL \Arch|SP|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~5\ : std_logic;
SIGNAL \Arch|SP|op_2~7\ : std_logic;
SIGNAL \Arch|SP|op_2~9\ : std_logic;
SIGNAL \Arch|SP|op_2~10_combout\ : std_logic;
SIGNAL \Arch|SP|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~3\ : std_logic;
SIGNAL \Arch|SP|op_1~5\ : std_logic;
SIGNAL \Arch|SP|op_1~7\ : std_logic;
SIGNAL \Arch|SP|op_1~8_combout\ : std_logic;
SIGNAL \Arch|SP|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|SP|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|SP|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~8_combout\ : std_logic;
SIGNAL \Arch|SP|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~6_combout\ : std_logic;
SIGNAL \Arch|SP|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|SP|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|SP|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~6_combout\ : std_logic;
SIGNAL \Arch|SP|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~4_combout\ : std_logic;
SIGNAL \Arch|SP|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|SP|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|SP|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|SP|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|SP|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~2_combout\ : std_logic;
SIGNAL \Arch|SP|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|SP|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|SP|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|SP|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|SP|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|SP|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~9\ : std_logic;
SIGNAL \Arch|SP|op_1~11\ : std_logic;
SIGNAL \Arch|SP|op_1~12_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~11\ : std_logic;
SIGNAL \Arch|SP|op_2~13\ : std_logic;
SIGNAL \Arch|SP|op_2~14_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|SP|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|SP|R[6]~8_combout\ : std_logic;
SIGNAL \Arch|SP|op_2~12_combout\ : std_logic;
SIGNAL \Arch|SP|op_1~10_combout\ : std_logic;
SIGNAL \Arch|SP|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|SP|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|SP|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|_~53_combout\ : std_logic;
SIGNAL \Arch|_~36_combout\ : std_logic;
SIGNAL \Arch|_~37_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~18_combout\ : std_logic;
SIGNAL \Arch|_~35_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~19_combout\ : std_logic;
SIGNAL \Arch|_~30_combout\ : std_logic;
SIGNAL \Arch|_~41_combout\ : std_logic;
SIGNAL \Arch|_~59_combout\ : std_logic;
SIGNAL \Arch|Cx|_~1_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~0_combout\ : std_logic;
SIGNAL \Arch|Cx|R[5]~7_combout\ : std_logic;
SIGNAL \Arch|Cx|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|Cx|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|Cx|R[6]~3_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~9\ : std_logic;
SIGNAL \Arch|Cx|op_1~11\ : std_logic;
SIGNAL \Arch|Cx|op_1~12_combout\ : std_logic;
SIGNAL \Arch|Cx|_~0_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~13\ : std_logic;
SIGNAL \Arch|Cx|op_2~14_combout\ : std_logic;
SIGNAL \Arch|Cx|_~2_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|Cx|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|Cx|_~3_combout\ : std_logic;
SIGNAL \Arch|Cx|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|Cx|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~0_combout\ : std_logic;
SIGNAL \Arch|Cx|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~1_cout\ : std_logic;
SIGNAL \Arch|Cx|op_2~2_combout\ : std_logic;
SIGNAL \Arch|Cx|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|Cx|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|Cx|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~3\ : std_logic;
SIGNAL \Arch|Cx|op_2~4_combout\ : std_logic;
SIGNAL \Arch|Cx|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~1\ : std_logic;
SIGNAL \Arch|Cx|op_1~2_combout\ : std_logic;
SIGNAL \Arch|Cx|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|Cx|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|Cx|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~5\ : std_logic;
SIGNAL \Arch|Cx|op_2~6_combout\ : std_logic;
SIGNAL \Arch|Cx|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~3\ : std_logic;
SIGNAL \Arch|Cx|op_1~4_combout\ : std_logic;
SIGNAL \Arch|Cx|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|Cx|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|Cx|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|Cx|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~5\ : std_logic;
SIGNAL \Arch|Cx|op_1~6_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~7\ : std_logic;
SIGNAL \Arch|Cx|op_2~8_combout\ : std_logic;
SIGNAL \Arch|Cx|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|Cx|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|Cx|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~7\ : std_logic;
SIGNAL \Arch|Cx|op_1~8_combout\ : std_logic;
SIGNAL \Arch|Cx|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~9\ : std_logic;
SIGNAL \Arch|Cx|op_2~10_combout\ : std_logic;
SIGNAL \Arch|Cx|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|Cx|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|Cx|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|Cx|op_2~11\ : std_logic;
SIGNAL \Arch|Cx|op_2~12_combout\ : std_logic;
SIGNAL \Arch|Cx|R[6]~8_combout\ : std_logic;
SIGNAL \Arch|Cx|op_1~10_combout\ : std_logic;
SIGNAL \Arch|Cx|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|Cx|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|Cx|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|_~29_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~14_combout\ : std_logic;
SIGNAL \Arch|_~57_combout\ : std_logic;
SIGNAL \Arch|Bx|_~2_combout\ : std_logic;
SIGNAL \Arch|Bx|_~0_combout\ : std_logic;
SIGNAL \Arch|Bx|R[5]~8_combout\ : std_logic;
SIGNAL \Arch|Bx|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|Bx|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|Bx|_~3_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~11\ : std_logic;
SIGNAL \Arch|Bx|op_1~12_combout\ : std_logic;
SIGNAL \Arch|Bx|_~1_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~1_cout\ : std_logic;
SIGNAL \Arch|Bx|op_2~3\ : std_logic;
SIGNAL \Arch|Bx|op_2~5\ : std_logic;
SIGNAL \Arch|Bx|op_2~7\ : std_logic;
SIGNAL \Arch|Bx|op_2~9\ : std_logic;
SIGNAL \Arch|Bx|op_2~11\ : std_logic;
SIGNAL \Arch|Bx|op_2~13\ : std_logic;
SIGNAL \Arch|Bx|op_2~14_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|Bx|R[6]~0_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~3_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|Bx|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|Bx|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|Bx|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~0_combout\ : std_logic;
SIGNAL \Arch|Bx|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~2_combout\ : std_logic;
SIGNAL \Arch|Bx|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|Bx|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|Bx|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~1\ : std_logic;
SIGNAL \Arch|Bx|op_1~2_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~4_combout\ : std_logic;
SIGNAL \Arch|Bx|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|Bx|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|Bx|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|Bx|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|Bx|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~3\ : std_logic;
SIGNAL \Arch|Bx|op_1~4_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~6_combout\ : std_logic;
SIGNAL \Arch|Bx|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|Bx|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|Bx|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~5\ : std_logic;
SIGNAL \Arch|Bx|op_1~6_combout\ : std_logic;
SIGNAL \Arch|Bx|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~8_combout\ : std_logic;
SIGNAL \Arch|Bx|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|Bx|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|Bx|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~7\ : std_logic;
SIGNAL \Arch|Bx|op_1~8_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~10_combout\ : std_logic;
SIGNAL \Arch|Bx|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|Bx|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|Bx|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|Bx|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|Bx|op_1~9\ : std_logic;
SIGNAL \Arch|Bx|op_1~10_combout\ : std_logic;
SIGNAL \Arch|Bx|R[6]~7_combout\ : std_logic;
SIGNAL \Arch|Bx|op_2~12_combout\ : std_logic;
SIGNAL \Arch|Bx|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|Bx|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|Bx|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|_~27_combout\ : std_logic;
SIGNAL \Arch|_~56_combout\ : std_logic;
SIGNAL \Arch|Ax|_~2_combout\ : std_logic;
SIGNAL \Arch|Ax|_~0_combout\ : std_logic;
SIGNAL \Arch|Ax|R[5]~7_combout\ : std_logic;
SIGNAL \Arch|Ax|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|Ax|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|Ax|_~1_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~11\ : std_logic;
SIGNAL \Arch|Ax|op_2~13\ : std_logic;
SIGNAL \Arch|Ax|op_2~14_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~7\ : std_logic;
SIGNAL \Arch|Ax|op_1~9\ : std_logic;
SIGNAL \Arch|Ax|op_1~11\ : std_logic;
SIGNAL \Arch|Ax|op_1~12_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|Ax|R[6]~0_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~2_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~3_combout\ : std_logic;
SIGNAL \Arch|Ax|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|Ax|_~3_combout\ : std_logic;
SIGNAL \Arch|Ax|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|Ax|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~0_combout\ : std_logic;
SIGNAL \Arch|Ax|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~1_cout\ : std_logic;
SIGNAL \Arch|Ax|op_2~2_combout\ : std_logic;
SIGNAL \Arch|Ax|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|Ax|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|Ax|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~1\ : std_logic;
SIGNAL \Arch|Ax|op_1~2_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~3\ : std_logic;
SIGNAL \Arch|Ax|op_2~4_combout\ : std_logic;
SIGNAL \Arch|Ax|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|Ax|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|Ax|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|Ax|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~3\ : std_logic;
SIGNAL \Arch|Ax|op_1~4_combout\ : std_logic;
SIGNAL \Arch|Ax|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~5\ : std_logic;
SIGNAL \Arch|Ax|op_2~6_combout\ : std_logic;
SIGNAL \Arch|Ax|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|Ax|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|Ax|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~5\ : std_logic;
SIGNAL \Arch|Ax|op_1~6_combout\ : std_logic;
SIGNAL \Arch|Ax|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~7\ : std_logic;
SIGNAL \Arch|Ax|op_2~8_combout\ : std_logic;
SIGNAL \Arch|Ax|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|Ax|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|Ax|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~9\ : std_logic;
SIGNAL \Arch|Ax|op_2~10_combout\ : std_logic;
SIGNAL \Arch|Ax|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~8_combout\ : std_logic;
SIGNAL \Arch|Ax|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|Ax|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|Ax|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|Ax|R[6]~8_combout\ : std_logic;
SIGNAL \Arch|Ax|op_2~12_combout\ : std_logic;
SIGNAL \Arch|Ax|op_1~10_combout\ : std_logic;
SIGNAL \Arch|Ax|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|Ax|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|Ax|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|_~28_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~12_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~13_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~15_combout\ : std_logic;
SIGNAL \Arch|BUS[6]~20_combout\ : std_logic;
SIGNAL \Arch|DI|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~11\ : std_logic;
SIGNAL \Arch|DI|op_1~12_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~13\ : std_logic;
SIGNAL \Arch|DI|op_2~14_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~3_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|DI|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|DI|_~3_combout\ : std_logic;
SIGNAL \Arch|DI|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|DI|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~0_combout\ : std_logic;
SIGNAL \Arch|DI|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~1_cout\ : std_logic;
SIGNAL \Arch|DI|op_2~2_combout\ : std_logic;
SIGNAL \Arch|DI|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|DI|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|DI|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|DI|R[2]~24_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~1\ : std_logic;
SIGNAL \Arch|DI|op_1~2_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~3\ : std_logic;
SIGNAL \Arch|DI|op_2~4_combout\ : std_logic;
SIGNAL \Arch|DI|R[2]~25_combout\ : std_logic;
SIGNAL \Arch|DI|R[2]~26_combout\ : std_logic;
SIGNAL \Arch|DI|R[2]~27_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~5\ : std_logic;
SIGNAL \Arch|DI|op_2~6_combout\ : std_logic;
SIGNAL \Arch|DI|R[3]~21_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~3\ : std_logic;
SIGNAL \Arch|DI|op_1~4_combout\ : std_logic;
SIGNAL \Arch|DI|R[3]~20_combout\ : std_logic;
SIGNAL \Arch|DI|R[3]~22_combout\ : std_logic;
SIGNAL \Arch|DI|R[3]~23_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~5\ : std_logic;
SIGNAL \Arch|DI|op_1~6_combout\ : std_logic;
SIGNAL \Arch|DI|R[4]~16_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~8_combout\ : std_logic;
SIGNAL \Arch|DI|R[4]~17_combout\ : std_logic;
SIGNAL \Arch|DI|R[4]~18_combout\ : std_logic;
SIGNAL \Arch|DI|R[4]~19_combout\ : std_logic;
SIGNAL \Arch|DI|op_1~7\ : std_logic;
SIGNAL \Arch|DI|op_1~8_combout\ : std_logic;
SIGNAL \Arch|DI|R[5]~12_combout\ : std_logic;
SIGNAL \Arch|DI|op_2~10_combout\ : std_logic;
SIGNAL \Arch|DI|R[5]~13_combout\ : std_logic;
SIGNAL \Arch|DI|R[5]~14_combout\ : std_logic;
SIGNAL \Arch|DI|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~23_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~22_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~24_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~26_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~27_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[5]~10_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[5]~feeder_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~25_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~28_combout\ : std_logic;
SIGNAL \Arch|BUS[5]~29_combout\ : std_logic;
SIGNAL \Arch|PC|R[5]~15_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~9\ : std_logic;
SIGNAL \Arch|PC|op_1~10_combout\ : std_logic;
SIGNAL \Arch|PC|R[6]~7_combout\ : std_logic;
SIGNAL \Arch|PC|R[6]~9_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~11\ : std_logic;
SIGNAL \Arch|PC|op_2~12_combout\ : std_logic;
SIGNAL \Arch|PC|R[6]~10_combout\ : std_logic;
SIGNAL \Arch|PC|R[6]~11_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~11\ : std_logic;
SIGNAL \Arch|PC|op_1~12_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~1_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~13\ : std_logic;
SIGNAL \Arch|PC|op_2~14_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~3_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~4_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~5_combout\ : std_logic;
SIGNAL \Arch|PC|R[7]~6_combout\ : std_logic;
SIGNAL \Arch|PC|_~3_combout\ : std_logic;
SIGNAL \Arch|PC|R[0]~34_combout\ : std_logic;
SIGNAL \Arch|PC|R[0]~32_combout\ : std_logic;
SIGNAL \Arch|PC|R[0]~33_combout\ : std_logic;
SIGNAL \Arch|PC|R[0]~35_combout\ : std_logic;
SIGNAL \Arch|PC|op_1~0_combout\ : std_logic;
SIGNAL \Arch|PC|op_2~2_combout\ : std_logic;
SIGNAL \Arch|PC|R[1]~29_combout\ : std_logic;
SIGNAL \Arch|PC|R[1]~30_combout\ : std_logic;
SIGNAL \Arch|PC|R[1]~28_combout\ : std_logic;
SIGNAL \Arch|PC|R[1]~31_combout\ : std_logic;
SIGNAL \Arch|MAR|R[1]~6_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~57_combout\ : std_logic;
SIGNAL \Fx[1]~input_o\ : std_logic;
SIGNAL \Arch|BUS[1]~59_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~58_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~60_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[1]~2_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~61_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~62_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~63_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~64_combout\ : std_logic;
SIGNAL \Arch|BUS[1]~65_combout\ : std_logic;
SIGNAL \Arch|SelMUX[1]~2_combout\ : std_logic;
SIGNAL \Arch|_~52_combout\ : std_logic;
SIGNAL \DST_UC[2]~input_o\ : std_logic;
SIGNAL \Arch|SelMUX[2]~1_combout\ : std_logic;
SIGNAL \Arch|_~38_combout\ : std_logic;
SIGNAL \Arch|_~40_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[4]~8_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[4]~feeder_combout\ : std_logic;
SIGNAL \Fx[4]~input_o\ : std_logic;
SIGNAL \Arch|BUS[4]~34_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~36_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~37_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~35_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~32_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~30_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~31_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~33_combout\ : std_logic;
SIGNAL \Arch|BUS[4]~38_combout\ : std_logic;
SIGNAL \Arch|_~54_combout\ : std_logic;
SIGNAL \Arch|_~31_combout\ : std_logic;
SIGNAL \Arch|_~55_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~9_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~8_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~10_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~39_combout\ : std_logic;
SIGNAL \Fx[3]~input_o\ : std_logic;
SIGNAL \Arch|BUS[3]~40_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~41_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~42_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~44_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~45_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[3]~6_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[3]~feeder_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~43_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~46_combout\ : std_logic;
SIGNAL \Arch|BUS[3]~47_combout\ : std_logic;
SIGNAL \Arch|SelMUX[3]~4_combout\ : std_logic;
SIGNAL \Arch|_~39_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[2]~4_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[2]~feeder_combout\ : std_logic;
SIGNAL \Fx[2]~input_o\ : std_logic;
SIGNAL \Arch|BUS[2]~52_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~53_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~54_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~55_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~50_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~48_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~49_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~51_combout\ : std_logic;
SIGNAL \Arch|BUS[2]~56_combout\ : std_logic;
SIGNAL \Arch|SelBus[2]~0_combout\ : std_logic;
SIGNAL \Arch|_~32_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~71_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~72_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~73_combout\ : std_logic;
SIGNAL \Fx[0]~input_o\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[0]~0_combout\ : std_logic;
SIGNAL \Arch|alu_r|R[0]~feeder_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~70_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~68_combout\ : std_logic;
SIGNAL \Arch|IR|R[0]~feeder_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~66_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~67_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~69_combout\ : std_logic;
SIGNAL \Arch|BUS[0]~74_combout\ : std_logic;
SIGNAL \SRC_UC[0]~input_o\ : std_logic;
SIGNAL \Arch|SelBus[0]~3_combout\ : std_logic;
SIGNAL \Arch|_~25_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~0_combout\ : std_logic;
SIGNAL \Fx[7]~input_o\ : std_logic;
SIGNAL \Arch|BUS[7]~1_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~2_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~3_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~5_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~6_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~4_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~7_combout\ : std_logic;
SIGNAL \Arch|BUS[7]~11_combout\ : std_logic;
SIGNAL \Arch|alu_x|R[7]~feeder_combout\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[6]~13\ : std_logic;
SIGNAL \Arch|ALU_prueba|R[7]~14_combout\ : std_logic;
SIGNAL \Arch|SRC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|SI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|alu_x|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|alu_y|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|IR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|Ax|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|MAR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|DI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|Bx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|Cx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|alu_r|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|PC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|BP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|MDR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|SP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Arch|DST|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ALU_t <= ww_ALU_t;
ww_Reloj <= Reloj;
ww_Reset <= Reset;
ww_SelDST <= SelDST;
ww_SelSRC <= SelSRC;
ww_SelMAR <= SelMAR;
ww_SelMDR <= SelMDR;
ww_Enable_t <= Enable_t;
ww_Cmd <= Cmd;
ww_Write_En <= Write_En;
ww_DST_UC <= DST_UC;
ww_Fx <= Fx;
ww_SRC_UC <= SRC_UC;
Ax_t <= ww_Ax_t;
Bus_t <= ww_Bus_t;
Bx_t <= ww_Bx_t;
Cx_t <= ww_Cx_t;
IR <= ww_IR;
MAR <= ww_MAR;
MDR <= ww_MDR;
PC <= ww_PC;
r_t <= ww_r_t;
x_t <= ww_x_t;
y_t <= ww_y_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \Arch|MDR|R\(7) & \Arch|MDR|R\(6) & \Arch|MDR|R\(5) & \Arch|MDR|R\(4) & \Arch|MDR|R\(3) & \Arch|MDR|R\(2) & 
\Arch|MDR|R\(1) & \Arch|MDR|R\(0));

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Arch|MAR|R\(7) & \Arch|MAR|R\(6) & \Arch|MAR|R\(5) & \Arch|MAR|R\(4) & \Arch|MAR|R\(3) & \Arch|MAR|R\(2) & \Arch|MAR|R\(1) & \Arch|MAR|R\(0));

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_a\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|altsyncram_component|auto_generated|q_a\(4) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|altsyncram_component|auto_generated|q_a\(5) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|altsyncram_component|auto_generated|q_a\(6) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|altsyncram_component|auto_generated|q_a\(7) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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

-- Location: IOOBUF_X69_Y54_N16
\ALU_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[7]~14_combout\,
	devoe => ww_devoe,
	o => \ALU_t[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\ALU_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[6]~12_combout\,
	devoe => ww_devoe,
	o => \ALU_t[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\ALU_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[5]~10_combout\,
	devoe => ww_devoe,
	o => \ALU_t[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\ALU_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[4]~8_combout\,
	devoe => ww_devoe,
	o => \ALU_t[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\ALU_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[3]~6_combout\,
	devoe => ww_devoe,
	o => \ALU_t[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\ALU_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[2]~4_combout\,
	devoe => ww_devoe,
	o => \ALU_t[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\ALU_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[1]~2_combout\,
	devoe => ww_devoe,
	o => \ALU_t[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\ALU_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|ALU_prueba|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_t[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\Ax_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(7),
	devoe => ww_devoe,
	o => \Ax_t[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\Ax_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(6),
	devoe => ww_devoe,
	o => \Ax_t[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Ax_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(5),
	devoe => ww_devoe,
	o => \Ax_t[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\Ax_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(4),
	devoe => ww_devoe,
	o => \Ax_t[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\Ax_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(3),
	devoe => ww_devoe,
	o => \Ax_t[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\Ax_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(2),
	devoe => ww_devoe,
	o => \Ax_t[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Ax_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(1),
	devoe => ww_devoe,
	o => \Ax_t[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\Ax_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Ax|R\(0),
	devoe => ww_devoe,
	o => \Ax_t[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Bus_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[7]~11_combout\,
	devoe => ww_devoe,
	o => \Bus_t[7]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\Bus_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[6]~20_combout\,
	devoe => ww_devoe,
	o => \Bus_t[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\Bus_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[5]~29_combout\,
	devoe => ww_devoe,
	o => \Bus_t[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\Bus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[4]~38_combout\,
	devoe => ww_devoe,
	o => \Bus_t[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Bus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[3]~47_combout\,
	devoe => ww_devoe,
	o => \Bus_t[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Bus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[2]~56_combout\,
	devoe => ww_devoe,
	o => \Bus_t[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Bus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[1]~65_combout\,
	devoe => ww_devoe,
	o => \Bus_t[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Bus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|BUS[0]~74_combout\,
	devoe => ww_devoe,
	o => \Bus_t[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Bx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(7),
	devoe => ww_devoe,
	o => \Bx_t[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Bx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(6),
	devoe => ww_devoe,
	o => \Bx_t[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Bx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(5),
	devoe => ww_devoe,
	o => \Bx_t[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\Bx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(4),
	devoe => ww_devoe,
	o => \Bx_t[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\Bx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(3),
	devoe => ww_devoe,
	o => \Bx_t[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Bx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(2),
	devoe => ww_devoe,
	o => \Bx_t[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Bx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(1),
	devoe => ww_devoe,
	o => \Bx_t[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Bx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Bx|R\(0),
	devoe => ww_devoe,
	o => \Bx_t[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Cx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(7),
	devoe => ww_devoe,
	o => \Cx_t[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Cx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(6),
	devoe => ww_devoe,
	o => \Cx_t[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Cx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(5),
	devoe => ww_devoe,
	o => \Cx_t[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\Cx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(4),
	devoe => ww_devoe,
	o => \Cx_t[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\Cx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(3),
	devoe => ww_devoe,
	o => \Cx_t[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\Cx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(2),
	devoe => ww_devoe,
	o => \Cx_t[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Cx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(1),
	devoe => ww_devoe,
	o => \Cx_t[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Cx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|Cx|R\(0),
	devoe => ww_devoe,
	o => \Cx_t[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\IR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(7),
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\IR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(6),
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\IR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(5),
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\IR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(4),
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\IR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(3),
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(2),
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(1),
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|IR|R\(0),
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\MAR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(7),
	devoe => ww_devoe,
	o => \MAR[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\MAR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(6),
	devoe => ww_devoe,
	o => \MAR[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\MAR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(5),
	devoe => ww_devoe,
	o => \MAR[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\MAR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(4),
	devoe => ww_devoe,
	o => \MAR[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\MAR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(3),
	devoe => ww_devoe,
	o => \MAR[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\MAR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(2),
	devoe => ww_devoe,
	o => \MAR[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\MAR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(1),
	devoe => ww_devoe,
	o => \MAR[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\MAR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MAR|R\(0),
	devoe => ww_devoe,
	o => \MAR[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\MDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(7),
	devoe => ww_devoe,
	o => \MDR[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\MDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(6),
	devoe => ww_devoe,
	o => \MDR[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\MDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(5),
	devoe => ww_devoe,
	o => \MDR[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\MDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(4),
	devoe => ww_devoe,
	o => \MDR[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\MDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(3),
	devoe => ww_devoe,
	o => \MDR[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\MDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(2),
	devoe => ww_devoe,
	o => \MDR[2]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\MDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(1),
	devoe => ww_devoe,
	o => \MDR[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\MDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|MDR|R\(0),
	devoe => ww_devoe,
	o => \MDR[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|PC|R\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\r_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(7),
	devoe => ww_devoe,
	o => \r_t[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\r_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(6),
	devoe => ww_devoe,
	o => \r_t[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\r_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(5),
	devoe => ww_devoe,
	o => \r_t[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\r_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(4),
	devoe => ww_devoe,
	o => \r_t[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\r_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(3),
	devoe => ww_devoe,
	o => \r_t[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\r_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(2),
	devoe => ww_devoe,
	o => \r_t[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\r_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(1),
	devoe => ww_devoe,
	o => \r_t[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\r_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_r|R\(0),
	devoe => ww_devoe,
	o => \r_t[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\x_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(7),
	devoe => ww_devoe,
	o => \x_t[7]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\x_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(6),
	devoe => ww_devoe,
	o => \x_t[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\x_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(5),
	devoe => ww_devoe,
	o => \x_t[5]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\x_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(4),
	devoe => ww_devoe,
	o => \x_t[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\x_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(3),
	devoe => ww_devoe,
	o => \x_t[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\x_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(2),
	devoe => ww_devoe,
	o => \x_t[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\x_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(1),
	devoe => ww_devoe,
	o => \x_t[1]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\x_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_x|R\(0),
	devoe => ww_devoe,
	o => \x_t[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\y_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(7),
	devoe => ww_devoe,
	o => \y_t[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\y_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(6),
	devoe => ww_devoe,
	o => \y_t[6]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\y_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(5),
	devoe => ww_devoe,
	o => \y_t[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\y_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(4),
	devoe => ww_devoe,
	o => \y_t[4]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\y_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(3),
	devoe => ww_devoe,
	o => \y_t[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\y_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(2),
	devoe => ww_devoe,
	o => \y_t[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\y_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(1),
	devoe => ww_devoe,
	o => \y_t[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\y_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Arch|alu_y|R\(0),
	devoe => ww_devoe,
	o => \y_t[0]~output_o\);

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

-- Location: IOIBUF_X58_Y54_N22
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

-- Location: IOIBUF_X58_Y54_N15
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

-- Location: LCCOMB_X66_Y44_N28
\Arch|alu_y|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[2]~feeder_combout\ = \Arch|BUS[2]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[2]~56_combout\,
	combout => \Arch|alu_y|R[2]~feeder_combout\);

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

-- Location: IOIBUF_X78_Y45_N22
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

-- Location: IOIBUF_X78_Y36_N8
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

-- Location: IOIBUF_X54_Y54_N22
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

-- Location: LCCOMB_X66_Y44_N0
\Arch|alu_y|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[4]~feeder_combout\ = \Arch|BUS[4]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|alu_y|R[4]~feeder_combout\);

-- Location: FF_X66_Y44_N1
\Arch|alu_y|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(4));

-- Location: LCCOMB_X69_Y45_N22
\Arch|alu_x|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_x|R[4]~feeder_combout\ = \Arch|BUS[4]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|alu_x|R[4]~feeder_combout\);

-- Location: IOIBUF_X78_Y29_N1
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

-- Location: IOIBUF_X78_Y43_N15
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

-- Location: IOIBUF_X78_Y45_N8
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

-- Location: IOIBUF_X62_Y54_N29
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

-- Location: IOIBUF_X46_Y54_N1
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

-- Location: FF_X66_Y45_N21
\Arch|DST|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|BUS[0]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DST|R\(0));

-- Location: LCCOMB_X66_Y45_N18
\Arch|SelMUX[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelMUX[0]~0_combout\ = (\SelDST~input_o\ & (\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[0]~input_o\,
	datab => \SelDST~input_o\,
	datad => \Arch|DST|R\(0),
	combout => \Arch|SelMUX[0]~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: FF_X65_Y45_N29
\Arch|DST|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[4]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DST|R\(4));

-- Location: LCCOMB_X65_Y45_N14
\Arch|SelMUX[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelMUX[4]~3_combout\ = (\SelDST~input_o\ & (\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelDST~input_o\,
	datac => \DST_UC[4]~input_o\,
	datad => \Arch|DST|R\(4),
	combout => \Arch|SelMUX[4]~3_combout\);

-- Location: LCCOMB_X66_Y45_N24
\Arch|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~48_combout\ = (\Arch|SelMUX[3]~4_combout\ & (\Arch|SelMUX[0]~0_combout\ & !\Arch|SelMUX[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelMUX[3]~4_combout\,
	datac => \Arch|SelMUX[0]~0_combout\,
	datad => \Arch|SelMUX[4]~3_combout\,
	combout => \Arch|_~48_combout\);

-- Location: LCCOMB_X66_Y43_N20
\Arch|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~49_combout\ = (!\Arch|SelMUX[2]~1_combout\ & (\Arch|SelMUX[1]~2_combout\ & \Arch|_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datac => \Arch|SelMUX[1]~2_combout\,
	datad => \Arch|_~48_combout\,
	combout => \Arch|_~49_combout\);

-- Location: LCCOMB_X66_Y43_N16
\Arch|PC|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|_~2_combout\ = (!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & \Arch|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|_~2_combout\);

-- Location: LCCOMB_X66_Y43_N26
\Arch|PC|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|_~0_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & \Arch|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|_~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\Arch|PC|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~2_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[0]~input_o\))) # (!\Arch|_~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|R[7]~2_combout\);

-- Location: LCCOMB_X70_Y43_N0
\Arch|PC|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~1_cout\ = CARRY(\Arch|PC|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(0),
	datad => VCC,
	cout => \Arch|PC|op_2~1_cout\);

-- Location: LCCOMB_X70_Y43_N2
\Arch|PC|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~2_combout\ = (\Arch|PC|R\(1) & (\Arch|PC|op_2~1_cout\ & VCC)) # (!\Arch|PC|R\(1) & (!\Arch|PC|op_2~1_cout\))
-- \Arch|PC|op_2~3\ = CARRY((!\Arch|PC|R\(1) & !\Arch|PC|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(1),
	datad => VCC,
	cin => \Arch|PC|op_2~1_cout\,
	combout => \Arch|PC|op_2~2_combout\,
	cout => \Arch|PC|op_2~3\);

-- Location: LCCOMB_X70_Y43_N4
\Arch|PC|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~4_combout\ = (\Arch|PC|R\(2) & ((GND) # (!\Arch|PC|op_2~3\))) # (!\Arch|PC|R\(2) & (\Arch|PC|op_2~3\ $ (GND)))
-- \Arch|PC|op_2~5\ = CARRY((\Arch|PC|R\(2)) # (!\Arch|PC|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(2),
	datad => VCC,
	cin => \Arch|PC|op_2~3\,
	combout => \Arch|PC|op_2~4_combout\,
	cout => \Arch|PC|op_2~5\);

-- Location: LCCOMB_X69_Y43_N10
\Arch|PC|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[2]~25_combout\ = (\Arch|PC|op_2~4_combout\ & ((\Arch|PC|_~0_combout\) # ((\Arch|PC|R\(2) & \Arch|PC|R[7]~2_combout\)))) # (!\Arch|PC|op_2~4_combout\ & (\Arch|PC|R\(2) & (\Arch|PC|R[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|op_2~4_combout\,
	datab => \Arch|PC|R\(2),
	datac => \Arch|PC|R[7]~2_combout\,
	datad => \Arch|PC|_~0_combout\,
	combout => \Arch|PC|R[2]~25_combout\);

-- Location: LCCOMB_X66_Y43_N28
\Arch|PC|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|_~1_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|_~1_combout\);

-- Location: LCCOMB_X67_Y43_N8
\Arch|PC|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~0_combout\ = (\Arch|PC|R\(1) & (\Arch|PC|R\(0) $ (VCC))) # (!\Arch|PC|R\(1) & (\Arch|PC|R\(0) & VCC))
-- \Arch|PC|op_1~1\ = CARRY((\Arch|PC|R\(1) & \Arch|PC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(1),
	datab => \Arch|PC|R\(0),
	datad => VCC,
	combout => \Arch|PC|op_1~0_combout\,
	cout => \Arch|PC|op_1~1\);

-- Location: LCCOMB_X67_Y43_N10
\Arch|PC|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~2_combout\ = (\Arch|PC|R\(2) & (!\Arch|PC|op_1~1\)) # (!\Arch|PC|R\(2) & ((\Arch|PC|op_1~1\) # (GND)))
-- \Arch|PC|op_1~3\ = CARRY((!\Arch|PC|op_1~1\) # (!\Arch|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(2),
	datad => VCC,
	cin => \Arch|PC|op_1~1\,
	combout => \Arch|PC|op_1~2_combout\,
	cout => \Arch|PC|op_1~3\);

-- Location: LCCOMB_X69_Y43_N12
\Arch|PC|R[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[5]~8_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \Arch|_~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|R[5]~8_combout\);

-- Location: LCCOMB_X69_Y43_N14
\Arch|PC|R[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[6]~0_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|R[6]~0_combout\);

-- Location: LCCOMB_X69_Y43_N16
\Arch|PC|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[2]~24_combout\ = (\Arch|PC|R[5]~8_combout\ & ((\Arch|PC|R\(3)) # ((\Arch|PC|R[6]~0_combout\ & \Arch|PC|R\(1))))) # (!\Arch|PC|R[5]~8_combout\ & (\Arch|PC|R[6]~0_combout\ & (\Arch|PC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[5]~8_combout\,
	datab => \Arch|PC|R[6]~0_combout\,
	datac => \Arch|PC|R\(1),
	datad => \Arch|PC|R\(3),
	combout => \Arch|PC|R[2]~24_combout\);

-- Location: LCCOMB_X69_Y43_N24
\Arch|PC|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[2]~26_combout\ = (\Arch|PC|R[2]~25_combout\) # ((\Arch|PC|R[2]~24_combout\) # ((\Arch|PC|_~1_combout\ & \Arch|PC|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[2]~25_combout\,
	datab => \Arch|PC|_~1_combout\,
	datac => \Arch|PC|op_1~2_combout\,
	datad => \Arch|PC|R[2]~24_combout\,
	combout => \Arch|PC|R[2]~26_combout\);

-- Location: LCCOMB_X69_Y43_N0
\Arch|PC|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[2]~27_combout\ = (\Arch|PC|R[2]~26_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[2]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|_~2_combout\,
	datac => \Arch|BUS[2]~56_combout\,
	datad => \Arch|PC|R[2]~26_combout\,
	combout => \Arch|PC|R[2]~27_combout\);

-- Location: FF_X69_Y43_N1
\Arch|PC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(2));

-- Location: LCCOMB_X67_Y43_N12
\Arch|PC|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~4_combout\ = (\Arch|PC|R\(3) & (\Arch|PC|op_1~3\ $ (GND))) # (!\Arch|PC|R\(3) & (!\Arch|PC|op_1~3\ & VCC))
-- \Arch|PC|op_1~5\ = CARRY((\Arch|PC|R\(3) & !\Arch|PC|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(3),
	datad => VCC,
	cin => \Arch|PC|op_1~3\,
	combout => \Arch|PC|op_1~4_combout\,
	cout => \Arch|PC|op_1~5\);

-- Location: LCCOMB_X70_Y43_N6
\Arch|PC|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~6_combout\ = (\Arch|PC|R\(3) & (\Arch|PC|op_2~5\ & VCC)) # (!\Arch|PC|R\(3) & (!\Arch|PC|op_2~5\))
-- \Arch|PC|op_2~7\ = CARRY((!\Arch|PC|R\(3) & !\Arch|PC|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(3),
	datad => VCC,
	cin => \Arch|PC|op_2~5\,
	combout => \Arch|PC|op_2~6_combout\,
	cout => \Arch|PC|op_2~7\);

-- Location: LCCOMB_X69_Y43_N8
\Arch|PC|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[3]~21_combout\ = (\Arch|PC|op_2~6_combout\ & ((\Arch|PC|_~0_combout\) # ((\Arch|PC|R\(3) & \Arch|PC|R[7]~2_combout\)))) # (!\Arch|PC|op_2~6_combout\ & (((\Arch|PC|R\(3) & \Arch|PC|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|op_2~6_combout\,
	datab => \Arch|PC|_~0_combout\,
	datac => \Arch|PC|R\(3),
	datad => \Arch|PC|R[7]~2_combout\,
	combout => \Arch|PC|R[3]~21_combout\);

-- Location: LCCOMB_X69_Y43_N2
\Arch|PC|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[3]~20_combout\ = (\Arch|PC|R[5]~8_combout\ & ((\Arch|PC|R\(4)) # ((\Arch|PC|R\(2) & \Arch|PC|R[6]~0_combout\)))) # (!\Arch|PC|R[5]~8_combout\ & (\Arch|PC|R\(2) & ((\Arch|PC|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[5]~8_combout\,
	datab => \Arch|PC|R\(2),
	datac => \Arch|PC|R\(4),
	datad => \Arch|PC|R[6]~0_combout\,
	combout => \Arch|PC|R[3]~20_combout\);

-- Location: LCCOMB_X69_Y43_N30
\Arch|PC|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[3]~22_combout\ = (\Arch|PC|R[3]~21_combout\) # ((\Arch|PC|R[3]~20_combout\) # ((\Arch|PC|op_1~4_combout\ & \Arch|PC|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|op_1~4_combout\,
	datab => \Arch|PC|_~1_combout\,
	datac => \Arch|PC|R[3]~21_combout\,
	datad => \Arch|PC|R[3]~20_combout\,
	combout => \Arch|PC|R[3]~22_combout\);

-- Location: LCCOMB_X69_Y43_N26
\Arch|PC|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[3]~23_combout\ = (\Arch|PC|R[3]~22_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|_~2_combout\,
	datac => \Arch|PC|R[3]~22_combout\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|PC|R[3]~23_combout\);

-- Location: FF_X69_Y43_N27
\Arch|PC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(3));

-- Location: LCCOMB_X67_Y43_N14
\Arch|PC|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~6_combout\ = (\Arch|PC|R\(4) & (!\Arch|PC|op_1~5\)) # (!\Arch|PC|R\(4) & ((\Arch|PC|op_1~5\) # (GND)))
-- \Arch|PC|op_1~7\ = CARRY((!\Arch|PC|op_1~5\) # (!\Arch|PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(4),
	datad => VCC,
	cin => \Arch|PC|op_1~5\,
	combout => \Arch|PC|op_1~6_combout\,
	cout => \Arch|PC|op_1~7\);

-- Location: LCCOMB_X70_Y43_N8
\Arch|PC|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~8_combout\ = (\Arch|PC|R\(4) & ((GND) # (!\Arch|PC|op_2~7\))) # (!\Arch|PC|R\(4) & (\Arch|PC|op_2~7\ $ (GND)))
-- \Arch|PC|op_2~9\ = CARRY((\Arch|PC|R\(4)) # (!\Arch|PC|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(4),
	datad => VCC,
	cin => \Arch|PC|op_2~7\,
	combout => \Arch|PC|op_2~8_combout\,
	cout => \Arch|PC|op_2~9\);

-- Location: LCCOMB_X69_Y43_N22
\Arch|PC|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[4]~17_combout\ = (\Arch|PC|R[7]~2_combout\ & ((\Arch|PC|R\(4)) # ((\Arch|PC|op_2~8_combout\ & \Arch|PC|_~0_combout\)))) # (!\Arch|PC|R[7]~2_combout\ & (((\Arch|PC|op_2~8_combout\ & \Arch|PC|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[7]~2_combout\,
	datab => \Arch|PC|R\(4),
	datac => \Arch|PC|op_2~8_combout\,
	datad => \Arch|PC|_~0_combout\,
	combout => \Arch|PC|R[4]~17_combout\);

-- Location: LCCOMB_X69_Y43_N20
\Arch|PC|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[4]~16_combout\ = (\Arch|PC|R\(5) & ((\Arch|PC|R[5]~8_combout\) # ((\Arch|PC|R\(3) & \Arch|PC|R[6]~0_combout\)))) # (!\Arch|PC|R\(5) & (\Arch|PC|R\(3) & (\Arch|PC|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(5),
	datab => \Arch|PC|R\(3),
	datac => \Arch|PC|R[6]~0_combout\,
	datad => \Arch|PC|R[5]~8_combout\,
	combout => \Arch|PC|R[4]~16_combout\);

-- Location: LCCOMB_X69_Y43_N28
\Arch|PC|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[4]~18_combout\ = (\Arch|PC|R[4]~17_combout\) # ((\Arch|PC|R[4]~16_combout\) # ((\Arch|PC|op_1~6_combout\ & \Arch|PC|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|op_1~6_combout\,
	datab => \Arch|PC|_~1_combout\,
	datac => \Arch|PC|R[4]~17_combout\,
	datad => \Arch|PC|R[4]~16_combout\,
	combout => \Arch|PC|R[4]~18_combout\);

-- Location: LCCOMB_X69_Y43_N4
\Arch|PC|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[4]~19_combout\ = (\Arch|PC|R[4]~18_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[4]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|_~2_combout\,
	datac => \Arch|BUS[4]~38_combout\,
	datad => \Arch|PC|R[4]~18_combout\,
	combout => \Arch|PC|R[4]~19_combout\);

-- Location: FF_X69_Y43_N5
\Arch|PC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(4));

-- Location: LCCOMB_X70_Y43_N10
\Arch|PC|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~10_combout\ = (\Arch|PC|R\(5) & (\Arch|PC|op_2~9\ & VCC)) # (!\Arch|PC|R\(5) & (!\Arch|PC|op_2~9\))
-- \Arch|PC|op_2~11\ = CARRY((!\Arch|PC|R\(5) & !\Arch|PC|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(5),
	datad => VCC,
	cin => \Arch|PC|op_2~9\,
	combout => \Arch|PC|op_2~10_combout\,
	cout => \Arch|PC|op_2~11\);

-- Location: LCCOMB_X70_Y43_N22
\Arch|PC|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[5]~13_combout\ = (\Arch|PC|R\(5) & ((\Arch|PC|R[7]~2_combout\) # ((\Arch|PC|_~0_combout\ & \Arch|PC|op_2~10_combout\)))) # (!\Arch|PC|R\(5) & (\Arch|PC|_~0_combout\ & ((\Arch|PC|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(5),
	datab => \Arch|PC|_~0_combout\,
	datac => \Arch|PC|R[7]~2_combout\,
	datad => \Arch|PC|op_2~10_combout\,
	combout => \Arch|PC|R[5]~13_combout\);

-- Location: LCCOMB_X67_Y43_N16
\Arch|PC|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~8_combout\ = (\Arch|PC|R\(5) & (\Arch|PC|op_1~7\ $ (GND))) # (!\Arch|PC|R\(5) & (!\Arch|PC|op_1~7\ & VCC))
-- \Arch|PC|op_1~9\ = CARRY((\Arch|PC|R\(5) & !\Arch|PC|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(5),
	datad => VCC,
	cin => \Arch|PC|op_1~7\,
	combout => \Arch|PC|op_1~8_combout\,
	cout => \Arch|PC|op_1~9\);

-- Location: LCCOMB_X69_Y43_N18
\Arch|PC|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[5]~12_combout\ = (\Arch|PC|R\(6) & ((\Arch|PC|R[5]~8_combout\) # ((\Arch|PC|R\(4) & \Arch|PC|R[6]~0_combout\)))) # (!\Arch|PC|R\(6) & (\Arch|PC|R\(4) & (\Arch|PC|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(6),
	datab => \Arch|PC|R\(4),
	datac => \Arch|PC|R[6]~0_combout\,
	datad => \Arch|PC|R[5]~8_combout\,
	combout => \Arch|PC|R[5]~12_combout\);

-- Location: LCCOMB_X70_Y43_N28
\Arch|PC|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[5]~14_combout\ = (\Arch|PC|R[5]~13_combout\) # ((\Arch|PC|R[5]~12_combout\) # ((\Arch|PC|_~1_combout\ & \Arch|PC|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[5]~13_combout\,
	datab => \Arch|PC|_~1_combout\,
	datac => \Arch|PC|op_1~8_combout\,
	datad => \Arch|PC|R[5]~12_combout\,
	combout => \Arch|PC|R[5]~14_combout\);

-- Location: IOIBUF_X56_Y54_N29
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

-- Location: LCCOMB_X66_Y44_N24
\Arch|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~42_combout\ = (!\Arch|SelMUX[0]~0_combout\ & (!\Arch|SelMUX[4]~3_combout\ & \Arch|SelMUX[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelMUX[0]~0_combout\,
	datac => \Arch|SelMUX[4]~3_combout\,
	datad => \Arch|SelMUX[3]~4_combout\,
	combout => \Arch|_~42_combout\);

-- Location: LCCOMB_X66_Y44_N30
\Arch|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~43_combout\ = (!\Arch|SelMUX[2]~1_combout\ & (\Arch|_~42_combout\ & \Arch|SelMUX[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datab => \Arch|_~42_combout\,
	datad => \Arch|SelMUX[1]~2_combout\,
	combout => \Arch|_~43_combout\);

-- Location: FF_X64_Y47_N17
\Arch|SRC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[1]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SRC|R\(1));

-- Location: LCCOMB_X64_Y47_N16
\Arch|SelBus[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelBus[1]~4_combout\ = (\SelSRC~input_o\ & (\SRC_UC[1]~input_o\)) # (!\SelSRC~input_o\ & ((\Arch|SRC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[1]~input_o\,
	datac => \Arch|SRC|R\(1),
	datad => \SelSRC~input_o\,
	combout => \Arch|SelBus[1]~4_combout\);

-- Location: IOIBUF_X36_Y39_N29
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

-- Location: FF_X65_Y47_N29
\Arch|SRC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[3]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SRC|R\(3));

-- Location: LCCOMB_X65_Y47_N6
\Arch|SelBus[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelBus[3]~1_combout\ = (\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\Arch|SRC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datac => \SRC_UC[3]~input_o\,
	datad => \Arch|SRC|R\(3),
	combout => \Arch|SelBus[3]~1_combout\);

-- Location: LCCOMB_X65_Y47_N2
\Arch|SelBus[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelBus[4]~2_combout\ = (\SelSRC~input_o\ & (\SRC_UC[4]~input_o\)) # (!\SelSRC~input_o\ & ((\Arch|SRC|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datab => \SRC_UC[4]~input_o\,
	datac => \Arch|SRC|R\(4),
	combout => \Arch|SelBus[4]~2_combout\);

-- Location: LCCOMB_X65_Y47_N0
\Arch|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~24_combout\ = (\Arch|SelBus[3]~1_combout\ & (!\Arch|SelBus[4]~2_combout\ & \Arch|SelBus[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[3]~1_combout\,
	datab => \Arch|SelBus[4]~2_combout\,
	datad => \Arch|SelBus[2]~0_combout\,
	combout => \Arch|_~24_combout\);

-- Location: LCCOMB_X65_Y47_N28
\Arch|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~26_combout\ = (!\Arch|SelBus[0]~3_combout\ & (\Arch|SelBus[1]~4_combout\ & \Arch|_~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|SelBus[1]~4_combout\,
	datad => \Arch|_~24_combout\,
	combout => \Arch|_~26_combout\);

-- Location: IOIBUF_X78_Y34_N1
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

-- Location: LCCOMB_X67_Y43_N0
\Arch|MAR|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[5]~2_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[5]~29_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(5),
	datac => \SelMAR~input_o\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|MAR|R[5]~2_combout\);

-- Location: LCCOMB_X67_Y43_N4
\Arch|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~45_combout\ = (\Arch|SelMUX[2]~1_combout\ & (\Arch|_~42_combout\ & !\Arch|SelMUX[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelMUX[2]~1_combout\,
	datac => \Arch|_~42_combout\,
	datad => \Arch|SelMUX[1]~2_combout\,
	combout => \Arch|_~45_combout\);

-- Location: FF_X67_Y43_N1
\Arch|MAR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[5]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(5));

-- Location: LCCOMB_X66_Y44_N22
\Arch|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~44_combout\ = (\Arch|SelMUX[3]~4_combout\ & (\Arch|_~38_combout\ & !\Arch|SelMUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[3]~4_combout\,
	datab => \Arch|_~38_combout\,
	datad => \Arch|SelMUX[0]~0_combout\,
	combout => \Arch|_~44_combout\);

-- Location: FF_X65_Y43_N9
\Arch|IR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[5]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(5));

-- Location: LCCOMB_X65_Y43_N8
\Arch|BUS[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~21_combout\ = (\Arch|_~26_combout\ & ((\Arch|IR|R\(5)) # ((\Arch|MAR|R\(5) & \Arch|_~25_combout\)))) # (!\Arch|_~26_combout\ & (\Arch|MAR|R\(5) & ((\Arch|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~26_combout\,
	datab => \Arch|MAR|R\(5),
	datac => \Arch|IR|R\(5),
	datad => \Arch|_~25_combout\,
	combout => \Arch|BUS[5]~21_combout\);

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: LCCOMB_X66_Y45_N22
\Arch|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~47_combout\ = (!\Arch|SelMUX[2]~1_combout\ & (!\Arch|SelMUX[3]~4_combout\ & (!\Arch|SelMUX[0]~0_combout\ & \Arch|SelMUX[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datab => \Arch|SelMUX[3]~4_combout\,
	datac => \Arch|SelMUX[0]~0_combout\,
	datad => \Arch|SelMUX[4]~3_combout\,
	combout => \Arch|_~47_combout\);

-- Location: LCCOMB_X66_Y45_N0
\Arch|_~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~58_combout\ = (\Arch|_~47_combout\ & ((\SelDST~input_o\ & (\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[1]~input_o\,
	datab => \SelDST~input_o\,
	datac => \Arch|DST|R\(1),
	datad => \Arch|_~47_combout\,
	combout => \Arch|_~58_combout\);

-- Location: LCCOMB_X63_Y45_N2
\Arch|DI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|_~0_combout\ = (\Cmd[0]~input_o\ & (\Arch|_~58_combout\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|_~58_combout\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|_~0_combout\);

-- Location: LCCOMB_X63_Y45_N28
\Arch|DI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|_~1_combout\ = (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Arch|_~58_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Arch|_~58_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|_~1_combout\);

-- Location: LCCOMB_X65_Y45_N20
\Arch|DI|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Arch|_~58_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~58_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Arch|DI|R[5]~7_combout\);

-- Location: LCCOMB_X63_Y45_N0
\Arch|DI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[0]~32_combout\ = (!\Cmd[2]~input_o\ & (\Arch|_~58_combout\ & \Cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Arch|_~58_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|R[0]~32_combout\);

-- Location: LCCOMB_X63_Y45_N10
\Arch|DI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[0]~33_combout\ = (\Arch|DI|R\(1) & ((\Arch|DI|R[5]~7_combout\) # ((!\Arch|DI|R\(0) & \Arch|DI|R[0]~32_combout\)))) # (!\Arch|DI|R\(1) & (!\Arch|DI|R\(0) & ((\Arch|DI|R[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(1),
	datab => \Arch|DI|R\(0),
	datac => \Arch|DI|R[5]~7_combout\,
	datad => \Arch|DI|R[0]~32_combout\,
	combout => \Arch|DI|R[0]~33_combout\);

-- Location: LCCOMB_X61_Y45_N22
\Arch|DI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~8_combout\ = (\Arch|DI|R\(5) & (\Arch|DI|op_1~7\ $ (GND))) # (!\Arch|DI|R\(5) & (!\Arch|DI|op_1~7\ & VCC))
-- \Arch|DI|op_1~9\ = CARRY((\Arch|DI|R\(5) & !\Arch|DI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(5),
	datad => VCC,
	cin => \Arch|DI|op_1~7\,
	combout => \Arch|DI|op_1~8_combout\,
	cout => \Arch|DI|op_1~9\);

-- Location: LCCOMB_X61_Y45_N24
\Arch|DI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~10_combout\ = (\Arch|DI|R\(6) & (!\Arch|DI|op_1~9\)) # (!\Arch|DI|R\(6) & ((\Arch|DI|op_1~9\) # (GND)))
-- \Arch|DI|op_1~11\ = CARRY((!\Arch|DI|op_1~9\) # (!\Arch|DI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(6),
	datad => VCC,
	cin => \Arch|DI|op_1~9\,
	combout => \Arch|DI|op_1~10_combout\,
	cout => \Arch|DI|op_1~11\);

-- Location: LCCOMB_X65_Y45_N28
\Arch|DI|R[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[6]~0_combout\ = (!\Cmd[0]~input_o\ & (\Arch|_~58_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|_~58_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Arch|DI|R[6]~0_combout\);

-- Location: LCCOMB_X62_Y45_N26
\Arch|DI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[6]~9_combout\ = (\Arch|DI|R\(5) & ((\Arch|DI|R[6]~0_combout\) # ((\Arch|DI|op_1~10_combout\ & \Arch|DI|_~1_combout\)))) # (!\Arch|DI|R\(5) & (\Arch|DI|op_1~10_combout\ & ((\Arch|DI|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(5),
	datab => \Arch|DI|op_1~10_combout\,
	datac => \Arch|DI|R[6]~0_combout\,
	datad => \Arch|DI|_~1_combout\,
	combout => \Arch|DI|R[6]~9_combout\);

-- Location: LCCOMB_X62_Y45_N12
\Arch|DI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~6_combout\ = (\Arch|DI|R\(3) & (\Arch|DI|op_2~5\ & VCC)) # (!\Arch|DI|R\(3) & (!\Arch|DI|op_2~5\))
-- \Arch|DI|op_2~7\ = CARRY((!\Arch|DI|R\(3) & !\Arch|DI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(3),
	datad => VCC,
	cin => \Arch|DI|op_2~5\,
	combout => \Arch|DI|op_2~6_combout\,
	cout => \Arch|DI|op_2~7\);

-- Location: LCCOMB_X62_Y45_N14
\Arch|DI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~8_combout\ = (\Arch|DI|R\(4) & ((GND) # (!\Arch|DI|op_2~7\))) # (!\Arch|DI|R\(4) & (\Arch|DI|op_2~7\ $ (GND)))
-- \Arch|DI|op_2~9\ = CARRY((\Arch|DI|R\(4)) # (!\Arch|DI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(4),
	datad => VCC,
	cin => \Arch|DI|op_2~7\,
	combout => \Arch|DI|op_2~8_combout\,
	cout => \Arch|DI|op_2~9\);

-- Location: LCCOMB_X62_Y45_N16
\Arch|DI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~10_combout\ = (\Arch|DI|R\(5) & (\Arch|DI|op_2~9\ & VCC)) # (!\Arch|DI|R\(5) & (!\Arch|DI|op_2~9\))
-- \Arch|DI|op_2~11\ = CARRY((!\Arch|DI|R\(5) & !\Arch|DI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(5),
	datad => VCC,
	cin => \Arch|DI|op_2~9\,
	combout => \Arch|DI|op_2~10_combout\,
	cout => \Arch|DI|op_2~11\);

-- Location: LCCOMB_X62_Y45_N18
\Arch|DI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~12_combout\ = (\Arch|DI|R\(6) & ((GND) # (!\Arch|DI|op_2~11\))) # (!\Arch|DI|R\(6) & (\Arch|DI|op_2~11\ $ (GND)))
-- \Arch|DI|op_2~13\ = CARRY((\Arch|DI|R\(6)) # (!\Arch|DI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(6),
	datad => VCC,
	cin => \Arch|DI|op_2~11\,
	combout => \Arch|DI|op_2~12_combout\,
	cout => \Arch|DI|op_2~13\);

-- Location: LCCOMB_X65_Y45_N8
\Arch|DI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Arch|_~58_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~58_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|_~2_combout\);

-- Location: LCCOMB_X65_Y45_N26
\Arch|DI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~2_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\Arch|_~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~58_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|R[7]~2_combout\);

-- Location: LCCOMB_X62_Y45_N28
\Arch|DI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[6]~8_combout\ = (\Arch|DI|R[5]~7_combout\ & ((\Arch|DI|R\(7)) # ((\Arch|DI|R\(6) & \Arch|DI|R[7]~2_combout\)))) # (!\Arch|DI|R[5]~7_combout\ & (\Arch|DI|R\(6) & ((\Arch|DI|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[5]~7_combout\,
	datab => \Arch|DI|R\(6),
	datac => \Arch|DI|R\(7),
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[6]~8_combout\);

-- Location: LCCOMB_X62_Y45_N4
\Arch|DI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[6]~10_combout\ = (\Arch|DI|R[6]~9_combout\) # ((\Arch|DI|R[6]~8_combout\) # ((\Arch|DI|op_2~12_combout\ & \Arch|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[6]~9_combout\,
	datab => \Arch|DI|op_2~12_combout\,
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|R[6]~8_combout\,
	combout => \Arch|DI|R[6]~10_combout\);

-- Location: IOIBUF_X34_Y39_N8
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

-- Location: LCCOMB_X64_Y47_N10
\Arch|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~33_combout\ = (\Arch|SelBus[3]~1_combout\ & (!\Arch|SelBus[2]~0_combout\ & (!\Arch|SelBus[0]~3_combout\ & \Arch|_~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[3]~1_combout\,
	datab => \Arch|SelBus[2]~0_combout\,
	datac => \Arch|SelBus[0]~3_combout\,
	datad => \Arch|_~54_combout\,
	combout => \Arch|_~33_combout\);

-- Location: FF_X67_Y44_N9
\Arch|alu_x|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[6]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(6));

-- Location: LCCOMB_X66_Y44_N10
\Arch|alu_y|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[6]~feeder_combout\ = \Arch|BUS[6]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|alu_y|R[6]~feeder_combout\);

-- Location: FF_X66_Y44_N11
\Arch|alu_y|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(6));

-- Location: LCCOMB_X66_Y44_N20
\Arch|alu_y|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[5]~feeder_combout\ = \Arch|BUS[5]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arch|BUS[5]~29_combout\,
	combout => \Arch|alu_y|R[5]~feeder_combout\);

-- Location: FF_X66_Y44_N21
\Arch|alu_y|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(5));

-- Location: FF_X66_Y44_N23
\Arch|alu_x|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[5]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(5));

-- Location: LCCOMB_X66_Y44_N18
\Arch|alu_y|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[3]~feeder_combout\ = \Arch|BUS[3]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|alu_y|R[3]~feeder_combout\);

-- Location: FF_X66_Y44_N19
\Arch|alu_y|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(3));

-- Location: FF_X67_Y44_N27
\Arch|alu_x|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[3]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(3));

-- Location: FF_X66_Y44_N15
\Arch|alu_x|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[2]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(2));

-- Location: FF_X66_Y44_N31
\Arch|alu_x|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[1]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(1));

-- Location: LCCOMB_X66_Y44_N12
\Arch|alu_y|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_y|R[1]~feeder_combout\ = \Arch|BUS[1]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arch|BUS[1]~65_combout\,
	combout => \Arch|alu_y|R[1]~feeder_combout\);

-- Location: FF_X66_Y44_N13
\Arch|alu_y|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(1));

-- Location: FF_X66_Y44_N17
\Arch|alu_y|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[0]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(0));

-- Location: FF_X66_Y44_N7
\Arch|alu_x|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[0]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(0));

-- Location: LCCOMB_X69_Y47_N8
\Arch|ALU_prueba|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[0]~0_combout\ = (\Arch|alu_y|R\(0) & (\Arch|alu_x|R\(0) $ (VCC))) # (!\Arch|alu_y|R\(0) & (\Arch|alu_x|R\(0) & VCC))
-- \Arch|ALU_prueba|R[0]~1\ = CARRY((\Arch|alu_y|R\(0) & \Arch|alu_x|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_y|R\(0),
	datab => \Arch|alu_x|R\(0),
	datad => VCC,
	combout => \Arch|ALU_prueba|R[0]~0_combout\,
	cout => \Arch|ALU_prueba|R[0]~1\);

-- Location: LCCOMB_X69_Y47_N10
\Arch|ALU_prueba|R[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[1]~2_combout\ = (\Arch|alu_x|R\(1) & ((\Arch|alu_y|R\(1) & (\Arch|ALU_prueba|R[0]~1\ & VCC)) # (!\Arch|alu_y|R\(1) & (!\Arch|ALU_prueba|R[0]~1\)))) # (!\Arch|alu_x|R\(1) & ((\Arch|alu_y|R\(1) & (!\Arch|ALU_prueba|R[0]~1\)) # 
-- (!\Arch|alu_y|R\(1) & ((\Arch|ALU_prueba|R[0]~1\) # (GND)))))
-- \Arch|ALU_prueba|R[1]~3\ = CARRY((\Arch|alu_x|R\(1) & (!\Arch|alu_y|R\(1) & !\Arch|ALU_prueba|R[0]~1\)) # (!\Arch|alu_x|R\(1) & ((!\Arch|ALU_prueba|R[0]~1\) # (!\Arch|alu_y|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_x|R\(1),
	datab => \Arch|alu_y|R\(1),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[0]~1\,
	combout => \Arch|ALU_prueba|R[1]~2_combout\,
	cout => \Arch|ALU_prueba|R[1]~3\);

-- Location: LCCOMB_X69_Y47_N12
\Arch|ALU_prueba|R[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[2]~4_combout\ = ((\Arch|alu_y|R\(2) $ (\Arch|alu_x|R\(2) $ (!\Arch|ALU_prueba|R[1]~3\)))) # (GND)
-- \Arch|ALU_prueba|R[2]~5\ = CARRY((\Arch|alu_y|R\(2) & ((\Arch|alu_x|R\(2)) # (!\Arch|ALU_prueba|R[1]~3\))) # (!\Arch|alu_y|R\(2) & (\Arch|alu_x|R\(2) & !\Arch|ALU_prueba|R[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_y|R\(2),
	datab => \Arch|alu_x|R\(2),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[1]~3\,
	combout => \Arch|ALU_prueba|R[2]~4_combout\,
	cout => \Arch|ALU_prueba|R[2]~5\);

-- Location: LCCOMB_X69_Y47_N14
\Arch|ALU_prueba|R[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[3]~6_combout\ = (\Arch|alu_y|R\(3) & ((\Arch|alu_x|R\(3) & (\Arch|ALU_prueba|R[2]~5\ & VCC)) # (!\Arch|alu_x|R\(3) & (!\Arch|ALU_prueba|R[2]~5\)))) # (!\Arch|alu_y|R\(3) & ((\Arch|alu_x|R\(3) & (!\Arch|ALU_prueba|R[2]~5\)) # 
-- (!\Arch|alu_x|R\(3) & ((\Arch|ALU_prueba|R[2]~5\) # (GND)))))
-- \Arch|ALU_prueba|R[3]~7\ = CARRY((\Arch|alu_y|R\(3) & (!\Arch|alu_x|R\(3) & !\Arch|ALU_prueba|R[2]~5\)) # (!\Arch|alu_y|R\(3) & ((!\Arch|ALU_prueba|R[2]~5\) # (!\Arch|alu_x|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_y|R\(3),
	datab => \Arch|alu_x|R\(3),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[2]~5\,
	combout => \Arch|ALU_prueba|R[3]~6_combout\,
	cout => \Arch|ALU_prueba|R[3]~7\);

-- Location: LCCOMB_X69_Y47_N16
\Arch|ALU_prueba|R[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[4]~8_combout\ = ((\Arch|alu_y|R\(4) $ (\Arch|alu_x|R\(4) $ (!\Arch|ALU_prueba|R[3]~7\)))) # (GND)
-- \Arch|ALU_prueba|R[4]~9\ = CARRY((\Arch|alu_y|R\(4) & ((\Arch|alu_x|R\(4)) # (!\Arch|ALU_prueba|R[3]~7\))) # (!\Arch|alu_y|R\(4) & (\Arch|alu_x|R\(4) & !\Arch|ALU_prueba|R[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_y|R\(4),
	datab => \Arch|alu_x|R\(4),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[3]~7\,
	combout => \Arch|ALU_prueba|R[4]~8_combout\,
	cout => \Arch|ALU_prueba|R[4]~9\);

-- Location: LCCOMB_X69_Y47_N18
\Arch|ALU_prueba|R[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[5]~10_combout\ = (\Arch|alu_y|R\(5) & ((\Arch|alu_x|R\(5) & (\Arch|ALU_prueba|R[4]~9\ & VCC)) # (!\Arch|alu_x|R\(5) & (!\Arch|ALU_prueba|R[4]~9\)))) # (!\Arch|alu_y|R\(5) & ((\Arch|alu_x|R\(5) & (!\Arch|ALU_prueba|R[4]~9\)) # 
-- (!\Arch|alu_x|R\(5) & ((\Arch|ALU_prueba|R[4]~9\) # (GND)))))
-- \Arch|ALU_prueba|R[5]~11\ = CARRY((\Arch|alu_y|R\(5) & (!\Arch|alu_x|R\(5) & !\Arch|ALU_prueba|R[4]~9\)) # (!\Arch|alu_y|R\(5) & ((!\Arch|ALU_prueba|R[4]~9\) # (!\Arch|alu_x|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_y|R\(5),
	datab => \Arch|alu_x|R\(5),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[4]~9\,
	combout => \Arch|ALU_prueba|R[5]~10_combout\,
	cout => \Arch|ALU_prueba|R[5]~11\);

-- Location: LCCOMB_X69_Y47_N20
\Arch|ALU_prueba|R[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[6]~12_combout\ = ((\Arch|alu_x|R\(6) $ (\Arch|alu_y|R\(6) $ (!\Arch|ALU_prueba|R[5]~11\)))) # (GND)
-- \Arch|ALU_prueba|R[6]~13\ = CARRY((\Arch|alu_x|R\(6) & ((\Arch|alu_y|R\(6)) # (!\Arch|ALU_prueba|R[5]~11\))) # (!\Arch|alu_x|R\(6) & (\Arch|alu_y|R\(6) & !\Arch|ALU_prueba|R[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_x|R\(6),
	datab => \Arch|alu_y|R\(6),
	datad => VCC,
	cin => \Arch|ALU_prueba|R[5]~11\,
	combout => \Arch|ALU_prueba|R[6]~12_combout\,
	cout => \Arch|ALU_prueba|R[6]~13\);

-- Location: LCCOMB_X69_Y47_N6
\Arch|alu_r|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[6]~feeder_combout\ = \Arch|ALU_prueba|R[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|ALU_prueba|R[6]~12_combout\,
	combout => \Arch|alu_r|R[6]~feeder_combout\);

-- Location: IOIBUF_X78_Y31_N8
\Enable_t~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable_t,
	o => \Enable_t~input_o\);

-- Location: FF_X69_Y47_N7
\Arch|alu_r|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(6));

-- Location: LCCOMB_X64_Y47_N30
\Arch|BUS[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~16_combout\ = (\Arch|_~31_combout\ & ((\Fx[6]~input_o\) # ((\Arch|_~33_combout\ & \Arch|alu_r|R\(6))))) # (!\Arch|_~31_combout\ & (((\Arch|_~33_combout\ & \Arch|alu_r|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~31_combout\,
	datab => \Fx[6]~input_o\,
	datac => \Arch|_~33_combout\,
	datad => \Arch|alu_r|R\(6),
	combout => \Arch|BUS[6]~16_combout\);

-- Location: LCCOMB_X66_Y47_N0
\Arch|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~34_combout\ = (\Arch|SelBus[0]~3_combout\ & (\Arch|_~24_combout\ & !\Arch|SelBus[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|_~24_combout\,
	datad => \Arch|SelBus[1]~4_combout\,
	combout => \Arch|_~34_combout\);

-- Location: IOIBUF_X66_Y54_N8
\SelMDR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelMDR,
	o => \SelMDR~input_o\);

-- Location: IOIBUF_X74_Y54_N15
\Write_En~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_En,
	o => \Write_En~input_o\);

-- Location: LCCOMB_X66_Y43_N24
\Arch|MAR|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[0]~7_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[0]~74_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \Arch|PC|R\(0),
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|MAR|R[0]~7_combout\);

-- Location: FF_X66_Y43_N25
\Arch|MAR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(0));

-- Location: LCCOMB_X67_Y43_N28
\Arch|MAR|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[2]~5_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[2]~56_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(2),
	datab => \SelMAR~input_o\,
	datac => \Arch|BUS[2]~56_combout\,
	combout => \Arch|MAR|R[2]~5_combout\);

-- Location: FF_X67_Y43_N29
\Arch|MAR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(2));

-- Location: LCCOMB_X67_Y43_N26
\Arch|MAR|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[3]~4_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[3]~47_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(3),
	datac => \SelMAR~input_o\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|MAR|R[3]~4_combout\);

-- Location: FF_X67_Y43_N27
\Arch|MAR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[3]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(3));

-- Location: LCCOMB_X66_Y43_N18
\Arch|MAR|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[4]~3_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[4]~38_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datab => \Arch|PC|R\(4),
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|MAR|R[4]~3_combout\);

-- Location: FF_X66_Y43_N19
\Arch|MAR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[4]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(4));

-- Location: LCCOMB_X65_Y43_N14
\Arch|MAR|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[6]~1_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[6]~20_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datab => \Arch|PC|R\(6),
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|MAR|R[6]~1_combout\);

-- Location: FF_X65_Y43_N15
\Arch|MAR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[6]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(6));

-- Location: LCCOMB_X65_Y43_N24
\Arch|MAR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[7]~0_combout\ = (\SelMAR~input_o\ & (\Arch|BUS[7]~11_combout\)) # (!\SelMAR~input_o\ & ((\Arch|PC|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \Arch|BUS[7]~11_combout\,
	datad => \Arch|PC|R\(7),
	combout => \Arch|MAR|R[7]~0_combout\);

-- Location: FF_X65_Y43_N25
\Arch|MAR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(7));

-- Location: M9K_X73_Y47_N0
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_8bit:RAM|altsyncram:altsyncram_component|altsyncram_1jo3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Write_En~input_o\,
	portare => VCC,
	clk0 => \Reloj~inputclkctrl_outclk\,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X67_Y47_N0
\Arch|MDR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[7]~0_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[7]~11_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(7),
	datac => \SelMDR~input_o\,
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|MDR|R[7]~0_combout\);

-- Location: LCCOMB_X66_Y44_N2
\Arch|_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~51_combout\ = (\Arch|SelMUX[2]~1_combout\ & (!\Arch|SelMUX[1]~2_combout\ & \Arch|_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datac => \Arch|SelMUX[1]~2_combout\,
	datad => \Arch|_~48_combout\,
	combout => \Arch|_~51_combout\);

-- Location: FF_X67_Y47_N1
\Arch|MDR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(7));

-- Location: LCCOMB_X67_Y47_N28
\Arch|MDR|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[5]~2_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[5]~29_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \RAM|altsyncram_component|auto_generated|q_a\(5),
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|MDR|R[5]~2_combout\);

-- Location: FF_X67_Y47_N29
\Arch|MDR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[5]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(5));

-- Location: LCCOMB_X67_Y47_N16
\Arch|MDR|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[4]~3_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[4]~38_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(4),
	datac => \SelMDR~input_o\,
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|MDR|R[4]~3_combout\);

-- Location: FF_X67_Y47_N17
\Arch|MDR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[4]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(4));

-- Location: LCCOMB_X67_Y47_N6
\Arch|MDR|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[3]~4_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[3]~47_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \RAM|altsyncram_component|auto_generated|q_a\(3),
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|MDR|R[3]~4_combout\);

-- Location: FF_X67_Y47_N7
\Arch|MDR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[3]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(3));

-- Location: LCCOMB_X67_Y47_N20
\Arch|MDR|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[2]~5_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[2]~56_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \SelMDR~input_o\,
	datad => \Arch|BUS[2]~56_combout\,
	combout => \Arch|MDR|R[2]~5_combout\);

-- Location: FF_X67_Y47_N21
\Arch|MDR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(2));

-- Location: LCCOMB_X67_Y47_N8
\Arch|MDR|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[1]~6_combout\ = (\SelMDR~input_o\ & (\Arch|BUS[1]~65_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \Arch|BUS[1]~65_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \Arch|MDR|R[1]~6_combout\);

-- Location: FF_X67_Y47_N9
\Arch|MDR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[1]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(1));

-- Location: LCCOMB_X67_Y47_N12
\Arch|MDR|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[0]~7_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[0]~74_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|MDR|R[0]~7_combout\);

-- Location: FF_X67_Y47_N13
\Arch|MDR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(0));

-- Location: LCCOMB_X67_Y47_N18
\Arch|MDR|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MDR|R[6]~1_combout\ = (\SelMDR~input_o\ & ((\Arch|BUS[6]~20_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \RAM|altsyncram_component|auto_generated|q_a\(6),
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|MDR|R[6]~1_combout\);

-- Location: FF_X67_Y47_N19
\Arch|MDR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MDR|R[6]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MDR|R\(6));

-- Location: LCCOMB_X67_Y47_N24
\Arch|BUS[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~17_combout\ = (\Arch|_~32_combout\ & ((\Arch|PC|R\(6)) # ((\Arch|_~34_combout\ & \Arch|MDR|R\(6))))) # (!\Arch|_~32_combout\ & (((\Arch|_~34_combout\ & \Arch|MDR|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~32_combout\,
	datab => \Arch|PC|R\(6),
	datac => \Arch|_~34_combout\,
	datad => \Arch|MDR|R\(6),
	combout => \Arch|BUS[6]~17_combout\);

-- Location: LCCOMB_X66_Y44_N16
\Arch|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~50_combout\ = (\Arch|SelMUX[3]~4_combout\ & (\Arch|_~38_combout\ & \Arch|SelMUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[3]~4_combout\,
	datab => \Arch|_~38_combout\,
	datad => \Arch|SelMUX[0]~0_combout\,
	combout => \Arch|_~50_combout\);

-- Location: FF_X66_Y46_N29
\Arch|BP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|BUS[6]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(6));

-- Location: LCCOMB_X64_Y45_N28
\Arch|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~46_combout\ = (!\Arch|SelMUX[2]~1_combout\ & (!\Arch|SelMUX[3]~4_combout\ & (!\Arch|SelMUX[1]~2_combout\ & \Arch|SelMUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datab => \Arch|SelMUX[3]~4_combout\,
	datac => \Arch|SelMUX[1]~2_combout\,
	datad => \Arch|SelMUX[0]~0_combout\,
	combout => \Arch|_~46_combout\);

-- Location: LCCOMB_X64_Y45_N2
\Arch|_~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~60_combout\ = (\Arch|_~46_combout\ & ((\SelDST~input_o\ & (\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \DST_UC[4]~input_o\,
	datac => \Arch|DST|R\(4),
	datad => \Arch|_~46_combout\,
	combout => \Arch|_~60_combout\);

-- Location: LCCOMB_X62_Y44_N28
\Arch|SI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|_~0_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Arch|_~60_combout\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~60_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|SI|_~0_combout\);

-- Location: LCCOMB_X64_Y45_N22
\Arch|SI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|_~2_combout\);

-- Location: LCCOMB_X64_Y45_N14
\Arch|SI|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|R[5]~7_combout\);

-- Location: LCCOMB_X63_Y44_N16
\Arch|SI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|_~1_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Arch|_~60_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Arch|_~60_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \Arch|SI|_~1_combout\);

-- Location: LCCOMB_X64_Y45_N24
\Arch|SI|R[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[6]~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|R[6]~0_combout\);

-- Location: LCCOMB_X64_Y45_N8
\Arch|SI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~2_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\Arch|_~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|R[7]~2_combout\);

-- Location: LCCOMB_X64_Y45_N16
\Arch|SI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[0]~32_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|R[0]~32_combout\);

-- Location: LCCOMB_X64_Y45_N6
\Arch|SI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[0]~33_combout\ = (\Arch|SI|R\(1) & ((\Arch|SI|R[5]~7_combout\) # ((!\Arch|SI|R\(0) & \Arch|SI|R[0]~32_combout\)))) # (!\Arch|SI|R\(1) & (((!\Arch|SI|R\(0) & \Arch|SI|R[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(1),
	datab => \Arch|SI|R[5]~7_combout\,
	datac => \Arch|SI|R\(0),
	datad => \Arch|SI|R[0]~32_combout\,
	combout => \Arch|SI|R[0]~33_combout\);

-- Location: LCCOMB_X63_Y45_N20
\Arch|SI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|_~3_combout\);

-- Location: LCCOMB_X63_Y45_N22
\Arch|SI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[0]~34_combout\ = (\Arch|SI|R\(7) & ((\Arch|SI|_~3_combout\) # ((\Arch|SI|R\(0) & \Arch|SI|R[7]~2_combout\)))) # (!\Arch|SI|R\(7) & (\Arch|SI|R\(0) & (\Arch|SI|R[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(7),
	datab => \Arch|SI|R\(0),
	datac => \Arch|SI|R[7]~2_combout\,
	datad => \Arch|SI|_~3_combout\,
	combout => \Arch|SI|R[0]~34_combout\);

-- Location: LCCOMB_X63_Y45_N4
\Arch|SI|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[0]~35_combout\ = (\Arch|SI|R[0]~33_combout\) # ((\Arch|SI|R[0]~34_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[0]~33_combout\,
	datab => \Arch|SI|_~0_combout\,
	datac => \Arch|SI|R[0]~34_combout\,
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|SI|R[0]~35_combout\);

-- Location: FF_X63_Y45_N5
\Arch|SI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(0));

-- Location: LCCOMB_X65_Y44_N12
\Arch|SI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~1_cout\ = CARRY(\Arch|SI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(0),
	datad => VCC,
	cout => \Arch|SI|op_2~1_cout\);

-- Location: LCCOMB_X65_Y44_N14
\Arch|SI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~2_combout\ = (\Arch|SI|R\(1) & (\Arch|SI|op_2~1_cout\ & VCC)) # (!\Arch|SI|R\(1) & (!\Arch|SI|op_2~1_cout\))
-- \Arch|SI|op_2~3\ = CARRY((!\Arch|SI|R\(1) & !\Arch|SI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(1),
	datad => VCC,
	cin => \Arch|SI|op_2~1_cout\,
	combout => \Arch|SI|op_2~2_combout\,
	cout => \Arch|SI|op_2~3\);

-- Location: LCCOMB_X63_Y44_N26
\Arch|SI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[1]~29_combout\ = (\Arch|SI|R\(1) & ((\Arch|SI|R[7]~2_combout\) # ((\Arch|SI|op_2~2_combout\ & \Arch|SI|_~2_combout\)))) # (!\Arch|SI|R\(1) & (((\Arch|SI|op_2~2_combout\ & \Arch|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(1),
	datab => \Arch|SI|R[7]~2_combout\,
	datac => \Arch|SI|op_2~2_combout\,
	datad => \Arch|SI|_~2_combout\,
	combout => \Arch|SI|R[1]~29_combout\);

-- Location: LCCOMB_X64_Y44_N6
\Arch|SI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~0_combout\ = (\Arch|SI|R\(1) & (\Arch|SI|R\(0) $ (VCC))) # (!\Arch|SI|R\(1) & (\Arch|SI|R\(0) & VCC))
-- \Arch|SI|op_1~1\ = CARRY((\Arch|SI|R\(1) & \Arch|SI|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(1),
	datab => \Arch|SI|R\(0),
	datad => VCC,
	combout => \Arch|SI|op_1~0_combout\,
	cout => \Arch|SI|op_1~1\);

-- Location: LCCOMB_X63_Y44_N8
\Arch|SI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[1]~28_combout\ = (\Arch|SI|R\(2) & ((\Arch|SI|R[5]~7_combout\) # ((\Arch|SI|R\(0) & \Arch|SI|R[6]~0_combout\)))) # (!\Arch|SI|R\(2) & (\Arch|SI|R\(0) & (\Arch|SI|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(2),
	datab => \Arch|SI|R\(0),
	datac => \Arch|SI|R[6]~0_combout\,
	datad => \Arch|SI|R[5]~7_combout\,
	combout => \Arch|SI|R[1]~28_combout\);

-- Location: LCCOMB_X63_Y44_N12
\Arch|SI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[1]~30_combout\ = (\Arch|SI|R[1]~29_combout\) # ((\Arch|SI|R[1]~28_combout\) # ((\Arch|SI|op_1~0_combout\ & \Arch|SI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[1]~29_combout\,
	datab => \Arch|SI|op_1~0_combout\,
	datac => \Arch|SI|R[1]~28_combout\,
	datad => \Arch|SI|_~1_combout\,
	combout => \Arch|SI|R[1]~30_combout\);

-- Location: LCCOMB_X63_Y44_N10
\Arch|SI|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[1]~31_combout\ = (\Arch|SI|R[1]~30_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[1]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[1]~30_combout\,
	datab => \Arch|SI|_~0_combout\,
	datad => \Arch|BUS[1]~65_combout\,
	combout => \Arch|SI|R[1]~31_combout\);

-- Location: FF_X63_Y44_N11
\Arch|SI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(1));

-- Location: LCCOMB_X64_Y44_N8
\Arch|SI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~2_combout\ = (\Arch|SI|R\(2) & (!\Arch|SI|op_1~1\)) # (!\Arch|SI|R\(2) & ((\Arch|SI|op_1~1\) # (GND)))
-- \Arch|SI|op_1~3\ = CARRY((!\Arch|SI|op_1~1\) # (!\Arch|SI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(2),
	datad => VCC,
	cin => \Arch|SI|op_1~1\,
	combout => \Arch|SI|op_1~2_combout\,
	cout => \Arch|SI|op_1~3\);

-- Location: LCCOMB_X64_Y44_N30
\Arch|SI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[2]~24_combout\ = (\Arch|SI|R\(1) & ((\Arch|SI|R[6]~0_combout\) # ((\Arch|SI|R\(3) & \Arch|SI|R[5]~7_combout\)))) # (!\Arch|SI|R\(1) & (\Arch|SI|R\(3) & ((\Arch|SI|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(1),
	datab => \Arch|SI|R\(3),
	datac => \Arch|SI|R[6]~0_combout\,
	datad => \Arch|SI|R[5]~7_combout\,
	combout => \Arch|SI|R[2]~24_combout\);

-- Location: LCCOMB_X65_Y44_N16
\Arch|SI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~4_combout\ = (\Arch|SI|R\(2) & ((GND) # (!\Arch|SI|op_2~3\))) # (!\Arch|SI|R\(2) & (\Arch|SI|op_2~3\ $ (GND)))
-- \Arch|SI|op_2~5\ = CARRY((\Arch|SI|R\(2)) # (!\Arch|SI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(2),
	datad => VCC,
	cin => \Arch|SI|op_2~3\,
	combout => \Arch|SI|op_2~4_combout\,
	cout => \Arch|SI|op_2~5\);

-- Location: LCCOMB_X64_Y44_N0
\Arch|SI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[2]~25_combout\ = (\Arch|SI|R\(2) & ((\Arch|SI|R[7]~2_combout\) # ((\Arch|SI|op_2~4_combout\ & \Arch|SI|_~2_combout\)))) # (!\Arch|SI|R\(2) & (\Arch|SI|op_2~4_combout\ & (\Arch|SI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(2),
	datab => \Arch|SI|op_2~4_combout\,
	datac => \Arch|SI|_~2_combout\,
	datad => \Arch|SI|R[7]~2_combout\,
	combout => \Arch|SI|R[2]~25_combout\);

-- Location: LCCOMB_X64_Y44_N22
\Arch|SI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[2]~26_combout\ = (\Arch|SI|R[2]~24_combout\) # ((\Arch|SI|R[2]~25_combout\) # ((\Arch|SI|_~1_combout\ & \Arch|SI|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~1_combout\,
	datab => \Arch|SI|op_1~2_combout\,
	datac => \Arch|SI|R[2]~24_combout\,
	datad => \Arch|SI|R[2]~25_combout\,
	combout => \Arch|SI|R[2]~26_combout\);

-- Location: LCCOMB_X65_Y44_N4
\Arch|SI|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[2]~27_combout\ = (\Arch|SI|R[2]~26_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[2]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~0_combout\,
	datab => \Arch|BUS[2]~56_combout\,
	datad => \Arch|SI|R[2]~26_combout\,
	combout => \Arch|SI|R[2]~27_combout\);

-- Location: FF_X65_Y44_N5
\Arch|SI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(2));

-- Location: LCCOMB_X64_Y45_N26
\Arch|SI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[3]~20_combout\ = (\Arch|SI|R\(4) & ((\Arch|SI|R[5]~7_combout\) # ((\Arch|SI|R\(2) & \Arch|SI|R[6]~0_combout\)))) # (!\Arch|SI|R\(4) & (((\Arch|SI|R\(2) & \Arch|SI|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(4),
	datab => \Arch|SI|R[5]~7_combout\,
	datac => \Arch|SI|R\(2),
	datad => \Arch|SI|R[6]~0_combout\,
	combout => \Arch|SI|R[3]~20_combout\);

-- Location: LCCOMB_X64_Y44_N10
\Arch|SI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~4_combout\ = (\Arch|SI|R\(3) & (\Arch|SI|op_1~3\ $ (GND))) # (!\Arch|SI|R\(3) & (!\Arch|SI|op_1~3\ & VCC))
-- \Arch|SI|op_1~5\ = CARRY((\Arch|SI|R\(3) & !\Arch|SI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(3),
	datad => VCC,
	cin => \Arch|SI|op_1~3\,
	combout => \Arch|SI|op_1~4_combout\,
	cout => \Arch|SI|op_1~5\);

-- Location: LCCOMB_X65_Y44_N18
\Arch|SI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~6_combout\ = (\Arch|SI|R\(3) & (\Arch|SI|op_2~5\ & VCC)) # (!\Arch|SI|R\(3) & (!\Arch|SI|op_2~5\))
-- \Arch|SI|op_2~7\ = CARRY((!\Arch|SI|R\(3) & !\Arch|SI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(3),
	datad => VCC,
	cin => \Arch|SI|op_2~5\,
	combout => \Arch|SI|op_2~6_combout\,
	cout => \Arch|SI|op_2~7\);

-- Location: LCCOMB_X63_Y44_N20
\Arch|SI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[3]~21_combout\ = (\Arch|SI|_~2_combout\ & ((\Arch|SI|op_2~6_combout\) # ((\Arch|SI|R\(3) & \Arch|SI|R[7]~2_combout\)))) # (!\Arch|SI|_~2_combout\ & (\Arch|SI|R\(3) & ((\Arch|SI|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~2_combout\,
	datab => \Arch|SI|R\(3),
	datac => \Arch|SI|op_2~6_combout\,
	datad => \Arch|SI|R[7]~2_combout\,
	combout => \Arch|SI|R[3]~21_combout\);

-- Location: LCCOMB_X63_Y44_N6
\Arch|SI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[3]~22_combout\ = (\Arch|SI|R[3]~20_combout\) # ((\Arch|SI|R[3]~21_combout\) # ((\Arch|SI|_~1_combout\ & \Arch|SI|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[3]~20_combout\,
	datab => \Arch|SI|_~1_combout\,
	datac => \Arch|SI|op_1~4_combout\,
	datad => \Arch|SI|R[3]~21_combout\,
	combout => \Arch|SI|R[3]~22_combout\);

-- Location: LCCOMB_X63_Y44_N24
\Arch|SI|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[3]~23_combout\ = (\Arch|SI|R[3]~22_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[3]~22_combout\,
	datab => \Arch|SI|_~0_combout\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|SI|R[3]~23_combout\);

-- Location: FF_X63_Y44_N25
\Arch|SI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(3));

-- Location: LCCOMB_X64_Y44_N12
\Arch|SI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~6_combout\ = (\Arch|SI|R\(4) & (!\Arch|SI|op_1~5\)) # (!\Arch|SI|R\(4) & ((\Arch|SI|op_1~5\) # (GND)))
-- \Arch|SI|op_1~7\ = CARRY((!\Arch|SI|op_1~5\) # (!\Arch|SI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(4),
	datad => VCC,
	cin => \Arch|SI|op_1~5\,
	combout => \Arch|SI|op_1~6_combout\,
	cout => \Arch|SI|op_1~7\);

-- Location: LCCOMB_X64_Y45_N12
\Arch|SI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[4]~16_combout\ = (\Arch|SI|R\(5) & ((\Arch|SI|R[5]~7_combout\) # ((\Arch|SI|R\(3) & \Arch|SI|R[6]~0_combout\)))) # (!\Arch|SI|R\(5) & (\Arch|SI|R\(3) & ((\Arch|SI|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(5),
	datab => \Arch|SI|R\(3),
	datac => \Arch|SI|R[5]~7_combout\,
	datad => \Arch|SI|R[6]~0_combout\,
	combout => \Arch|SI|R[4]~16_combout\);

-- Location: LCCOMB_X65_Y44_N20
\Arch|SI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~8_combout\ = (\Arch|SI|R\(4) & ((GND) # (!\Arch|SI|op_2~7\))) # (!\Arch|SI|R\(4) & (\Arch|SI|op_2~7\ $ (GND)))
-- \Arch|SI|op_2~9\ = CARRY((\Arch|SI|R\(4)) # (!\Arch|SI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(4),
	datad => VCC,
	cin => \Arch|SI|op_2~7\,
	combout => \Arch|SI|op_2~8_combout\,
	cout => \Arch|SI|op_2~9\);

-- Location: LCCOMB_X65_Y44_N6
\Arch|SI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[4]~17_combout\ = (\Arch|SI|R\(4) & ((\Arch|SI|R[7]~2_combout\) # ((\Arch|SI|_~2_combout\ & \Arch|SI|op_2~8_combout\)))) # (!\Arch|SI|R\(4) & (\Arch|SI|_~2_combout\ & ((\Arch|SI|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(4),
	datab => \Arch|SI|_~2_combout\,
	datac => \Arch|SI|R[7]~2_combout\,
	datad => \Arch|SI|op_2~8_combout\,
	combout => \Arch|SI|R[4]~17_combout\);

-- Location: LCCOMB_X64_Y44_N4
\Arch|SI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[4]~18_combout\ = (\Arch|SI|R[4]~16_combout\) # ((\Arch|SI|R[4]~17_combout\) # ((\Arch|SI|op_1~6_combout\ & \Arch|SI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|op_1~6_combout\,
	datab => \Arch|SI|R[4]~16_combout\,
	datac => \Arch|SI|_~1_combout\,
	datad => \Arch|SI|R[4]~17_combout\,
	combout => \Arch|SI|R[4]~18_combout\);

-- Location: LCCOMB_X64_Y44_N28
\Arch|SI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[4]~19_combout\ = (\Arch|SI|R[4]~18_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[4]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~0_combout\,
	datac => \Arch|SI|R[4]~18_combout\,
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|SI|R[4]~19_combout\);

-- Location: FF_X64_Y44_N29
\Arch|SI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(4));

-- Location: LCCOMB_X64_Y44_N14
\Arch|SI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~8_combout\ = (\Arch|SI|R\(5) & (\Arch|SI|op_1~7\ $ (GND))) # (!\Arch|SI|R\(5) & (!\Arch|SI|op_1~7\ & VCC))
-- \Arch|SI|op_1~9\ = CARRY((\Arch|SI|R\(5) & !\Arch|SI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(5),
	datad => VCC,
	cin => \Arch|SI|op_1~7\,
	combout => \Arch|SI|op_1~8_combout\,
	cout => \Arch|SI|op_1~9\);

-- Location: LCCOMB_X64_Y45_N30
\Arch|SI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[5]~12_combout\ = (\Arch|SI|R\(6) & ((\Arch|SI|R[5]~7_combout\) # ((\Arch|SI|R\(4) & \Arch|SI|R[6]~0_combout\)))) # (!\Arch|SI|R\(6) & (\Arch|SI|R\(4) & ((\Arch|SI|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(6),
	datab => \Arch|SI|R\(4),
	datac => \Arch|SI|R[5]~7_combout\,
	datad => \Arch|SI|R[6]~0_combout\,
	combout => \Arch|SI|R[5]~12_combout\);

-- Location: LCCOMB_X65_Y44_N22
\Arch|SI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~10_combout\ = (\Arch|SI|R\(5) & (\Arch|SI|op_2~9\ & VCC)) # (!\Arch|SI|R\(5) & (!\Arch|SI|op_2~9\))
-- \Arch|SI|op_2~11\ = CARRY((!\Arch|SI|R\(5) & !\Arch|SI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(5),
	datad => VCC,
	cin => \Arch|SI|op_2~9\,
	combout => \Arch|SI|op_2~10_combout\,
	cout => \Arch|SI|op_2~11\);

-- Location: LCCOMB_X64_Y44_N20
\Arch|SI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[5]~13_combout\ = (\Arch|SI|op_2~10_combout\ & ((\Arch|SI|_~2_combout\) # ((\Arch|SI|R\(5) & \Arch|SI|R[7]~2_combout\)))) # (!\Arch|SI|op_2~10_combout\ & (\Arch|SI|R\(5) & ((\Arch|SI|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|op_2~10_combout\,
	datab => \Arch|SI|R\(5),
	datac => \Arch|SI|_~2_combout\,
	datad => \Arch|SI|R[7]~2_combout\,
	combout => \Arch|SI|R[5]~13_combout\);

-- Location: LCCOMB_X64_Y44_N26
\Arch|SI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[5]~14_combout\ = (\Arch|SI|R[5]~12_combout\) # ((\Arch|SI|R[5]~13_combout\) # ((\Arch|SI|_~1_combout\ & \Arch|SI|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~1_combout\,
	datab => \Arch|SI|op_1~8_combout\,
	datac => \Arch|SI|R[5]~12_combout\,
	datad => \Arch|SI|R[5]~13_combout\,
	combout => \Arch|SI|R[5]~14_combout\);

-- Location: LCCOMB_X64_Y44_N2
\Arch|SI|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[5]~15_combout\ = (\Arch|SI|R[5]~14_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~0_combout\,
	datac => \Arch|SI|R[5]~14_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|SI|R[5]~15_combout\);

-- Location: FF_X64_Y44_N3
\Arch|SI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(5));

-- Location: LCCOMB_X64_Y44_N16
\Arch|SI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~10_combout\ = (\Arch|SI|R\(6) & (!\Arch|SI|op_1~9\)) # (!\Arch|SI|R\(6) & ((\Arch|SI|op_1~9\) # (GND)))
-- \Arch|SI|op_1~11\ = CARRY((!\Arch|SI|op_1~9\) # (!\Arch|SI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(6),
	datad => VCC,
	cin => \Arch|SI|op_1~9\,
	combout => \Arch|SI|op_1~10_combout\,
	cout => \Arch|SI|op_1~11\);

-- Location: LCCOMB_X64_Y44_N18
\Arch|SI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_1~12_combout\ = \Arch|SI|R\(7) $ (!\Arch|SI|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(7),
	cin => \Arch|SI|op_1~11\,
	combout => \Arch|SI|op_1~12_combout\);

-- Location: LCCOMB_X63_Y44_N30
\Arch|SI|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~1_combout\ = (\Arch|SI|R\(6) & ((\Arch|SI|R[6]~0_combout\) # ((\Arch|SI|_~1_combout\ & \Arch|SI|op_1~12_combout\)))) # (!\Arch|SI|R\(6) & (\Arch|SI|_~1_combout\ & ((\Arch|SI|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(6),
	datab => \Arch|SI|_~1_combout\,
	datac => \Arch|SI|R[6]~0_combout\,
	datad => \Arch|SI|op_1~12_combout\,
	combout => \Arch|SI|R[7]~1_combout\);

-- Location: LCCOMB_X65_Y44_N24
\Arch|SI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~12_combout\ = (\Arch|SI|R\(6) & ((GND) # (!\Arch|SI|op_2~11\))) # (!\Arch|SI|R\(6) & (\Arch|SI|op_2~11\ $ (GND)))
-- \Arch|SI|op_2~13\ = CARRY((\Arch|SI|R\(6)) # (!\Arch|SI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|R\(6),
	datad => VCC,
	cin => \Arch|SI|op_2~11\,
	combout => \Arch|SI|op_2~12_combout\,
	cout => \Arch|SI|op_2~13\);

-- Location: LCCOMB_X65_Y44_N26
\Arch|SI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|op_2~14_combout\ = \Arch|SI|op_2~13\ $ (!\Arch|SI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|SI|R\(7),
	cin => \Arch|SI|op_2~13\,
	combout => \Arch|SI|op_2~14_combout\);

-- Location: LCCOMB_X64_Y45_N18
\Arch|SI|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~3_combout\ = (\Cmd[0]~input_o\ & (\Arch|SI|R\(0) & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|SI|R\(0),
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|SI|R[7]~3_combout\);

-- Location: LCCOMB_X64_Y45_N20
\Arch|SI|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~4_combout\ = (\Arch|SI|R\(7) & ((\Arch|SI|R[7]~2_combout\) # ((\Arch|SI|R[7]~3_combout\ & \Arch|_~60_combout\)))) # (!\Arch|SI|R\(7) & (\Arch|SI|R[7]~3_combout\ & ((\Arch|_~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(7),
	datab => \Arch|SI|R[7]~3_combout\,
	datac => \Arch|SI|R[7]~2_combout\,
	datad => \Arch|_~60_combout\,
	combout => \Arch|SI|R[7]~4_combout\);

-- Location: LCCOMB_X63_Y44_N4
\Arch|SI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~5_combout\ = (\Arch|SI|R[7]~4_combout\) # ((\Arch|SI|_~2_combout\ & \Arch|SI|op_2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~2_combout\,
	datac => \Arch|SI|op_2~14_combout\,
	datad => \Arch|SI|R[7]~4_combout\,
	combout => \Arch|SI|R[7]~5_combout\);

-- Location: LCCOMB_X63_Y44_N0
\Arch|SI|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[7]~6_combout\ = (\Arch|SI|R[7]~1_combout\) # ((\Arch|SI|R[7]~5_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[7]~1_combout\,
	datab => \Arch|SI|_~0_combout\,
	datac => \Arch|SI|R[7]~5_combout\,
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|SI|R[7]~6_combout\);

-- Location: FF_X63_Y44_N1
\Arch|SI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(7));

-- Location: LCCOMB_X63_Y44_N18
\Arch|SI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[6]~8_combout\ = (\Arch|SI|R[5]~7_combout\ & ((\Arch|SI|R\(7)) # ((\Arch|SI|R\(6) & \Arch|SI|R[7]~2_combout\)))) # (!\Arch|SI|R[5]~7_combout\ & (((\Arch|SI|R\(6) & \Arch|SI|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R[5]~7_combout\,
	datab => \Arch|SI|R\(7),
	datac => \Arch|SI|R\(6),
	datad => \Arch|SI|R[7]~2_combout\,
	combout => \Arch|SI|R[6]~8_combout\);

-- Location: LCCOMB_X63_Y44_N28
\Arch|SI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[6]~9_combout\ = (\Arch|SI|R\(5) & ((\Arch|SI|R[6]~0_combout\) # ((\Arch|SI|_~1_combout\ & \Arch|SI|op_1~10_combout\)))) # (!\Arch|SI|R\(5) & (\Arch|SI|_~1_combout\ & ((\Arch|SI|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(5),
	datab => \Arch|SI|_~1_combout\,
	datac => \Arch|SI|R[6]~0_combout\,
	datad => \Arch|SI|op_1~10_combout\,
	combout => \Arch|SI|R[6]~9_combout\);

-- Location: LCCOMB_X63_Y44_N22
\Arch|SI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[6]~10_combout\ = (\Arch|SI|R[6]~8_combout\) # ((\Arch|SI|R[6]~9_combout\) # ((\Arch|SI|_~2_combout\ & \Arch|SI|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|_~2_combout\,
	datab => \Arch|SI|R[6]~8_combout\,
	datac => \Arch|SI|op_2~12_combout\,
	datad => \Arch|SI|R[6]~9_combout\,
	combout => \Arch|SI|R[6]~10_combout\);

-- Location: LCCOMB_X63_Y44_N14
\Arch|SI|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SI|R[6]~11_combout\ = (\Arch|SI|R[6]~10_combout\) # ((\Arch|SI|_~0_combout\ & \Arch|BUS[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SI|_~0_combout\,
	datac => \Arch|SI|R[6]~10_combout\,
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|SI|R[6]~11_combout\);

-- Location: FF_X63_Y44_N15
\Arch|SI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SI|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SI|R\(6));

-- Location: LCCOMB_X66_Y45_N26
\Arch|_~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~61_combout\ = (\Arch|_~47_combout\ & ((\SelDST~input_o\ & (!\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((!\Arch|DST|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[1]~input_o\,
	datab => \SelDST~input_o\,
	datac => \Arch|_~47_combout\,
	datad => \Arch|DST|R\(1),
	combout => \Arch|_~61_combout\);

-- Location: LCCOMB_X66_Y48_N12
\Arch|SP|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|_~1_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & \Arch|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|_~1_combout\);

-- Location: LCCOMB_X67_Y45_N14
\Arch|SP|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Arch|_~61_combout\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~61_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|SP|_~2_combout\);

-- Location: LCCOMB_X67_Y45_N0
\Arch|SP|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~0_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\Arch|_~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~61_combout\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|SP|R[7]~0_combout\);

-- Location: LCCOMB_X66_Y48_N0
\Arch|SP|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|_~3_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|_~3_combout\);

-- Location: LCCOMB_X66_Y48_N2
\Arch|SP|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[0]~34_combout\ = (\Arch|SP|R\(0) & ((\Arch|SP|R[7]~0_combout\) # ((\Arch|SP|R\(7) & \Arch|SP|_~3_combout\)))) # (!\Arch|SP|R\(0) & (\Arch|SP|R\(7) & ((\Arch|SP|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datab => \Arch|SP|R\(7),
	datac => \Arch|SP|R[7]~0_combout\,
	datad => \Arch|SP|_~3_combout\,
	combout => \Arch|SP|R[0]~34_combout\);

-- Location: LCCOMB_X67_Y49_N18
\Arch|SP|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~0_combout\ = (\Arch|SP|R\(0) & (\Arch|SP|R\(1) $ (VCC))) # (!\Arch|SP|R\(0) & (\Arch|SP|R\(1) & VCC))
-- \Arch|SP|op_1~1\ = CARRY((\Arch|SP|R\(0) & \Arch|SP|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datab => \Arch|SP|R\(1),
	datad => VCC,
	combout => \Arch|SP|op_1~0_combout\,
	cout => \Arch|SP|op_1~1\);

-- Location: LCCOMB_X67_Y48_N22
\Arch|SP|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|_~0_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|_~0_combout\);

-- Location: LCCOMB_X67_Y49_N0
\Arch|SP|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~1_cout\ = CARRY(\Arch|SP|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datad => VCC,
	cout => \Arch|SP|op_2~1_cout\);

-- Location: LCCOMB_X67_Y49_N2
\Arch|SP|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~2_combout\ = (\Arch|SP|R\(1) & (\Arch|SP|op_2~1_cout\ & VCC)) # (!\Arch|SP|R\(1) & (!\Arch|SP|op_2~1_cout\))
-- \Arch|SP|op_2~3\ = CARRY((!\Arch|SP|R\(1) & !\Arch|SP|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SP|R\(1),
	datad => VCC,
	cin => \Arch|SP|op_2~1_cout\,
	combout => \Arch|SP|op_2~2_combout\,
	cout => \Arch|SP|op_2~3\);

-- Location: LCCOMB_X67_Y49_N4
\Arch|SP|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~4_combout\ = (\Arch|SP|R\(2) & ((GND) # (!\Arch|SP|op_2~3\))) # (!\Arch|SP|R\(2) & (\Arch|SP|op_2~3\ $ (GND)))
-- \Arch|SP|op_2~5\ = CARRY((\Arch|SP|R\(2)) # (!\Arch|SP|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SP|R\(2),
	datad => VCC,
	cin => \Arch|SP|op_2~3\,
	combout => \Arch|SP|op_2~4_combout\,
	cout => \Arch|SP|op_2~5\);

-- Location: LCCOMB_X67_Y45_N10
\Arch|SP|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[2]~25_combout\ = (\Arch|SP|R\(2) & ((\Arch|SP|R[7]~0_combout\) # ((\Arch|SP|_~2_combout\ & \Arch|SP|op_2~4_combout\)))) # (!\Arch|SP|R\(2) & (\Arch|SP|_~2_combout\ & (\Arch|SP|op_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(2),
	datab => \Arch|SP|_~2_combout\,
	datac => \Arch|SP|op_2~4_combout\,
	datad => \Arch|SP|R[7]~0_combout\,
	combout => \Arch|SP|R[2]~25_combout\);

-- Location: LCCOMB_X67_Y49_N20
\Arch|SP|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~2_combout\ = (\Arch|SP|R\(2) & (!\Arch|SP|op_1~1\)) # (!\Arch|SP|R\(2) & ((\Arch|SP|op_1~1\) # (GND)))
-- \Arch|SP|op_1~3\ = CARRY((!\Arch|SP|op_1~1\) # (!\Arch|SP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SP|R\(2),
	datad => VCC,
	cin => \Arch|SP|op_1~1\,
	combout => \Arch|SP|op_1~2_combout\,
	cout => \Arch|SP|op_1~3\);

-- Location: LCCOMB_X67_Y45_N12
\Arch|SP|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[2]~26_combout\ = (\Arch|SP|R[2]~25_combout\) # ((\Arch|SP|op_1~2_combout\ & \Arch|SP|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[2]~25_combout\,
	datac => \Arch|SP|op_1~2_combout\,
	datad => \Arch|SP|_~0_combout\,
	combout => \Arch|SP|R[2]~26_combout\);

-- Location: LCCOMB_X67_Y45_N8
\Arch|SP|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[5]~7_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \Arch|_~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|_~61_combout\,
	combout => \Arch|SP|R[5]~7_combout\);

-- Location: LCCOMB_X67_Y46_N24
\Arch|SP|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[6]~3_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|R[6]~3_combout\);

-- Location: LCCOMB_X67_Y46_N12
\Arch|SP|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[5]~12_combout\ = (\Arch|SP|R\(4) & ((\Arch|SP|R[6]~3_combout\) # ((\Arch|SP|R\(6) & \Arch|SP|R[5]~7_combout\)))) # (!\Arch|SP|R\(4) & (\Arch|SP|R\(6) & (\Arch|SP|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(4),
	datab => \Arch|SP|R\(6),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[5]~12_combout\);

-- Location: LCCOMB_X67_Y49_N6
\Arch|SP|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~6_combout\ = (\Arch|SP|R\(3) & (\Arch|SP|op_2~5\ & VCC)) # (!\Arch|SP|R\(3) & (!\Arch|SP|op_2~5\))
-- \Arch|SP|op_2~7\ = CARRY((!\Arch|SP|R\(3) & !\Arch|SP|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(3),
	datad => VCC,
	cin => \Arch|SP|op_2~5\,
	combout => \Arch|SP|op_2~6_combout\,
	cout => \Arch|SP|op_2~7\);

-- Location: LCCOMB_X67_Y49_N8
\Arch|SP|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~8_combout\ = (\Arch|SP|R\(4) & ((GND) # (!\Arch|SP|op_2~7\))) # (!\Arch|SP|R\(4) & (\Arch|SP|op_2~7\ $ (GND)))
-- \Arch|SP|op_2~9\ = CARRY((\Arch|SP|R\(4)) # (!\Arch|SP|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(4),
	datad => VCC,
	cin => \Arch|SP|op_2~7\,
	combout => \Arch|SP|op_2~8_combout\,
	cout => \Arch|SP|op_2~9\);

-- Location: LCCOMB_X67_Y49_N10
\Arch|SP|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~10_combout\ = (\Arch|SP|R\(5) & (\Arch|SP|op_2~9\ & VCC)) # (!\Arch|SP|R\(5) & (!\Arch|SP|op_2~9\))
-- \Arch|SP|op_2~11\ = CARRY((!\Arch|SP|R\(5) & !\Arch|SP|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(5),
	datad => VCC,
	cin => \Arch|SP|op_2~9\,
	combout => \Arch|SP|op_2~10_combout\,
	cout => \Arch|SP|op_2~11\);

-- Location: LCCOMB_X67_Y45_N18
\Arch|SP|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[5]~13_combout\ = (\Arch|SP|R\(5) & ((\Arch|SP|R[7]~0_combout\) # ((\Arch|SP|op_2~10_combout\ & \Arch|SP|_~2_combout\)))) # (!\Arch|SP|R\(5) & (\Arch|SP|op_2~10_combout\ & (\Arch|SP|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(5),
	datab => \Arch|SP|op_2~10_combout\,
	datac => \Arch|SP|_~2_combout\,
	datad => \Arch|SP|R[7]~0_combout\,
	combout => \Arch|SP|R[5]~13_combout\);

-- Location: LCCOMB_X67_Y49_N22
\Arch|SP|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~4_combout\ = (\Arch|SP|R\(3) & (\Arch|SP|op_1~3\ $ (GND))) # (!\Arch|SP|R\(3) & (!\Arch|SP|op_1~3\ & VCC))
-- \Arch|SP|op_1~5\ = CARRY((\Arch|SP|R\(3) & !\Arch|SP|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(3),
	datad => VCC,
	cin => \Arch|SP|op_1~3\,
	combout => \Arch|SP|op_1~4_combout\,
	cout => \Arch|SP|op_1~5\);

-- Location: LCCOMB_X67_Y49_N24
\Arch|SP|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~6_combout\ = (\Arch|SP|R\(4) & (!\Arch|SP|op_1~5\)) # (!\Arch|SP|R\(4) & ((\Arch|SP|op_1~5\) # (GND)))
-- \Arch|SP|op_1~7\ = CARRY((!\Arch|SP|op_1~5\) # (!\Arch|SP|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(4),
	datad => VCC,
	cin => \Arch|SP|op_1~5\,
	combout => \Arch|SP|op_1~6_combout\,
	cout => \Arch|SP|op_1~7\);

-- Location: LCCOMB_X67_Y49_N26
\Arch|SP|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~8_combout\ = (\Arch|SP|R\(5) & (\Arch|SP|op_1~7\ $ (GND))) # (!\Arch|SP|R\(5) & (!\Arch|SP|op_1~7\ & VCC))
-- \Arch|SP|op_1~9\ = CARRY((\Arch|SP|R\(5) & !\Arch|SP|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(5),
	datad => VCC,
	cin => \Arch|SP|op_1~7\,
	combout => \Arch|SP|op_1~8_combout\,
	cout => \Arch|SP|op_1~9\);

-- Location: LCCOMB_X67_Y46_N14
\Arch|SP|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[5]~14_combout\ = (\Arch|SP|R[5]~12_combout\) # ((\Arch|SP|R[5]~13_combout\) # ((\Arch|SP|_~0_combout\ & \Arch|SP|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[5]~12_combout\,
	datab => \Arch|SP|_~0_combout\,
	datac => \Arch|SP|R[5]~13_combout\,
	datad => \Arch|SP|op_1~8_combout\,
	combout => \Arch|SP|R[5]~14_combout\);

-- Location: LCCOMB_X67_Y46_N6
\Arch|SP|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[5]~15_combout\ = (\Arch|SP|R[5]~14_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datac => \Arch|BUS[5]~29_combout\,
	datad => \Arch|SP|R[5]~14_combout\,
	combout => \Arch|SP|R[5]~15_combout\);

-- Location: FF_X67_Y46_N7
\Arch|SP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(5));

-- Location: LCCOMB_X67_Y46_N28
\Arch|SP|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[4]~16_combout\ = (\Arch|SP|R\(5) & ((\Arch|SP|R[5]~7_combout\) # ((\Arch|SP|R\(3) & \Arch|SP|R[6]~3_combout\)))) # (!\Arch|SP|R\(5) & (((\Arch|SP|R\(3) & \Arch|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(5),
	datab => \Arch|SP|R[5]~7_combout\,
	datac => \Arch|SP|R\(3),
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[4]~16_combout\);

-- Location: LCCOMB_X67_Y46_N10
\Arch|SP|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[4]~17_combout\ = (\Arch|SP|R\(4) & ((\Arch|SP|R[7]~0_combout\) # ((\Arch|SP|op_2~8_combout\ & \Arch|SP|_~2_combout\)))) # (!\Arch|SP|R\(4) & (((\Arch|SP|op_2~8_combout\ & \Arch|SP|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(4),
	datab => \Arch|SP|R[7]~0_combout\,
	datac => \Arch|SP|op_2~8_combout\,
	datad => \Arch|SP|_~2_combout\,
	combout => \Arch|SP|R[4]~17_combout\);

-- Location: LCCOMB_X67_Y46_N8
\Arch|SP|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[4]~18_combout\ = (\Arch|SP|R[4]~17_combout\) # ((\Arch|SP|op_1~6_combout\ & \Arch|SP|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[4]~17_combout\,
	datab => \Arch|SP|op_1~6_combout\,
	datad => \Arch|SP|_~0_combout\,
	combout => \Arch|SP|R[4]~18_combout\);

-- Location: LCCOMB_X67_Y46_N20
\Arch|SP|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[4]~19_combout\ = (\Arch|SP|R[4]~16_combout\) # ((\Arch|SP|R[4]~18_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[4]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datab => \Arch|SP|R[4]~16_combout\,
	datac => \Arch|BUS[4]~38_combout\,
	datad => \Arch|SP|R[4]~18_combout\,
	combout => \Arch|SP|R[4]~19_combout\);

-- Location: FF_X67_Y46_N21
\Arch|SP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(4));

-- Location: LCCOMB_X67_Y46_N22
\Arch|SP|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[3]~20_combout\ = (\Arch|SP|R\(2) & ((\Arch|SP|R[6]~3_combout\) # ((\Arch|SP|R\(4) & \Arch|SP|R[5]~7_combout\)))) # (!\Arch|SP|R\(2) & (\Arch|SP|R\(4) & (\Arch|SP|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(2),
	datab => \Arch|SP|R\(4),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[3]~20_combout\);

-- Location: LCCOMB_X67_Y46_N4
\Arch|SP|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[3]~21_combout\ = (\Arch|SP|op_2~6_combout\ & ((\Arch|SP|_~2_combout\) # ((\Arch|SP|R[7]~0_combout\ & \Arch|SP|R\(3))))) # (!\Arch|SP|op_2~6_combout\ & (\Arch|SP|R[7]~0_combout\ & (\Arch|SP|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|op_2~6_combout\,
	datab => \Arch|SP|R[7]~0_combout\,
	datac => \Arch|SP|R\(3),
	datad => \Arch|SP|_~2_combout\,
	combout => \Arch|SP|R[3]~21_combout\);

-- Location: LCCOMB_X67_Y46_N26
\Arch|SP|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[3]~22_combout\ = (\Arch|SP|R[3]~20_combout\) # ((\Arch|SP|R[3]~21_combout\) # ((\Arch|SP|_~0_combout\ & \Arch|SP|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[3]~20_combout\,
	datab => \Arch|SP|_~0_combout\,
	datac => \Arch|SP|R[3]~21_combout\,
	datad => \Arch|SP|op_1~4_combout\,
	combout => \Arch|SP|R[3]~22_combout\);

-- Location: LCCOMB_X67_Y46_N30
\Arch|SP|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[3]~23_combout\ = (\Arch|SP|R[3]~22_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datac => \Arch|SP|R[3]~22_combout\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|SP|R[3]~23_combout\);

-- Location: FF_X67_Y46_N31
\Arch|SP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(3));

-- Location: LCCOMB_X67_Y45_N28
\Arch|SP|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[2]~24_combout\ = (\Arch|SP|R\(1) & ((\Arch|SP|R[6]~3_combout\) # ((\Arch|SP|R\(3) & \Arch|SP|R[5]~7_combout\)))) # (!\Arch|SP|R\(1) & (\Arch|SP|R\(3) & (\Arch|SP|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(1),
	datab => \Arch|SP|R\(3),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[2]~24_combout\);

-- Location: LCCOMB_X67_Y45_N20
\Arch|SP|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[2]~27_combout\ = (\Arch|SP|R[2]~26_combout\) # ((\Arch|SP|R[2]~24_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[2]~26_combout\,
	datab => \Arch|SP|R[2]~24_combout\,
	datac => \Arch|SP|_~1_combout\,
	datad => \Arch|BUS[2]~56_combout\,
	combout => \Arch|SP|R[2]~27_combout\);

-- Location: FF_X67_Y45_N21
\Arch|SP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(2));

-- Location: LCCOMB_X67_Y45_N22
\Arch|SP|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[1]~28_combout\ = (\Arch|SP|R\(2) & ((\Arch|SP|R[5]~7_combout\) # ((\Arch|SP|R\(0) & \Arch|SP|R[6]~3_combout\)))) # (!\Arch|SP|R\(2) & (\Arch|SP|R\(0) & ((\Arch|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(2),
	datab => \Arch|SP|R\(0),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[1]~28_combout\);

-- Location: LCCOMB_X67_Y45_N16
\Arch|SP|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[1]~29_combout\ = (\Arch|SP|R\(1) & ((\Arch|SP|R[7]~0_combout\) # ((\Arch|SP|_~2_combout\ & \Arch|SP|op_2~2_combout\)))) # (!\Arch|SP|R\(1) & (\Arch|SP|_~2_combout\ & (\Arch|SP|op_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(1),
	datab => \Arch|SP|_~2_combout\,
	datac => \Arch|SP|op_2~2_combout\,
	datad => \Arch|SP|R[7]~0_combout\,
	combout => \Arch|SP|R[1]~29_combout\);

-- Location: LCCOMB_X67_Y45_N2
\Arch|SP|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[1]~30_combout\ = (\Arch|SP|R[1]~28_combout\) # ((\Arch|SP|R[1]~29_combout\) # ((\Arch|SP|op_1~0_combout\ & \Arch|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|op_1~0_combout\,
	datab => \Arch|SP|_~0_combout\,
	datac => \Arch|SP|R[1]~28_combout\,
	datad => \Arch|SP|R[1]~29_combout\,
	combout => \Arch|SP|R[1]~30_combout\);

-- Location: LCCOMB_X67_Y45_N26
\Arch|SP|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[1]~31_combout\ = (\Arch|SP|R[1]~30_combout\) # ((\Arch|BUS[1]~65_combout\ & \Arch|SP|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[1]~65_combout\,
	datac => \Arch|SP|_~1_combout\,
	datad => \Arch|SP|R[1]~30_combout\,
	combout => \Arch|SP|R[1]~31_combout\);

-- Location: FF_X67_Y45_N27
\Arch|SP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(1));

-- Location: LCCOMB_X67_Y48_N16
\Arch|SP|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[0]~32_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|R[0]~32_combout\);

-- Location: LCCOMB_X67_Y48_N30
\Arch|SP|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[0]~33_combout\ = (\Arch|SP|R\(0) & (\Arch|SP|R\(1) & (\Arch|SP|R[5]~7_combout\))) # (!\Arch|SP|R\(0) & ((\Arch|SP|R[0]~32_combout\) # ((\Arch|SP|R\(1) & \Arch|SP|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datab => \Arch|SP|R\(1),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[0]~32_combout\,
	combout => \Arch|SP|R[0]~33_combout\);

-- Location: LCCOMB_X66_Y48_N30
\Arch|SP|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[0]~35_combout\ = (\Arch|SP|R[0]~34_combout\) # ((\Arch|SP|R[0]~33_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datab => \Arch|SP|R[0]~34_combout\,
	datac => \Arch|SP|R[0]~33_combout\,
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|SP|R[0]~35_combout\);

-- Location: FF_X66_Y48_N31
\Arch|SP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(0));

-- Location: LCCOMB_X67_Y48_N20
\Arch|SP|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~1_combout\ = (\Arch|SP|R\(0) & (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|SP|R[7]~1_combout\);

-- Location: LCCOMB_X66_Y48_N26
\Arch|SP|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~2_combout\ = (\Arch|SP|R[7]~1_combout\ & ((\Arch|_~61_combout\) # ((\Arch|SP|R\(7) & \Arch|SP|R[7]~0_combout\)))) # (!\Arch|SP|R[7]~1_combout\ & (\Arch|SP|R\(7) & (\Arch|SP|R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[7]~1_combout\,
	datab => \Arch|SP|R\(7),
	datac => \Arch|SP|R[7]~0_combout\,
	datad => \Arch|_~61_combout\,
	combout => \Arch|SP|R[7]~2_combout\);

-- Location: LCCOMB_X67_Y49_N28
\Arch|SP|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~10_combout\ = (\Arch|SP|R\(6) & (!\Arch|SP|op_1~9\)) # (!\Arch|SP|R\(6) & ((\Arch|SP|op_1~9\) # (GND)))
-- \Arch|SP|op_1~11\ = CARRY((!\Arch|SP|op_1~9\) # (!\Arch|SP|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SP|R\(6),
	datad => VCC,
	cin => \Arch|SP|op_1~9\,
	combout => \Arch|SP|op_1~10_combout\,
	cout => \Arch|SP|op_1~11\);

-- Location: LCCOMB_X67_Y49_N30
\Arch|SP|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_1~12_combout\ = \Arch|SP|op_1~11\ $ (!\Arch|SP|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|SP|R\(7),
	cin => \Arch|SP|op_1~11\,
	combout => \Arch|SP|op_1~12_combout\);

-- Location: LCCOMB_X67_Y48_N28
\Arch|SP|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~4_combout\ = (\Arch|SP|_~0_combout\ & ((\Arch|SP|op_1~12_combout\) # ((\Arch|SP|R\(6) & \Arch|SP|R[6]~3_combout\)))) # (!\Arch|SP|_~0_combout\ & (\Arch|SP|R\(6) & ((\Arch|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~0_combout\,
	datab => \Arch|SP|R\(6),
	datac => \Arch|SP|op_1~12_combout\,
	datad => \Arch|SP|R[6]~3_combout\,
	combout => \Arch|SP|R[7]~4_combout\);

-- Location: LCCOMB_X67_Y49_N12
\Arch|SP|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~12_combout\ = (\Arch|SP|R\(6) & ((GND) # (!\Arch|SP|op_2~11\))) # (!\Arch|SP|R\(6) & (\Arch|SP|op_2~11\ $ (GND)))
-- \Arch|SP|op_2~13\ = CARRY((\Arch|SP|R\(6)) # (!\Arch|SP|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SP|R\(6),
	datad => VCC,
	cin => \Arch|SP|op_2~11\,
	combout => \Arch|SP|op_2~12_combout\,
	cout => \Arch|SP|op_2~13\);

-- Location: LCCOMB_X67_Y49_N14
\Arch|SP|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|op_2~14_combout\ = \Arch|SP|op_2~13\ $ (!\Arch|SP|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|SP|R\(7),
	cin => \Arch|SP|op_2~13\,
	combout => \Arch|SP|op_2~14_combout\);

-- Location: LCCOMB_X66_Y48_N10
\Arch|SP|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~5_combout\ = (\Arch|SP|_~1_combout\ & ((\Arch|BUS[7]~11_combout\) # ((\Arch|SP|_~2_combout\ & \Arch|SP|op_2~14_combout\)))) # (!\Arch|SP|_~1_combout\ & (\Arch|SP|_~2_combout\ & (\Arch|SP|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datab => \Arch|SP|_~2_combout\,
	datac => \Arch|SP|op_2~14_combout\,
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|SP|R[7]~5_combout\);

-- Location: LCCOMB_X66_Y48_N28
\Arch|SP|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[7]~6_combout\ = (\Arch|SP|R[7]~2_combout\) # ((\Arch|SP|R[7]~4_combout\) # (\Arch|SP|R[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R[7]~2_combout\,
	datab => \Arch|SP|R[7]~4_combout\,
	datad => \Arch|SP|R[7]~5_combout\,
	combout => \Arch|SP|R[7]~6_combout\);

-- Location: FF_X66_Y48_N29
\Arch|SP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(7));

-- Location: LCCOMB_X67_Y46_N18
\Arch|SP|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[6]~8_combout\ = (\Arch|SP|R\(7) & ((\Arch|SP|R[5]~7_combout\) # ((\Arch|SP|R\(6) & \Arch|SP|R[7]~0_combout\)))) # (!\Arch|SP|R\(7) & (\Arch|SP|R\(6) & ((\Arch|SP|R[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(7),
	datab => \Arch|SP|R\(6),
	datac => \Arch|SP|R[5]~7_combout\,
	datad => \Arch|SP|R[7]~0_combout\,
	combout => \Arch|SP|R[6]~8_combout\);

-- Location: LCCOMB_X67_Y46_N16
\Arch|SP|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[6]~9_combout\ = (\Arch|SP|R\(5) & ((\Arch|SP|R[6]~3_combout\) # ((\Arch|SP|op_1~10_combout\ & \Arch|SP|_~0_combout\)))) # (!\Arch|SP|R\(5) & (((\Arch|SP|op_1~10_combout\ & \Arch|SP|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(5),
	datab => \Arch|SP|R[6]~3_combout\,
	datac => \Arch|SP|op_1~10_combout\,
	datad => \Arch|SP|_~0_combout\,
	combout => \Arch|SP|R[6]~9_combout\);

-- Location: LCCOMB_X67_Y46_N2
\Arch|SP|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[6]~10_combout\ = (\Arch|SP|R[6]~8_combout\) # ((\Arch|SP|R[6]~9_combout\) # ((\Arch|SP|_~2_combout\ & \Arch|SP|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~2_combout\,
	datab => \Arch|SP|R[6]~8_combout\,
	datac => \Arch|SP|op_2~12_combout\,
	datad => \Arch|SP|R[6]~9_combout\,
	combout => \Arch|SP|R[6]~10_combout\);

-- Location: LCCOMB_X67_Y46_N0
\Arch|SP|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SP|R[6]~11_combout\ = (\Arch|SP|R[6]~10_combout\) # ((\Arch|SP|_~1_combout\ & \Arch|BUS[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|_~1_combout\,
	datab => \Arch|BUS[6]~20_combout\,
	datad => \Arch|SP|R[6]~10_combout\,
	combout => \Arch|SP|R[6]~11_combout\);

-- Location: FF_X67_Y46_N1
\Arch|SP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|SP|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SP|R\(6));

-- Location: LCCOMB_X65_Y47_N20
\Arch|_~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~53_combout\ = (!\Arch|SelBus[3]~1_combout\ & ((\SelSRC~input_o\ & ((!\SRC_UC[2]~input_o\))) # (!\SelSRC~input_o\ & (!\Arch|SRC|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datab => \Arch|SRC|R\(2),
	datac => \SRC_UC[2]~input_o\,
	datad => \Arch|SelBus[3]~1_combout\,
	combout => \Arch|_~53_combout\);

-- Location: LCCOMB_X66_Y47_N26
\Arch|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~36_combout\ = (\Arch|SelBus[4]~2_combout\ & (!\Arch|SelBus[0]~3_combout\ & (!\Arch|SelBus[1]~4_combout\ & \Arch|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[4]~2_combout\,
	datab => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|SelBus[1]~4_combout\,
	datad => \Arch|_~53_combout\,
	combout => \Arch|_~36_combout\);

-- Location: LCCOMB_X66_Y47_N12
\Arch|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~37_combout\ = (\Arch|SelBus[4]~2_combout\ & (\Arch|SelBus[0]~3_combout\ & (!\Arch|SelBus[1]~4_combout\ & \Arch|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[4]~2_combout\,
	datab => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|SelBus[1]~4_combout\,
	datad => \Arch|_~53_combout\,
	combout => \Arch|_~37_combout\);

-- Location: LCCOMB_X67_Y47_N30
\Arch|BUS[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~18_combout\ = (\Arch|SI|R\(6) & ((\Arch|_~37_combout\) # ((\Arch|SP|R\(6) & \Arch|_~36_combout\)))) # (!\Arch|SI|R\(6) & (\Arch|SP|R\(6) & (\Arch|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(6),
	datab => \Arch|SP|R\(6),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[6]~18_combout\);

-- Location: LCCOMB_X66_Y47_N22
\Arch|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~35_combout\ = (\Arch|SelBus[0]~3_combout\ & (\Arch|_~24_combout\ & \Arch|SelBus[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|_~24_combout\,
	datad => \Arch|SelBus[1]~4_combout\,
	combout => \Arch|_~35_combout\);

-- Location: LCCOMB_X66_Y46_N30
\Arch|BUS[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~19_combout\ = (\Arch|BUS[6]~18_combout\) # ((\Arch|BP|R\(6) & \Arch|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|BP|R\(6),
	datac => \Arch|BUS[6]~18_combout\,
	datad => \Arch|_~35_combout\,
	combout => \Arch|BUS[6]~19_combout\);

-- Location: LCCOMB_X66_Y47_N30
\Arch|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~30_combout\ = (\Arch|SelBus[4]~2_combout\ & (!\Arch|SelBus[0]~3_combout\ & (\Arch|SelBus[1]~4_combout\ & \Arch|_~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[4]~2_combout\,
	datab => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|SelBus[1]~4_combout\,
	datad => \Arch|_~53_combout\,
	combout => \Arch|_~30_combout\);

-- Location: LCCOMB_X66_Y45_N8
\Arch|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~41_combout\ = (!\Arch|SelMUX[2]~1_combout\ & (!\Arch|SelMUX[3]~4_combout\ & (!\Arch|SelMUX[0]~0_combout\ & !\Arch|SelMUX[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datab => \Arch|SelMUX[3]~4_combout\,
	datac => \Arch|SelMUX[0]~0_combout\,
	datad => \Arch|SelMUX[4]~3_combout\,
	combout => \Arch|_~41_combout\);

-- Location: LCCOMB_X66_Y45_N4
\Arch|_~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~59_combout\ = (\Arch|_~41_combout\ & ((\SelDST~input_o\ & (\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[1]~input_o\,
	datab => \SelDST~input_o\,
	datac => \Arch|_~41_combout\,
	datad => \Arch|DST|R\(1),
	combout => \Arch|_~59_combout\);

-- Location: LCCOMB_X65_Y48_N0
\Arch|Cx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|_~1_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|_~1_combout\);

-- Location: LCCOMB_X67_Y48_N14
\Arch|Cx|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~0_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[0]~input_o\))) # (!\Arch|_~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|R[7]~0_combout\);

-- Location: LCCOMB_X65_Y48_N6
\Arch|Cx|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|R[5]~7_combout\);

-- Location: LCCOMB_X65_Y48_N28
\Arch|Cx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[0]~32_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|R[0]~32_combout\);

-- Location: LCCOMB_X65_Y48_N30
\Arch|Cx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[0]~33_combout\ = (\Arch|Cx|R[5]~7_combout\ & ((\Arch|Cx|R\(1)) # ((!\Arch|Cx|R\(0) & \Arch|Cx|R[0]~32_combout\)))) # (!\Arch|Cx|R[5]~7_combout\ & (!\Arch|Cx|R\(0) & ((\Arch|Cx|R[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[5]~7_combout\,
	datab => \Arch|Cx|R\(0),
	datac => \Arch|Cx|R\(1),
	datad => \Arch|Cx|R[0]~32_combout\,
	combout => \Arch|Cx|R[0]~33_combout\);

-- Location: LCCOMB_X65_Y48_N24
\Arch|Cx|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|R[6]~3_combout\);

-- Location: LCCOMB_X64_Y48_N22
\Arch|Cx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~8_combout\ = (\Arch|Cx|R\(5) & (\Arch|Cx|op_1~7\ $ (GND))) # (!\Arch|Cx|R\(5) & (!\Arch|Cx|op_1~7\ & VCC))
-- \Arch|Cx|op_1~9\ = CARRY((\Arch|Cx|R\(5) & !\Arch|Cx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(5),
	datad => VCC,
	cin => \Arch|Cx|op_1~7\,
	combout => \Arch|Cx|op_1~8_combout\,
	cout => \Arch|Cx|op_1~9\);

-- Location: LCCOMB_X64_Y48_N24
\Arch|Cx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~10_combout\ = (\Arch|Cx|R\(6) & (!\Arch|Cx|op_1~9\)) # (!\Arch|Cx|R\(6) & ((\Arch|Cx|op_1~9\) # (GND)))
-- \Arch|Cx|op_1~11\ = CARRY((!\Arch|Cx|op_1~9\) # (!\Arch|Cx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(6),
	datad => VCC,
	cin => \Arch|Cx|op_1~9\,
	combout => \Arch|Cx|op_1~10_combout\,
	cout => \Arch|Cx|op_1~11\);

-- Location: LCCOMB_X64_Y48_N26
\Arch|Cx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~12_combout\ = \Arch|Cx|op_1~11\ $ (!\Arch|Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|Cx|R\(7),
	cin => \Arch|Cx|op_1~11\,
	combout => \Arch|Cx|op_1~12_combout\);

-- Location: LCCOMB_X66_Y48_N4
\Arch|Cx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|_~0_combout\ = (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|_~0_combout\);

-- Location: LCCOMB_X65_Y48_N10
\Arch|Cx|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~4_combout\ = (\Arch|Cx|R\(6) & ((\Arch|Cx|R[6]~3_combout\) # ((\Arch|Cx|op_1~12_combout\ & \Arch|Cx|_~0_combout\)))) # (!\Arch|Cx|R\(6) & (((\Arch|Cx|op_1~12_combout\ & \Arch|Cx|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(6),
	datab => \Arch|Cx|R[6]~3_combout\,
	datac => \Arch|Cx|op_1~12_combout\,
	datad => \Arch|Cx|_~0_combout\,
	combout => \Arch|Cx|R[7]~4_combout\);

-- Location: LCCOMB_X64_Y48_N0
\Arch|Cx|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\Arch|Cx|R\(0) & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Arch|Cx|R\(0),
	datad => \Cmd[2]~input_o\,
	combout => \Arch|Cx|R[7]~1_combout\);

-- Location: LCCOMB_X65_Y48_N22
\Arch|Cx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~2_combout\ = (\Arch|Cx|R[7]~1_combout\ & ((\Arch|_~59_combout\) # ((\Arch|Cx|R\(7) & \Arch|Cx|R[7]~0_combout\)))) # (!\Arch|Cx|R[7]~1_combout\ & (\Arch|Cx|R\(7) & (\Arch|Cx|R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[7]~1_combout\,
	datab => \Arch|Cx|R\(7),
	datac => \Arch|Cx|R[7]~0_combout\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|R[7]~2_combout\);

-- Location: LCCOMB_X69_Y48_N20
\Arch|Cx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~12_combout\ = (\Arch|Cx|R\(6) & ((GND) # (!\Arch|Cx|op_2~11\))) # (!\Arch|Cx|R\(6) & (\Arch|Cx|op_2~11\ $ (GND)))
-- \Arch|Cx|op_2~13\ = CARRY((\Arch|Cx|R\(6)) # (!\Arch|Cx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(6),
	datad => VCC,
	cin => \Arch|Cx|op_2~11\,
	combout => \Arch|Cx|op_2~12_combout\,
	cout => \Arch|Cx|op_2~13\);

-- Location: LCCOMB_X69_Y48_N22
\Arch|Cx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~14_combout\ = \Arch|Cx|op_2~13\ $ (!\Arch|Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|Cx|R\(7),
	cin => \Arch|Cx|op_2~13\,
	combout => \Arch|Cx|op_2~14_combout\);

-- Location: LCCOMB_X66_Y48_N18
\Arch|Cx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|_~2_combout\);

-- Location: LCCOMB_X66_Y48_N24
\Arch|Cx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~5_combout\ = (\Arch|Cx|op_2~14_combout\ & ((\Arch|Cx|_~2_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[7]~11_combout\)))) # (!\Arch|Cx|op_2~14_combout\ & (((\Arch|Cx|_~1_combout\ & \Arch|BUS[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|op_2~14_combout\,
	datab => \Arch|Cx|_~2_combout\,
	datac => \Arch|Cx|_~1_combout\,
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|Cx|R[7]~5_combout\);

-- Location: LCCOMB_X65_Y48_N16
\Arch|Cx|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[7]~6_combout\ = (\Arch|Cx|R[7]~4_combout\) # ((\Arch|Cx|R[7]~2_combout\) # (\Arch|Cx|R[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[7]~4_combout\,
	datac => \Arch|Cx|R[7]~2_combout\,
	datad => \Arch|Cx|R[7]~5_combout\,
	combout => \Arch|Cx|R[7]~6_combout\);

-- Location: FF_X65_Y48_N17
\Arch|Cx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(7));

-- Location: LCCOMB_X65_Y48_N12
\Arch|Cx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~59_combout\,
	combout => \Arch|Cx|_~3_combout\);

-- Location: LCCOMB_X65_Y48_N2
\Arch|Cx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[0]~34_combout\ = (\Arch|Cx|R\(0) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|R\(7) & \Arch|Cx|_~3_combout\)))) # (!\Arch|Cx|R\(0) & (\Arch|Cx|R\(7) & ((\Arch|Cx|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(0),
	datab => \Arch|Cx|R\(7),
	datac => \Arch|Cx|R[7]~0_combout\,
	datad => \Arch|Cx|_~3_combout\,
	combout => \Arch|Cx|R[0]~34_combout\);

-- Location: LCCOMB_X65_Y48_N8
\Arch|Cx|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[0]~35_combout\ = (\Arch|Cx|R[0]~33_combout\) # ((\Arch|Cx|R[0]~34_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[0]~33_combout\,
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|BUS[0]~74_combout\,
	datad => \Arch|Cx|R[0]~34_combout\,
	combout => \Arch|Cx|R[0]~35_combout\);

-- Location: FF_X65_Y48_N9
\Arch|Cx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(0));

-- Location: LCCOMB_X64_Y48_N14
\Arch|Cx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~0_combout\ = (\Arch|Cx|R\(1) & (\Arch|Cx|R\(0) $ (VCC))) # (!\Arch|Cx|R\(1) & (\Arch|Cx|R\(0) & VCC))
-- \Arch|Cx|op_1~1\ = CARRY((\Arch|Cx|R\(1) & \Arch|Cx|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(1),
	datab => \Arch|Cx|R\(0),
	datad => VCC,
	combout => \Arch|Cx|op_1~0_combout\,
	cout => \Arch|Cx|op_1~1\);

-- Location: LCCOMB_X66_Y48_N16
\Arch|Cx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[1]~28_combout\ = (\Arch|Cx|R\(0) & ((\Arch|Cx|R[6]~3_combout\) # ((\Arch|Cx|R[5]~7_combout\ & \Arch|Cx|R\(2))))) # (!\Arch|Cx|R\(0) & (\Arch|Cx|R[5]~7_combout\ & (\Arch|Cx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(0),
	datab => \Arch|Cx|R[5]~7_combout\,
	datac => \Arch|Cx|R\(2),
	datad => \Arch|Cx|R[6]~3_combout\,
	combout => \Arch|Cx|R[1]~28_combout\);

-- Location: LCCOMB_X69_Y48_N8
\Arch|Cx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~1_cout\ = CARRY(\Arch|Cx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(0),
	datad => VCC,
	cout => \Arch|Cx|op_2~1_cout\);

-- Location: LCCOMB_X69_Y48_N10
\Arch|Cx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~2_combout\ = (\Arch|Cx|R\(1) & (\Arch|Cx|op_2~1_cout\ & VCC)) # (!\Arch|Cx|R\(1) & (!\Arch|Cx|op_2~1_cout\))
-- \Arch|Cx|op_2~3\ = CARRY((!\Arch|Cx|R\(1) & !\Arch|Cx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|R\(1),
	datad => VCC,
	cin => \Arch|Cx|op_2~1_cout\,
	combout => \Arch|Cx|op_2~2_combout\,
	cout => \Arch|Cx|op_2~3\);

-- Location: LCCOMB_X66_Y48_N22
\Arch|Cx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[1]~29_combout\ = (\Arch|Cx|R\(1) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|op_2~2_combout\ & \Arch|Cx|_~2_combout\)))) # (!\Arch|Cx|R\(1) & (\Arch|Cx|op_2~2_combout\ & ((\Arch|Cx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(1),
	datab => \Arch|Cx|op_2~2_combout\,
	datac => \Arch|Cx|R[7]~0_combout\,
	datad => \Arch|Cx|_~2_combout\,
	combout => \Arch|Cx|R[1]~29_combout\);

-- Location: LCCOMB_X67_Y48_N2
\Arch|Cx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[1]~30_combout\ = (\Arch|Cx|R[1]~28_combout\) # ((\Arch|Cx|R[1]~29_combout\) # ((\Arch|Cx|op_1~0_combout\ & \Arch|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|op_1~0_combout\,
	datab => \Arch|Cx|_~0_combout\,
	datac => \Arch|Cx|R[1]~28_combout\,
	datad => \Arch|Cx|R[1]~29_combout\,
	combout => \Arch|Cx|R[1]~30_combout\);

-- Location: LCCOMB_X67_Y48_N0
\Arch|Cx|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[1]~31_combout\ = (\Arch|Cx|R[1]~30_combout\) # ((\Arch|BUS[1]~65_combout\ & \Arch|Cx|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[1]~65_combout\,
	datab => \Arch|Cx|_~1_combout\,
	datad => \Arch|Cx|R[1]~30_combout\,
	combout => \Arch|Cx|R[1]~31_combout\);

-- Location: FF_X67_Y48_N1
\Arch|Cx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(1));

-- Location: LCCOMB_X69_Y48_N12
\Arch|Cx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~4_combout\ = (\Arch|Cx|R\(2) & ((GND) # (!\Arch|Cx|op_2~3\))) # (!\Arch|Cx|R\(2) & (\Arch|Cx|op_2~3\ $ (GND)))
-- \Arch|Cx|op_2~5\ = CARRY((\Arch|Cx|R\(2)) # (!\Arch|Cx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(2),
	datad => VCC,
	cin => \Arch|Cx|op_2~3\,
	combout => \Arch|Cx|op_2~4_combout\,
	cout => \Arch|Cx|op_2~5\);

-- Location: LCCOMB_X67_Y48_N26
\Arch|Cx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[2]~25_combout\ = (\Arch|Cx|R\(2) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|op_2~4_combout\ & \Arch|Cx|_~2_combout\)))) # (!\Arch|Cx|R\(2) & (((\Arch|Cx|op_2~4_combout\ & \Arch|Cx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(2),
	datab => \Arch|Cx|R[7]~0_combout\,
	datac => \Arch|Cx|op_2~4_combout\,
	datad => \Arch|Cx|_~2_combout\,
	combout => \Arch|Cx|R[2]~25_combout\);

-- Location: LCCOMB_X64_Y48_N16
\Arch|Cx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~2_combout\ = (\Arch|Cx|R\(2) & (!\Arch|Cx|op_1~1\)) # (!\Arch|Cx|R\(2) & ((\Arch|Cx|op_1~1\) # (GND)))
-- \Arch|Cx|op_1~3\ = CARRY((!\Arch|Cx|op_1~1\) # (!\Arch|Cx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(2),
	datad => VCC,
	cin => \Arch|Cx|op_1~1\,
	combout => \Arch|Cx|op_1~2_combout\,
	cout => \Arch|Cx|op_1~3\);

-- Location: LCCOMB_X66_Y48_N14
\Arch|Cx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[2]~24_combout\ = (\Arch|Cx|R\(3) & ((\Arch|Cx|R[5]~7_combout\) # ((\Arch|Cx|R\(1) & \Arch|Cx|R[6]~3_combout\)))) # (!\Arch|Cx|R\(3) & (\Arch|Cx|R\(1) & ((\Arch|Cx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(3),
	datab => \Arch|Cx|R\(1),
	datac => \Arch|Cx|R[5]~7_combout\,
	datad => \Arch|Cx|R[6]~3_combout\,
	combout => \Arch|Cx|R[2]~24_combout\);

-- Location: LCCOMB_X67_Y48_N4
\Arch|Cx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[2]~26_combout\ = (\Arch|Cx|R[2]~25_combout\) # ((\Arch|Cx|R[2]~24_combout\) # ((\Arch|Cx|op_1~2_combout\ & \Arch|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[2]~25_combout\,
	datab => \Arch|Cx|op_1~2_combout\,
	datac => \Arch|Cx|_~0_combout\,
	datad => \Arch|Cx|R[2]~24_combout\,
	combout => \Arch|Cx|R[2]~26_combout\);

-- Location: LCCOMB_X67_Y48_N18
\Arch|Cx|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[2]~27_combout\ = (\Arch|Cx|R[2]~26_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[2]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|Cx|R[2]~26_combout\,
	datad => \Arch|BUS[2]~56_combout\,
	combout => \Arch|Cx|R[2]~27_combout\);

-- Location: FF_X67_Y48_N19
\Arch|Cx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(2));

-- Location: LCCOMB_X69_Y48_N14
\Arch|Cx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~6_combout\ = (\Arch|Cx|R\(3) & (\Arch|Cx|op_2~5\ & VCC)) # (!\Arch|Cx|R\(3) & (!\Arch|Cx|op_2~5\))
-- \Arch|Cx|op_2~7\ = CARRY((!\Arch|Cx|R\(3) & !\Arch|Cx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(3),
	datad => VCC,
	cin => \Arch|Cx|op_2~5\,
	combout => \Arch|Cx|op_2~6_combout\,
	cout => \Arch|Cx|op_2~7\);

-- Location: LCCOMB_X67_Y48_N6
\Arch|Cx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[3]~21_combout\ = (\Arch|Cx|op_2~6_combout\ & ((\Arch|Cx|_~2_combout\) # ((\Arch|Cx|R\(3) & \Arch|Cx|R[7]~0_combout\)))) # (!\Arch|Cx|op_2~6_combout\ & (\Arch|Cx|R\(3) & (\Arch|Cx|R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|op_2~6_combout\,
	datab => \Arch|Cx|R\(3),
	datac => \Arch|Cx|R[7]~0_combout\,
	datad => \Arch|Cx|_~2_combout\,
	combout => \Arch|Cx|R[3]~21_combout\);

-- Location: LCCOMB_X64_Y48_N18
\Arch|Cx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~4_combout\ = (\Arch|Cx|R\(3) & (\Arch|Cx|op_1~3\ $ (GND))) # (!\Arch|Cx|R\(3) & (!\Arch|Cx|op_1~3\ & VCC))
-- \Arch|Cx|op_1~5\ = CARRY((\Arch|Cx|R\(3) & !\Arch|Cx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(3),
	datad => VCC,
	cin => \Arch|Cx|op_1~3\,
	combout => \Arch|Cx|op_1~4_combout\,
	cout => \Arch|Cx|op_1~5\);

-- Location: LCCOMB_X66_Y48_N20
\Arch|Cx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[3]~20_combout\ = (\Arch|Cx|R\(2) & ((\Arch|Cx|R[6]~3_combout\) # ((\Arch|Cx|R\(4) & \Arch|Cx|R[5]~7_combout\)))) # (!\Arch|Cx|R\(2) & (\Arch|Cx|R\(4) & (\Arch|Cx|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(2),
	datab => \Arch|Cx|R\(4),
	datac => \Arch|Cx|R[5]~7_combout\,
	datad => \Arch|Cx|R[6]~3_combout\,
	combout => \Arch|Cx|R[3]~20_combout\);

-- Location: LCCOMB_X67_Y48_N8
\Arch|Cx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[3]~22_combout\ = (\Arch|Cx|R[3]~21_combout\) # ((\Arch|Cx|R[3]~20_combout\) # ((\Arch|Cx|op_1~4_combout\ & \Arch|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[3]~21_combout\,
	datab => \Arch|Cx|op_1~4_combout\,
	datac => \Arch|Cx|_~0_combout\,
	datad => \Arch|Cx|R[3]~20_combout\,
	combout => \Arch|Cx|R[3]~22_combout\);

-- Location: LCCOMB_X67_Y48_N12
\Arch|Cx|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[3]~23_combout\ = (\Arch|Cx|R[3]~22_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|Cx|R[3]~22_combout\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|Cx|R[3]~23_combout\);

-- Location: FF_X67_Y48_N13
\Arch|Cx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(3));

-- Location: LCCOMB_X64_Y48_N30
\Arch|Cx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[4]~16_combout\ = (\Arch|Cx|R\(5) & ((\Arch|Cx|R[5]~7_combout\) # ((\Arch|Cx|R\(3) & \Arch|Cx|R[6]~3_combout\)))) # (!\Arch|Cx|R\(5) & (\Arch|Cx|R\(3) & (\Arch|Cx|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(5),
	datab => \Arch|Cx|R\(3),
	datac => \Arch|Cx|R[6]~3_combout\,
	datad => \Arch|Cx|R[5]~7_combout\,
	combout => \Arch|Cx|R[4]~16_combout\);

-- Location: LCCOMB_X64_Y48_N20
\Arch|Cx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_1~6_combout\ = (\Arch|Cx|R\(4) & (!\Arch|Cx|op_1~5\)) # (!\Arch|Cx|R\(4) & ((\Arch|Cx|op_1~5\) # (GND)))
-- \Arch|Cx|op_1~7\ = CARRY((!\Arch|Cx|op_1~5\) # (!\Arch|Cx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(4),
	datad => VCC,
	cin => \Arch|Cx|op_1~5\,
	combout => \Arch|Cx|op_1~6_combout\,
	cout => \Arch|Cx|op_1~7\);

-- Location: LCCOMB_X69_Y48_N16
\Arch|Cx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~8_combout\ = (\Arch|Cx|R\(4) & ((GND) # (!\Arch|Cx|op_2~7\))) # (!\Arch|Cx|R\(4) & (\Arch|Cx|op_2~7\ $ (GND)))
-- \Arch|Cx|op_2~9\ = CARRY((\Arch|Cx|R\(4)) # (!\Arch|Cx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(4),
	datad => VCC,
	cin => \Arch|Cx|op_2~7\,
	combout => \Arch|Cx|op_2~8_combout\,
	cout => \Arch|Cx|op_2~9\);

-- Location: LCCOMB_X64_Y48_N28
\Arch|Cx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[4]~17_combout\ = (\Arch|Cx|R\(4) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|op_2~8_combout\ & \Arch|Cx|_~2_combout\)))) # (!\Arch|Cx|R\(4) & (\Arch|Cx|op_2~8_combout\ & (\Arch|Cx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(4),
	datab => \Arch|Cx|op_2~8_combout\,
	datac => \Arch|Cx|_~2_combout\,
	datad => \Arch|Cx|R[7]~0_combout\,
	combout => \Arch|Cx|R[4]~17_combout\);

-- Location: LCCOMB_X64_Y48_N8
\Arch|Cx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[4]~18_combout\ = (\Arch|Cx|R[4]~16_combout\) # ((\Arch|Cx|R[4]~17_combout\) # ((\Arch|Cx|op_1~6_combout\ & \Arch|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[4]~16_combout\,
	datab => \Arch|Cx|op_1~6_combout\,
	datac => \Arch|Cx|_~0_combout\,
	datad => \Arch|Cx|R[4]~17_combout\,
	combout => \Arch|Cx|R[4]~18_combout\);

-- Location: LCCOMB_X64_Y48_N6
\Arch|Cx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[4]~19_combout\ = (\Arch|Cx|R[4]~18_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[4]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|Cx|R[4]~18_combout\,
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|Cx|R[4]~19_combout\);

-- Location: FF_X64_Y48_N7
\Arch|Cx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(4));

-- Location: LCCOMB_X65_Y48_N18
\Arch|Cx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[5]~12_combout\ = (\Arch|Cx|R[5]~7_combout\ & ((\Arch|Cx|R\(6)) # ((\Arch|Cx|R\(4) & \Arch|Cx|R[6]~3_combout\)))) # (!\Arch|Cx|R[5]~7_combout\ & (\Arch|Cx|R\(4) & ((\Arch|Cx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R[5]~7_combout\,
	datab => \Arch|Cx|R\(4),
	datac => \Arch|Cx|R\(6),
	datad => \Arch|Cx|R[6]~3_combout\,
	combout => \Arch|Cx|R[5]~12_combout\);

-- Location: LCCOMB_X69_Y48_N18
\Arch|Cx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|op_2~10_combout\ = (\Arch|Cx|R\(5) & (\Arch|Cx|op_2~9\ & VCC)) # (!\Arch|Cx|R\(5) & (!\Arch|Cx|op_2~9\))
-- \Arch|Cx|op_2~11\ = CARRY((!\Arch|Cx|R\(5) & !\Arch|Cx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(5),
	datad => VCC,
	cin => \Arch|Cx|op_2~9\,
	combout => \Arch|Cx|op_2~10_combout\,
	cout => \Arch|Cx|op_2~11\);

-- Location: LCCOMB_X64_Y48_N2
\Arch|Cx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[5]~13_combout\ = (\Arch|Cx|R\(5) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|op_2~10_combout\ & \Arch|Cx|_~2_combout\)))) # (!\Arch|Cx|R\(5) & (\Arch|Cx|op_2~10_combout\ & (\Arch|Cx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(5),
	datab => \Arch|Cx|op_2~10_combout\,
	datac => \Arch|Cx|_~2_combout\,
	datad => \Arch|Cx|R[7]~0_combout\,
	combout => \Arch|Cx|R[5]~13_combout\);

-- Location: LCCOMB_X64_Y48_N4
\Arch|Cx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[5]~14_combout\ = (\Arch|Cx|R[5]~12_combout\) # ((\Arch|Cx|R[5]~13_combout\) # ((\Arch|Cx|op_1~8_combout\ & \Arch|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|op_1~8_combout\,
	datab => \Arch|Cx|R[5]~12_combout\,
	datac => \Arch|Cx|_~0_combout\,
	datad => \Arch|Cx|R[5]~13_combout\,
	combout => \Arch|Cx|R[5]~14_combout\);

-- Location: LCCOMB_X64_Y48_N12
\Arch|Cx|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[5]~15_combout\ = (\Arch|Cx|R[5]~14_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|Cx|R[5]~14_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|Cx|R[5]~15_combout\);

-- Location: FF_X64_Y48_N13
\Arch|Cx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(5));

-- Location: LCCOMB_X65_Y48_N4
\Arch|Cx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[6]~8_combout\ = (\Arch|Cx|R\(6) & ((\Arch|Cx|R[7]~0_combout\) # ((\Arch|Cx|R\(7) & \Arch|Cx|R[5]~7_combout\)))) # (!\Arch|Cx|R\(6) & (\Arch|Cx|R\(7) & ((\Arch|Cx|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(6),
	datab => \Arch|Cx|R\(7),
	datac => \Arch|Cx|R[7]~0_combout\,
	datad => \Arch|Cx|R[5]~7_combout\,
	combout => \Arch|Cx|R[6]~8_combout\);

-- Location: LCCOMB_X65_Y48_N26
\Arch|Cx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[6]~9_combout\ = (\Arch|Cx|R\(5) & ((\Arch|Cx|R[6]~3_combout\) # ((\Arch|Cx|op_1~10_combout\ & \Arch|Cx|_~0_combout\)))) # (!\Arch|Cx|R\(5) & (((\Arch|Cx|op_1~10_combout\ & \Arch|Cx|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(5),
	datab => \Arch|Cx|R[6]~3_combout\,
	datac => \Arch|Cx|op_1~10_combout\,
	datad => \Arch|Cx|_~0_combout\,
	combout => \Arch|Cx|R[6]~9_combout\);

-- Location: LCCOMB_X65_Y48_N20
\Arch|Cx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[6]~10_combout\ = (\Arch|Cx|R[6]~8_combout\) # ((\Arch|Cx|R[6]~9_combout\) # ((\Arch|Cx|op_2~12_combout\ & \Arch|Cx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|op_2~12_combout\,
	datab => \Arch|Cx|_~2_combout\,
	datac => \Arch|Cx|R[6]~8_combout\,
	datad => \Arch|Cx|R[6]~9_combout\,
	combout => \Arch|Cx|R[6]~10_combout\);

-- Location: LCCOMB_X65_Y48_N14
\Arch|Cx|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Cx|R[6]~11_combout\ = (\Arch|Cx|R[6]~10_combout\) # ((\Arch|Cx|_~1_combout\ & \Arch|BUS[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Cx|_~1_combout\,
	datac => \Arch|BUS[6]~20_combout\,
	datad => \Arch|Cx|R[6]~10_combout\,
	combout => \Arch|Cx|R[6]~11_combout\);

-- Location: FF_X65_Y48_N15
\Arch|Cx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Cx|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Cx|R\(6));

-- Location: LCCOMB_X65_Y47_N30
\Arch|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~29_combout\ = (!\Arch|SelBus[0]~3_combout\ & (!\Arch|SelBus[4]~2_combout\ & (\Arch|_~53_combout\ & \Arch|SelBus[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|SelBus[4]~2_combout\,
	datac => \Arch|_~53_combout\,
	datad => \Arch|SelBus[1]~4_combout\,
	combout => \Arch|_~29_combout\);

-- Location: LCCOMB_X66_Y46_N26
\Arch|BUS[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~14_combout\ = (\Arch|_~30_combout\ & ((\Arch|DI|R\(6)) # ((\Arch|Cx|R\(6) & \Arch|_~29_combout\)))) # (!\Arch|_~30_combout\ & (\Arch|Cx|R\(6) & ((\Arch|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~30_combout\,
	datab => \Arch|Cx|R\(6),
	datac => \Arch|DI|R\(6),
	datad => \Arch|_~29_combout\,
	combout => \Arch|BUS[6]~14_combout\);

-- Location: LCCOMB_X64_Y45_N0
\Arch|_~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~57_combout\ = (\Arch|_~46_combout\ & ((\SelDST~input_o\ & (!\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((!\Arch|DST|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \DST_UC[4]~input_o\,
	datac => \Arch|DST|R\(4),
	datad => \Arch|_~46_combout\,
	combout => \Arch|_~57_combout\);

-- Location: LCCOMB_X63_Y46_N12
\Arch|Bx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|_~2_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~57_combout\,
	combout => \Arch|Bx|_~2_combout\);

-- Location: LCCOMB_X63_Y46_N10
\Arch|Bx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|_~0_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~57_combout\,
	combout => \Arch|Bx|_~0_combout\);

-- Location: LCCOMB_X63_Y46_N8
\Arch|Bx|R[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[5]~8_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Arch|_~57_combout\,
	combout => \Arch|Bx|R[5]~8_combout\);

-- Location: LCCOMB_X65_Y46_N10
\Arch|Bx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[0]~32_combout\ = (\Cmd[1]~input_o\ & (\Arch|_~57_combout\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \Arch|_~57_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Arch|Bx|R[0]~32_combout\);

-- Location: LCCOMB_X65_Y46_N0
\Arch|Bx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[0]~33_combout\ = (\Arch|Bx|R\(1) & ((\Arch|Bx|R[5]~8_combout\) # ((!\Arch|Bx|R\(0) & \Arch|Bx|R[0]~32_combout\)))) # (!\Arch|Bx|R\(1) & (!\Arch|Bx|R\(0) & ((\Arch|Bx|R[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(1),
	datab => \Arch|Bx|R\(0),
	datac => \Arch|Bx|R[5]~8_combout\,
	datad => \Arch|Bx|R[0]~32_combout\,
	combout => \Arch|Bx|R[0]~33_combout\);

-- Location: LCCOMB_X65_Y46_N26
\Arch|Bx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|_~3_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (\Arch|_~57_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Arch|_~57_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \Arch|Bx|_~3_combout\);

-- Location: LCCOMB_X65_Y46_N14
\Arch|Bx|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~1_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\Arch|_~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Arch|_~57_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \Arch|Bx|R[7]~1_combout\);

-- Location: LCCOMB_X64_Y46_N26
\Arch|Bx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~10_combout\ = (\Arch|Bx|R\(6) & (!\Arch|Bx|op_1~9\)) # (!\Arch|Bx|R\(6) & ((\Arch|Bx|op_1~9\) # (GND)))
-- \Arch|Bx|op_1~11\ = CARRY((!\Arch|Bx|op_1~9\) # (!\Arch|Bx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(6),
	datad => VCC,
	cin => \Arch|Bx|op_1~9\,
	combout => \Arch|Bx|op_1~10_combout\,
	cout => \Arch|Bx|op_1~11\);

-- Location: LCCOMB_X64_Y46_N28
\Arch|Bx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~12_combout\ = \Arch|Bx|R\(7) $ (!\Arch|Bx|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(7),
	cin => \Arch|Bx|op_1~11\,
	combout => \Arch|Bx|op_1~12_combout\);

-- Location: LCCOMB_X64_Y46_N6
\Arch|Bx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|_~1_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~57_combout\,
	combout => \Arch|Bx|_~1_combout\);

-- Location: LCCOMB_X66_Y46_N8
\Arch|Bx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~1_cout\ = CARRY(\Arch|Bx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(0),
	datad => VCC,
	cout => \Arch|Bx|op_2~1_cout\);

-- Location: LCCOMB_X66_Y46_N10
\Arch|Bx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~2_combout\ = (\Arch|Bx|R\(1) & (\Arch|Bx|op_2~1_cout\ & VCC)) # (!\Arch|Bx|R\(1) & (!\Arch|Bx|op_2~1_cout\))
-- \Arch|Bx|op_2~3\ = CARRY((!\Arch|Bx|R\(1) & !\Arch|Bx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(1),
	datad => VCC,
	cin => \Arch|Bx|op_2~1_cout\,
	combout => \Arch|Bx|op_2~2_combout\,
	cout => \Arch|Bx|op_2~3\);

-- Location: LCCOMB_X66_Y46_N12
\Arch|Bx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~4_combout\ = (\Arch|Bx|R\(2) & ((GND) # (!\Arch|Bx|op_2~3\))) # (!\Arch|Bx|R\(2) & (\Arch|Bx|op_2~3\ $ (GND)))
-- \Arch|Bx|op_2~5\ = CARRY((\Arch|Bx|R\(2)) # (!\Arch|Bx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(2),
	datad => VCC,
	cin => \Arch|Bx|op_2~3\,
	combout => \Arch|Bx|op_2~4_combout\,
	cout => \Arch|Bx|op_2~5\);

-- Location: LCCOMB_X66_Y46_N14
\Arch|Bx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~6_combout\ = (\Arch|Bx|R\(3) & (\Arch|Bx|op_2~5\ & VCC)) # (!\Arch|Bx|R\(3) & (!\Arch|Bx|op_2~5\))
-- \Arch|Bx|op_2~7\ = CARRY((!\Arch|Bx|R\(3) & !\Arch|Bx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(3),
	datad => VCC,
	cin => \Arch|Bx|op_2~5\,
	combout => \Arch|Bx|op_2~6_combout\,
	cout => \Arch|Bx|op_2~7\);

-- Location: LCCOMB_X66_Y46_N16
\Arch|Bx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~8_combout\ = (\Arch|Bx|R\(4) & ((GND) # (!\Arch|Bx|op_2~7\))) # (!\Arch|Bx|R\(4) & (\Arch|Bx|op_2~7\ $ (GND)))
-- \Arch|Bx|op_2~9\ = CARRY((\Arch|Bx|R\(4)) # (!\Arch|Bx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(4),
	datad => VCC,
	cin => \Arch|Bx|op_2~7\,
	combout => \Arch|Bx|op_2~8_combout\,
	cout => \Arch|Bx|op_2~9\);

-- Location: LCCOMB_X66_Y46_N18
\Arch|Bx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~10_combout\ = (\Arch|Bx|R\(5) & (\Arch|Bx|op_2~9\ & VCC)) # (!\Arch|Bx|R\(5) & (!\Arch|Bx|op_2~9\))
-- \Arch|Bx|op_2~11\ = CARRY((!\Arch|Bx|R\(5) & !\Arch|Bx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(5),
	datad => VCC,
	cin => \Arch|Bx|op_2~9\,
	combout => \Arch|Bx|op_2~10_combout\,
	cout => \Arch|Bx|op_2~11\);

-- Location: LCCOMB_X66_Y46_N20
\Arch|Bx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~12_combout\ = (\Arch|Bx|R\(6) & ((GND) # (!\Arch|Bx|op_2~11\))) # (!\Arch|Bx|R\(6) & (\Arch|Bx|op_2~11\ $ (GND)))
-- \Arch|Bx|op_2~13\ = CARRY((\Arch|Bx|R\(6)) # (!\Arch|Bx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(6),
	datad => VCC,
	cin => \Arch|Bx|op_2~11\,
	combout => \Arch|Bx|op_2~12_combout\,
	cout => \Arch|Bx|op_2~13\);

-- Location: LCCOMB_X66_Y46_N22
\Arch|Bx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_2~14_combout\ = \Arch|Bx|op_2~13\ $ (!\Arch|Bx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|Bx|R\(7),
	cin => \Arch|Bx|op_2~13\,
	combout => \Arch|Bx|op_2~14_combout\);

-- Location: LCCOMB_X65_Y46_N22
\Arch|Bx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~5_combout\ = (\Arch|Bx|op_1~12_combout\ & ((\Arch|Bx|_~2_combout\) # ((\Arch|Bx|_~1_combout\ & \Arch|Bx|op_2~14_combout\)))) # (!\Arch|Bx|op_1~12_combout\ & (((\Arch|Bx|_~1_combout\ & \Arch|Bx|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|op_1~12_combout\,
	datab => \Arch|Bx|_~2_combout\,
	datac => \Arch|Bx|_~1_combout\,
	datad => \Arch|Bx|op_2~14_combout\,
	combout => \Arch|Bx|R[7]~5_combout\);

-- Location: LCCOMB_X64_Y46_N4
\Arch|Bx|R[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[6]~0_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~57_combout\,
	combout => \Arch|Bx|R[6]~0_combout\);

-- Location: LCCOMB_X65_Y46_N28
\Arch|Bx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~2_combout\ = (\Cmd[0]~input_o\ & (\Arch|Bx|R\(0) & (\Cmd[1]~input_o\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|Bx|R\(0),
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \Arch|Bx|R[7]~2_combout\);

-- Location: LCCOMB_X65_Y46_N6
\Arch|Bx|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~3_combout\ = (\Arch|_~57_combout\ & ((\Arch|Bx|R[7]~2_combout\) # ((\Arch|Bx|R[7]~1_combout\ & \Arch|Bx|R\(7))))) # (!\Arch|_~57_combout\ & (((\Arch|Bx|R[7]~1_combout\ & \Arch|Bx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~57_combout\,
	datab => \Arch|Bx|R[7]~2_combout\,
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|R\(7),
	combout => \Arch|Bx|R[7]~3_combout\);

-- Location: LCCOMB_X65_Y46_N16
\Arch|Bx|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~4_combout\ = (\Arch|Bx|R[7]~3_combout\) # ((\Arch|Bx|R\(6) & \Arch|Bx|R[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(6),
	datac => \Arch|Bx|R[6]~0_combout\,
	datad => \Arch|Bx|R[7]~3_combout\,
	combout => \Arch|Bx|R[7]~4_combout\);

-- Location: LCCOMB_X65_Y46_N12
\Arch|Bx|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[7]~6_combout\ = (\Arch|Bx|R[7]~5_combout\) # ((\Arch|Bx|R[7]~4_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R[7]~5_combout\,
	datab => \Arch|Bx|R[7]~4_combout\,
	datac => \Arch|Bx|_~0_combout\,
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|Bx|R[7]~6_combout\);

-- Location: FF_X65_Y46_N13
\Arch|Bx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(7));

-- Location: LCCOMB_X65_Y46_N4
\Arch|Bx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[0]~34_combout\ = (\Arch|Bx|_~3_combout\ & ((\Arch|Bx|R\(7)) # ((\Arch|Bx|R[7]~1_combout\ & \Arch|Bx|R\(0))))) # (!\Arch|Bx|_~3_combout\ & (\Arch|Bx|R[7]~1_combout\ & ((\Arch|Bx|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~3_combout\,
	datab => \Arch|Bx|R[7]~1_combout\,
	datac => \Arch|Bx|R\(7),
	datad => \Arch|Bx|R\(0),
	combout => \Arch|Bx|R[0]~34_combout\);

-- Location: LCCOMB_X65_Y46_N20
\Arch|Bx|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[0]~35_combout\ = (\Arch|Bx|R[0]~33_combout\) # ((\Arch|Bx|R[0]~34_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~0_combout\,
	datab => \Arch|Bx|R[0]~33_combout\,
	datac => \Arch|Bx|R[0]~34_combout\,
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|Bx|R[0]~35_combout\);

-- Location: FF_X65_Y46_N21
\Arch|Bx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(0));

-- Location: LCCOMB_X64_Y46_N16
\Arch|Bx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~0_combout\ = (\Arch|Bx|R\(1) & (\Arch|Bx|R\(0) $ (VCC))) # (!\Arch|Bx|R\(1) & (\Arch|Bx|R\(0) & VCC))
-- \Arch|Bx|op_1~1\ = CARRY((\Arch|Bx|R\(1) & \Arch|Bx|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(1),
	datab => \Arch|Bx|R\(0),
	datad => VCC,
	combout => \Arch|Bx|op_1~0_combout\,
	cout => \Arch|Bx|op_1~1\);

-- Location: LCCOMB_X63_Y46_N22
\Arch|Bx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[1]~28_combout\ = (\Arch|Bx|R\(0) & ((\Arch|Bx|R[6]~0_combout\) # ((\Arch|Bx|R[5]~8_combout\ & \Arch|Bx|R\(2))))) # (!\Arch|Bx|R\(0) & (\Arch|Bx|R[5]~8_combout\ & (\Arch|Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(0),
	datab => \Arch|Bx|R[5]~8_combout\,
	datac => \Arch|Bx|R\(2),
	datad => \Arch|Bx|R[6]~0_combout\,
	combout => \Arch|Bx|R[1]~28_combout\);

-- Location: LCCOMB_X63_Y46_N20
\Arch|Bx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[1]~29_combout\ = (\Arch|Bx|op_2~2_combout\ & ((\Arch|Bx|_~1_combout\) # ((\Arch|Bx|R\(1) & \Arch|Bx|R[7]~1_combout\)))) # (!\Arch|Bx|op_2~2_combout\ & (\Arch|Bx|R\(1) & (\Arch|Bx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|op_2~2_combout\,
	datab => \Arch|Bx|R\(1),
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|_~1_combout\,
	combout => \Arch|Bx|R[1]~29_combout\);

-- Location: LCCOMB_X63_Y46_N14
\Arch|Bx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[1]~30_combout\ = (\Arch|Bx|R[1]~28_combout\) # ((\Arch|Bx|R[1]~29_combout\) # ((\Arch|Bx|_~2_combout\ & \Arch|Bx|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~2_combout\,
	datab => \Arch|Bx|op_1~0_combout\,
	datac => \Arch|Bx|R[1]~28_combout\,
	datad => \Arch|Bx|R[1]~29_combout\,
	combout => \Arch|Bx|R[1]~30_combout\);

-- Location: LCCOMB_X63_Y46_N16
\Arch|Bx|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[1]~31_combout\ = (\Arch|Bx|R[1]~30_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[1]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~0_combout\,
	datac => \Arch|Bx|R[1]~30_combout\,
	datad => \Arch|BUS[1]~65_combout\,
	combout => \Arch|Bx|R[1]~31_combout\);

-- Location: FF_X63_Y46_N17
\Arch|Bx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(1));

-- Location: LCCOMB_X64_Y46_N18
\Arch|Bx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~2_combout\ = (\Arch|Bx|R\(2) & (!\Arch|Bx|op_1~1\)) # (!\Arch|Bx|R\(2) & ((\Arch|Bx|op_1~1\) # (GND)))
-- \Arch|Bx|op_1~3\ = CARRY((!\Arch|Bx|op_1~1\) # (!\Arch|Bx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(2),
	datad => VCC,
	cin => \Arch|Bx|op_1~1\,
	combout => \Arch|Bx|op_1~2_combout\,
	cout => \Arch|Bx|op_1~3\);

-- Location: LCCOMB_X63_Y46_N26
\Arch|Bx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[2]~25_combout\ = (\Arch|Bx|op_2~4_combout\ & ((\Arch|Bx|_~1_combout\) # ((\Arch|Bx|R\(2) & \Arch|Bx|R[7]~1_combout\)))) # (!\Arch|Bx|op_2~4_combout\ & (\Arch|Bx|R\(2) & (\Arch|Bx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|op_2~4_combout\,
	datab => \Arch|Bx|R\(2),
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|_~1_combout\,
	combout => \Arch|Bx|R[2]~25_combout\);

-- Location: LCCOMB_X63_Y46_N24
\Arch|Bx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[2]~26_combout\ = (\Arch|Bx|R[2]~25_combout\) # ((\Arch|Bx|op_1~2_combout\ & \Arch|Bx|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|op_1~2_combout\,
	datac => \Arch|Bx|R[2]~25_combout\,
	datad => \Arch|Bx|_~2_combout\,
	combout => \Arch|Bx|R[2]~26_combout\);

-- Location: LCCOMB_X63_Y46_N4
\Arch|Bx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[2]~24_combout\ = (\Arch|Bx|R\(3) & ((\Arch|Bx|R[5]~8_combout\) # ((\Arch|Bx|R\(1) & \Arch|Bx|R[6]~0_combout\)))) # (!\Arch|Bx|R\(3) & (\Arch|Bx|R\(1) & ((\Arch|Bx|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(3),
	datab => \Arch|Bx|R\(1),
	datac => \Arch|Bx|R[5]~8_combout\,
	datad => \Arch|Bx|R[6]~0_combout\,
	combout => \Arch|Bx|R[2]~24_combout\);

-- Location: LCCOMB_X63_Y46_N6
\Arch|Bx|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[2]~27_combout\ = (\Arch|Bx|R[2]~26_combout\) # ((\Arch|Bx|R[2]~24_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~0_combout\,
	datab => \Arch|Bx|R[2]~26_combout\,
	datac => \Arch|BUS[2]~56_combout\,
	datad => \Arch|Bx|R[2]~24_combout\,
	combout => \Arch|Bx|R[2]~27_combout\);

-- Location: FF_X63_Y46_N7
\Arch|Bx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(2));

-- Location: LCCOMB_X63_Y46_N2
\Arch|Bx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[3]~20_combout\ = (\Arch|Bx|R\(4) & ((\Arch|Bx|R[5]~8_combout\) # ((\Arch|Bx|R\(2) & \Arch|Bx|R[6]~0_combout\)))) # (!\Arch|Bx|R\(4) & (\Arch|Bx|R\(2) & ((\Arch|Bx|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(4),
	datab => \Arch|Bx|R\(2),
	datac => \Arch|Bx|R[5]~8_combout\,
	datad => \Arch|Bx|R[6]~0_combout\,
	combout => \Arch|Bx|R[3]~20_combout\);

-- Location: LCCOMB_X64_Y46_N20
\Arch|Bx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~4_combout\ = (\Arch|Bx|R\(3) & (\Arch|Bx|op_1~3\ $ (GND))) # (!\Arch|Bx|R\(3) & (!\Arch|Bx|op_1~3\ & VCC))
-- \Arch|Bx|op_1~5\ = CARRY((\Arch|Bx|R\(3) & !\Arch|Bx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(3),
	datad => VCC,
	cin => \Arch|Bx|op_1~3\,
	combout => \Arch|Bx|op_1~4_combout\,
	cout => \Arch|Bx|op_1~5\);

-- Location: LCCOMB_X63_Y46_N28
\Arch|Bx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[3]~21_combout\ = (\Arch|Bx|R\(3) & ((\Arch|Bx|R[7]~1_combout\) # ((\Arch|Bx|op_2~6_combout\ & \Arch|Bx|_~1_combout\)))) # (!\Arch|Bx|R\(3) & (\Arch|Bx|op_2~6_combout\ & ((\Arch|Bx|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(3),
	datab => \Arch|Bx|op_2~6_combout\,
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|_~1_combout\,
	combout => \Arch|Bx|R[3]~21_combout\);

-- Location: LCCOMB_X63_Y46_N30
\Arch|Bx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[3]~22_combout\ = (\Arch|Bx|R[3]~20_combout\) # ((\Arch|Bx|R[3]~21_combout\) # ((\Arch|Bx|_~2_combout\ & \Arch|Bx|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~2_combout\,
	datab => \Arch|Bx|R[3]~20_combout\,
	datac => \Arch|Bx|op_1~4_combout\,
	datad => \Arch|Bx|R[3]~21_combout\,
	combout => \Arch|Bx|R[3]~22_combout\);

-- Location: LCCOMB_X63_Y46_N0
\Arch|Bx|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[3]~23_combout\ = (\Arch|Bx|R[3]~22_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~0_combout\,
	datac => \Arch|Bx|R[3]~22_combout\,
	datad => \Arch|BUS[3]~47_combout\,
	combout => \Arch|Bx|R[3]~23_combout\);

-- Location: FF_X63_Y46_N1
\Arch|Bx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(3));

-- Location: LCCOMB_X64_Y46_N22
\Arch|Bx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~6_combout\ = (\Arch|Bx|R\(4) & (!\Arch|Bx|op_1~5\)) # (!\Arch|Bx|R\(4) & ((\Arch|Bx|op_1~5\) # (GND)))
-- \Arch|Bx|op_1~7\ = CARRY((!\Arch|Bx|op_1~5\) # (!\Arch|Bx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(4),
	datad => VCC,
	cin => \Arch|Bx|op_1~5\,
	combout => \Arch|Bx|op_1~6_combout\,
	cout => \Arch|Bx|op_1~7\);

-- Location: LCCOMB_X64_Y46_N2
\Arch|Bx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[4]~16_combout\ = (\Arch|Bx|R\(3) & ((\Arch|Bx|R[6]~0_combout\) # ((\Arch|Bx|R\(5) & \Arch|Bx|R[5]~8_combout\)))) # (!\Arch|Bx|R\(3) & (\Arch|Bx|R\(5) & ((\Arch|Bx|R[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(3),
	datab => \Arch|Bx|R\(5),
	datac => \Arch|Bx|R[6]~0_combout\,
	datad => \Arch|Bx|R[5]~8_combout\,
	combout => \Arch|Bx|R[4]~16_combout\);

-- Location: LCCOMB_X65_Y46_N24
\Arch|Bx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[4]~17_combout\ = (\Arch|Bx|R\(4) & ((\Arch|Bx|R[7]~1_combout\) # ((\Arch|Bx|_~1_combout\ & \Arch|Bx|op_2~8_combout\)))) # (!\Arch|Bx|R\(4) & (\Arch|Bx|_~1_combout\ & ((\Arch|Bx|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(4),
	datab => \Arch|Bx|_~1_combout\,
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|op_2~8_combout\,
	combout => \Arch|Bx|R[4]~17_combout\);

-- Location: LCCOMB_X64_Y46_N10
\Arch|Bx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[4]~18_combout\ = (\Arch|Bx|R[4]~16_combout\) # ((\Arch|Bx|R[4]~17_combout\) # ((\Arch|Bx|op_1~6_combout\ & \Arch|Bx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|op_1~6_combout\,
	datab => \Arch|Bx|R[4]~16_combout\,
	datac => \Arch|Bx|_~2_combout\,
	datad => \Arch|Bx|R[4]~17_combout\,
	combout => \Arch|Bx|R[4]~18_combout\);

-- Location: LCCOMB_X64_Y46_N14
\Arch|Bx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[4]~19_combout\ = (\Arch|Bx|R[4]~18_combout\) # ((\Arch|BUS[4]~38_combout\ & \Arch|Bx|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R[4]~18_combout\,
	datac => \Arch|BUS[4]~38_combout\,
	datad => \Arch|Bx|_~0_combout\,
	combout => \Arch|Bx|R[4]~19_combout\);

-- Location: FF_X64_Y46_N15
\Arch|Bx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(4));

-- Location: LCCOMB_X64_Y46_N24
\Arch|Bx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|op_1~8_combout\ = (\Arch|Bx|R\(5) & (\Arch|Bx|op_1~7\ $ (GND))) # (!\Arch|Bx|R\(5) & (!\Arch|Bx|op_1~7\ & VCC))
-- \Arch|Bx|op_1~9\ = CARRY((\Arch|Bx|R\(5) & !\Arch|Bx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Bx|R\(5),
	datad => VCC,
	cin => \Arch|Bx|op_1~7\,
	combout => \Arch|Bx|op_1~8_combout\,
	cout => \Arch|Bx|op_1~9\);

-- Location: LCCOMB_X64_Y46_N30
\Arch|Bx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[5]~13_combout\ = (\Arch|Bx|_~1_combout\ & ((\Arch|Bx|op_2~10_combout\) # ((\Arch|Bx|R\(5) & \Arch|Bx|R[7]~1_combout\)))) # (!\Arch|Bx|_~1_combout\ & (\Arch|Bx|R\(5) & (\Arch|Bx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~1_combout\,
	datab => \Arch|Bx|R\(5),
	datac => \Arch|Bx|R[7]~1_combout\,
	datad => \Arch|Bx|op_2~10_combout\,
	combout => \Arch|Bx|R[5]~13_combout\);

-- Location: LCCOMB_X64_Y46_N12
\Arch|Bx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[5]~12_combout\ = (\Arch|Bx|R\(6) & ((\Arch|Bx|R[5]~8_combout\) # ((\Arch|Bx|R\(4) & \Arch|Bx|R[6]~0_combout\)))) # (!\Arch|Bx|R\(6) & (\Arch|Bx|R\(4) & (\Arch|Bx|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(6),
	datab => \Arch|Bx|R\(4),
	datac => \Arch|Bx|R[6]~0_combout\,
	datad => \Arch|Bx|R[5]~8_combout\,
	combout => \Arch|Bx|R[5]~12_combout\);

-- Location: LCCOMB_X64_Y46_N8
\Arch|Bx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[5]~14_combout\ = (\Arch|Bx|R[5]~13_combout\) # ((\Arch|Bx|R[5]~12_combout\) # ((\Arch|Bx|_~2_combout\ & \Arch|Bx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~2_combout\,
	datab => \Arch|Bx|op_1~8_combout\,
	datac => \Arch|Bx|R[5]~13_combout\,
	datad => \Arch|Bx|R[5]~12_combout\,
	combout => \Arch|Bx|R[5]~14_combout\);

-- Location: LCCOMB_X64_Y46_N0
\Arch|Bx|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[5]~15_combout\ = (\Arch|Bx|R[5]~14_combout\) # ((\Arch|Bx|_~0_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~0_combout\,
	datac => \Arch|Bx|R[5]~14_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|Bx|R[5]~15_combout\);

-- Location: FF_X64_Y46_N1
\Arch|Bx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(5));

-- Location: LCCOMB_X63_Y46_N18
\Arch|Bx|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[6]~7_combout\ = (\Arch|Bx|_~2_combout\ & ((\Arch|Bx|op_1~10_combout\) # ((\Arch|Bx|R\(5) & \Arch|Bx|R[6]~0_combout\)))) # (!\Arch|Bx|_~2_combout\ & (((\Arch|Bx|R\(5) & \Arch|Bx|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~2_combout\,
	datab => \Arch|Bx|op_1~10_combout\,
	datac => \Arch|Bx|R\(5),
	datad => \Arch|Bx|R[6]~0_combout\,
	combout => \Arch|Bx|R[6]~7_combout\);

-- Location: LCCOMB_X66_Y46_N24
\Arch|Bx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[6]~9_combout\ = (\Arch|Bx|R\(7) & ((\Arch|Bx|R[5]~8_combout\) # ((\Arch|Bx|R\(6) & \Arch|Bx|R[7]~1_combout\)))) # (!\Arch|Bx|R\(7) & (\Arch|Bx|R\(6) & ((\Arch|Bx|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(7),
	datab => \Arch|Bx|R\(6),
	datac => \Arch|Bx|R[5]~8_combout\,
	datad => \Arch|Bx|R[7]~1_combout\,
	combout => \Arch|Bx|R[6]~9_combout\);

-- Location: LCCOMB_X66_Y46_N6
\Arch|Bx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[6]~10_combout\ = (\Arch|Bx|R[6]~9_combout\) # ((\Arch|Bx|_~1_combout\ & \Arch|Bx|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|_~1_combout\,
	datab => \Arch|Bx|op_2~12_combout\,
	datad => \Arch|Bx|R[6]~9_combout\,
	combout => \Arch|Bx|R[6]~10_combout\);

-- Location: LCCOMB_X66_Y46_N4
\Arch|Bx|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Bx|R[6]~11_combout\ = (\Arch|Bx|R[6]~7_combout\) # ((\Arch|Bx|R[6]~10_combout\) # ((\Arch|BUS[6]~20_combout\ & \Arch|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[6]~20_combout\,
	datab => \Arch|Bx|R[6]~7_combout\,
	datac => \Arch|Bx|_~0_combout\,
	datad => \Arch|Bx|R[6]~10_combout\,
	combout => \Arch|Bx|R[6]~11_combout\);

-- Location: FF_X66_Y46_N5
\Arch|Bx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Bx|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Bx|R\(6));

-- Location: LCCOMB_X64_Y47_N18
\Arch|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~27_combout\ = (\Arch|SelBus[0]~3_combout\ & (\Arch|_~54_combout\ & \Arch|_~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|_~54_combout\,
	datac => \Arch|_~53_combout\,
	combout => \Arch|_~27_combout\);

-- Location: LCCOMB_X66_Y45_N30
\Arch|_~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~56_combout\ = (\Arch|_~41_combout\ & ((\SelDST~input_o\ & (!\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((!\Arch|DST|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[1]~input_o\,
	datab => \SelDST~input_o\,
	datac => \Arch|_~41_combout\,
	datad => \Arch|DST|R\(1),
	combout => \Arch|_~56_combout\);

-- Location: LCCOMB_X67_Y44_N12
\Arch|Ax|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|_~2_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & \Arch|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|_~2_combout\);

-- Location: LCCOMB_X70_Y44_N6
\Arch|Ax|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|_~0_combout\ = (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|_~0_combout\);

-- Location: LCCOMB_X67_Y44_N26
\Arch|Ax|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|R[5]~7_combout\);

-- Location: LCCOMB_X67_Y44_N8
\Arch|Ax|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[0]~32_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \Arch|_~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|R[0]~32_combout\);

-- Location: LCCOMB_X67_Y44_N30
\Arch|Ax|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[0]~33_combout\ = (\Arch|Ax|R[5]~7_combout\ & ((\Arch|Ax|R\(1)) # ((!\Arch|Ax|R\(0) & \Arch|Ax|R[0]~32_combout\)))) # (!\Arch|Ax|R[5]~7_combout\ & (!\Arch|Ax|R\(0) & (\Arch|Ax|R[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[5]~7_combout\,
	datab => \Arch|Ax|R\(0),
	datac => \Arch|Ax|R[0]~32_combout\,
	datad => \Arch|Ax|R\(1),
	combout => \Arch|Ax|R[0]~33_combout\);

-- Location: LCCOMB_X70_Y44_N20
\Arch|Ax|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~4_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))) # (!\Arch|_~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|R[7]~4_combout\);

-- Location: LCCOMB_X70_Y44_N14
\Arch|Ax|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|_~1_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|_~1_combout\);

-- Location: LCCOMB_X71_Y44_N14
\Arch|Ax|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~10_combout\ = (\Arch|Ax|R\(5) & (\Arch|Ax|op_2~9\ & VCC)) # (!\Arch|Ax|R\(5) & (!\Arch|Ax|op_2~9\))
-- \Arch|Ax|op_2~11\ = CARRY((!\Arch|Ax|R\(5) & !\Arch|Ax|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datad => VCC,
	cin => \Arch|Ax|op_2~9\,
	combout => \Arch|Ax|op_2~10_combout\,
	cout => \Arch|Ax|op_2~11\);

-- Location: LCCOMB_X71_Y44_N16
\Arch|Ax|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~12_combout\ = (\Arch|Ax|R\(6) & ((GND) # (!\Arch|Ax|op_2~11\))) # (!\Arch|Ax|R\(6) & (\Arch|Ax|op_2~11\ $ (GND)))
-- \Arch|Ax|op_2~13\ = CARRY((\Arch|Ax|R\(6)) # (!\Arch|Ax|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(6),
	datad => VCC,
	cin => \Arch|Ax|op_2~11\,
	combout => \Arch|Ax|op_2~12_combout\,
	cout => \Arch|Ax|op_2~13\);

-- Location: LCCOMB_X71_Y44_N18
\Arch|Ax|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~14_combout\ = \Arch|Ax|op_2~13\ $ (!\Arch|Ax|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|Ax|R\(7),
	cin => \Arch|Ax|op_2~13\,
	combout => \Arch|Ax|op_2~14_combout\);

-- Location: LCCOMB_X70_Y44_N22
\Arch|Ax|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~5_combout\ = (\Arch|Ax|R[7]~4_combout\ & ((\Arch|Ax|R\(7)) # ((\Arch|Ax|_~1_combout\ & \Arch|Ax|op_2~14_combout\)))) # (!\Arch|Ax|R[7]~4_combout\ & (((\Arch|Ax|_~1_combout\ & \Arch|Ax|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[7]~4_combout\,
	datab => \Arch|Ax|R\(7),
	datac => \Arch|Ax|_~1_combout\,
	datad => \Arch|Ax|op_2~14_combout\,
	combout => \Arch|Ax|R[7]~5_combout\);

-- Location: LCCOMB_X69_Y44_N6
\Arch|Ax|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~6_combout\ = (\Arch|Ax|R\(4) & (!\Arch|Ax|op_1~5\)) # (!\Arch|Ax|R\(4) & ((\Arch|Ax|op_1~5\) # (GND)))
-- \Arch|Ax|op_1~7\ = CARRY((!\Arch|Ax|op_1~5\) # (!\Arch|Ax|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(4),
	datad => VCC,
	cin => \Arch|Ax|op_1~5\,
	combout => \Arch|Ax|op_1~6_combout\,
	cout => \Arch|Ax|op_1~7\);

-- Location: LCCOMB_X69_Y44_N8
\Arch|Ax|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~8_combout\ = (\Arch|Ax|R\(5) & (\Arch|Ax|op_1~7\ $ (GND))) # (!\Arch|Ax|R\(5) & (!\Arch|Ax|op_1~7\ & VCC))
-- \Arch|Ax|op_1~9\ = CARRY((\Arch|Ax|R\(5) & !\Arch|Ax|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datad => VCC,
	cin => \Arch|Ax|op_1~7\,
	combout => \Arch|Ax|op_1~8_combout\,
	cout => \Arch|Ax|op_1~9\);

-- Location: LCCOMB_X69_Y44_N10
\Arch|Ax|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~10_combout\ = (\Arch|Ax|R\(6) & (!\Arch|Ax|op_1~9\)) # (!\Arch|Ax|R\(6) & ((\Arch|Ax|op_1~9\) # (GND)))
-- \Arch|Ax|op_1~11\ = CARRY((!\Arch|Ax|op_1~9\) # (!\Arch|Ax|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(6),
	datad => VCC,
	cin => \Arch|Ax|op_1~9\,
	combout => \Arch|Ax|op_1~10_combout\,
	cout => \Arch|Ax|op_1~11\);

-- Location: LCCOMB_X69_Y44_N12
\Arch|Ax|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~12_combout\ = \Arch|Ax|op_1~11\ $ (!\Arch|Ax|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|Ax|R\(7),
	cin => \Arch|Ax|op_1~11\,
	combout => \Arch|Ax|op_1~12_combout\);

-- Location: LCCOMB_X70_Y44_N0
\Arch|Ax|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~1_combout\ = (\Arch|Ax|R\(0) & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(0),
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[0]~input_o\,
	combout => \Arch|Ax|R[7]~1_combout\);

-- Location: LCCOMB_X67_Y44_N10
\Arch|Ax|R[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[6]~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Arch|_~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|R[6]~0_combout\);

-- Location: LCCOMB_X70_Y44_N26
\Arch|Ax|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~2_combout\ = (\Arch|Ax|R\(6) & ((\Arch|Ax|R[6]~0_combout\) # ((\Arch|Ax|R[7]~1_combout\ & \Arch|_~56_combout\)))) # (!\Arch|Ax|R\(6) & (\Arch|Ax|R[7]~1_combout\ & (\Arch|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(6),
	datab => \Arch|Ax|R[7]~1_combout\,
	datac => \Arch|_~56_combout\,
	datad => \Arch|Ax|R[6]~0_combout\,
	combout => \Arch|Ax|R[7]~2_combout\);

-- Location: LCCOMB_X70_Y44_N28
\Arch|Ax|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~3_combout\ = (\Arch|Ax|R[7]~2_combout\) # ((\Arch|Ax|op_1~12_combout\ & \Arch|Ax|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|op_1~12_combout\,
	datac => \Arch|Ax|R[7]~2_combout\,
	datad => \Arch|Ax|_~0_combout\,
	combout => \Arch|Ax|R[7]~3_combout\);

-- Location: LCCOMB_X70_Y44_N24
\Arch|Ax|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[7]~6_combout\ = (\Arch|Ax|R[7]~5_combout\) # ((\Arch|Ax|R[7]~3_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[7]~5_combout\,
	datab => \Arch|Ax|_~2_combout\,
	datac => \Arch|BUS[7]~11_combout\,
	datad => \Arch|Ax|R[7]~3_combout\,
	combout => \Arch|Ax|R[7]~6_combout\);

-- Location: FF_X70_Y44_N25
\Arch|Ax|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(7));

-- Location: LCCOMB_X67_Y44_N20
\Arch|Ax|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \Arch|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \Arch|_~56_combout\,
	combout => \Arch|Ax|_~3_combout\);

-- Location: LCCOMB_X67_Y44_N2
\Arch|Ax|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[0]~34_combout\ = (\Arch|Ax|R\(7) & ((\Arch|Ax|_~3_combout\) # ((\Arch|Ax|R\(0) & \Arch|Ax|R[7]~4_combout\)))) # (!\Arch|Ax|R\(7) & (\Arch|Ax|R\(0) & ((\Arch|Ax|R[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(7),
	datab => \Arch|Ax|R\(0),
	datac => \Arch|Ax|_~3_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[0]~34_combout\);

-- Location: LCCOMB_X67_Y44_N24
\Arch|Ax|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[0]~35_combout\ = (\Arch|Ax|R[0]~33_combout\) # ((\Arch|Ax|R[0]~34_combout\) # ((\Arch|BUS[0]~74_combout\ & \Arch|Ax|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[0]~33_combout\,
	datab => \Arch|Ax|R[0]~34_combout\,
	datac => \Arch|BUS[0]~74_combout\,
	datad => \Arch|Ax|_~2_combout\,
	combout => \Arch|Ax|R[0]~35_combout\);

-- Location: FF_X67_Y44_N25
\Arch|Ax|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(0));

-- Location: LCCOMB_X69_Y44_N0
\Arch|Ax|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~0_combout\ = (\Arch|Ax|R\(1) & (\Arch|Ax|R\(0) $ (VCC))) # (!\Arch|Ax|R\(1) & (\Arch|Ax|R\(0) & VCC))
-- \Arch|Ax|op_1~1\ = CARRY((\Arch|Ax|R\(1) & \Arch|Ax|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(1),
	datab => \Arch|Ax|R\(0),
	datad => VCC,
	combout => \Arch|Ax|op_1~0_combout\,
	cout => \Arch|Ax|op_1~1\);

-- Location: LCCOMB_X67_Y44_N4
\Arch|Ax|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[1]~28_combout\ = (\Arch|Ax|R[6]~0_combout\ & ((\Arch|Ax|R\(0)) # ((\Arch|Ax|R\(2) & \Arch|Ax|R[5]~7_combout\)))) # (!\Arch|Ax|R[6]~0_combout\ & (\Arch|Ax|R\(2) & (\Arch|Ax|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[6]~0_combout\,
	datab => \Arch|Ax|R\(2),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R\(0),
	combout => \Arch|Ax|R[1]~28_combout\);

-- Location: LCCOMB_X71_Y44_N4
\Arch|Ax|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~1_cout\ = CARRY(\Arch|Ax|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(0),
	datad => VCC,
	cout => \Arch|Ax|op_2~1_cout\);

-- Location: LCCOMB_X71_Y44_N6
\Arch|Ax|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~2_combout\ = (\Arch|Ax|R\(1) & (\Arch|Ax|op_2~1_cout\ & VCC)) # (!\Arch|Ax|R\(1) & (!\Arch|Ax|op_2~1_cout\))
-- \Arch|Ax|op_2~3\ = CARRY((!\Arch|Ax|R\(1) & !\Arch|Ax|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(1),
	datad => VCC,
	cin => \Arch|Ax|op_2~1_cout\,
	combout => \Arch|Ax|op_2~2_combout\,
	cout => \Arch|Ax|op_2~3\);

-- Location: LCCOMB_X67_Y44_N18
\Arch|Ax|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[1]~29_combout\ = (\Arch|Ax|op_2~2_combout\ & ((\Arch|Ax|_~1_combout\) # ((\Arch|Ax|R\(1) & \Arch|Ax|R[7]~4_combout\)))) # (!\Arch|Ax|op_2~2_combout\ & (\Arch|Ax|R\(1) & ((\Arch|Ax|R[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|op_2~2_combout\,
	datab => \Arch|Ax|R\(1),
	datac => \Arch|Ax|_~1_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[1]~29_combout\);

-- Location: LCCOMB_X67_Y44_N16
\Arch|Ax|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[1]~30_combout\ = (\Arch|Ax|R[1]~28_combout\) # ((\Arch|Ax|R[1]~29_combout\) # ((\Arch|Ax|_~0_combout\ & \Arch|Ax|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~0_combout\,
	datab => \Arch|Ax|op_1~0_combout\,
	datac => \Arch|Ax|R[1]~28_combout\,
	datad => \Arch|Ax|R[1]~29_combout\,
	combout => \Arch|Ax|R[1]~30_combout\);

-- Location: LCCOMB_X67_Y44_N14
\Arch|Ax|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[1]~31_combout\ = (\Arch|Ax|R[1]~30_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[1]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~2_combout\,
	datac => \Arch|BUS[1]~65_combout\,
	datad => \Arch|Ax|R[1]~30_combout\,
	combout => \Arch|Ax|R[1]~31_combout\);

-- Location: FF_X67_Y44_N15
\Arch|Ax|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(1));

-- Location: LCCOMB_X69_Y44_N2
\Arch|Ax|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~2_combout\ = (\Arch|Ax|R\(2) & (!\Arch|Ax|op_1~1\)) # (!\Arch|Ax|R\(2) & ((\Arch|Ax|op_1~1\) # (GND)))
-- \Arch|Ax|op_1~3\ = CARRY((!\Arch|Ax|op_1~1\) # (!\Arch|Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(2),
	datad => VCC,
	cin => \Arch|Ax|op_1~1\,
	combout => \Arch|Ax|op_1~2_combout\,
	cout => \Arch|Ax|op_1~3\);

-- Location: LCCOMB_X71_Y44_N8
\Arch|Ax|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~4_combout\ = (\Arch|Ax|R\(2) & ((GND) # (!\Arch|Ax|op_2~3\))) # (!\Arch|Ax|R\(2) & (\Arch|Ax|op_2~3\ $ (GND)))
-- \Arch|Ax|op_2~5\ = CARRY((\Arch|Ax|R\(2)) # (!\Arch|Ax|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(2),
	datad => VCC,
	cin => \Arch|Ax|op_2~3\,
	combout => \Arch|Ax|op_2~4_combout\,
	cout => \Arch|Ax|op_2~5\);

-- Location: LCCOMB_X70_Y44_N8
\Arch|Ax|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[2]~25_combout\ = (\Arch|Ax|R\(2) & ((\Arch|Ax|R[7]~4_combout\) # ((\Arch|Ax|_~1_combout\ & \Arch|Ax|op_2~4_combout\)))) # (!\Arch|Ax|R\(2) & (\Arch|Ax|_~1_combout\ & (\Arch|Ax|op_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(2),
	datab => \Arch|Ax|_~1_combout\,
	datac => \Arch|Ax|op_2~4_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[2]~25_combout\);

-- Location: LCCOMB_X70_Y44_N18
\Arch|Ax|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[2]~26_combout\ = (\Arch|Ax|R[2]~25_combout\) # ((\Arch|Ax|op_1~2_combout\ & \Arch|Ax|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|op_1~2_combout\,
	datac => \Arch|Ax|R[2]~25_combout\,
	datad => \Arch|Ax|_~0_combout\,
	combout => \Arch|Ax|R[2]~26_combout\);

-- Location: LCCOMB_X69_Y44_N16
\Arch|Ax|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[2]~24_combout\ = (\Arch|Ax|R\(1) & ((\Arch|Ax|R[6]~0_combout\) # ((\Arch|Ax|R\(3) & \Arch|Ax|R[5]~7_combout\)))) # (!\Arch|Ax|R\(1) & (\Arch|Ax|R\(3) & (\Arch|Ax|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(1),
	datab => \Arch|Ax|R\(3),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R[6]~0_combout\,
	combout => \Arch|Ax|R[2]~24_combout\);

-- Location: LCCOMB_X70_Y44_N12
\Arch|Ax|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[2]~27_combout\ = (\Arch|Ax|R[2]~26_combout\) # ((\Arch|Ax|R[2]~24_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~2_combout\,
	datab => \Arch|Ax|R[2]~26_combout\,
	datac => \Arch|BUS[2]~56_combout\,
	datad => \Arch|Ax|R[2]~24_combout\,
	combout => \Arch|Ax|R[2]~27_combout\);

-- Location: FF_X70_Y44_N13
\Arch|Ax|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(2));

-- Location: LCCOMB_X69_Y44_N4
\Arch|Ax|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_1~4_combout\ = (\Arch|Ax|R\(3) & (\Arch|Ax|op_1~3\ $ (GND))) # (!\Arch|Ax|R\(3) & (!\Arch|Ax|op_1~3\ & VCC))
-- \Arch|Ax|op_1~5\ = CARRY((\Arch|Ax|R\(3) & !\Arch|Ax|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(3),
	datad => VCC,
	cin => \Arch|Ax|op_1~3\,
	combout => \Arch|Ax|op_1~4_combout\,
	cout => \Arch|Ax|op_1~5\);

-- Location: LCCOMB_X67_Y44_N22
\Arch|Ax|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[3]~20_combout\ = (\Arch|Ax|R[6]~0_combout\ & ((\Arch|Ax|R\(2)) # ((\Arch|Ax|R[5]~7_combout\ & \Arch|Ax|R\(4))))) # (!\Arch|Ax|R[6]~0_combout\ & (((\Arch|Ax|R[5]~7_combout\ & \Arch|Ax|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[6]~0_combout\,
	datab => \Arch|Ax|R\(2),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R\(4),
	combout => \Arch|Ax|R[3]~20_combout\);

-- Location: LCCOMB_X71_Y44_N10
\Arch|Ax|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~6_combout\ = (\Arch|Ax|R\(3) & (\Arch|Ax|op_2~5\ & VCC)) # (!\Arch|Ax|R\(3) & (!\Arch|Ax|op_2~5\))
-- \Arch|Ax|op_2~7\ = CARRY((!\Arch|Ax|R\(3) & !\Arch|Ax|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(3),
	datad => VCC,
	cin => \Arch|Ax|op_2~5\,
	combout => \Arch|Ax|op_2~6_combout\,
	cout => \Arch|Ax|op_2~7\);

-- Location: LCCOMB_X67_Y44_N0
\Arch|Ax|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[3]~21_combout\ = (\Arch|Ax|op_2~6_combout\ & ((\Arch|Ax|_~1_combout\) # ((\Arch|Ax|R\(3) & \Arch|Ax|R[7]~4_combout\)))) # (!\Arch|Ax|op_2~6_combout\ & (\Arch|Ax|R\(3) & ((\Arch|Ax|R[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|op_2~6_combout\,
	datab => \Arch|Ax|R\(3),
	datac => \Arch|Ax|_~1_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[3]~21_combout\);

-- Location: LCCOMB_X67_Y44_N6
\Arch|Ax|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[3]~22_combout\ = (\Arch|Ax|R[3]~20_combout\) # ((\Arch|Ax|R[3]~21_combout\) # ((\Arch|Ax|_~0_combout\ & \Arch|Ax|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~0_combout\,
	datab => \Arch|Ax|op_1~4_combout\,
	datac => \Arch|Ax|R[3]~20_combout\,
	datad => \Arch|Ax|R[3]~21_combout\,
	combout => \Arch|Ax|R[3]~22_combout\);

-- Location: LCCOMB_X67_Y44_N28
\Arch|Ax|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[3]~23_combout\ = (\Arch|Ax|R[3]~22_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~2_combout\,
	datac => \Arch|BUS[3]~47_combout\,
	datad => \Arch|Ax|R[3]~22_combout\,
	combout => \Arch|Ax|R[3]~23_combout\);

-- Location: FF_X67_Y44_N29
\Arch|Ax|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(3));

-- Location: LCCOMB_X69_Y44_N24
\Arch|Ax|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[4]~16_combout\ = (\Arch|Ax|R\(5) & ((\Arch|Ax|R[5]~7_combout\) # ((\Arch|Ax|R\(3) & \Arch|Ax|R[6]~0_combout\)))) # (!\Arch|Ax|R\(5) & (\Arch|Ax|R\(3) & ((\Arch|Ax|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datab => \Arch|Ax|R\(3),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R[6]~0_combout\,
	combout => \Arch|Ax|R[4]~16_combout\);

-- Location: LCCOMB_X71_Y44_N12
\Arch|Ax|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|op_2~8_combout\ = (\Arch|Ax|R\(4) & ((GND) # (!\Arch|Ax|op_2~7\))) # (!\Arch|Ax|R\(4) & (\Arch|Ax|op_2~7\ $ (GND)))
-- \Arch|Ax|op_2~9\ = CARRY((\Arch|Ax|R\(4)) # (!\Arch|Ax|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(4),
	datad => VCC,
	cin => \Arch|Ax|op_2~7\,
	combout => \Arch|Ax|op_2~8_combout\,
	cout => \Arch|Ax|op_2~9\);

-- Location: LCCOMB_X70_Y44_N30
\Arch|Ax|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[4]~17_combout\ = (\Arch|Ax|R\(4) & ((\Arch|Ax|R[7]~4_combout\) # ((\Arch|Ax|op_2~8_combout\ & \Arch|Ax|_~1_combout\)))) # (!\Arch|Ax|R\(4) & (\Arch|Ax|op_2~8_combout\ & (\Arch|Ax|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(4),
	datab => \Arch|Ax|op_2~8_combout\,
	datac => \Arch|Ax|_~1_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[4]~17_combout\);

-- Location: LCCOMB_X69_Y44_N22
\Arch|Ax|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[4]~18_combout\ = (\Arch|Ax|R[4]~16_combout\) # ((\Arch|Ax|R[4]~17_combout\) # ((\Arch|Ax|op_1~6_combout\ & \Arch|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|op_1~6_combout\,
	datab => \Arch|Ax|R[4]~16_combout\,
	datac => \Arch|Ax|R[4]~17_combout\,
	datad => \Arch|Ax|_~0_combout\,
	combout => \Arch|Ax|R[4]~18_combout\);

-- Location: LCCOMB_X69_Y44_N28
\Arch|Ax|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[4]~19_combout\ = (\Arch|Ax|R[4]~18_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[4]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~2_combout\,
	datac => \Arch|Ax|R[4]~18_combout\,
	datad => \Arch|BUS[4]~38_combout\,
	combout => \Arch|Ax|R[4]~19_combout\);

-- Location: FF_X69_Y44_N29
\Arch|Ax|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(4));

-- Location: LCCOMB_X70_Y44_N2
\Arch|Ax|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[5]~13_combout\ = (\Arch|Ax|R\(5) & ((\Arch|Ax|R[7]~4_combout\) # ((\Arch|Ax|op_2~10_combout\ & \Arch|Ax|_~1_combout\)))) # (!\Arch|Ax|R\(5) & (\Arch|Ax|op_2~10_combout\ & (\Arch|Ax|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datab => \Arch|Ax|op_2~10_combout\,
	datac => \Arch|Ax|_~1_combout\,
	datad => \Arch|Ax|R[7]~4_combout\,
	combout => \Arch|Ax|R[5]~13_combout\);

-- Location: LCCOMB_X70_Y44_N16
\Arch|Ax|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[5]~12_combout\ = (\Arch|Ax|R\(6) & ((\Arch|Ax|R[5]~7_combout\) # ((\Arch|Ax|R\(4) & \Arch|Ax|R[6]~0_combout\)))) # (!\Arch|Ax|R\(6) & (\Arch|Ax|R\(4) & ((\Arch|Ax|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(6),
	datab => \Arch|Ax|R\(4),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R[6]~0_combout\,
	combout => \Arch|Ax|R[5]~12_combout\);

-- Location: LCCOMB_X70_Y44_N4
\Arch|Ax|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[5]~14_combout\ = (\Arch|Ax|R[5]~13_combout\) # ((\Arch|Ax|R[5]~12_combout\) # ((\Arch|Ax|_~0_combout\ & \Arch|Ax|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|_~0_combout\,
	datab => \Arch|Ax|R[5]~13_combout\,
	datac => \Arch|Ax|op_1~8_combout\,
	datad => \Arch|Ax|R[5]~12_combout\,
	combout => \Arch|Ax|R[5]~14_combout\);

-- Location: LCCOMB_X70_Y44_N10
\Arch|Ax|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[5]~15_combout\ = (\Arch|Ax|R[5]~14_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|_~2_combout\,
	datac => \Arch|Ax|R[5]~14_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|Ax|R[5]~15_combout\);

-- Location: FF_X70_Y44_N11
\Arch|Ax|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(5));

-- Location: LCCOMB_X69_Y44_N26
\Arch|Ax|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[6]~8_combout\ = (\Arch|Ax|R\(5) & ((\Arch|Ax|R[6]~0_combout\) # ((\Arch|Ax|R\(7) & \Arch|Ax|R[5]~7_combout\)))) # (!\Arch|Ax|R\(5) & (\Arch|Ax|R\(7) & (\Arch|Ax|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datab => \Arch|Ax|R\(7),
	datac => \Arch|Ax|R[5]~7_combout\,
	datad => \Arch|Ax|R[6]~0_combout\,
	combout => \Arch|Ax|R[6]~8_combout\);

-- Location: LCCOMB_X69_Y44_N20
\Arch|Ax|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[6]~9_combout\ = (\Arch|Ax|op_1~10_combout\ & ((\Arch|Ax|_~0_combout\) # ((\Arch|Ax|R\(6) & \Arch|Ax|R[7]~4_combout\)))) # (!\Arch|Ax|op_1~10_combout\ & (\Arch|Ax|R\(6) & (\Arch|Ax|R[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|op_1~10_combout\,
	datab => \Arch|Ax|R\(6),
	datac => \Arch|Ax|R[7]~4_combout\,
	datad => \Arch|Ax|_~0_combout\,
	combout => \Arch|Ax|R[6]~9_combout\);

-- Location: LCCOMB_X69_Y44_N30
\Arch|Ax|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[6]~10_combout\ = (\Arch|Ax|R[6]~9_combout\) # ((\Arch|Ax|_~1_combout\ & \Arch|Ax|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|_~1_combout\,
	datac => \Arch|Ax|op_2~12_combout\,
	datad => \Arch|Ax|R[6]~9_combout\,
	combout => \Arch|Ax|R[6]~10_combout\);

-- Location: LCCOMB_X69_Y44_N14
\Arch|Ax|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|Ax|R[6]~11_combout\ = (\Arch|Ax|R[6]~8_combout\) # ((\Arch|Ax|R[6]~10_combout\) # ((\Arch|Ax|_~2_combout\ & \Arch|BUS[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R[6]~8_combout\,
	datab => \Arch|Ax|_~2_combout\,
	datac => \Arch|Ax|R[6]~10_combout\,
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|Ax|R[6]~11_combout\);

-- Location: FF_X69_Y44_N15
\Arch|Ax|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|Ax|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|Ax|R\(6));

-- Location: LCCOMB_X64_Y47_N4
\Arch|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~28_combout\ = (!\Arch|SelBus[0]~3_combout\ & (\Arch|_~53_combout\ & \Arch|_~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datac => \Arch|_~53_combout\,
	datad => \Arch|_~54_combout\,
	combout => \Arch|_~28_combout\);

-- Location: FF_X65_Y47_N23
\Arch|IR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[6]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(6));

-- Location: LCCOMB_X65_Y47_N22
\Arch|BUS[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~12_combout\ = (\Arch|_~25_combout\ & ((\Arch|MAR|R\(6)) # ((\Arch|IR|R\(6) & \Arch|_~26_combout\)))) # (!\Arch|_~25_combout\ & (((\Arch|IR|R\(6) & \Arch|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~25_combout\,
	datab => \Arch|MAR|R\(6),
	datac => \Arch|IR|R\(6),
	datad => \Arch|_~26_combout\,
	combout => \Arch|BUS[6]~12_combout\);

-- Location: LCCOMB_X66_Y46_N0
\Arch|BUS[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~13_combout\ = (\Arch|BUS[6]~12_combout\) # ((\Arch|Ax|R\(6) & \Arch|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(6),
	datac => \Arch|_~28_combout\,
	datad => \Arch|BUS[6]~12_combout\,
	combout => \Arch|BUS[6]~13_combout\);

-- Location: LCCOMB_X66_Y46_N2
\Arch|BUS[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~15_combout\ = (\Arch|BUS[6]~14_combout\) # ((\Arch|BUS[6]~13_combout\) # ((\Arch|Bx|R\(6) & \Arch|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[6]~14_combout\,
	datab => \Arch|Bx|R\(6),
	datac => \Arch|_~27_combout\,
	datad => \Arch|BUS[6]~13_combout\,
	combout => \Arch|BUS[6]~15_combout\);

-- Location: LCCOMB_X66_Y46_N28
\Arch|BUS[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[6]~20_combout\ = (\Arch|BUS[6]~16_combout\) # ((\Arch|BUS[6]~17_combout\) # ((\Arch|BUS[6]~19_combout\) # (\Arch|BUS[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[6]~16_combout\,
	datab => \Arch|BUS[6]~17_combout\,
	datac => \Arch|BUS[6]~19_combout\,
	datad => \Arch|BUS[6]~15_combout\,
	combout => \Arch|BUS[6]~20_combout\);

-- Location: LCCOMB_X62_Y45_N0
\Arch|DI|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[6]~11_combout\ = (\Arch|DI|R[6]~10_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|DI|R[6]~10_combout\,
	datad => \Arch|BUS[6]~20_combout\,
	combout => \Arch|DI|R[6]~11_combout\);

-- Location: FF_X62_Y45_N1
\Arch|DI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(6));

-- Location: LCCOMB_X61_Y45_N26
\Arch|DI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~12_combout\ = \Arch|DI|op_1~11\ $ (!\Arch|DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|DI|R\(7),
	cin => \Arch|DI|op_1~11\,
	combout => \Arch|DI|op_1~12_combout\);

-- Location: LCCOMB_X63_Y45_N30
\Arch|DI|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~1_combout\ = (\Arch|DI|R\(6) & ((\Arch|DI|R[6]~0_combout\) # ((\Arch|DI|_~1_combout\ & \Arch|DI|op_1~12_combout\)))) # (!\Arch|DI|R\(6) & (\Arch|DI|_~1_combout\ & (\Arch|DI|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(6),
	datab => \Arch|DI|_~1_combout\,
	datac => \Arch|DI|op_1~12_combout\,
	datad => \Arch|DI|R[6]~0_combout\,
	combout => \Arch|DI|R[7]~1_combout\);

-- Location: LCCOMB_X62_Y45_N20
\Arch|DI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~14_combout\ = \Arch|DI|op_2~13\ $ (!\Arch|DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|DI|R\(7),
	cin => \Arch|DI|op_2~13\,
	combout => \Arch|DI|op_2~14_combout\);

-- Location: LCCOMB_X64_Y45_N10
\Arch|DI|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~3_combout\ = (\Cmd[0]~input_o\ & (\Arch|DI|R\(0) & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|DI|R\(0),
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|R[7]~3_combout\);

-- Location: LCCOMB_X63_Y45_N24
\Arch|DI|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~4_combout\ = (\Arch|DI|R\(7) & ((\Arch|DI|R[7]~2_combout\) # ((\Arch|DI|R[7]~3_combout\ & \Arch|_~58_combout\)))) # (!\Arch|DI|R\(7) & (\Arch|DI|R[7]~3_combout\ & (\Arch|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(7),
	datab => \Arch|DI|R[7]~3_combout\,
	datac => \Arch|_~58_combout\,
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[7]~4_combout\);

-- Location: LCCOMB_X63_Y45_N6
\Arch|DI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~5_combout\ = (\Arch|DI|R[7]~4_combout\) # ((\Arch|DI|op_2~14_combout\ & \Arch|DI|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|op_2~14_combout\,
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|R[7]~4_combout\,
	combout => \Arch|DI|R[7]~5_combout\);

-- Location: LCCOMB_X63_Y45_N12
\Arch|DI|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[7]~6_combout\ = (\Arch|DI|R[7]~1_combout\) # ((\Arch|DI|R[7]~5_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[7]~1_combout\,
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|BUS[7]~11_combout\,
	datad => \Arch|DI|R[7]~5_combout\,
	combout => \Arch|DI|R[7]~6_combout\);

-- Location: FF_X63_Y45_N13
\Arch|DI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(7));

-- Location: LCCOMB_X63_Y45_N8
\Arch|DI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Arch|_~58_combout\ & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Arch|_~58_combout\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|DI|_~3_combout\);

-- Location: LCCOMB_X63_Y45_N26
\Arch|DI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[0]~34_combout\ = (\Arch|DI|R\(7) & ((\Arch|DI|_~3_combout\) # ((\Arch|DI|R\(0) & \Arch|DI|R[7]~2_combout\)))) # (!\Arch|DI|R\(7) & (\Arch|DI|R\(0) & ((\Arch|DI|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(7),
	datab => \Arch|DI|R\(0),
	datac => \Arch|DI|_~3_combout\,
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[0]~34_combout\);

-- Location: LCCOMB_X63_Y45_N18
\Arch|DI|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[0]~35_combout\ = (\Arch|DI|R[0]~33_combout\) # ((\Arch|DI|R[0]~34_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[0]~33_combout\,
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|DI|R[0]~34_combout\,
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|DI|R[0]~35_combout\);

-- Location: FF_X63_Y45_N19
\Arch|DI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(0));

-- Location: LCCOMB_X61_Y45_N14
\Arch|DI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~0_combout\ = (\Arch|DI|R\(1) & (\Arch|DI|R\(0) $ (VCC))) # (!\Arch|DI|R\(1) & (\Arch|DI|R\(0) & VCC))
-- \Arch|DI|op_1~1\ = CARRY((\Arch|DI|R\(1) & \Arch|DI|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(1),
	datab => \Arch|DI|R\(0),
	datad => VCC,
	combout => \Arch|DI|op_1~0_combout\,
	cout => \Arch|DI|op_1~1\);

-- Location: LCCOMB_X62_Y45_N22
\Arch|DI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[1]~28_combout\ = (\Arch|DI|R[6]~0_combout\ & ((\Arch|DI|R\(0)) # ((\Arch|DI|R[5]~7_combout\ & \Arch|DI|R\(2))))) # (!\Arch|DI|R[6]~0_combout\ & (((\Arch|DI|R[5]~7_combout\ & \Arch|DI|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[6]~0_combout\,
	datab => \Arch|DI|R\(0),
	datac => \Arch|DI|R[5]~7_combout\,
	datad => \Arch|DI|R\(2),
	combout => \Arch|DI|R[1]~28_combout\);

-- Location: LCCOMB_X62_Y45_N6
\Arch|DI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~1_cout\ = CARRY(\Arch|DI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(0),
	datad => VCC,
	cout => \Arch|DI|op_2~1_cout\);

-- Location: LCCOMB_X62_Y45_N8
\Arch|DI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~2_combout\ = (\Arch|DI|R\(1) & (\Arch|DI|op_2~1_cout\ & VCC)) # (!\Arch|DI|R\(1) & (!\Arch|DI|op_2~1_cout\))
-- \Arch|DI|op_2~3\ = CARRY((!\Arch|DI|R\(1) & !\Arch|DI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(1),
	datad => VCC,
	cin => \Arch|DI|op_2~1_cout\,
	combout => \Arch|DI|op_2~2_combout\,
	cout => \Arch|DI|op_2~3\);

-- Location: LCCOMB_X62_Y45_N24
\Arch|DI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[1]~29_combout\ = (\Arch|DI|R\(1) & ((\Arch|DI|R[7]~2_combout\) # ((\Arch|DI|op_2~2_combout\ & \Arch|DI|_~2_combout\)))) # (!\Arch|DI|R\(1) & (\Arch|DI|op_2~2_combout\ & (\Arch|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(1),
	datab => \Arch|DI|op_2~2_combout\,
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[1]~29_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Arch|DI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[1]~30_combout\ = (\Arch|DI|R[1]~28_combout\) # ((\Arch|DI|R[1]~29_combout\) # ((\Arch|DI|op_1~0_combout\ & \Arch|DI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|op_1~0_combout\,
	datab => \Arch|DI|_~1_combout\,
	datac => \Arch|DI|R[1]~28_combout\,
	datad => \Arch|DI|R[1]~29_combout\,
	combout => \Arch|DI|R[1]~30_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Arch|DI|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[1]~31_combout\ = (\Arch|DI|R[1]~30_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[1]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|BUS[1]~65_combout\,
	datad => \Arch|DI|R[1]~30_combout\,
	combout => \Arch|DI|R[1]~31_combout\);

-- Location: FF_X62_Y45_N31
\Arch|DI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(1));

-- Location: LCCOMB_X65_Y45_N22
\Arch|DI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[2]~24_combout\ = (\Arch|DI|R\(1) & ((\Arch|DI|R[6]~0_combout\) # ((\Arch|DI|R[5]~7_combout\ & \Arch|DI|R\(3))))) # (!\Arch|DI|R\(1) & (\Arch|DI|R[5]~7_combout\ & (\Arch|DI|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(1),
	datab => \Arch|DI|R[5]~7_combout\,
	datac => \Arch|DI|R\(3),
	datad => \Arch|DI|R[6]~0_combout\,
	combout => \Arch|DI|R[2]~24_combout\);

-- Location: LCCOMB_X61_Y45_N16
\Arch|DI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~2_combout\ = (\Arch|DI|R\(2) & (!\Arch|DI|op_1~1\)) # (!\Arch|DI|R\(2) & ((\Arch|DI|op_1~1\) # (GND)))
-- \Arch|DI|op_1~3\ = CARRY((!\Arch|DI|op_1~1\) # (!\Arch|DI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(2),
	datad => VCC,
	cin => \Arch|DI|op_1~1\,
	combout => \Arch|DI|op_1~2_combout\,
	cout => \Arch|DI|op_1~3\);

-- Location: LCCOMB_X62_Y45_N10
\Arch|DI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_2~4_combout\ = (\Arch|DI|R\(2) & ((GND) # (!\Arch|DI|op_2~3\))) # (!\Arch|DI|R\(2) & (\Arch|DI|op_2~3\ $ (GND)))
-- \Arch|DI|op_2~5\ = CARRY((\Arch|DI|R\(2)) # (!\Arch|DI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|R\(2),
	datad => VCC,
	cin => \Arch|DI|op_2~3\,
	combout => \Arch|DI|op_2~4_combout\,
	cout => \Arch|DI|op_2~5\);

-- Location: LCCOMB_X61_Y45_N8
\Arch|DI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[2]~25_combout\ = (\Arch|DI|R\(2) & ((\Arch|DI|R[7]~2_combout\) # ((\Arch|DI|op_2~4_combout\ & \Arch|DI|_~2_combout\)))) # (!\Arch|DI|R\(2) & (\Arch|DI|op_2~4_combout\ & (\Arch|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(2),
	datab => \Arch|DI|op_2~4_combout\,
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[2]~25_combout\);

-- Location: LCCOMB_X61_Y45_N2
\Arch|DI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[2]~26_combout\ = (\Arch|DI|R[2]~25_combout\) # ((\Arch|DI|op_1~2_combout\ & \Arch|DI|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|op_1~2_combout\,
	datac => \Arch|DI|R[2]~25_combout\,
	datad => \Arch|DI|_~1_combout\,
	combout => \Arch|DI|R[2]~26_combout\);

-- Location: LCCOMB_X61_Y45_N28
\Arch|DI|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[2]~27_combout\ = (\Arch|DI|R[2]~24_combout\) # ((\Arch|DI|R[2]~26_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[2]~24_combout\,
	datab => \Arch|DI|R[2]~26_combout\,
	datac => \Arch|DI|_~0_combout\,
	datad => \Arch|BUS[2]~56_combout\,
	combout => \Arch|DI|R[2]~27_combout\);

-- Location: FF_X61_Y45_N29
\Arch|DI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(2));

-- Location: LCCOMB_X61_Y45_N30
\Arch|DI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[3]~21_combout\ = (\Arch|DI|R\(3) & ((\Arch|DI|R[7]~2_combout\) # ((\Arch|DI|op_2~6_combout\ & \Arch|DI|_~2_combout\)))) # (!\Arch|DI|R\(3) & (\Arch|DI|op_2~6_combout\ & (\Arch|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(3),
	datab => \Arch|DI|op_2~6_combout\,
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|R[7]~2_combout\,
	combout => \Arch|DI|R[3]~21_combout\);

-- Location: LCCOMB_X61_Y45_N18
\Arch|DI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~4_combout\ = (\Arch|DI|R\(3) & (\Arch|DI|op_1~3\ $ (GND))) # (!\Arch|DI|R\(3) & (!\Arch|DI|op_1~3\ & VCC))
-- \Arch|DI|op_1~5\ = CARRY((\Arch|DI|R\(3) & !\Arch|DI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(3),
	datad => VCC,
	cin => \Arch|DI|op_1~3\,
	combout => \Arch|DI|op_1~4_combout\,
	cout => \Arch|DI|op_1~5\);

-- Location: LCCOMB_X61_Y45_N4
\Arch|DI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[3]~20_combout\ = (\Arch|DI|R\(4) & ((\Arch|DI|R[5]~7_combout\) # ((\Arch|DI|R\(2) & \Arch|DI|R[6]~0_combout\)))) # (!\Arch|DI|R\(4) & (\Arch|DI|R\(2) & (\Arch|DI|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(4),
	datab => \Arch|DI|R\(2),
	datac => \Arch|DI|R[6]~0_combout\,
	datad => \Arch|DI|R[5]~7_combout\,
	combout => \Arch|DI|R[3]~20_combout\);

-- Location: LCCOMB_X61_Y45_N12
\Arch|DI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[3]~22_combout\ = (\Arch|DI|R[3]~21_combout\) # ((\Arch|DI|R[3]~20_combout\) # ((\Arch|DI|op_1~4_combout\ & \Arch|DI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[3]~21_combout\,
	datab => \Arch|DI|op_1~4_combout\,
	datac => \Arch|DI|R[3]~20_combout\,
	datad => \Arch|DI|_~1_combout\,
	combout => \Arch|DI|R[3]~22_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Arch|DI|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[3]~23_combout\ = (\Arch|DI|R[3]~22_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[3]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|BUS[3]~47_combout\,
	datad => \Arch|DI|R[3]~22_combout\,
	combout => \Arch|DI|R[3]~23_combout\);

-- Location: FF_X61_Y45_N11
\Arch|DI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(3));

-- Location: LCCOMB_X61_Y45_N20
\Arch|DI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|op_1~6_combout\ = (\Arch|DI|R\(4) & (!\Arch|DI|op_1~5\)) # (!\Arch|DI|R\(4) & ((\Arch|DI|op_1~5\) # (GND)))
-- \Arch|DI|op_1~7\ = CARRY((!\Arch|DI|op_1~5\) # (!\Arch|DI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(4),
	datad => VCC,
	cin => \Arch|DI|op_1~5\,
	combout => \Arch|DI|op_1~6_combout\,
	cout => \Arch|DI|op_1~7\);

-- Location: LCCOMB_X65_Y45_N4
\Arch|DI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[4]~16_combout\ = (\Arch|DI|R\(3) & ((\Arch|DI|R[6]~0_combout\) # ((\Arch|DI|R[5]~7_combout\ & \Arch|DI|R\(5))))) # (!\Arch|DI|R\(3) & (\Arch|DI|R[5]~7_combout\ & (\Arch|DI|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(3),
	datab => \Arch|DI|R[5]~7_combout\,
	datac => \Arch|DI|R\(5),
	datad => \Arch|DI|R[6]~0_combout\,
	combout => \Arch|DI|R[4]~16_combout\);

-- Location: LCCOMB_X65_Y45_N10
\Arch|DI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[4]~17_combout\ = (\Arch|DI|R[7]~2_combout\ & ((\Arch|DI|R\(4)) # ((\Arch|DI|_~2_combout\ & \Arch|DI|op_2~8_combout\)))) # (!\Arch|DI|R[7]~2_combout\ & (((\Arch|DI|_~2_combout\ & \Arch|DI|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[7]~2_combout\,
	datab => \Arch|DI|R\(4),
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|op_2~8_combout\,
	combout => \Arch|DI|R[4]~17_combout\);

-- Location: LCCOMB_X65_Y45_N24
\Arch|DI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[4]~18_combout\ = (\Arch|DI|R[4]~16_combout\) # ((\Arch|DI|R[4]~17_combout\) # ((\Arch|DI|_~1_combout\ & \Arch|DI|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|_~1_combout\,
	datab => \Arch|DI|op_1~6_combout\,
	datac => \Arch|DI|R[4]~16_combout\,
	datad => \Arch|DI|R[4]~17_combout\,
	combout => \Arch|DI|R[4]~18_combout\);

-- Location: LCCOMB_X65_Y45_N16
\Arch|DI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[4]~19_combout\ = (\Arch|DI|R[4]~18_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[4]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|DI|_~0_combout\,
	datac => \Arch|BUS[4]~38_combout\,
	datad => \Arch|DI|R[4]~18_combout\,
	combout => \Arch|DI|R[4]~19_combout\);

-- Location: FF_X65_Y45_N17
\Arch|DI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(4));

-- Location: LCCOMB_X64_Y45_N4
\Arch|DI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[5]~12_combout\ = (\Arch|DI|R\(6) & ((\Arch|DI|R[5]~7_combout\) # ((\Arch|DI|R\(4) & \Arch|DI|R[6]~0_combout\)))) # (!\Arch|DI|R\(6) & (\Arch|DI|R\(4) & ((\Arch|DI|R[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(6),
	datab => \Arch|DI|R\(4),
	datac => \Arch|DI|R[5]~7_combout\,
	datad => \Arch|DI|R[6]~0_combout\,
	combout => \Arch|DI|R[5]~12_combout\);

-- Location: LCCOMB_X65_Y45_N18
\Arch|DI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[5]~13_combout\ = (\Arch|DI|R[7]~2_combout\ & ((\Arch|DI|R\(5)) # ((\Arch|DI|_~2_combout\ & \Arch|DI|op_2~10_combout\)))) # (!\Arch|DI|R[7]~2_combout\ & (((\Arch|DI|_~2_combout\ & \Arch|DI|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[7]~2_combout\,
	datab => \Arch|DI|R\(5),
	datac => \Arch|DI|_~2_combout\,
	datad => \Arch|DI|op_2~10_combout\,
	combout => \Arch|DI|R[5]~13_combout\);

-- Location: LCCOMB_X61_Y45_N6
\Arch|DI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[5]~14_combout\ = (\Arch|DI|R[5]~12_combout\) # ((\Arch|DI|R[5]~13_combout\) # ((\Arch|DI|op_1~8_combout\ & \Arch|DI|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|op_1~8_combout\,
	datab => \Arch|DI|_~1_combout\,
	datac => \Arch|DI|R[5]~12_combout\,
	datad => \Arch|DI|R[5]~13_combout\,
	combout => \Arch|DI|R[5]~14_combout\);

-- Location: LCCOMB_X61_Y45_N0
\Arch|DI|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|DI|R[5]~15_combout\ = (\Arch|DI|R[5]~14_combout\) # ((\Arch|DI|_~0_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R[5]~14_combout\,
	datab => \Arch|DI|_~0_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|DI|R[5]~15_combout\);

-- Location: FF_X61_Y45_N1
\Arch|DI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|DI|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DI|R\(5));

-- Location: LCCOMB_X63_Y47_N8
\Arch|BUS[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~23_combout\ = (\Arch|DI|R\(5) & ((\Arch|_~30_combout\) # ((\Arch|Cx|R\(5) & \Arch|_~29_combout\)))) # (!\Arch|DI|R\(5) & (\Arch|Cx|R\(5) & (\Arch|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(5),
	datab => \Arch|Cx|R\(5),
	datac => \Arch|_~29_combout\,
	datad => \Arch|_~30_combout\,
	combout => \Arch|BUS[5]~23_combout\);

-- Location: LCCOMB_X64_Y47_N28
\Arch|BUS[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~22_combout\ = (\Arch|Ax|R\(5) & ((\Arch|_~28_combout\) # ((\Arch|Bx|R\(5) & \Arch|_~27_combout\)))) # (!\Arch|Ax|R\(5) & (\Arch|Bx|R\(5) & ((\Arch|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(5),
	datab => \Arch|Bx|R\(5),
	datac => \Arch|_~28_combout\,
	datad => \Arch|_~27_combout\,
	combout => \Arch|BUS[5]~22_combout\);

-- Location: LCCOMB_X63_Y47_N18
\Arch|BUS[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~24_combout\ = (\Arch|BUS[5]~23_combout\) # ((\Arch|BUS[5]~22_combout\) # ((\Fx[5]~input_o\ & \Arch|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[5]~input_o\,
	datab => \Arch|_~31_combout\,
	datac => \Arch|BUS[5]~23_combout\,
	datad => \Arch|BUS[5]~22_combout\,
	combout => \Arch|BUS[5]~24_combout\);

-- Location: FF_X64_Y44_N25
\Arch|BP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|BUS[5]~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(5));

-- Location: LCCOMB_X67_Y47_N26
\Arch|BUS[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~26_combout\ = (\Arch|BP|R\(5) & ((\Arch|_~35_combout\) # ((\Arch|MDR|R\(5) & \Arch|_~34_combout\)))) # (!\Arch|BP|R\(5) & (\Arch|MDR|R\(5) & (\Arch|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BP|R\(5),
	datab => \Arch|MDR|R\(5),
	datac => \Arch|_~34_combout\,
	datad => \Arch|_~35_combout\,
	combout => \Arch|BUS[5]~26_combout\);

-- Location: LCCOMB_X67_Y47_N4
\Arch|BUS[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~27_combout\ = (\Arch|SI|R\(5) & ((\Arch|_~37_combout\) # ((\Arch|SP|R\(5) & \Arch|_~36_combout\)))) # (!\Arch|SI|R\(5) & (\Arch|SP|R\(5) & (\Arch|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(5),
	datab => \Arch|SP|R\(5),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[5]~27_combout\);

-- Location: LCCOMB_X69_Y47_N0
\Arch|alu_r|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[5]~feeder_combout\ = \Arch|ALU_prueba|R[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|ALU_prueba|R[5]~10_combout\,
	combout => \Arch|alu_r|R[5]~feeder_combout\);

-- Location: FF_X69_Y47_N1
\Arch|alu_r|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(5));

-- Location: LCCOMB_X64_Y47_N6
\Arch|BUS[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~25_combout\ = (\Arch|_~33_combout\ & ((\Arch|alu_r|R\(5)) # ((\Arch|PC|R\(5) & \Arch|_~32_combout\)))) # (!\Arch|_~33_combout\ & (((\Arch|PC|R\(5) & \Arch|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~33_combout\,
	datab => \Arch|alu_r|R\(5),
	datac => \Arch|PC|R\(5),
	datad => \Arch|_~32_combout\,
	combout => \Arch|BUS[5]~25_combout\);

-- Location: LCCOMB_X67_Y47_N10
\Arch|BUS[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~28_combout\ = (\Arch|BUS[5]~26_combout\) # ((\Arch|BUS[5]~27_combout\) # (\Arch|BUS[5]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[5]~26_combout\,
	datac => \Arch|BUS[5]~27_combout\,
	datad => \Arch|BUS[5]~25_combout\,
	combout => \Arch|BUS[5]~28_combout\);

-- Location: LCCOMB_X64_Y44_N24
\Arch|BUS[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[5]~29_combout\ = ((\Arch|BUS[5]~21_combout\) # ((\Arch|BUS[5]~24_combout\) # (\Arch|BUS[5]~28_combout\))) # (!\Arch|BUS[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[7]~10_combout\,
	datab => \Arch|BUS[5]~21_combout\,
	datac => \Arch|BUS[5]~24_combout\,
	datad => \Arch|BUS[5]~28_combout\,
	combout => \Arch|BUS[5]~29_combout\);

-- Location: LCCOMB_X70_Y43_N30
\Arch|PC|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[5]~15_combout\ = (\Arch|PC|R[5]~14_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R[5]~14_combout\,
	datac => \Arch|PC|_~2_combout\,
	datad => \Arch|BUS[5]~29_combout\,
	combout => \Arch|PC|R[5]~15_combout\);

-- Location: FF_X70_Y43_N31
\Arch|PC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(5));

-- Location: LCCOMB_X67_Y43_N18
\Arch|PC|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~10_combout\ = (\Arch|PC|R\(6) & (!\Arch|PC|op_1~9\)) # (!\Arch|PC|R\(6) & ((\Arch|PC|op_1~9\) # (GND)))
-- \Arch|PC|op_1~11\ = CARRY((!\Arch|PC|op_1~9\) # (!\Arch|PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(6),
	datad => VCC,
	cin => \Arch|PC|op_1~9\,
	combout => \Arch|PC|op_1~10_combout\,
	cout => \Arch|PC|op_1~11\);

-- Location: LCCOMB_X70_Y43_N16
\Arch|PC|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[6]~7_combout\ = (\Arch|PC|R\(5) & ((\Arch|PC|R[6]~0_combout\) # ((\Arch|PC|_~1_combout\ & \Arch|PC|op_1~10_combout\)))) # (!\Arch|PC|R\(5) & (\Arch|PC|_~1_combout\ & (\Arch|PC|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(5),
	datab => \Arch|PC|_~1_combout\,
	datac => \Arch|PC|op_1~10_combout\,
	datad => \Arch|PC|R[6]~0_combout\,
	combout => \Arch|PC|R[6]~7_combout\);

-- Location: LCCOMB_X70_Y43_N26
\Arch|PC|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[6]~9_combout\ = (\Arch|PC|R\(7) & ((\Arch|PC|R[5]~8_combout\) # ((\Arch|PC|R\(6) & \Arch|PC|R[7]~2_combout\)))) # (!\Arch|PC|R\(7) & (\Arch|PC|R\(6) & (\Arch|PC|R[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(7),
	datab => \Arch|PC|R\(6),
	datac => \Arch|PC|R[7]~2_combout\,
	datad => \Arch|PC|R[5]~8_combout\,
	combout => \Arch|PC|R[6]~9_combout\);

-- Location: LCCOMB_X70_Y43_N12
\Arch|PC|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~12_combout\ = (\Arch|PC|R\(6) & ((GND) # (!\Arch|PC|op_2~11\))) # (!\Arch|PC|R\(6) & (\Arch|PC|op_2~11\ $ (GND)))
-- \Arch|PC|op_2~13\ = CARRY((\Arch|PC|R\(6)) # (!\Arch|PC|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|R\(6),
	datad => VCC,
	cin => \Arch|PC|op_2~11\,
	combout => \Arch|PC|op_2~12_combout\,
	cout => \Arch|PC|op_2~13\);

-- Location: LCCOMB_X70_Y43_N24
\Arch|PC|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[6]~10_combout\ = (\Arch|PC|R[6]~9_combout\) # ((\Arch|PC|_~0_combout\ & \Arch|PC|op_2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|_~0_combout\,
	datac => \Arch|PC|R[6]~9_combout\,
	datad => \Arch|PC|op_2~12_combout\,
	combout => \Arch|PC|R[6]~10_combout\);

-- Location: LCCOMB_X70_Y43_N20
\Arch|PC|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[6]~11_combout\ = (\Arch|PC|R[6]~7_combout\) # ((\Arch|PC|R[6]~10_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[6]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|_~2_combout\,
	datab => \Arch|PC|R[6]~7_combout\,
	datac => \Arch|BUS[6]~20_combout\,
	datad => \Arch|PC|R[6]~10_combout\,
	combout => \Arch|PC|R[6]~11_combout\);

-- Location: FF_X70_Y43_N21
\Arch|PC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(6));

-- Location: LCCOMB_X67_Y43_N20
\Arch|PC|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_1~12_combout\ = \Arch|PC|op_1~11\ $ (!\Arch|PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|PC|R\(7),
	cin => \Arch|PC|op_1~11\,
	combout => \Arch|PC|op_1~12_combout\);

-- Location: LCCOMB_X66_Y43_N6
\Arch|PC|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~1_combout\ = (\Arch|PC|op_1~12_combout\ & ((\Arch|PC|_~1_combout\) # ((\Arch|PC|R\(6) & \Arch|PC|R[6]~0_combout\)))) # (!\Arch|PC|op_1~12_combout\ & (\Arch|PC|R\(6) & (\Arch|PC|R[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|op_1~12_combout\,
	datab => \Arch|PC|R\(6),
	datac => \Arch|PC|R[6]~0_combout\,
	datad => \Arch|PC|_~1_combout\,
	combout => \Arch|PC|R[7]~1_combout\);

-- Location: LCCOMB_X70_Y43_N14
\Arch|PC|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|op_2~14_combout\ = \Arch|PC|op_2~13\ $ (!\Arch|PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Arch|PC|R\(7),
	cin => \Arch|PC|op_2~13\,
	combout => \Arch|PC|op_2~14_combout\);

-- Location: LCCOMB_X66_Y43_N12
\Arch|PC|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~3_combout\ = (\Arch|PC|R\(0) & (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(0),
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \Arch|PC|R[7]~3_combout\);

-- Location: LCCOMB_X66_Y43_N2
\Arch|PC|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~4_combout\ = (\Arch|PC|R[7]~3_combout\ & ((\Arch|_~49_combout\) # ((\Arch|PC|R\(7) & \Arch|PC|R[7]~2_combout\)))) # (!\Arch|PC|R[7]~3_combout\ & (((\Arch|PC|R\(7) & \Arch|PC|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[7]~3_combout\,
	datab => \Arch|_~49_combout\,
	datac => \Arch|PC|R\(7),
	datad => \Arch|PC|R[7]~2_combout\,
	combout => \Arch|PC|R[7]~4_combout\);

-- Location: LCCOMB_X66_Y43_N0
\Arch|PC|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~5_combout\ = (\Arch|PC|R[7]~4_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|_~2_combout\,
	datac => \Arch|BUS[7]~11_combout\,
	datad => \Arch|PC|R[7]~4_combout\,
	combout => \Arch|PC|R[7]~5_combout\);

-- Location: LCCOMB_X66_Y43_N4
\Arch|PC|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[7]~6_combout\ = (\Arch|PC|R[7]~1_combout\) # ((\Arch|PC|R[7]~5_combout\) # ((\Arch|PC|_~0_combout\ & \Arch|PC|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[7]~1_combout\,
	datab => \Arch|PC|_~0_combout\,
	datac => \Arch|PC|op_2~14_combout\,
	datad => \Arch|PC|R[7]~5_combout\,
	combout => \Arch|PC|R[7]~6_combout\);

-- Location: FF_X66_Y43_N5
\Arch|PC|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(7));

-- Location: LCCOMB_X66_Y43_N8
\Arch|PC|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|_~3_combout\ = (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & \Arch|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Arch|_~49_combout\,
	combout => \Arch|PC|_~3_combout\);

-- Location: LCCOMB_X66_Y43_N22
\Arch|PC|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[0]~34_combout\ = (\Arch|PC|R\(7) & ((\Arch|PC|_~3_combout\) # ((\Arch|PC|R\(0) & \Arch|PC|R[7]~2_combout\)))) # (!\Arch|PC|R\(7) & (((\Arch|PC|R\(0) & \Arch|PC|R[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(7),
	datab => \Arch|PC|_~3_combout\,
	datac => \Arch|PC|R\(0),
	datad => \Arch|PC|R[7]~2_combout\,
	combout => \Arch|PC|R[0]~34_combout\);

-- Location: LCCOMB_X65_Y43_N0
\Arch|PC|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[0]~32_combout\ = (\Cmd[1]~input_o\ & (\Arch|_~49_combout\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \Arch|_~49_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \Arch|PC|R[0]~32_combout\);

-- Location: LCCOMB_X66_Y43_N14
\Arch|PC|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[0]~33_combout\ = (\Arch|PC|R\(0) & (\Arch|PC|R\(1) & ((\Arch|PC|R[5]~8_combout\)))) # (!\Arch|PC|R\(0) & ((\Arch|PC|R[0]~32_combout\) # ((\Arch|PC|R\(1) & \Arch|PC|R[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(0),
	datab => \Arch|PC|R\(1),
	datac => \Arch|PC|R[0]~32_combout\,
	datad => \Arch|PC|R[5]~8_combout\,
	combout => \Arch|PC|R[0]~33_combout\);

-- Location: LCCOMB_X66_Y43_N30
\Arch|PC|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[0]~35_combout\ = (\Arch|PC|R[0]~34_combout\) # ((\Arch|PC|R[0]~33_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[0]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[0]~34_combout\,
	datab => \Arch|PC|_~2_combout\,
	datac => \Arch|PC|R[0]~33_combout\,
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|PC|R[0]~35_combout\);

-- Location: FF_X66_Y43_N31
\Arch|PC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(0));

-- Location: LCCOMB_X67_Y43_N30
\Arch|PC|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[1]~29_combout\ = (\Arch|PC|R\(1) & ((\Arch|PC|R[7]~2_combout\) # ((\Arch|PC|op_2~2_combout\ & \Arch|PC|_~0_combout\)))) # (!\Arch|PC|R\(1) & (\Arch|PC|op_2~2_combout\ & (\Arch|PC|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(1),
	datab => \Arch|PC|op_2~2_combout\,
	datac => \Arch|PC|_~0_combout\,
	datad => \Arch|PC|R[7]~2_combout\,
	combout => \Arch|PC|R[1]~29_combout\);

-- Location: LCCOMB_X67_Y43_N24
\Arch|PC|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[1]~30_combout\ = (\Arch|PC|R[1]~29_combout\) # ((\Arch|PC|op_1~0_combout\ & \Arch|PC|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|PC|op_1~0_combout\,
	datac => \Arch|PC|R[1]~29_combout\,
	datad => \Arch|PC|_~1_combout\,
	combout => \Arch|PC|R[1]~30_combout\);

-- Location: LCCOMB_X69_Y43_N6
\Arch|PC|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[1]~28_combout\ = (\Arch|PC|R[5]~8_combout\ & ((\Arch|PC|R\(2)) # ((\Arch|PC|R[6]~0_combout\ & \Arch|PC|R\(0))))) # (!\Arch|PC|R[5]~8_combout\ & (((\Arch|PC|R[6]~0_combout\ & \Arch|PC|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R[5]~8_combout\,
	datab => \Arch|PC|R\(2),
	datac => \Arch|PC|R[6]~0_combout\,
	datad => \Arch|PC|R\(0),
	combout => \Arch|PC|R[1]~28_combout\);

-- Location: LCCOMB_X67_Y43_N22
\Arch|PC|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|PC|R[1]~31_combout\ = (\Arch|PC|R[1]~30_combout\) # ((\Arch|PC|R[1]~28_combout\) # ((\Arch|PC|_~2_combout\ & \Arch|BUS[1]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|_~2_combout\,
	datab => \Arch|PC|R[1]~30_combout\,
	datac => \Arch|BUS[1]~65_combout\,
	datad => \Arch|PC|R[1]~28_combout\,
	combout => \Arch|PC|R[1]~31_combout\);

-- Location: FF_X67_Y43_N23
\Arch|PC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|PC|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|PC|R\(1));

-- Location: LCCOMB_X67_Y43_N6
\Arch|MAR|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|MAR|R[1]~6_combout\ = (\SelMAR~input_o\ & ((\Arch|BUS[1]~65_combout\))) # (!\SelMAR~input_o\ & (\Arch|PC|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(1),
	datab => \SelMAR~input_o\,
	datac => \Arch|BUS[1]~65_combout\,
	combout => \Arch|MAR|R[1]~6_combout\);

-- Location: FF_X67_Y43_N7
\Arch|MAR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|MAR|R[1]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|MAR|R\(1));

-- Location: FF_X65_Y47_N15
\Arch|IR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[1]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(1));

-- Location: LCCOMB_X65_Y47_N14
\Arch|BUS[1]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~57_combout\ = (\Arch|MAR|R\(1) & ((\Arch|_~25_combout\) # ((\Arch|_~26_combout\ & \Arch|IR|R\(1))))) # (!\Arch|MAR|R\(1) & (\Arch|_~26_combout\ & (\Arch|IR|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|MAR|R\(1),
	datab => \Arch|_~26_combout\,
	datac => \Arch|IR|R\(1),
	datad => \Arch|_~25_combout\,
	combout => \Arch|BUS[1]~57_combout\);

-- Location: IOIBUF_X78_Y23_N22
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

-- Location: LCCOMB_X65_Y46_N8
\Arch|BUS[1]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~59_combout\ = (\Arch|Cx|R\(1) & ((\Arch|_~29_combout\) # ((\Arch|DI|R\(1) & \Arch|_~30_combout\)))) # (!\Arch|Cx|R\(1) & (\Arch|DI|R\(1) & ((\Arch|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(1),
	datab => \Arch|DI|R\(1),
	datac => \Arch|_~29_combout\,
	datad => \Arch|_~30_combout\,
	combout => \Arch|BUS[1]~59_combout\);

-- Location: LCCOMB_X65_Y46_N18
\Arch|BUS[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~58_combout\ = (\Arch|Bx|R\(1) & ((\Arch|_~27_combout\) # ((\Arch|Ax|R\(1) & \Arch|_~28_combout\)))) # (!\Arch|Bx|R\(1) & (\Arch|Ax|R\(1) & ((\Arch|_~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(1),
	datab => \Arch|Ax|R\(1),
	datac => \Arch|_~27_combout\,
	datad => \Arch|_~28_combout\,
	combout => \Arch|BUS[1]~58_combout\);

-- Location: LCCOMB_X65_Y46_N30
\Arch|BUS[1]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~60_combout\ = (\Arch|BUS[1]~59_combout\) # ((\Arch|BUS[1]~58_combout\) # ((\Arch|_~31_combout\ & \Fx[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~31_combout\,
	datab => \Fx[1]~input_o\,
	datac => \Arch|BUS[1]~59_combout\,
	datad => \Arch|BUS[1]~58_combout\,
	combout => \Arch|BUS[1]~60_combout\);

-- Location: FF_X69_Y47_N29
\Arch|alu_r|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|ALU_prueba|R[1]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(1));

-- Location: LCCOMB_X69_Y47_N28
\Arch|BUS[1]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~61_combout\ = (\Arch|_~33_combout\ & ((\Arch|alu_r|R\(1)) # ((\Arch|PC|R\(1) & \Arch|_~32_combout\)))) # (!\Arch|_~33_combout\ & (\Arch|PC|R\(1) & ((\Arch|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~33_combout\,
	datab => \Arch|PC|R\(1),
	datac => \Arch|alu_r|R\(1),
	datad => \Arch|_~32_combout\,
	combout => \Arch|BUS[1]~61_combout\);

-- Location: FF_X66_Y48_N9
\Arch|BP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[1]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(1));

-- Location: LCCOMB_X66_Y48_N8
\Arch|BUS[1]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~62_combout\ = (\Arch|MDR|R\(1) & ((\Arch|_~34_combout\) # ((\Arch|BP|R\(1) & \Arch|_~35_combout\)))) # (!\Arch|MDR|R\(1) & (((\Arch|BP|R\(1) & \Arch|_~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|MDR|R\(1),
	datab => \Arch|_~34_combout\,
	datac => \Arch|BP|R\(1),
	datad => \Arch|_~35_combout\,
	combout => \Arch|BUS[1]~62_combout\);

-- Location: LCCOMB_X66_Y44_N26
\Arch|BUS[1]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~63_combout\ = (\Arch|SP|R\(1) & ((\Arch|_~36_combout\) # ((\Arch|SI|R\(1) & \Arch|_~37_combout\)))) # (!\Arch|SP|R\(1) & (\Arch|SI|R\(1) & (\Arch|_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(1),
	datab => \Arch|SI|R\(1),
	datac => \Arch|_~37_combout\,
	datad => \Arch|_~36_combout\,
	combout => \Arch|BUS[1]~63_combout\);

-- Location: LCCOMB_X66_Y45_N2
\Arch|BUS[1]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~64_combout\ = (\Arch|BUS[1]~61_combout\) # ((\Arch|BUS[1]~62_combout\) # (\Arch|BUS[1]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[1]~61_combout\,
	datac => \Arch|BUS[1]~62_combout\,
	datad => \Arch|BUS[1]~63_combout\,
	combout => \Arch|BUS[1]~64_combout\);

-- Location: LCCOMB_X66_Y45_N12
\Arch|BUS[1]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[1]~65_combout\ = (\Arch|BUS[1]~57_combout\) # (((\Arch|BUS[1]~60_combout\) # (\Arch|BUS[1]~64_combout\)) # (!\Arch|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[1]~57_combout\,
	datab => \Arch|BUS[7]~10_combout\,
	datac => \Arch|BUS[1]~60_combout\,
	datad => \Arch|BUS[1]~64_combout\,
	combout => \Arch|BUS[1]~65_combout\);

-- Location: FF_X66_Y45_N1
\Arch|DST|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[1]~65_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DST|R\(1));

-- Location: LCCOMB_X65_Y45_N30
\Arch|SelMUX[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelMUX[1]~2_combout\ = (\SelDST~input_o\ & (\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[1]~input_o\,
	datab => \SelDST~input_o\,
	datad => \Arch|DST|R\(1),
	combout => \Arch|SelMUX[1]~2_combout\);

-- Location: LCCOMB_X66_Y41_N16
\Arch|_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~52_combout\ = (!\Arch|SelMUX[1]~2_combout\ & (!\Arch|SelMUX[2]~1_combout\ & \Arch|_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|SelMUX[1]~2_combout\,
	datac => \Arch|SelMUX[2]~1_combout\,
	datad => \Arch|_~48_combout\,
	combout => \Arch|_~52_combout\);

-- Location: FF_X65_Y44_N31
\Arch|DST|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|BUS[2]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DST|R\(2));

-- Location: IOIBUF_X78_Y30_N15
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

-- Location: LCCOMB_X65_Y44_N8
\Arch|SelMUX[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelMUX[2]~1_combout\ = (\SelDST~input_o\ & ((\DST_UC[2]~input_o\))) # (!\SelDST~input_o\ & (\Arch|DST|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelDST~input_o\,
	datac => \Arch|DST|R\(2),
	datad => \DST_UC[2]~input_o\,
	combout => \Arch|SelMUX[2]~1_combout\);

-- Location: LCCOMB_X66_Y44_N14
\Arch|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~38_combout\ = (\Arch|SelMUX[2]~1_combout\ & (!\Arch|SelMUX[4]~3_combout\ & \Arch|SelMUX[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[2]~1_combout\,
	datab => \Arch|SelMUX[4]~3_combout\,
	datad => \Arch|SelMUX[1]~2_combout\,
	combout => \Arch|_~38_combout\);

-- Location: LCCOMB_X66_Y44_N6
\Arch|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~40_combout\ = (!\Arch|SelMUX[3]~4_combout\ & (\Arch|_~38_combout\ & !\Arch|SelMUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[3]~4_combout\,
	datab => \Arch|_~38_combout\,
	datad => \Arch|SelMUX[0]~0_combout\,
	combout => \Arch|_~40_combout\);

-- Location: FF_X69_Y45_N23
\Arch|alu_x|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_x|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(4));

-- Location: LCCOMB_X69_Y47_N2
\Arch|alu_r|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[4]~feeder_combout\ = \Arch|ALU_prueba|R[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|ALU_prueba|R[4]~8_combout\,
	combout => \Arch|alu_r|R[4]~feeder_combout\);

-- Location: FF_X69_Y47_N3
\Arch|alu_r|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(4));

-- Location: IOIBUF_X56_Y54_N22
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

-- Location: LCCOMB_X64_Y47_N20
\Arch|BUS[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~34_combout\ = (\Arch|alu_r|R\(4) & ((\Arch|_~33_combout\) # ((\Fx[4]~input_o\ & \Arch|_~31_combout\)))) # (!\Arch|alu_r|R\(4) & (\Fx[4]~input_o\ & ((\Arch|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_r|R\(4),
	datab => \Fx[4]~input_o\,
	datac => \Arch|_~33_combout\,
	datad => \Arch|_~31_combout\,
	combout => \Arch|BUS[4]~34_combout\);

-- Location: FF_X66_Y47_N9
\Arch|BP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[4]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(4));

-- Location: LCCOMB_X66_Y47_N2
\Arch|BUS[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~36_combout\ = (\Arch|SI|R\(4) & ((\Arch|_~37_combout\) # ((\Arch|SP|R\(4) & \Arch|_~36_combout\)))) # (!\Arch|SI|R\(4) & (\Arch|SP|R\(4) & (\Arch|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(4),
	datab => \Arch|SP|R\(4),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[4]~36_combout\);

-- Location: LCCOMB_X66_Y47_N8
\Arch|BUS[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~37_combout\ = (\Arch|BUS[4]~36_combout\) # ((\Arch|_~35_combout\ & \Arch|BP|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~35_combout\,
	datac => \Arch|BP|R\(4),
	datad => \Arch|BUS[4]~36_combout\,
	combout => \Arch|BUS[4]~37_combout\);

-- Location: LCCOMB_X66_Y44_N8
\Arch|BUS[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~35_combout\ = (\Arch|PC|R\(4) & ((\Arch|_~32_combout\) # ((\Arch|MDR|R\(4) & \Arch|_~34_combout\)))) # (!\Arch|PC|R\(4) & (\Arch|MDR|R\(4) & (\Arch|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(4),
	datab => \Arch|MDR|R\(4),
	datac => \Arch|_~34_combout\,
	datad => \Arch|_~32_combout\,
	combout => \Arch|BUS[4]~35_combout\);

-- Location: LCCOMB_X66_Y47_N4
\Arch|BUS[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~32_combout\ = (\Arch|_~30_combout\ & ((\Arch|DI|R\(4)) # ((\Arch|Cx|R\(4) & \Arch|_~29_combout\)))) # (!\Arch|_~30_combout\ & (\Arch|Cx|R\(4) & ((\Arch|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~30_combout\,
	datab => \Arch|Cx|R\(4),
	datac => \Arch|DI|R\(4),
	datad => \Arch|_~29_combout\,
	combout => \Arch|BUS[4]~32_combout\);

-- Location: FF_X65_Y47_N5
\Arch|IR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[4]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(4));

-- Location: LCCOMB_X65_Y47_N4
\Arch|BUS[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~30_combout\ = (\Arch|_~25_combout\ & ((\Arch|MAR|R\(4)) # ((\Arch|IR|R\(4) & \Arch|_~26_combout\)))) # (!\Arch|_~25_combout\ & (((\Arch|IR|R\(4) & \Arch|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~25_combout\,
	datab => \Arch|MAR|R\(4),
	datac => \Arch|IR|R\(4),
	datad => \Arch|_~26_combout\,
	combout => \Arch|BUS[4]~30_combout\);

-- Location: LCCOMB_X66_Y45_N28
\Arch|BUS[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~31_combout\ = (\Arch|BUS[4]~30_combout\) # ((\Arch|Ax|R\(4) & \Arch|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(4),
	datac => \Arch|_~28_combout\,
	datad => \Arch|BUS[4]~30_combout\,
	combout => \Arch|BUS[4]~31_combout\);

-- Location: LCCOMB_X65_Y45_N2
\Arch|BUS[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~33_combout\ = (\Arch|BUS[4]~32_combout\) # ((\Arch|BUS[4]~31_combout\) # ((\Arch|_~27_combout\ & \Arch|Bx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~27_combout\,
	datab => \Arch|Bx|R\(4),
	datac => \Arch|BUS[4]~32_combout\,
	datad => \Arch|BUS[4]~31_combout\,
	combout => \Arch|BUS[4]~33_combout\);

-- Location: LCCOMB_X65_Y45_N0
\Arch|BUS[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[4]~38_combout\ = (\Arch|BUS[4]~34_combout\) # ((\Arch|BUS[4]~37_combout\) # ((\Arch|BUS[4]~35_combout\) # (\Arch|BUS[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[4]~34_combout\,
	datab => \Arch|BUS[4]~37_combout\,
	datac => \Arch|BUS[4]~35_combout\,
	datad => \Arch|BUS[4]~33_combout\,
	combout => \Arch|BUS[4]~38_combout\);

-- Location: FF_X65_Y47_N1
\Arch|SRC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[4]~38_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SRC|R\(4));

-- Location: LCCOMB_X64_Y47_N2
\Arch|_~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~54_combout\ = (!\Arch|SelBus[1]~4_combout\ & ((\SelSRC~input_o\ & (!\SRC_UC[4]~input_o\)) # (!\SelSRC~input_o\ & ((!\Arch|SRC|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datab => \SRC_UC[4]~input_o\,
	datac => \Arch|SRC|R\(4),
	datad => \Arch|SelBus[1]~4_combout\,
	combout => \Arch|_~54_combout\);

-- Location: LCCOMB_X64_Y47_N12
\Arch|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~31_combout\ = (\Arch|SelBus[0]~3_combout\ & (\Arch|SelBus[2]~0_combout\ & (\Arch|_~54_combout\ & !\Arch|SelBus[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|SelBus[2]~0_combout\,
	datac => \Arch|_~54_combout\,
	datad => \Arch|SelBus[3]~1_combout\,
	combout => \Arch|_~31_combout\);

-- Location: LCCOMB_X65_Y47_N18
\Arch|_~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~55_combout\ = (!\Arch|SelBus[4]~2_combout\ & ((\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\Arch|SRC|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datab => \SRC_UC[3]~input_o\,
	datac => \Arch|SRC|R\(3),
	datad => \Arch|SelBus[4]~2_combout\,
	combout => \Arch|_~55_combout\);

-- Location: LCCOMB_X64_Y47_N14
\Arch|BUS[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~9_combout\ = (\Arch|_~55_combout\ & ((\Arch|SelBus[2]~0_combout\) # ((\Arch|SelBus[0]~3_combout\ & \Arch|SelBus[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|SelBus[1]~4_combout\,
	datac => \Arch|SelBus[2]~0_combout\,
	datad => \Arch|_~55_combout\,
	combout => \Arch|BUS[7]~9_combout\);

-- Location: LCCOMB_X64_Y47_N0
\Arch|BUS[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~8_combout\ = (\Arch|_~53_combout\ & ((!\Arch|SelBus[0]~3_combout\) # (!\Arch|SelBus[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~53_combout\,
	datab => \Arch|SelBus[1]~4_combout\,
	datac => \Arch|SelBus[0]~3_combout\,
	combout => \Arch|BUS[7]~8_combout\);

-- Location: LCCOMB_X64_Y47_N8
\Arch|BUS[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~10_combout\ = (\Arch|_~31_combout\) # ((\Arch|BUS[7]~9_combout\) # ((\Arch|_~33_combout\) # (\Arch|BUS[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~31_combout\,
	datab => \Arch|BUS[7]~9_combout\,
	datac => \Arch|_~33_combout\,
	datad => \Arch|BUS[7]~8_combout\,
	combout => \Arch|BUS[7]~10_combout\);

-- Location: FF_X65_Y47_N27
\Arch|IR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[3]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(3));

-- Location: LCCOMB_X65_Y47_N26
\Arch|BUS[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~39_combout\ = (\Arch|MAR|R\(3) & ((\Arch|_~25_combout\) # ((\Arch|_~26_combout\ & \Arch|IR|R\(3))))) # (!\Arch|MAR|R\(3) & (\Arch|_~26_combout\ & (\Arch|IR|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|MAR|R\(3),
	datab => \Arch|_~26_combout\,
	datac => \Arch|IR|R\(3),
	datad => \Arch|_~25_combout\,
	combout => \Arch|BUS[3]~39_combout\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: LCCOMB_X64_Y47_N26
\Arch|BUS[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~40_combout\ = (\Arch|Bx|R\(3) & ((\Arch|_~27_combout\) # ((\Arch|Ax|R\(3) & \Arch|_~28_combout\)))) # (!\Arch|Bx|R\(3) & (\Arch|Ax|R\(3) & (\Arch|_~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Bx|R\(3),
	datab => \Arch|Ax|R\(3),
	datac => \Arch|_~28_combout\,
	datad => \Arch|_~27_combout\,
	combout => \Arch|BUS[3]~40_combout\);

-- Location: LCCOMB_X66_Y48_N6
\Arch|BUS[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~41_combout\ = (\Arch|DI|R\(3) & ((\Arch|_~30_combout\) # ((\Arch|_~29_combout\ & \Arch|Cx|R\(3))))) # (!\Arch|DI|R\(3) & (\Arch|_~29_combout\ & (\Arch|Cx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(3),
	datab => \Arch|_~29_combout\,
	datac => \Arch|Cx|R\(3),
	datad => \Arch|_~30_combout\,
	combout => \Arch|BUS[3]~41_combout\);

-- Location: LCCOMB_X67_Y45_N4
\Arch|BUS[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~42_combout\ = (\Arch|BUS[3]~40_combout\) # ((\Arch|BUS[3]~41_combout\) # ((\Arch|_~31_combout\ & \Fx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~31_combout\,
	datab => \Fx[3]~input_o\,
	datac => \Arch|BUS[3]~40_combout\,
	datad => \Arch|BUS[3]~41_combout\,
	combout => \Arch|BUS[3]~42_combout\);

-- Location: FF_X66_Y47_N19
\Arch|BP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[3]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(3));

-- Location: LCCOMB_X66_Y47_N18
\Arch|BUS[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~44_combout\ = (\Arch|_~35_combout\ & ((\Arch|BP|R\(3)) # ((\Arch|_~34_combout\ & \Arch|MDR|R\(3))))) # (!\Arch|_~35_combout\ & (\Arch|_~34_combout\ & ((\Arch|MDR|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~35_combout\,
	datab => \Arch|_~34_combout\,
	datac => \Arch|BP|R\(3),
	datad => \Arch|MDR|R\(3),
	combout => \Arch|BUS[3]~44_combout\);

-- Location: LCCOMB_X67_Y45_N30
\Arch|BUS[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~45_combout\ = (\Arch|SI|R\(3) & ((\Arch|_~37_combout\) # ((\Arch|SP|R\(3) & \Arch|_~36_combout\)))) # (!\Arch|SI|R\(3) & (\Arch|SP|R\(3) & ((\Arch|_~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(3),
	datab => \Arch|SP|R\(3),
	datac => \Arch|_~37_combout\,
	datad => \Arch|_~36_combout\,
	combout => \Arch|BUS[3]~45_combout\);

-- Location: LCCOMB_X69_Y47_N4
\Arch|alu_r|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[3]~feeder_combout\ = \Arch|ALU_prueba|R[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arch|ALU_prueba|R[3]~6_combout\,
	combout => \Arch|alu_r|R[3]~feeder_combout\);

-- Location: FF_X69_Y47_N5
\Arch|alu_r|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(3));

-- Location: LCCOMB_X64_Y47_N24
\Arch|BUS[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~43_combout\ = (\Arch|PC|R\(3) & ((\Arch|_~32_combout\) # ((\Arch|alu_r|R\(3) & \Arch|_~33_combout\)))) # (!\Arch|PC|R\(3) & (\Arch|alu_r|R\(3) & (\Arch|_~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|PC|R\(3),
	datab => \Arch|alu_r|R\(3),
	datac => \Arch|_~33_combout\,
	datad => \Arch|_~32_combout\,
	combout => \Arch|BUS[3]~43_combout\);

-- Location: LCCOMB_X67_Y45_N24
\Arch|BUS[3]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~46_combout\ = (\Arch|BUS[3]~44_combout\) # ((\Arch|BUS[3]~45_combout\) # (\Arch|BUS[3]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[3]~44_combout\,
	datac => \Arch|BUS[3]~45_combout\,
	datad => \Arch|BUS[3]~43_combout\,
	combout => \Arch|BUS[3]~46_combout\);

-- Location: LCCOMB_X67_Y45_N6
\Arch|BUS[3]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[3]~47_combout\ = ((\Arch|BUS[3]~39_combout\) # ((\Arch|BUS[3]~42_combout\) # (\Arch|BUS[3]~46_combout\))) # (!\Arch|BUS[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[7]~10_combout\,
	datab => \Arch|BUS[3]~39_combout\,
	datac => \Arch|BUS[3]~42_combout\,
	datad => \Arch|BUS[3]~46_combout\,
	combout => \Arch|BUS[3]~47_combout\);

-- Location: FF_X66_Y45_N19
\Arch|DST|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[3]~47_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|DST|R\(3));

-- Location: LCCOMB_X66_Y45_N14
\Arch|SelMUX[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelMUX[3]~4_combout\ = (\SelDST~input_o\ & (\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((\Arch|DST|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[3]~input_o\,
	datab => \SelDST~input_o\,
	datad => \Arch|DST|R\(3),
	combout => \Arch|SelMUX[3]~4_combout\);

-- Location: LCCOMB_X66_Y44_N4
\Arch|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~39_combout\ = (!\Arch|SelMUX[3]~4_combout\ & (\Arch|_~38_combout\ & \Arch|SelMUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelMUX[3]~4_combout\,
	datab => \Arch|_~38_combout\,
	datad => \Arch|SelMUX[0]~0_combout\,
	combout => \Arch|_~39_combout\);

-- Location: FF_X66_Y44_N29
\Arch|alu_y|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_y|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(2));

-- Location: LCCOMB_X69_Y47_N26
\Arch|alu_r|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[2]~feeder_combout\ = \Arch|ALU_prueba|R[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|ALU_prueba|R[2]~4_combout\,
	combout => \Arch|alu_r|R[2]~feeder_combout\);

-- Location: FF_X69_Y47_N27
\Arch|alu_r|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(2));

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: LCCOMB_X65_Y44_N10
\Arch|BUS[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~52_combout\ = (\Arch|alu_r|R\(2) & ((\Arch|_~33_combout\) # ((\Fx[2]~input_o\ & \Arch|_~31_combout\)))) # (!\Arch|alu_r|R\(2) & (\Fx[2]~input_o\ & ((\Arch|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_r|R\(2),
	datab => \Fx[2]~input_o\,
	datac => \Arch|_~33_combout\,
	datad => \Arch|_~31_combout\,
	combout => \Arch|BUS[2]~52_combout\);

-- Location: LCCOMB_X67_Y47_N2
\Arch|BUS[2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~53_combout\ = (\Arch|_~34_combout\ & ((\Arch|MDR|R\(2)) # ((\Arch|PC|R\(2) & \Arch|_~32_combout\)))) # (!\Arch|_~34_combout\ & (\Arch|PC|R\(2) & (\Arch|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~34_combout\,
	datab => \Arch|PC|R\(2),
	datac => \Arch|_~32_combout\,
	datad => \Arch|MDR|R\(2),
	combout => \Arch|BUS[2]~53_combout\);

-- Location: FF_X66_Y47_N15
\Arch|BP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[2]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(2));

-- Location: LCCOMB_X66_Y47_N24
\Arch|BUS[2]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~54_combout\ = (\Arch|SI|R\(2) & ((\Arch|_~37_combout\) # ((\Arch|SP|R\(2) & \Arch|_~36_combout\)))) # (!\Arch|SI|R\(2) & (\Arch|SP|R\(2) & (\Arch|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SI|R\(2),
	datab => \Arch|SP|R\(2),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[2]~54_combout\);

-- Location: LCCOMB_X66_Y47_N14
\Arch|BUS[2]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~55_combout\ = (\Arch|BUS[2]~54_combout\) # ((\Arch|_~35_combout\ & \Arch|BP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~35_combout\,
	datac => \Arch|BP|R\(2),
	datad => \Arch|BUS[2]~54_combout\,
	combout => \Arch|BUS[2]~55_combout\);

-- Location: LCCOMB_X65_Y44_N2
\Arch|BUS[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~50_combout\ = (\Arch|DI|R\(2) & ((\Arch|_~30_combout\) # ((\Arch|Cx|R\(2) & \Arch|_~29_combout\)))) # (!\Arch|DI|R\(2) & (\Arch|Cx|R\(2) & ((\Arch|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(2),
	datab => \Arch|Cx|R\(2),
	datac => \Arch|_~30_combout\,
	datad => \Arch|_~29_combout\,
	combout => \Arch|BUS[2]~50_combout\);

-- Location: FF_X65_Y47_N13
\Arch|IR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[2]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(2));

-- Location: LCCOMB_X65_Y47_N12
\Arch|BUS[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~48_combout\ = (\Arch|_~25_combout\ & ((\Arch|MAR|R\(2)) # ((\Arch|IR|R\(2) & \Arch|_~26_combout\)))) # (!\Arch|_~25_combout\ & (((\Arch|IR|R\(2) & \Arch|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~25_combout\,
	datab => \Arch|MAR|R\(2),
	datac => \Arch|IR|R\(2),
	datad => \Arch|_~26_combout\,
	combout => \Arch|BUS[2]~48_combout\);

-- Location: LCCOMB_X65_Y44_N0
\Arch|BUS[2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~49_combout\ = (\Arch|BUS[2]~48_combout\) # ((\Arch|_~28_combout\ & \Arch|Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~28_combout\,
	datac => \Arch|BUS[2]~48_combout\,
	datad => \Arch|Ax|R\(2),
	combout => \Arch|BUS[2]~49_combout\);

-- Location: LCCOMB_X65_Y44_N28
\Arch|BUS[2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~51_combout\ = (\Arch|BUS[2]~50_combout\) # ((\Arch|BUS[2]~49_combout\) # ((\Arch|_~27_combout\ & \Arch|Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~27_combout\,
	datab => \Arch|BUS[2]~50_combout\,
	datac => \Arch|Bx|R\(2),
	datad => \Arch|BUS[2]~49_combout\,
	combout => \Arch|BUS[2]~51_combout\);

-- Location: LCCOMB_X65_Y44_N30
\Arch|BUS[2]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[2]~56_combout\ = (\Arch|BUS[2]~52_combout\) # ((\Arch|BUS[2]~53_combout\) # ((\Arch|BUS[2]~55_combout\) # (\Arch|BUS[2]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[2]~52_combout\,
	datab => \Arch|BUS[2]~53_combout\,
	datac => \Arch|BUS[2]~55_combout\,
	datad => \Arch|BUS[2]~51_combout\,
	combout => \Arch|BUS[2]~56_combout\);

-- Location: FF_X65_Y47_N17
\Arch|SRC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[2]~56_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SRC|R\(2));

-- Location: LCCOMB_X65_Y47_N10
\Arch|SelBus[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelBus[2]~0_combout\ = (\SelSRC~input_o\ & (\SRC_UC[2]~input_o\)) # (!\SelSRC~input_o\ & ((\Arch|SRC|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datac => \SRC_UC[2]~input_o\,
	datad => \Arch|SRC|R\(2),
	combout => \Arch|SelBus[2]~0_combout\);

-- Location: LCCOMB_X65_Y47_N24
\Arch|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~32_combout\ = (!\Arch|SelBus[2]~0_combout\ & (\Arch|_~55_combout\ & (\Arch|SelBus[0]~3_combout\ & \Arch|SelBus[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[2]~0_combout\,
	datab => \Arch|_~55_combout\,
	datac => \Arch|SelBus[0]~3_combout\,
	datad => \Arch|SelBus[1]~4_combout\,
	combout => \Arch|_~32_combout\);

-- Location: LCCOMB_X67_Y47_N22
\Arch|BUS[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~71_combout\ = (\Arch|_~32_combout\ & ((\Arch|PC|R\(0)) # ((\Arch|_~34_combout\ & \Arch|MDR|R\(0))))) # (!\Arch|_~32_combout\ & (((\Arch|_~34_combout\ & \Arch|MDR|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~32_combout\,
	datab => \Arch|PC|R\(0),
	datac => \Arch|_~34_combout\,
	datad => \Arch|MDR|R\(0),
	combout => \Arch|BUS[0]~71_combout\);

-- Location: FF_X66_Y47_N11
\Arch|BP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[0]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(0));

-- Location: LCCOMB_X66_Y47_N16
\Arch|BUS[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~72_combout\ = (\Arch|SP|R\(0) & ((\Arch|_~36_combout\) # ((\Arch|SI|R\(0) & \Arch|_~37_combout\)))) # (!\Arch|SP|R\(0) & (\Arch|SI|R\(0) & ((\Arch|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(0),
	datab => \Arch|SI|R\(0),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[0]~72_combout\);

-- Location: LCCOMB_X66_Y47_N10
\Arch|BUS[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~73_combout\ = (\Arch|BUS[0]~72_combout\) # ((\Arch|_~35_combout\ & \Arch|BP|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~35_combout\,
	datac => \Arch|BP|R\(0),
	datad => \Arch|BUS[0]~72_combout\,
	combout => \Arch|BUS[0]~73_combout\);

-- Location: IOIBUF_X60_Y54_N22
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

-- Location: LCCOMB_X69_Y47_N30
\Arch|alu_r|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_r|R[0]~feeder_combout\ = \Arch|ALU_prueba|R[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Arch|ALU_prueba|R[0]~0_combout\,
	combout => \Arch|alu_r|R[0]~feeder_combout\);

-- Location: FF_X69_Y47_N31
\Arch|alu_r|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_r|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(0));

-- Location: LCCOMB_X63_Y47_N28
\Arch|BUS[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~70_combout\ = (\Fx[0]~input_o\ & ((\Arch|_~31_combout\) # ((\Arch|alu_r|R\(0) & \Arch|_~33_combout\)))) # (!\Fx[0]~input_o\ & (\Arch|alu_r|R\(0) & ((\Arch|_~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[0]~input_o\,
	datab => \Arch|alu_r|R\(0),
	datac => \Arch|_~31_combout\,
	datad => \Arch|_~33_combout\,
	combout => \Arch|BUS[0]~70_combout\);

-- Location: LCCOMB_X67_Y47_N14
\Arch|BUS[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~68_combout\ = (\Arch|DI|R\(0) & ((\Arch|_~30_combout\) # ((\Arch|Cx|R\(0) & \Arch|_~29_combout\)))) # (!\Arch|DI|R\(0) & (\Arch|Cx|R\(0) & (\Arch|_~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|DI|R\(0),
	datab => \Arch|Cx|R\(0),
	datac => \Arch|_~29_combout\,
	datad => \Arch|_~30_combout\,
	combout => \Arch|BUS[0]~68_combout\);

-- Location: LCCOMB_X65_Y43_N30
\Arch|IR|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|IR|R[0]~feeder_combout\ = \Arch|BUS[0]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[0]~74_combout\,
	combout => \Arch|IR|R[0]~feeder_combout\);

-- Location: FF_X65_Y43_N31
\Arch|IR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|IR|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(0));

-- Location: LCCOMB_X65_Y43_N16
\Arch|BUS[0]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~66_combout\ = (\Arch|IR|R\(0) & ((\Arch|_~26_combout\) # ((\Arch|MAR|R\(0) & \Arch|_~25_combout\)))) # (!\Arch|IR|R\(0) & (\Arch|MAR|R\(0) & ((\Arch|_~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|IR|R\(0),
	datab => \Arch|MAR|R\(0),
	datac => \Arch|_~26_combout\,
	datad => \Arch|_~25_combout\,
	combout => \Arch|BUS[0]~66_combout\);

-- Location: LCCOMB_X65_Y43_N22
\Arch|BUS[0]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~67_combout\ = (\Arch|BUS[0]~66_combout\) # ((\Arch|Ax|R\(0) & \Arch|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|Ax|R\(0),
	datac => \Arch|_~28_combout\,
	datad => \Arch|BUS[0]~66_combout\,
	combout => \Arch|BUS[0]~67_combout\);

-- Location: LCCOMB_X66_Y45_N6
\Arch|BUS[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~69_combout\ = (\Arch|BUS[0]~68_combout\) # ((\Arch|BUS[0]~67_combout\) # ((\Arch|Bx|R\(0) & \Arch|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[0]~68_combout\,
	datab => \Arch|Bx|R\(0),
	datac => \Arch|_~27_combout\,
	datad => \Arch|BUS[0]~67_combout\,
	combout => \Arch|BUS[0]~69_combout\);

-- Location: LCCOMB_X66_Y45_N20
\Arch|BUS[0]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[0]~74_combout\ = (\Arch|BUS[0]~71_combout\) # ((\Arch|BUS[0]~73_combout\) # ((\Arch|BUS[0]~70_combout\) # (\Arch|BUS[0]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[0]~71_combout\,
	datab => \Arch|BUS[0]~73_combout\,
	datac => \Arch|BUS[0]~70_combout\,
	datad => \Arch|BUS[0]~69_combout\,
	combout => \Arch|BUS[0]~74_combout\);

-- Location: FF_X66_Y47_N21
\Arch|SRC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[0]~74_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|SRC|R\(0));

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: LCCOMB_X66_Y47_N20
\Arch|SelBus[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|SelBus[0]~3_combout\ = (\SelSRC~input_o\ & ((\SRC_UC[0]~input_o\))) # (!\SelSRC~input_o\ & (\Arch|SRC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datac => \Arch|SRC|R\(0),
	datad => \SRC_UC[0]~input_o\,
	combout => \Arch|SelBus[0]~3_combout\);

-- Location: LCCOMB_X65_Y47_N16
\Arch|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|_~25_combout\ = (!\Arch|SelBus[0]~3_combout\ & (!\Arch|SelBus[1]~4_combout\ & \Arch|_~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SelBus[0]~3_combout\,
	datab => \Arch|SelBus[1]~4_combout\,
	datad => \Arch|_~24_combout\,
	combout => \Arch|_~25_combout\);

-- Location: FF_X65_Y47_N9
\Arch|IR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[7]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|IR|R\(7));

-- Location: LCCOMB_X65_Y47_N8
\Arch|BUS[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~0_combout\ = (\Arch|_~25_combout\ & ((\Arch|MAR|R\(7)) # ((\Arch|IR|R\(7) & \Arch|_~26_combout\)))) # (!\Arch|_~25_combout\ & (((\Arch|IR|R\(7) & \Arch|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~25_combout\,
	datab => \Arch|MAR|R\(7),
	datac => \Arch|IR|R\(7),
	datad => \Arch|_~26_combout\,
	combout => \Arch|BUS[7]~0_combout\);

-- Location: IOIBUF_X78_Y25_N15
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

-- Location: LCCOMB_X64_Y47_N22
\Arch|BUS[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~1_combout\ = (\Arch|Ax|R\(7) & ((\Arch|_~28_combout\) # ((\Arch|Bx|R\(7) & \Arch|_~27_combout\)))) # (!\Arch|Ax|R\(7) & (\Arch|Bx|R\(7) & ((\Arch|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Ax|R\(7),
	datab => \Arch|Bx|R\(7),
	datac => \Arch|_~28_combout\,
	datad => \Arch|_~27_combout\,
	combout => \Arch|BUS[7]~1_combout\);

-- Location: LCCOMB_X65_Y45_N12
\Arch|BUS[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~2_combout\ = (\Arch|Cx|R\(7) & ((\Arch|_~29_combout\) # ((\Arch|DI|R\(7) & \Arch|_~30_combout\)))) # (!\Arch|Cx|R\(7) & (\Arch|DI|R\(7) & (\Arch|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|Cx|R\(7),
	datab => \Arch|DI|R\(7),
	datac => \Arch|_~30_combout\,
	datad => \Arch|_~29_combout\,
	combout => \Arch|BUS[7]~2_combout\);

-- Location: LCCOMB_X65_Y45_N6
\Arch|BUS[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~3_combout\ = (\Arch|BUS[7]~1_combout\) # ((\Arch|BUS[7]~2_combout\) # ((\Arch|_~31_combout\ & \Fx[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~31_combout\,
	datab => \Fx[7]~input_o\,
	datac => \Arch|BUS[7]~1_combout\,
	datad => \Arch|BUS[7]~2_combout\,
	combout => \Arch|BUS[7]~3_combout\);

-- Location: FF_X66_Y45_N17
\Arch|BP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|BUS[7]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|BP|R\(7));

-- Location: LCCOMB_X66_Y47_N28
\Arch|BUS[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~5_combout\ = (\Arch|BP|R\(7) & ((\Arch|_~35_combout\) # ((\Arch|MDR|R\(7) & \Arch|_~34_combout\)))) # (!\Arch|BP|R\(7) & (\Arch|MDR|R\(7) & ((\Arch|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BP|R\(7),
	datab => \Arch|MDR|R\(7),
	datac => \Arch|_~35_combout\,
	datad => \Arch|_~34_combout\,
	combout => \Arch|BUS[7]~5_combout\);

-- Location: LCCOMB_X66_Y47_N6
\Arch|BUS[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~6_combout\ = (\Arch|SP|R\(7) & ((\Arch|_~36_combout\) # ((\Arch|SI|R\(7) & \Arch|_~37_combout\)))) # (!\Arch|SP|R\(7) & (\Arch|SI|R\(7) & ((\Arch|_~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|SP|R\(7),
	datab => \Arch|SI|R\(7),
	datac => \Arch|_~36_combout\,
	datad => \Arch|_~37_combout\,
	combout => \Arch|BUS[7]~6_combout\);

-- Location: FF_X69_Y47_N25
\Arch|alu_r|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|ALU_prueba|R[7]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Enable_t~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_r|R\(7));

-- Location: LCCOMB_X69_Y47_N24
\Arch|BUS[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~4_combout\ = (\Arch|_~33_combout\ & ((\Arch|alu_r|R\(7)) # ((\Arch|PC|R\(7) & \Arch|_~32_combout\)))) # (!\Arch|_~33_combout\ & (\Arch|PC|R\(7) & ((\Arch|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|_~33_combout\,
	datab => \Arch|PC|R\(7),
	datac => \Arch|alu_r|R\(7),
	datad => \Arch|_~32_combout\,
	combout => \Arch|BUS[7]~4_combout\);

-- Location: LCCOMB_X66_Y45_N10
\Arch|BUS[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~7_combout\ = (\Arch|BUS[7]~5_combout\) # ((\Arch|BUS[7]~6_combout\) # (\Arch|BUS[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Arch|BUS[7]~5_combout\,
	datac => \Arch|BUS[7]~6_combout\,
	datad => \Arch|BUS[7]~4_combout\,
	combout => \Arch|BUS[7]~7_combout\);

-- Location: LCCOMB_X66_Y45_N16
\Arch|BUS[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|BUS[7]~11_combout\ = (\Arch|BUS[7]~0_combout\) # (((\Arch|BUS[7]~3_combout\) # (\Arch|BUS[7]~7_combout\)) # (!\Arch|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|BUS[7]~0_combout\,
	datab => \Arch|BUS[7]~10_combout\,
	datac => \Arch|BUS[7]~3_combout\,
	datad => \Arch|BUS[7]~7_combout\,
	combout => \Arch|BUS[7]~11_combout\);

-- Location: LCCOMB_X69_Y45_N4
\Arch|alu_x|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|alu_x|R[7]~feeder_combout\ = \Arch|BUS[7]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Arch|BUS[7]~11_combout\,
	combout => \Arch|alu_x|R[7]~feeder_combout\);

-- Location: FF_X69_Y45_N5
\Arch|alu_x|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \Arch|alu_x|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Arch|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_x|R\(7));

-- Location: FF_X66_Y44_N5
\Arch|alu_y|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \Arch|BUS[7]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Arch|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Arch|alu_y|R\(7));

-- Location: LCCOMB_X69_Y47_N22
\Arch|ALU_prueba|R[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Arch|ALU_prueba|R[7]~14_combout\ = \Arch|alu_x|R\(7) $ (\Arch|alu_y|R\(7) $ (\Arch|ALU_prueba|R[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Arch|alu_x|R\(7),
	datab => \Arch|alu_y|R\(7),
	cin => \Arch|ALU_prueba|R[6]~13\,
	combout => \Arch|ALU_prueba|R[7]~14_combout\);

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

ww_ALU_t(7) <= \ALU_t[7]~output_o\;

ww_ALU_t(6) <= \ALU_t[6]~output_o\;

ww_ALU_t(5) <= \ALU_t[5]~output_o\;

ww_ALU_t(4) <= \ALU_t[4]~output_o\;

ww_ALU_t(3) <= \ALU_t[3]~output_o\;

ww_ALU_t(2) <= \ALU_t[2]~output_o\;

ww_ALU_t(1) <= \ALU_t[1]~output_o\;

ww_ALU_t(0) <= \ALU_t[0]~output_o\;

ww_Ax_t(7) <= \Ax_t[7]~output_o\;

ww_Ax_t(6) <= \Ax_t[6]~output_o\;

ww_Ax_t(5) <= \Ax_t[5]~output_o\;

ww_Ax_t(4) <= \Ax_t[4]~output_o\;

ww_Ax_t(3) <= \Ax_t[3]~output_o\;

ww_Ax_t(2) <= \Ax_t[2]~output_o\;

ww_Ax_t(1) <= \Ax_t[1]~output_o\;

ww_Ax_t(0) <= \Ax_t[0]~output_o\;

ww_Bus_t(7) <= \Bus_t[7]~output_o\;

ww_Bus_t(6) <= \Bus_t[6]~output_o\;

ww_Bus_t(5) <= \Bus_t[5]~output_o\;

ww_Bus_t(4) <= \Bus_t[4]~output_o\;

ww_Bus_t(3) <= \Bus_t[3]~output_o\;

ww_Bus_t(2) <= \Bus_t[2]~output_o\;

ww_Bus_t(1) <= \Bus_t[1]~output_o\;

ww_Bus_t(0) <= \Bus_t[0]~output_o\;

ww_Bx_t(7) <= \Bx_t[7]~output_o\;

ww_Bx_t(6) <= \Bx_t[6]~output_o\;

ww_Bx_t(5) <= \Bx_t[5]~output_o\;

ww_Bx_t(4) <= \Bx_t[4]~output_o\;

ww_Bx_t(3) <= \Bx_t[3]~output_o\;

ww_Bx_t(2) <= \Bx_t[2]~output_o\;

ww_Bx_t(1) <= \Bx_t[1]~output_o\;

ww_Bx_t(0) <= \Bx_t[0]~output_o\;

ww_Cx_t(7) <= \Cx_t[7]~output_o\;

ww_Cx_t(6) <= \Cx_t[6]~output_o\;

ww_Cx_t(5) <= \Cx_t[5]~output_o\;

ww_Cx_t(4) <= \Cx_t[4]~output_o\;

ww_Cx_t(3) <= \Cx_t[3]~output_o\;

ww_Cx_t(2) <= \Cx_t[2]~output_o\;

ww_Cx_t(1) <= \Cx_t[1]~output_o\;

ww_Cx_t(0) <= \Cx_t[0]~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(4) <= \IR[4]~output_o\;

ww_IR(3) <= \IR[3]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_MAR(7) <= \MAR[7]~output_o\;

ww_MAR(6) <= \MAR[6]~output_o\;

ww_MAR(5) <= \MAR[5]~output_o\;

ww_MAR(4) <= \MAR[4]~output_o\;

ww_MAR(3) <= \MAR[3]~output_o\;

ww_MAR(2) <= \MAR[2]~output_o\;

ww_MAR(1) <= \MAR[1]~output_o\;

ww_MAR(0) <= \MAR[0]~output_o\;

ww_MDR(7) <= \MDR[7]~output_o\;

ww_MDR(6) <= \MDR[6]~output_o\;

ww_MDR(5) <= \MDR[5]~output_o\;

ww_MDR(4) <= \MDR[4]~output_o\;

ww_MDR(3) <= \MDR[3]~output_o\;

ww_MDR(2) <= \MDR[2]~output_o\;

ww_MDR(1) <= \MDR[1]~output_o\;

ww_MDR(0) <= \MDR[0]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_r_t(7) <= \r_t[7]~output_o\;

ww_r_t(6) <= \r_t[6]~output_o\;

ww_r_t(5) <= \r_t[5]~output_o\;

ww_r_t(4) <= \r_t[4]~output_o\;

ww_r_t(3) <= \r_t[3]~output_o\;

ww_r_t(2) <= \r_t[2]~output_o\;

ww_r_t(1) <= \r_t[1]~output_o\;

ww_r_t(0) <= \r_t[0]~output_o\;

ww_x_t(7) <= \x_t[7]~output_o\;

ww_x_t(6) <= \x_t[6]~output_o\;

ww_x_t(5) <= \x_t[5]~output_o\;

ww_x_t(4) <= \x_t[4]~output_o\;

ww_x_t(3) <= \x_t[3]~output_o\;

ww_x_t(2) <= \x_t[2]~output_o\;

ww_x_t(1) <= \x_t[1]~output_o\;

ww_x_t(0) <= \x_t[0]~output_o\;

ww_y_t(7) <= \y_t[7]~output_o\;

ww_y_t(6) <= \y_t[6]~output_o\;

ww_y_t(5) <= \y_t[5]~output_o\;

ww_y_t(4) <= \y_t[4]~output_o\;

ww_y_t(3) <= \y_t[3]~output_o\;

ww_y_t(2) <= \y_t[2]~output_o\;

ww_y_t(1) <= \y_t[1]~output_o\;

ww_y_t(0) <= \y_t[0]~output_o\;
END structure;


