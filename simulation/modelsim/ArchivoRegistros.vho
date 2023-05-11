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

-- DATE "05/10/2023 20:51:22"

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
	ALU_t : OUT std_logic_vector(16 DOWNTO 0);
	Reloj : IN std_logic;
	Reset : IN std_logic;
	SelDST : IN std_logic;
	SelSRC : IN std_logic;
	SelMAR : IN std_logic;
	SelMDR : IN std_logic;
	Cmd : IN std_logic_vector(2 DOWNTO 0);
	Write_En : IN std_logic;
	DST_UC : IN std_logic_vector(4 DOWNTO 0);
	Fx : IN std_logic_vector(7 DOWNTO 0);
	SelOp : IN std_logic_vector(2 DOWNTO 0);
	SRC_UC : IN std_logic_vector(4 DOWNTO 0);
	Ax_t : OUT std_logic_vector(7 DOWNTO 0);
	Bus_t : OUT std_logic_vector(7 DOWNTO 0);
	Bx_t : OUT std_logic_vector(7 DOWNTO 0);
	Cx_t : OUT std_logic_vector(7 DOWNTO 0);
	DST_t : OUT std_logic_vector(7 DOWNTO 0);
	Dx_t : OUT std_logic_vector(7 DOWNTO 0);
	Ex_t : OUT std_logic_vector(7 DOWNTO 0);
	Flags : OUT std_logic_vector(7 DOWNTO 0);
	IR : OUT std_logic_vector(7 DOWNTO 0);
	MAR : OUT std_logic_vector(7 DOWNTO 0);
	MDR : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	r_t : OUT std_logic_vector(16 DOWNTO 0);
	res_t : OUT std_logic_vector(7 DOWNTO 0);
	SelBus_t : OUT std_logic_vector(4 DOWNTO 0);
	SRC_t : OUT std_logic_vector(7 DOWNTO 0);
	x_t : OUT std_logic_vector(7 DOWNTO 0);
	y_t : OUT std_logic_vector(7 DOWNTO 0)
	);
END MiQRObio;

-- Design Ports Information
-- ALU_t[16]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[12]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[10]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[8]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[6]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[0]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[4]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[7]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[5]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[6]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[5]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[5]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[3]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[7]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[5]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR[0]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[16]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[14]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[13]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[12]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[9]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[7]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[6]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[6]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[2]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[3]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelSRC	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[1]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelDST	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[2]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMDR	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMAR	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_En	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ALU_t : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_SelDST : std_logic;
SIGNAL ww_SelSRC : std_logic;
SIGNAL ww_SelMAR : std_logic;
SIGNAL ww_SelMDR : std_logic;
SIGNAL ww_Cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Write_En : std_logic;
SIGNAL ww_DST_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Fx : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelOp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SRC_UC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Ax_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DST_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Ex_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Flags : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_t : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_res_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelBus_t : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SRC_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ALU_t[16]~output_o\ : std_logic;
SIGNAL \ALU_t[15]~output_o\ : std_logic;
SIGNAL \ALU_t[14]~output_o\ : std_logic;
SIGNAL \ALU_t[13]~output_o\ : std_logic;
SIGNAL \ALU_t[12]~output_o\ : std_logic;
SIGNAL \ALU_t[11]~output_o\ : std_logic;
SIGNAL \ALU_t[10]~output_o\ : std_logic;
SIGNAL \ALU_t[9]~output_o\ : std_logic;
SIGNAL \ALU_t[8]~output_o\ : std_logic;
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
SIGNAL \DST_t[7]~output_o\ : std_logic;
SIGNAL \DST_t[6]~output_o\ : std_logic;
SIGNAL \DST_t[5]~output_o\ : std_logic;
SIGNAL \DST_t[4]~output_o\ : std_logic;
SIGNAL \DST_t[3]~output_o\ : std_logic;
SIGNAL \DST_t[2]~output_o\ : std_logic;
SIGNAL \DST_t[1]~output_o\ : std_logic;
SIGNAL \DST_t[0]~output_o\ : std_logic;
SIGNAL \Dx_t[7]~output_o\ : std_logic;
SIGNAL \Dx_t[6]~output_o\ : std_logic;
SIGNAL \Dx_t[5]~output_o\ : std_logic;
SIGNAL \Dx_t[4]~output_o\ : std_logic;
SIGNAL \Dx_t[3]~output_o\ : std_logic;
SIGNAL \Dx_t[2]~output_o\ : std_logic;
SIGNAL \Dx_t[1]~output_o\ : std_logic;
SIGNAL \Dx_t[0]~output_o\ : std_logic;
SIGNAL \Ex_t[7]~output_o\ : std_logic;
SIGNAL \Ex_t[6]~output_o\ : std_logic;
SIGNAL \Ex_t[5]~output_o\ : std_logic;
SIGNAL \Ex_t[4]~output_o\ : std_logic;
SIGNAL \Ex_t[3]~output_o\ : std_logic;
SIGNAL \Ex_t[2]~output_o\ : std_logic;
SIGNAL \Ex_t[1]~output_o\ : std_logic;
SIGNAL \Ex_t[0]~output_o\ : std_logic;
SIGNAL \Flags[7]~output_o\ : std_logic;
SIGNAL \Flags[6]~output_o\ : std_logic;
SIGNAL \Flags[5]~output_o\ : std_logic;
SIGNAL \Flags[4]~output_o\ : std_logic;
SIGNAL \Flags[3]~output_o\ : std_logic;
SIGNAL \Flags[2]~output_o\ : std_logic;
SIGNAL \Flags[1]~output_o\ : std_logic;
SIGNAL \Flags[0]~output_o\ : std_logic;
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
SIGNAL \r_t[16]~output_o\ : std_logic;
SIGNAL \r_t[15]~output_o\ : std_logic;
SIGNAL \r_t[14]~output_o\ : std_logic;
SIGNAL \r_t[13]~output_o\ : std_logic;
SIGNAL \r_t[12]~output_o\ : std_logic;
SIGNAL \r_t[11]~output_o\ : std_logic;
SIGNAL \r_t[10]~output_o\ : std_logic;
SIGNAL \r_t[9]~output_o\ : std_logic;
SIGNAL \r_t[8]~output_o\ : std_logic;
SIGNAL \r_t[7]~output_o\ : std_logic;
SIGNAL \r_t[6]~output_o\ : std_logic;
SIGNAL \r_t[5]~output_o\ : std_logic;
SIGNAL \r_t[4]~output_o\ : std_logic;
SIGNAL \r_t[3]~output_o\ : std_logic;
SIGNAL \r_t[2]~output_o\ : std_logic;
SIGNAL \r_t[1]~output_o\ : std_logic;
SIGNAL \r_t[0]~output_o\ : std_logic;
SIGNAL \res_t[7]~output_o\ : std_logic;
SIGNAL \res_t[6]~output_o\ : std_logic;
SIGNAL \res_t[5]~output_o\ : std_logic;
SIGNAL \res_t[4]~output_o\ : std_logic;
SIGNAL \res_t[3]~output_o\ : std_logic;
SIGNAL \res_t[2]~output_o\ : std_logic;
SIGNAL \res_t[1]~output_o\ : std_logic;
SIGNAL \res_t[0]~output_o\ : std_logic;
SIGNAL \SelBus_t[4]~output_o\ : std_logic;
SIGNAL \SelBus_t[3]~output_o\ : std_logic;
SIGNAL \SelBus_t[2]~output_o\ : std_logic;
SIGNAL \SelBus_t[1]~output_o\ : std_logic;
SIGNAL \SelBus_t[0]~output_o\ : std_logic;
SIGNAL \SRC_t[7]~output_o\ : std_logic;
SIGNAL \SRC_t[6]~output_o\ : std_logic;
SIGNAL \SRC_t[5]~output_o\ : std_logic;
SIGNAL \SRC_t[4]~output_o\ : std_logic;
SIGNAL \SRC_t[3]~output_o\ : std_logic;
SIGNAL \SRC_t[2]~output_o\ : std_logic;
SIGNAL \SRC_t[1]~output_o\ : std_logic;
SIGNAL \SRC_t[0]~output_o\ : std_logic;
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
SIGNAL \SelOp[2]~input_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Fx[7]~input_o\ : std_logic;
SIGNAL \Cmd[0]~input_o\ : std_logic;
SIGNAL \Cmd[1]~input_o\ : std_logic;
SIGNAL \SRC_UC[1]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \DST_UC[3]~input_o\ : std_logic;
SIGNAL \Fx[3]~input_o\ : std_logic;
SIGNAL \SRC_UC[3]~input_o\ : std_logic;
SIGNAL \SelSRC~input_o\ : std_logic;
SIGNAL \inst|SelBus[3]~0_combout\ : std_logic;
SIGNAL \SelDST~input_o\ : std_logic;
SIGNAL \DST_UC[2]~input_o\ : std_logic;
SIGNAL \inst|DST|R[2]~feeder_combout\ : std_logic;
SIGNAL \DST_UC[4]~input_o\ : std_logic;
SIGNAL \Cmd[2]~input_o\ : std_logic;
SIGNAL \inst|PC|_~3_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~1_combout\ : std_logic;
SIGNAL \inst|PC|_~2_combout\ : std_logic;
SIGNAL \inst|PC|_~0_combout\ : std_logic;
SIGNAL \inst|DST|R[0]~feeder_combout\ : std_logic;
SIGNAL \DST_UC[0]~input_o\ : std_logic;
SIGNAL \inst|SelMUX[0]~0_combout\ : std_logic;
SIGNAL \inst|_~33_combout\ : std_logic;
SIGNAL \DST_UC[1]~input_o\ : std_logic;
SIGNAL \inst|SelMUX[1]~1_combout\ : std_logic;
SIGNAL \inst|_~35_combout\ : std_logic;
SIGNAL \inst|_~44_combout\ : std_logic;
SIGNAL \inst|Bx|_~3_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~6_combout\ : std_logic;
SIGNAL \inst|Bx|_~0_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~31_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Bx|_~4_combout\ : std_logic;
SIGNAL \inst|Bx|_~1_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~9\ : std_logic;
SIGNAL \inst|Bx|op_1~11\ : std_logic;
SIGNAL \inst|Bx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~0_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~3_combout\ : std_logic;
SIGNAL \inst|Bx|_~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~1_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Bx|op_2~3\ : std_logic;
SIGNAL \inst|Bx|op_2~5\ : std_logic;
SIGNAL \inst|Bx|op_2~7\ : std_logic;
SIGNAL \inst|Bx|op_2~9\ : std_logic;
SIGNAL \inst|Bx|op_2~11\ : std_logic;
SIGNAL \inst|Bx|op_2~13\ : std_logic;
SIGNAL \inst|Bx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~4_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~27_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~23_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~1\ : std_logic;
SIGNAL \inst|Bx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~3\ : std_logic;
SIGNAL \inst|Bx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~19_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~15_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~5\ : std_logic;
SIGNAL \inst|Bx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~7\ : std_logic;
SIGNAL \inst|Bx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~11_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~7_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Cx|_~2_combout\ : std_logic;
SIGNAL \inst|Cx|_~0_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~1_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~6_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~31_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Cx|_~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Cx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~3_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~27_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~3\ : std_logic;
SIGNAL \inst|Cx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~23_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~1\ : std_logic;
SIGNAL \inst|Cx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~5\ : std_logic;
SIGNAL \inst|Cx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~19_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~3\ : std_logic;
SIGNAL \inst|Cx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~7\ : std_logic;
SIGNAL \inst|Cx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~15_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~5\ : std_logic;
SIGNAL \inst|Cx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~9\ : std_logic;
SIGNAL \inst|Cx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~7\ : std_logic;
SIGNAL \inst|Cx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~11_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~11\ : std_logic;
SIGNAL \inst|Cx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~9\ : std_logic;
SIGNAL \inst|Cx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~7_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|_~45_combout\ : std_logic;
SIGNAL \inst|DI|_~3_combout\ : std_logic;
SIGNAL \inst|DI|_~2_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~1_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~31_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~6_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~32_combout\ : std_logic;
SIGNAL \inst|DI|_~4_combout\ : std_logic;
SIGNAL \inst|DI|_~0_combout\ : std_logic;
SIGNAL \inst|DI|_~1_combout\ : std_logic;
SIGNAL \inst|DI|op_1~11\ : std_logic;
SIGNAL \inst|DI|op_1~12_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~0_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~3_combout\ : std_logic;
SIGNAL \inst|DI|op_2~11\ : std_logic;
SIGNAL \inst|DI|op_2~13\ : std_logic;
SIGNAL \inst|DI|op_2~14_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~2_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~4_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~5_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~33_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~34_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~27_combout\ : std_logic;
SIGNAL \inst|DI|op_1~0_combout\ : std_logic;
SIGNAL \inst|DI|op_2~1_cout\ : std_logic;
SIGNAL \inst|DI|op_2~2_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~28_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~29_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~30_combout\ : std_logic;
SIGNAL \inst|DI|op_2~3\ : std_logic;
SIGNAL \inst|DI|op_2~4_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~24_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~23_combout\ : std_logic;
SIGNAL \inst|DI|op_1~1\ : std_logic;
SIGNAL \inst|DI|op_1~2_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~25_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~26_combout\ : std_logic;
SIGNAL \inst|DI|op_2~5\ : std_logic;
SIGNAL \inst|DI|op_2~6_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~20_combout\ : std_logic;
SIGNAL \inst|DI|op_1~3\ : std_logic;
SIGNAL \inst|DI|op_1~4_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~19_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~21_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~22_combout\ : std_logic;
SIGNAL \inst|DI|op_2~7\ : std_logic;
SIGNAL \inst|DI|op_2~8_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~16_combout\ : std_logic;
SIGNAL \inst|DI|op_1~5\ : std_logic;
SIGNAL \inst|DI|op_1~6_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~17_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~15_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~18_combout\ : std_logic;
SIGNAL \inst|DI|op_2~9\ : std_logic;
SIGNAL \inst|DI|op_2~10_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~12_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~11_combout\ : std_logic;
SIGNAL \inst|DI|op_1~7\ : std_logic;
SIGNAL \inst|DI|op_1~8_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~13_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~14_combout\ : std_logic;
SIGNAL \inst|DI|op_1~9\ : std_logic;
SIGNAL \inst|DI|op_1~10_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~7_combout\ : std_logic;
SIGNAL \inst|DI|op_2~12_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~8_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~9_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~10_combout\ : std_logic;
SIGNAL \SRC_UC[4]~input_o\ : std_logic;
SIGNAL \inst|SelBus[4]~3_combout\ : std_logic;
SIGNAL \inst|BUS[6]~16_combout\ : std_logic;
SIGNAL \SRC_UC[0]~input_o\ : std_logic;
SIGNAL \inst|_~49_combout\ : std_logic;
SIGNAL \inst|_~50_combout\ : std_logic;
SIGNAL \Fx[6]~input_o\ : std_logic;
SIGNAL \inst|_~32_combout\ : std_logic;
SIGNAL \inst|_~34_combout\ : std_logic;
SIGNAL \inst|alu_x|R[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_y|R[4]~feeder_combout\ : std_logic;
SIGNAL \inst|alu_x|R[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst|alu_x|R[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst|alu_x|R[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ALU|op_2~1\ : std_logic;
SIGNAL \inst|ALU|op_2~3\ : std_logic;
SIGNAL \inst|ALU|op_2~5\ : std_logic;
SIGNAL \inst|ALU|op_2~7\ : std_logic;
SIGNAL \inst|ALU|op_2~9\ : std_logic;
SIGNAL \inst|ALU|op_2~11\ : std_logic;
SIGNAL \inst|ALU|op_2~12_combout\ : std_logic;
SIGNAL \SelOp[0]~input_o\ : std_logic;
SIGNAL \SelOp[1]~input_o\ : std_logic;
SIGNAL \inst|ALU|_~13_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~108_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst|ALU|Result[6]~107_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~109_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~110_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~1\ : std_logic;
SIGNAL \inst|ALU|op_3~3\ : std_logic;
SIGNAL \inst|ALU|op_3~5\ : std_logic;
SIGNAL \inst|ALU|op_3~7\ : std_logic;
SIGNAL \inst|ALU|op_3~9\ : std_logic;
SIGNAL \inst|ALU|op_3~11\ : std_logic;
SIGNAL \inst|ALU|op_3~12_combout\ : std_logic;
SIGNAL \inst|ALU|_~14_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~111_combout\ : std_logic;
SIGNAL \inst|ALU|_~5_combout\ : std_logic;
SIGNAL \inst|ALU|_~8_combout\ : std_logic;
SIGNAL \inst|alu_x|R[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ALU|_~7_combout\ : std_logic;
SIGNAL \inst|ALU|_~9_combout\ : std_logic;
SIGNAL \inst|ALU|_~10_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~112_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ : std_logic;
SIGNAL \inst|ALU|_~11_combout\ : std_logic;
SIGNAL \inst|ALU|_~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\ : std_logic;
SIGNAL \inst|ALU|_~33_combout\ : std_logic;
SIGNAL \inst|ALU|_~16_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~113_combout\ : std_logic;
SIGNAL \inst|SelBus[0]~4_combout\ : std_logic;
SIGNAL \inst|_~51_combout\ : std_logic;
SIGNAL \inst|_~30_combout\ : std_logic;
SIGNAL \inst|BUS[6]~17_combout\ : std_logic;
SIGNAL \inst|BUS[6]~18_combout\ : std_logic;
SIGNAL \inst|IR|R[6]~feeder_combout\ : std_logic;
SIGNAL \inst|_~41_combout\ : std_logic;
SIGNAL \inst|_~25_combout\ : std_logic;
SIGNAL \inst|_~40_combout\ : std_logic;
SIGNAL \inst|BUS[6]~12_combout\ : std_logic;
SIGNAL \inst|_~36_combout\ : std_logic;
SIGNAL \inst|Ax|_~3_combout\ : std_logic;
SIGNAL \inst|Ax|_~0_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~1_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~1_cout\ : std_logic;
SIGNAL \inst|Ax|op_2~2_combout\ : std_logic;
SIGNAL \inst|Ax|_~2_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~0_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~6_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~3_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~27_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~31_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Ax|_~4_combout\ : std_logic;
SIGNAL \inst|Ax|_~1_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~11\ : std_logic;
SIGNAL \inst|Ax|op_1~12_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~0_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~3\ : std_logic;
SIGNAL \inst|Ax|op_2~5\ : std_logic;
SIGNAL \inst|Ax|op_2~7\ : std_logic;
SIGNAL \inst|Ax|op_2~9\ : std_logic;
SIGNAL \inst|Ax|op_2~11\ : std_logic;
SIGNAL \inst|Ax|op_2~13\ : std_logic;
SIGNAL \inst|Ax|op_2~14_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~4_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~1\ : std_logic;
SIGNAL \inst|Ax|op_1~2_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~4_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~23_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~3\ : std_logic;
SIGNAL \inst|Ax|op_1~4_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~19_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~6_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~5\ : std_logic;
SIGNAL \inst|Ax|op_1~6_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~8_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~15_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~7\ : std_logic;
SIGNAL \inst|Ax|op_1~8_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~10_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~11_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~9\ : std_logic;
SIGNAL \inst|Ax|op_1~10_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~12_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~7_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~10_combout\ : std_logic;
SIGNAL \inst|_~26_combout\ : std_logic;
SIGNAL \inst|BUS[6]~13_combout\ : std_logic;
SIGNAL \inst|_~28_combout\ : std_logic;
SIGNAL \inst|_~42_combout\ : std_logic;
SIGNAL \inst|SI|_~3_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~1_combout\ : std_logic;
SIGNAL \inst|SI|_~2_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~6_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~31_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~32_combout\ : std_logic;
SIGNAL \inst|SI|op_1~11\ : std_logic;
SIGNAL \inst|SI|op_1~12_combout\ : std_logic;
SIGNAL \inst|SI|_~0_combout\ : std_logic;
SIGNAL \inst|SI|_~1_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~0_combout\ : std_logic;
SIGNAL \inst|SI|op_2~9\ : std_logic;
SIGNAL \inst|SI|op_2~11\ : std_logic;
SIGNAL \inst|SI|op_2~13\ : std_logic;
SIGNAL \inst|SI|op_2~14_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~2_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~3_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~4_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~5_combout\ : std_logic;
SIGNAL \inst|SI|_~4_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~33_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~34_combout\ : std_logic;
SIGNAL \inst|SI|op_2~1_cout\ : std_logic;
SIGNAL \inst|SI|op_2~2_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~28_combout\ : std_logic;
SIGNAL \inst|SI|op_1~0_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~27_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~29_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~30_combout\ : std_logic;
SIGNAL \inst|SI|op_2~3\ : std_logic;
SIGNAL \inst|SI|op_2~4_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~24_combout\ : std_logic;
SIGNAL \inst|SI|op_1~1\ : std_logic;
SIGNAL \inst|SI|op_1~2_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~23_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~25_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~26_combout\ : std_logic;
SIGNAL \inst|SI|op_2~5\ : std_logic;
SIGNAL \inst|SI|op_2~6_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~20_combout\ : std_logic;
SIGNAL \inst|SI|op_1~3\ : std_logic;
SIGNAL \inst|SI|op_1~4_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~21_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~19_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~22_combout\ : std_logic;
SIGNAL \inst|SI|op_2~7\ : std_logic;
SIGNAL \inst|SI|op_2~8_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~16_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~15_combout\ : std_logic;
SIGNAL \inst|SI|op_1~5\ : std_logic;
SIGNAL \inst|SI|op_1~6_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~17_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~18_combout\ : std_logic;
SIGNAL \inst|SI|op_1~7\ : std_logic;
SIGNAL \inst|SI|op_1~8_combout\ : std_logic;
SIGNAL \inst|SI|op_2~10_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~12_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~11_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~13_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~14_combout\ : std_logic;
SIGNAL \inst|SI|op_1~9\ : std_logic;
SIGNAL \inst|SI|op_1~10_combout\ : std_logic;
SIGNAL \inst|SI|op_2~12_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~8_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~7_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~9_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~10_combout\ : std_logic;
SIGNAL \inst|_~27_combout\ : std_logic;
SIGNAL \inst|_~43_combout\ : std_logic;
SIGNAL \inst|SP|_~3_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~1_combout\ : std_logic;
SIGNAL \inst|SP|_~2_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~6_combout\ : std_logic;
SIGNAL \inst|SP|_~4_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~33_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~31_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~32_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~34_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~3_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~27_combout\ : std_logic;
SIGNAL \inst|SP|_~0_combout\ : std_logic;
SIGNAL \inst|SP|op_2~1_cout\ : std_logic;
SIGNAL \inst|SP|op_2~2_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~28_combout\ : std_logic;
SIGNAL \inst|SP|op_1~0_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~29_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~30_combout\ : std_logic;
SIGNAL \inst|SP|op_2~3\ : std_logic;
SIGNAL \inst|SP|op_2~4_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~24_combout\ : std_logic;
SIGNAL \inst|SP|op_1~1\ : std_logic;
SIGNAL \inst|SP|op_1~2_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~23_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~25_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~26_combout\ : std_logic;
SIGNAL \inst|SP|op_1~3\ : std_logic;
SIGNAL \inst|SP|op_1~4_combout\ : std_logic;
SIGNAL \inst|SP|op_2~5\ : std_logic;
SIGNAL \inst|SP|op_2~6_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~20_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~19_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~21_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~22_combout\ : std_logic;
SIGNAL \inst|SP|op_1~5\ : std_logic;
SIGNAL \inst|SP|op_1~6_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~15_combout\ : std_logic;
SIGNAL \inst|SP|op_2~7\ : std_logic;
SIGNAL \inst|SP|op_2~8_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~16_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~17_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~18_combout\ : std_logic;
SIGNAL \inst|SP|op_2~9\ : std_logic;
SIGNAL \inst|SP|op_2~10_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~12_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~11_combout\ : std_logic;
SIGNAL \inst|SP|op_1~7\ : std_logic;
SIGNAL \inst|SP|op_1~8_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~13_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~14_combout\ : std_logic;
SIGNAL \inst|SP|op_2~11\ : std_logic;
SIGNAL \inst|SP|op_2~13\ : std_logic;
SIGNAL \inst|SP|op_2~14_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~2_combout\ : std_logic;
SIGNAL \inst|SP|_~1_combout\ : std_logic;
SIGNAL \inst|SP|op_1~9\ : std_logic;
SIGNAL \inst|SP|op_1~11\ : std_logic;
SIGNAL \inst|SP|op_1~12_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~0_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~4_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~5_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~7_combout\ : std_logic;
SIGNAL \inst|SP|op_1~10_combout\ : std_logic;
SIGNAL \inst|SP|op_2~12_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~8_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~9_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~10_combout\ : std_logic;
SIGNAL \inst|BUS[6]~14_combout\ : std_logic;
SIGNAL \SelMDR~input_o\ : std_logic;
SIGNAL \Write_En~input_o\ : std_logic;
SIGNAL \SelMAR~input_o\ : std_logic;
SIGNAL \inst|MAR|R[0]~7_combout\ : std_logic;
SIGNAL \inst|_~39_combout\ : std_logic;
SIGNAL \inst|_~55_combout\ : std_logic;
SIGNAL \inst|MAR|R[1]~6_combout\ : std_logic;
SIGNAL \inst|MAR|R[2]~5_combout\ : std_logic;
SIGNAL \inst|MAR|R[3]~4_combout\ : std_logic;
SIGNAL \inst|MAR|R[4]~3_combout\ : std_logic;
SIGNAL \inst|MAR|R[5]~2_combout\ : std_logic;
SIGNAL \inst|MAR|R[6]~1_combout\ : std_logic;
SIGNAL \inst|PC|op_1~1\ : std_logic;
SIGNAL \inst|PC|op_1~3\ : std_logic;
SIGNAL \inst|PC|op_1~5\ : std_logic;
SIGNAL \inst|PC|op_1~7\ : std_logic;
SIGNAL \inst|PC|op_1~9\ : std_logic;
SIGNAL \inst|PC|op_1~11\ : std_logic;
SIGNAL \inst|PC|op_1~12_combout\ : std_logic;
SIGNAL \inst|PC|_~1_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~0_combout\ : std_logic;
SIGNAL \inst|PC|op_2~9\ : std_logic;
SIGNAL \inst|PC|op_2~11\ : std_logic;
SIGNAL \inst|PC|op_2~13\ : std_logic;
SIGNAL \inst|PC|op_2~14_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~2_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~4_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~5_combout\ : std_logic;
SIGNAL \inst|MAR|R[7]~0_combout\ : std_logic;
SIGNAL \inst|MDR|R[7]~0_combout\ : std_logic;
SIGNAL \inst|_~54_combout\ : std_logic;
SIGNAL \inst|MDR|R[5]~2_combout\ : std_logic;
SIGNAL \inst|MDR|R[4]~3_combout\ : std_logic;
SIGNAL \inst|MDR|R[3]~4_combout\ : std_logic;
SIGNAL \inst|MDR|R[2]~5_combout\ : std_logic;
SIGNAL \inst|MDR|R[1]~6_combout\ : std_logic;
SIGNAL \inst|MDR|R[0]~7_combout\ : std_logic;
SIGNAL \inst|MDR|R[6]~1_combout\ : std_logic;
SIGNAL \inst|_~24_combout\ : std_logic;
SIGNAL \inst|BUS[6]~11_combout\ : std_logic;
SIGNAL \inst|BUS[6]~15_combout\ : std_logic;
SIGNAL \inst|BUS[6]~19_combout\ : std_logic;
SIGNAL \inst|PC|op_2~12_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~8_combout\ : std_logic;
SIGNAL \inst|PC|op_1~10_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~6_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~7_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~9_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~10_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~11_combout\ : std_logic;
SIGNAL \inst|PC|op_1~8_combout\ : std_logic;
SIGNAL \inst|PC|op_2~10_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~12_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~13_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~14_combout\ : std_logic;
SIGNAL \inst|ALU|_~17_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst|ALU|_~19_combout\ : std_logic;
SIGNAL \inst|ALU|_~18_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~147_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~10_combout\ : std_logic;
SIGNAL \inst|ALU|_~20_combout\ : std_logic;
SIGNAL \inst|ALU|_~21_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~114_combout\ : std_logic;
SIGNAL \inst|ALU|_~4_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst|ALU|Result[5]~115_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~116_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~10_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~117_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~118_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~119_combout\ : std_logic;
SIGNAL \inst|BUS[5]~26_combout\ : std_logic;
SIGNAL \inst|BUS[5]~25_combout\ : std_logic;
SIGNAL \Fx[5]~input_o\ : std_logic;
SIGNAL \inst|BUS[5]~27_combout\ : std_logic;
SIGNAL \inst|_~52_combout\ : std_logic;
SIGNAL \inst|BUS[5]~23_combout\ : std_logic;
SIGNAL \inst|BUS[5]~22_combout\ : std_logic;
SIGNAL \inst|IR|R[5]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[5]~21_combout\ : std_logic;
SIGNAL \inst|BUS[5]~24_combout\ : std_logic;
SIGNAL \inst|BUS[5]~20_combout\ : std_logic;
SIGNAL \inst|BUS[5]~28_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ : std_logic;
SIGNAL \inst|ALU|_~6_combout\ : std_logic;
SIGNAL \inst|ALU|_~15_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~0_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~141_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~0_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~144_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~142_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~143_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~145_combout\ : std_logic;
SIGNAL \inst|ALU|_~30_combout\ : std_logic;
SIGNAL \inst|ALU|_~28_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ : std_logic;
SIGNAL \inst|ALU|_~22_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst|ALU|_~23_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ : std_logic;
SIGNAL \inst|ALU|_~24_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \inst|ALU|_~25_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \inst|ALU|_~26_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \inst|ALU|_~27_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \inst|ALU|_~29_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \inst|alu_res|R[7]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|alu_res|R[6]~1_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|alu_res|R[5]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|alu_res|R[4]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|alu_res|R[3]~7_combout\ : std_logic;
SIGNAL \inst|alu_res|R[3]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|alu_res|R[2]~8_combout\ : std_logic;
SIGNAL \inst|alu_res|R[2]~5_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|alu_res|R[1]~9_combout\ : std_logic;
SIGNAL \inst|alu_res|R[1]~6_combout\ : std_logic;
SIGNAL \inst|ALU|_~31_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~146_combout\ : std_logic;
SIGNAL \Fx[0]~input_o\ : std_logic;
SIGNAL \inst|BUS[0]~71_combout\ : std_logic;
SIGNAL \inst|BUS[0]~70_combout\ : std_logic;
SIGNAL \inst|BUS[0]~72_combout\ : std_logic;
SIGNAL \inst|BUS[0]~68_combout\ : std_logic;
SIGNAL \inst|BUS[0]~67_combout\ : std_logic;
SIGNAL \inst|BUS[0]~65_combout\ : std_logic;
SIGNAL \inst|IR|R[0]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[0]~66_combout\ : std_logic;
SIGNAL \inst|BUS[0]~69_combout\ : std_logic;
SIGNAL \inst|BUS[0]~73_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~31_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~32_combout\ : std_logic;
SIGNAL \inst|PC|_~4_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~33_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~34_combout\ : std_logic;
SIGNAL \inst|PC|op_1~0_combout\ : std_logic;
SIGNAL \inst|PC|op_2~1_cout\ : std_logic;
SIGNAL \inst|PC|op_2~2_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~28_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~29_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~27_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~30_combout\ : std_logic;
SIGNAL \inst|PC|op_2~3\ : std_logic;
SIGNAL \inst|PC|op_2~5\ : std_logic;
SIGNAL \inst|PC|op_2~6_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~20_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~19_combout\ : std_logic;
SIGNAL \inst|PC|op_1~4_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~21_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~22_combout\ : std_logic;
SIGNAL \inst|PC|op_2~7\ : std_logic;
SIGNAL \inst|PC|op_2~8_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~16_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~15_combout\ : std_logic;
SIGNAL \inst|PC|op_1~6_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~17_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~18_combout\ : std_logic;
SIGNAL \Fx[4]~input_o\ : std_logic;
SIGNAL \inst|ALU|op_2~8_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~122_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~8_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~121_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~120_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~123_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst|ALU|Result[4]~124_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~125_combout\ : std_logic;
SIGNAL \inst|BUS[4]~35_combout\ : std_logic;
SIGNAL \inst|BUS[4]~34_combout\ : std_logic;
SIGNAL \inst|BUS[4]~36_combout\ : std_logic;
SIGNAL \inst|BUS[4]~29_combout\ : std_logic;
SIGNAL \inst|BUS[4]~31_combout\ : std_logic;
SIGNAL \inst|BUS[4]~32_combout\ : std_logic;
SIGNAL \inst|IR|R[4]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[4]~30_combout\ : std_logic;
SIGNAL \inst|BUS[4]~33_combout\ : std_logic;
SIGNAL \inst|BUS[4]~37_combout\ : std_logic;
SIGNAL \inst|DST|R[4]~feeder_combout\ : std_logic;
SIGNAL \inst|SelMUX[4]~2_combout\ : std_logic;
SIGNAL \inst|_~38_combout\ : std_logic;
SIGNAL \inst|_~56_combout\ : std_logic;
SIGNAL \inst|SelMUX[2]~3_combout\ : std_logic;
SIGNAL \inst|_~47_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~3_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~23_combout\ : std_logic;
SIGNAL \inst|PC|op_2~4_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~24_combout\ : std_logic;
SIGNAL \inst|PC|op_1~2_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~25_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~26_combout\ : std_logic;
SIGNAL \inst|BUS[2]~47_combout\ : std_logic;
SIGNAL \inst|BUS[2]~49_combout\ : std_logic;
SIGNAL \inst|BUS[2]~50_combout\ : std_logic;
SIGNAL \inst|BUS[2]~48_combout\ : std_logic;
SIGNAL \inst|BUS[2]~51_combout\ : std_logic;
SIGNAL \Fx[2]~input_o\ : std_logic;
SIGNAL \inst|ALU|op_2~4_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~4_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~132_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst|ALU|Result[2]~133_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~134_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~149_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~131_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~135_combout\ : std_logic;
SIGNAL \inst|BUS[2]~53_combout\ : std_logic;
SIGNAL \inst|BUS[2]~52_combout\ : std_logic;
SIGNAL \inst|BUS[2]~54_combout\ : std_logic;
SIGNAL \inst|BUS[2]~55_combout\ : std_logic;
SIGNAL \SRC_UC[2]~input_o\ : std_logic;
SIGNAL \inst|SelBus[2]~1_combout\ : std_logic;
SIGNAL \inst|_~29_combout\ : std_logic;
SIGNAL \inst|BUS[3]~43_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~148_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~126_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~6_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~127_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst|ALU|Result[3]~128_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~6_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~129_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~130_combout\ : std_logic;
SIGNAL \inst|BUS[3]~44_combout\ : std_logic;
SIGNAL \inst|BUS[3]~45_combout\ : std_logic;
SIGNAL \inst|BUS[3]~38_combout\ : std_logic;
SIGNAL \inst|BUS[3]~40_combout\ : std_logic;
SIGNAL \inst|IR|R[3]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[3]~39_combout\ : std_logic;
SIGNAL \inst|BUS[3]~41_combout\ : std_logic;
SIGNAL \inst|BUS[3]~42_combout\ : std_logic;
SIGNAL \inst|BUS[3]~46_combout\ : std_logic;
SIGNAL \inst|DST|R[3]~feeder_combout\ : std_logic;
SIGNAL \inst|SelMUX[3]~4_combout\ : std_logic;
SIGNAL \inst|_~37_combout\ : std_logic;
SIGNAL \inst|SelBus[1]~2_combout\ : std_logic;
SIGNAL \inst|_~31_combout\ : std_logic;
SIGNAL \inst|BUS[7]~8_combout\ : std_logic;
SIGNAL \inst|BUS[7]~9_combout\ : std_logic;
SIGNAL \Fx[1]~input_o\ : std_logic;
SIGNAL \inst|BUS[1]~61_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst|ALU|Result[1]~136_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~138_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~2_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~137_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~2_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~139_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~140_combout\ : std_logic;
SIGNAL \inst|BUS[1]~62_combout\ : std_logic;
SIGNAL \inst|BUS[1]~63_combout\ : std_logic;
SIGNAL \inst|BUS[1]~56_combout\ : std_logic;
SIGNAL \inst|IR|R[1]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[1]~57_combout\ : std_logic;
SIGNAL \inst|BUS[1]~58_combout\ : std_logic;
SIGNAL \inst|BUS[1]~59_combout\ : std_logic;
SIGNAL \inst|BUS[1]~60_combout\ : std_logic;
SIGNAL \inst|BUS[1]~64_combout\ : std_logic;
SIGNAL \inst|DST|R[1]~feeder_combout\ : std_logic;
SIGNAL \inst|_~53_combout\ : std_logic;
SIGNAL \inst|_~46_combout\ : std_logic;
SIGNAL \inst|Cx|_~3_combout\ : std_logic;
SIGNAL \inst|Cx|_~1_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~11\ : std_logic;
SIGNAL \inst|Cx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~0_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~13\ : std_logic;
SIGNAL \inst|Cx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|BUS[7]~5_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~13\ : std_logic;
SIGNAL \inst|ALU|op_2~14_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~100_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~104_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~13\ : std_logic;
SIGNAL \inst|ALU|op_3~14_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst|ALU|Result[7]~101_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~102_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~103_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~105_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~106_combout\ : std_logic;
SIGNAL \inst|BUS[7]~6_combout\ : std_logic;
SIGNAL \inst|BUS[7]~7_combout\ : std_logic;
SIGNAL \inst|BUS[7]~0_combout\ : std_logic;
SIGNAL \inst|IR|R[7]~feeder_combout\ : std_logic;
SIGNAL \inst|BUS[7]~1_combout\ : std_logic;
SIGNAL \inst|BUS[7]~2_combout\ : std_logic;
SIGNAL \inst|BUS[7]~3_combout\ : std_logic;
SIGNAL \inst|BUS[7]~4_combout\ : std_logic;
SIGNAL \inst|BUS[7]~10_combout\ : std_logic;
SIGNAL \inst|alu_y|R[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~15\ : std_logic;
SIGNAL \inst|ALU|op_3~17\ : std_logic;
SIGNAL \inst|ALU|op_3~18_combout\ : std_logic;
SIGNAL \inst|ALU|Result[16]~96_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst|ALU|op_3~16_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~98_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst|ALU|op_2~15\ : std_logic;
SIGNAL \inst|ALU|op_2~16_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~97_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~99_combout\ : std_logic;
SIGNAL \inst|DST|R[7]~feeder_combout\ : std_logic;
SIGNAL \inst|DST|R[6]~feeder_combout\ : std_logic;
SIGNAL \inst|DST|R[5]~feeder_combout\ : std_logic;
SIGNAL \inst|_~48_combout\ : std_logic;
SIGNAL \inst|Dx|_~1_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~6_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~3_combout\ : std_logic;
SIGNAL \inst|Dx|_~3_combout\ : std_logic;
SIGNAL \inst|Dx|_~0_combout\ : std_logic;
SIGNAL \inst|Dx|_~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~1_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Dx|op_2~3\ : std_logic;
SIGNAL \inst|Dx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~1\ : std_logic;
SIGNAL \inst|Dx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~3\ : std_logic;
SIGNAL \inst|Dx|op_1~5\ : std_logic;
SIGNAL \inst|Dx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~5\ : std_logic;
SIGNAL \inst|Dx|op_2~7\ : std_logic;
SIGNAL \inst|Dx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~7\ : std_logic;
SIGNAL \inst|Dx|op_1~9\ : std_logic;
SIGNAL \inst|Dx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~9\ : std_logic;
SIGNAL \inst|Dx|op_2~11\ : std_logic;
SIGNAL \inst|Dx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~7_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~11_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~15_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~19_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~23_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~27_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~31_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Dx|_~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~11\ : std_logic;
SIGNAL \inst|Dx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~0_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~13\ : std_logic;
SIGNAL \inst|Dx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|_~57_combout\ : std_logic;
SIGNAL \inst|Ex|_~3_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~1_combout\ : std_logic;
SIGNAL \inst|Ex|_~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~6_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~3_combout\ : std_logic;
SIGNAL \inst|Ex|_~0_combout\ : std_logic;
SIGNAL \inst|Ex|_~4_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~31_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~1_cout\ : std_logic;
SIGNAL \inst|Ex|op_2~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~0_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~27_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~3\ : std_logic;
SIGNAL \inst|Ex|op_2~4_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~23_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~1\ : std_logic;
SIGNAL \inst|Ex|op_1~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~19_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~3\ : std_logic;
SIGNAL \inst|Ex|op_1~4_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~5\ : std_logic;
SIGNAL \inst|Ex|op_2~6_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~7\ : std_logic;
SIGNAL \inst|Ex|op_2~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~15_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~5\ : std_logic;
SIGNAL \inst|Ex|op_1~6_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~11_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~9\ : std_logic;
SIGNAL \inst|Ex|op_2~10_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~7\ : std_logic;
SIGNAL \inst|Ex|op_1~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~11\ : std_logic;
SIGNAL \inst|Ex|op_2~12_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~7_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~9\ : std_logic;
SIGNAL \inst|Ex|op_1~10_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~13\ : std_logic;
SIGNAL \inst|Ex|op_2~14_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~11\ : std_logic;
SIGNAL \inst|Ex|op_1~12_combout\ : std_logic;
SIGNAL \inst|Ex|_~1_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~0_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~4_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~5_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[7]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~1_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~5_combout\ : std_logic;
SIGNAL \inst|ALU|op_1~1_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~3_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~5_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~7_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~9_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~11_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~13_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~14_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[5]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[4]~7_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[3]~8_combout\ : std_logic;
SIGNAL \inst|ALU|op_4~1_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~3_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~5_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~7_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~9_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~11_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~13_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~14_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[3]~9_combout\ : std_logic;
SIGNAL \inst|ALU|_~32_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~11_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~150_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~13_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~14_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~15_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~16_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~17_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~18_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~19_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~20_combout\ : std_logic;
SIGNAL \inst|alu_r|R[16]~0_combout\ : std_logic;
SIGNAL \inst|alu_r|R[15]~feeder_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Remain[0]~8_combout\ : std_logic;
SIGNAL \inst|SRC|R[7]~feeder_combout\ : std_logic;
SIGNAL \inst|alu_res|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|Result\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|Dx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MDR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \inst|alu_y|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ax|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SRC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MAR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|IR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Bx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Cx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_r|R\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|DST|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ex|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|Flags\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|ALT_INV_Result[16]~96_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\ : std_logic;
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
ww_Cmd <= Cmd;
ww_Write_En <= Write_En;
ww_DST_UC <= DST_UC;
ww_Fx <= Fx;
ww_SelOp <= SelOp;
ww_SRC_UC <= SRC_UC;
Ax_t <= ww_Ax_t;
Bus_t <= ww_Bus_t;
Bx_t <= ww_Bx_t;
Cx_t <= ww_Cx_t;
DST_t <= ww_DST_t;
Dx_t <= ww_Dx_t;
Ex_t <= ww_Ex_t;
Flags <= ww_Flags;
IR <= ww_IR;
MAR <= ww_MAR;
MDR <= ww_MDR;
PC <= ww_PC;
r_t <= ww_r_t;
res_t <= ww_res_t;
SelBus_t <= ww_SelBus_t;
SRC_t <= ww_SRC_t;
x_t <= ww_x_t;
y_t <= ww_y_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|ALU|op_5|auto_generated|mac_out2_DATAA_bus\ <= (\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT15\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT14\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT13\ & 
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT12\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT11\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT10\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT9\ & 
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT8\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT7\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT6\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT5\ & 
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT4\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT3\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT2\ & \inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT1\ & 
\inst|ALU|op_5|auto_generated|mac_mult1~dataout\ & \inst|ALU|op_5|auto_generated|mac_mult1~1\ & \inst|ALU|op_5|auto_generated|mac_mult1~0\);

\inst|ALU|op_5|auto_generated|mac_out2~0\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|ALU|op_5|auto_generated|mac_out2~1\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|ALU|op_5|auto_generated|mac_out2~dataout\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\ <= \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\(17);

\inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|BUS[7]~10_combout\ & \inst|BUS[6]~19_combout\ & \inst|BUS[5]~28_combout\ & \inst|BUS[4]~37_combout\ & \inst|BUS[3]~46_combout\ & \inst|BUS[2]~55_combout\ & \inst|BUS[1]~64_combout\ & 
\inst|BUS[0]~73_combout\ & gnd);

\inst|ALU|op_5|auto_generated|mac_mult1_DATAB_bus\ <= (\inst|alu_y|R\(7) & \inst|alu_y|R\(6) & \inst|alu_y|R\(5) & \inst|alu_y|R\(4) & \inst|alu_y|R\(3) & \inst|alu_y|R\(2) & \inst|alu_y|R\(1) & \inst|alu_y|R\(0) & gnd);

\inst|ALU|op_5|auto_generated|mac_mult1~0\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|ALU|op_5|auto_generated|mac_mult1~1\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|ALU|op_5|auto_generated|mac_mult1~dataout\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT1\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT2\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT3\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT4\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT5\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT6\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT7\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT8\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT9\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT10\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT11\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT12\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT13\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT14\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|ALU|op_5|auto_generated|mac_mult1~DATAOUT15\ <= \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\(17);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|MDR|R\(7) & \inst|MDR|R\(6) & \inst|MDR|R\(5) & \inst|MDR|R\(4) & \inst|MDR|R\(3) & \inst|MDR|R\(2) & 
\inst|MDR|R\(1) & \inst|MDR|R\(0));

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|MAR|R\(7) & \inst|MAR|R\(6) & \inst|MAR|R\(5) & \inst|MAR|R\(4) & \inst|MAR|R\(3) & \inst|MAR|R\(2) & \inst|MAR|R\(1) & \inst|MAR|R\(0));

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
\inst|ALU|ALT_INV_Result[16]~96_combout\ <= NOT \inst|ALU|Result[16]~96_combout\;
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\ <= NOT \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X31_Y0_N16
\ALU_t[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|ALT_INV_Result[16]~96_combout\,
	devoe => ww_devoe,
	o => \ALU_t[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ALU_t[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(15),
	devoe => ww_devoe,
	o => \ALU_t[15]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\ALU_t[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(14),
	devoe => ww_devoe,
	o => \ALU_t[14]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\ALU_t[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(13),
	devoe => ww_devoe,
	o => \ALU_t[13]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\ALU_t[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(12),
	devoe => ww_devoe,
	o => \ALU_t[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\ALU_t[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(11),
	devoe => ww_devoe,
	o => \ALU_t[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\ALU_t[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(10),
	devoe => ww_devoe,
	o => \ALU_t[10]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ALU_t[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result\(9),
	devoe => ww_devoe,
	o => \ALU_t[9]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\ALU_t[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[8]~99_combout\,
	devoe => ww_devoe,
	o => \ALU_t[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\ALU_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[7]~106_combout\,
	devoe => ww_devoe,
	o => \ALU_t[7]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\ALU_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[6]~113_combout\,
	devoe => ww_devoe,
	o => \ALU_t[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\ALU_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[5]~119_combout\,
	devoe => ww_devoe,
	o => \ALU_t[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\ALU_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[4]~125_combout\,
	devoe => ww_devoe,
	o => \ALU_t[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ALU_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[3]~130_combout\,
	devoe => ww_devoe,
	o => \ALU_t[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\ALU_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[2]~135_combout\,
	devoe => ww_devoe,
	o => \ALU_t[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ALU_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[1]~140_combout\,
	devoe => ww_devoe,
	o => \ALU_t[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\ALU_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[0]~146_combout\,
	devoe => ww_devoe,
	o => \ALU_t[0]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\Ax_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(7),
	devoe => ww_devoe,
	o => \Ax_t[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\Ax_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(6),
	devoe => ww_devoe,
	o => \Ax_t[6]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\Ax_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(5),
	devoe => ww_devoe,
	o => \Ax_t[5]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\Ax_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(4),
	devoe => ww_devoe,
	o => \Ax_t[4]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\Ax_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(3),
	devoe => ww_devoe,
	o => \Ax_t[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\Ax_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(2),
	devoe => ww_devoe,
	o => \Ax_t[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\Ax_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(1),
	devoe => ww_devoe,
	o => \Ax_t[1]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\Ax_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ax|R\(0),
	devoe => ww_devoe,
	o => \Ax_t[0]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\Bus_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[7]~10_combout\,
	devoe => ww_devoe,
	o => \Bus_t[7]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\Bus_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[6]~19_combout\,
	devoe => ww_devoe,
	o => \Bus_t[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Bus_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[5]~28_combout\,
	devoe => ww_devoe,
	o => \Bus_t[5]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\Bus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[4]~37_combout\,
	devoe => ww_devoe,
	o => \Bus_t[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\Bus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[3]~46_combout\,
	devoe => ww_devoe,
	o => \Bus_t[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\Bus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[2]~55_combout\,
	devoe => ww_devoe,
	o => \Bus_t[2]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\Bus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[1]~64_combout\,
	devoe => ww_devoe,
	o => \Bus_t[1]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\Bus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[0]~73_combout\,
	devoe => ww_devoe,
	o => \Bus_t[0]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\Bx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(7),
	devoe => ww_devoe,
	o => \Bx_t[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\Bx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(6),
	devoe => ww_devoe,
	o => \Bx_t[6]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\Bx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(5),
	devoe => ww_devoe,
	o => \Bx_t[5]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\Bx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(4),
	devoe => ww_devoe,
	o => \Bx_t[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\Bx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(3),
	devoe => ww_devoe,
	o => \Bx_t[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\Bx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(2),
	devoe => ww_devoe,
	o => \Bx_t[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\Bx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(1),
	devoe => ww_devoe,
	o => \Bx_t[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\Bx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Bx|R\(0),
	devoe => ww_devoe,
	o => \Bx_t[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Cx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(7),
	devoe => ww_devoe,
	o => \Cx_t[7]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\Cx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(6),
	devoe => ww_devoe,
	o => \Cx_t[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\Cx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(5),
	devoe => ww_devoe,
	o => \Cx_t[5]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\Cx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(4),
	devoe => ww_devoe,
	o => \Cx_t[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\Cx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(3),
	devoe => ww_devoe,
	o => \Cx_t[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\Cx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(2),
	devoe => ww_devoe,
	o => \Cx_t[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\Cx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(1),
	devoe => ww_devoe,
	o => \Cx_t[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Cx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cx|R\(0),
	devoe => ww_devoe,
	o => \Cx_t[0]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\DST_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(7),
	devoe => ww_devoe,
	o => \DST_t[7]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\DST_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(6),
	devoe => ww_devoe,
	o => \DST_t[6]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\DST_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(5),
	devoe => ww_devoe,
	o => \DST_t[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\DST_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(4),
	devoe => ww_devoe,
	o => \DST_t[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\DST_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(3),
	devoe => ww_devoe,
	o => \DST_t[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\DST_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(2),
	devoe => ww_devoe,
	o => \DST_t[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\DST_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(1),
	devoe => ww_devoe,
	o => \DST_t[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\DST_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST|R\(0),
	devoe => ww_devoe,
	o => \DST_t[0]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\Dx_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(7),
	devoe => ww_devoe,
	o => \Dx_t[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\Dx_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(6),
	devoe => ww_devoe,
	o => \Dx_t[6]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\Dx_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(5),
	devoe => ww_devoe,
	o => \Dx_t[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\Dx_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(4),
	devoe => ww_devoe,
	o => \Dx_t[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\Dx_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(3),
	devoe => ww_devoe,
	o => \Dx_t[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\Dx_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(2),
	devoe => ww_devoe,
	o => \Dx_t[2]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\Dx_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(1),
	devoe => ww_devoe,
	o => \Dx_t[1]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\Dx_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Dx|R\(0),
	devoe => ww_devoe,
	o => \Dx_t[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\Ex_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(7),
	devoe => ww_devoe,
	o => \Ex_t[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\Ex_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(6),
	devoe => ww_devoe,
	o => \Ex_t[6]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\Ex_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(5),
	devoe => ww_devoe,
	o => \Ex_t[5]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\Ex_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(4),
	devoe => ww_devoe,
	o => \Ex_t[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\Ex_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(3),
	devoe => ww_devoe,
	o => \Ex_t[3]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\Ex_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(2),
	devoe => ww_devoe,
	o => \Ex_t[2]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\Ex_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(1),
	devoe => ww_devoe,
	o => \Ex_t[1]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\Ex_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ex|R\(0),
	devoe => ww_devoe,
	o => \Ex_t[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\Flags[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(7),
	devoe => ww_devoe,
	o => \Flags[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\Flags[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(6),
	devoe => ww_devoe,
	o => \Flags[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\Flags[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(5),
	devoe => ww_devoe,
	o => \Flags[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Flags[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(4),
	devoe => ww_devoe,
	o => \Flags[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\Flags[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(3),
	devoe => ww_devoe,
	o => \Flags[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Flags[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(2),
	devoe => ww_devoe,
	o => \Flags[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\Flags[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Flags[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(0),
	devoe => ww_devoe,
	o => \Flags[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\IR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(7),
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\IR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(6),
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\IR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(5),
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\IR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(4),
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\IR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(3),
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(2),
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(1),
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(0),
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
	i => \inst|MAR|R\(7),
	devoe => ww_devoe,
	o => \MAR[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\MAR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(6),
	devoe => ww_devoe,
	o => \MAR[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\MAR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(5),
	devoe => ww_devoe,
	o => \MAR[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\MAR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(4),
	devoe => ww_devoe,
	o => \MAR[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\MAR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(3),
	devoe => ww_devoe,
	o => \MAR[3]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\MAR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(2),
	devoe => ww_devoe,
	o => \MAR[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\MAR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(1),
	devoe => ww_devoe,
	o => \MAR[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\MAR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(0),
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
	i => \inst|MDR|R\(7),
	devoe => ww_devoe,
	o => \MDR[7]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\MDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(6),
	devoe => ww_devoe,
	o => \MDR[6]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\MDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(5),
	devoe => ww_devoe,
	o => \MDR[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\MDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(4),
	devoe => ww_devoe,
	o => \MDR[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\MDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(3),
	devoe => ww_devoe,
	o => \MDR[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\MDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(2),
	devoe => ww_devoe,
	o => \MDR[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\MDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(1),
	devoe => ww_devoe,
	o => \MDR[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\MDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(0),
	devoe => ww_devoe,
	o => \MDR[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\PC[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\PC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\PC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\PC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\r_t[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(16),
	devoe => ww_devoe,
	o => \r_t[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\r_t[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(15),
	devoe => ww_devoe,
	o => \r_t[15]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\r_t[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(14),
	devoe => ww_devoe,
	o => \r_t[14]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\r_t[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(13),
	devoe => ww_devoe,
	o => \r_t[13]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\r_t[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(12),
	devoe => ww_devoe,
	o => \r_t[12]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\r_t[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(11),
	devoe => ww_devoe,
	o => \r_t[11]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\r_t[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(10),
	devoe => ww_devoe,
	o => \r_t[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\r_t[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(9),
	devoe => ww_devoe,
	o => \r_t[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\r_t[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(8),
	devoe => ww_devoe,
	o => \r_t[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\r_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(7),
	devoe => ww_devoe,
	o => \r_t[7]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\r_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(6),
	devoe => ww_devoe,
	o => \r_t[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\r_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(5),
	devoe => ww_devoe,
	o => \r_t[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\r_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(4),
	devoe => ww_devoe,
	o => \r_t[4]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\r_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(3),
	devoe => ww_devoe,
	o => \r_t[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\r_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(2),
	devoe => ww_devoe,
	o => \r_t[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\r_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(1),
	devoe => ww_devoe,
	o => \r_t[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\r_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_r|R\(0),
	devoe => ww_devoe,
	o => \r_t[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\res_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(7),
	devoe => ww_devoe,
	o => \res_t[7]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\res_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(6),
	devoe => ww_devoe,
	o => \res_t[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\res_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(5),
	devoe => ww_devoe,
	o => \res_t[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\res_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(4),
	devoe => ww_devoe,
	o => \res_t[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\res_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(3),
	devoe => ww_devoe,
	o => \res_t[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\res_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(2),
	devoe => ww_devoe,
	o => \res_t[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\res_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(1),
	devoe => ww_devoe,
	o => \res_t[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\res_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_res|R\(0),
	devoe => ww_devoe,
	o => \res_t[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\SelBus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[4]~3_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\SelBus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[3]~0_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\SelBus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[2]~1_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\SelBus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[1]~2_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\SelBus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[0]~4_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[0]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SRC_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(7),
	devoe => ww_devoe,
	o => \SRC_t[7]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\SRC_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(6),
	devoe => ww_devoe,
	o => \SRC_t[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\SRC_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(5),
	devoe => ww_devoe,
	o => \SRC_t[5]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\SRC_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(4),
	devoe => ww_devoe,
	o => \SRC_t[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SRC_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(3),
	devoe => ww_devoe,
	o => \SRC_t[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\SRC_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(2),
	devoe => ww_devoe,
	o => \SRC_t[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\SRC_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(1),
	devoe => ww_devoe,
	o => \SRC_t[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\SRC_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC|R\(0),
	devoe => ww_devoe,
	o => \SRC_t[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\x_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\x_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\x_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\x_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\x_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\x_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\x_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\x_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_x|R[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \x_t[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\y_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(7),
	devoe => ww_devoe,
	o => \y_t[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\y_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(6),
	devoe => ww_devoe,
	o => \y_t[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\y_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(5),
	devoe => ww_devoe,
	o => \y_t[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\y_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(4),
	devoe => ww_devoe,
	o => \y_t[4]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\y_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(3),
	devoe => ww_devoe,
	o => \y_t[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\y_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(2),
	devoe => ww_devoe,
	o => \y_t[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\y_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(1),
	devoe => ww_devoe,
	o => \y_t[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\y_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_y|R\(0),
	devoe => ww_devoe,
	o => \y_t[0]~output_o\);

-- Location: IOIBUF_X51_Y0_N1
\SelOp[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelOp(2),
	o => \SelOp[2]~input_o\);

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

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: IOIBUF_X78_Y20_N23
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

-- Location: IOIBUF_X78_Y20_N1
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

-- Location: IOIBUF_X78_Y45_N8
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

-- Location: IOIBUF_X78_Y3_N1
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

-- Location: IOIBUF_X78_Y44_N1
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

-- Location: IOIBUF_X78_Y45_N1
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

-- Location: FF_X71_Y29_N21
\inst|SRC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~46_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(3));

-- Location: IOIBUF_X78_Y45_N15
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

-- Location: LCCOMB_X71_Y29_N20
\inst|SelBus[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[3]~0_combout\ = (\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC_UC[3]~input_o\,
	datac => \inst|SRC|R\(3),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[3]~0_combout\);

-- Location: IOIBUF_X78_Y15_N8
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

-- Location: IOIBUF_X78_Y42_N22
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

-- Location: LCCOMB_X71_Y24_N8
\inst|DST|R[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[2]~feeder_combout\ = \inst|BUS[2]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[2]~55_combout\,
	combout => \inst|DST|R[2]~feeder_combout\);

-- Location: IOIBUF_X74_Y54_N1
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

-- Location: IOIBUF_X78_Y21_N15
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

-- Location: LCCOMB_X75_Y29_N6
\inst|PC|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~3_combout\ = (!\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\inst|_~47_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|_~3_combout\);

-- Location: LCCOMB_X75_Y29_N16
\inst|PC|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~1_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|R[7]~1_combout\);

-- Location: LCCOMB_X75_Y29_N30
\inst|PC|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~2_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\inst|_~47_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|_~2_combout\);

-- Location: LCCOMB_X75_Y29_N0
\inst|PC|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\inst|_~47_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|_~0_combout\);

-- Location: LCCOMB_X71_Y28_N26
\inst|DST|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[0]~feeder_combout\ = \inst|BUS[0]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|DST|R[0]~feeder_combout\);

-- Location: FF_X71_Y28_N27
\inst|DST|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(0));

-- Location: IOIBUF_X62_Y0_N22
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

-- Location: LCCOMB_X70_Y26_N24
\inst|SelMUX[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[0]~0_combout\ = (\SelDST~input_o\ & ((\DST_UC[0]~input_o\))) # (!\SelDST~input_o\ & (\inst|DST|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R\(0),
	datac => \DST_UC[0]~input_o\,
	datad => \SelDST~input_o\,
	combout => \inst|SelMUX[0]~0_combout\);

-- Location: LCCOMB_X70_Y26_N30
\inst|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~33_combout\ = (!\inst|SelMUX[3]~4_combout\ & (\inst|SelMUX[0]~0_combout\ & (\inst|_~53_combout\ & \inst|SelMUX[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[3]~4_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|_~53_combout\,
	datad => \inst|SelMUX[2]~3_combout\,
	combout => \inst|_~33_combout\);

-- Location: FF_X40_Y13_N25
\inst|alu_y|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~64_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(1));

-- Location: FF_X40_Y13_N23
\inst|alu_y|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~46_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(3));

-- Location: FF_X40_Y13_N21
\inst|alu_y|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(2));

-- Location: IOIBUF_X69_Y0_N8
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

-- Location: LCCOMB_X70_Y26_N26
\inst|SelMUX[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[1]~1_combout\ = (\SelDST~input_o\ & ((\DST_UC[1]~input_o\))) # (!\SelDST~input_o\ & (\inst|DST|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R\(1),
	datac => \DST_UC[1]~input_o\,
	datad => \SelDST~input_o\,
	combout => \inst|SelMUX[1]~1_combout\);

-- Location: LCCOMB_X71_Y26_N18
\inst|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~35_combout\ = (!\inst|SelMUX[2]~3_combout\ & ((\SelDST~input_o\ & (!\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((!\inst|DST|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[3]~input_o\,
	datab => \inst|DST|R\(3),
	datac => \SelDST~input_o\,
	datad => \inst|SelMUX[2]~3_combout\,
	combout => \inst|_~35_combout\);

-- Location: LCCOMB_X70_Y26_N2
\inst|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~44_combout\ = (!\inst|SelMUX[1]~1_combout\ & (\inst|SelMUX[0]~0_combout\ & (!\inst|SelMUX[4]~2_combout\ & \inst|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[1]~1_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[4]~2_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~44_combout\);

-- Location: LCCOMB_X74_Y26_N18
\inst|Bx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~3_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & \inst|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|_~3_combout\);

-- Location: LCCOMB_X74_Y26_N12
\inst|Bx|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~6_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|R[5]~6_combout\);

-- Location: LCCOMB_X74_Y26_N6
\inst|Bx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~0_combout\ = (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|_~0_combout\);

-- Location: LCCOMB_X74_Y26_N2
\inst|Bx|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~31_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|R[0]~31_combout\);

-- Location: LCCOMB_X74_Y26_N28
\inst|Bx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~32_combout\ = (\inst|Bx|R\(0) & (((\inst|Bx|R\(1) & \inst|Bx|R[5]~6_combout\)))) # (!\inst|Bx|R\(0) & ((\inst|Bx|R[0]~31_combout\) # ((\inst|Bx|R\(1) & \inst|Bx|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|R[0]~31_combout\,
	datac => \inst|Bx|R\(1),
	datad => \inst|Bx|R[5]~6_combout\,
	combout => \inst|Bx|R[0]~32_combout\);

-- Location: LCCOMB_X74_Y26_N10
\inst|Bx|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~4_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|_~4_combout\);

-- Location: LCCOMB_X74_Y26_N24
\inst|Bx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~1_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|_~1_combout\);

-- Location: LCCOMB_X75_Y26_N22
\inst|Bx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~8_combout\ = (\inst|Bx|R\(5) & (\inst|Bx|op_1~7\ $ (GND))) # (!\inst|Bx|R\(5) & (!\inst|Bx|op_1~7\ & VCC))
-- \inst|Bx|op_1~9\ = CARRY((\inst|Bx|R\(5) & !\inst|Bx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(5),
	datad => VCC,
	cin => \inst|Bx|op_1~7\,
	combout => \inst|Bx|op_1~8_combout\,
	cout => \inst|Bx|op_1~9\);

-- Location: LCCOMB_X75_Y26_N24
\inst|Bx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~10_combout\ = (\inst|Bx|R\(6) & (!\inst|Bx|op_1~9\)) # (!\inst|Bx|R\(6) & ((\inst|Bx|op_1~9\) # (GND)))
-- \inst|Bx|op_1~11\ = CARRY((!\inst|Bx|op_1~9\) # (!\inst|Bx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(6),
	datad => VCC,
	cin => \inst|Bx|op_1~9\,
	combout => \inst|Bx|op_1~10_combout\,
	cout => \inst|Bx|op_1~11\);

-- Location: LCCOMB_X75_Y26_N26
\inst|Bx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~12_combout\ = \inst|Bx|R\(7) $ (!\inst|Bx|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(7),
	cin => \inst|Bx|op_1~11\,
	combout => \inst|Bx|op_1~12_combout\);

-- Location: LCCOMB_X74_Y26_N14
\inst|Bx|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~0_combout\ = (\inst|Bx|_~0_combout\ & ((\inst|Bx|op_1~12_combout\) # ((\inst|Bx|_~1_combout\ & \inst|Bx|R\(0))))) # (!\inst|Bx|_~0_combout\ & (\inst|Bx|_~1_combout\ & (\inst|Bx|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~0_combout\,
	datab => \inst|Bx|_~1_combout\,
	datac => \inst|Bx|R\(0),
	datad => \inst|Bx|op_1~12_combout\,
	combout => \inst|Bx|R[7]~0_combout\);

-- Location: LCCOMB_X74_Y26_N20
\inst|Bx|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~3_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|R[6]~3_combout\);

-- Location: LCCOMB_X74_Y26_N4
\inst|Bx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|_~2_combout\);

-- Location: LCCOMB_X74_Y26_N22
\inst|Bx|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~1_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[1]~input_o\))) # (!\inst|_~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~44_combout\,
	combout => \inst|Bx|R[7]~1_combout\);

-- Location: LCCOMB_X76_Y26_N6
\inst|Bx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~1_cout\ = CARRY(\inst|Bx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(0),
	datad => VCC,
	cout => \inst|Bx|op_2~1_cout\);

-- Location: LCCOMB_X76_Y26_N8
\inst|Bx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~2_combout\ = (\inst|Bx|R\(1) & (\inst|Bx|op_2~1_cout\ & VCC)) # (!\inst|Bx|R\(1) & (!\inst|Bx|op_2~1_cout\))
-- \inst|Bx|op_2~3\ = CARRY((!\inst|Bx|R\(1) & !\inst|Bx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(1),
	datad => VCC,
	cin => \inst|Bx|op_2~1_cout\,
	combout => \inst|Bx|op_2~2_combout\,
	cout => \inst|Bx|op_2~3\);

-- Location: LCCOMB_X76_Y26_N10
\inst|Bx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~4_combout\ = (\inst|Bx|R\(2) & ((GND) # (!\inst|Bx|op_2~3\))) # (!\inst|Bx|R\(2) & (\inst|Bx|op_2~3\ $ (GND)))
-- \inst|Bx|op_2~5\ = CARRY((\inst|Bx|R\(2)) # (!\inst|Bx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(2),
	datad => VCC,
	cin => \inst|Bx|op_2~3\,
	combout => \inst|Bx|op_2~4_combout\,
	cout => \inst|Bx|op_2~5\);

-- Location: LCCOMB_X76_Y26_N12
\inst|Bx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~6_combout\ = (\inst|Bx|R\(3) & (\inst|Bx|op_2~5\ & VCC)) # (!\inst|Bx|R\(3) & (!\inst|Bx|op_2~5\))
-- \inst|Bx|op_2~7\ = CARRY((!\inst|Bx|R\(3) & !\inst|Bx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(3),
	datad => VCC,
	cin => \inst|Bx|op_2~5\,
	combout => \inst|Bx|op_2~6_combout\,
	cout => \inst|Bx|op_2~7\);

-- Location: LCCOMB_X76_Y26_N14
\inst|Bx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~8_combout\ = (\inst|Bx|R\(4) & ((GND) # (!\inst|Bx|op_2~7\))) # (!\inst|Bx|R\(4) & (\inst|Bx|op_2~7\ $ (GND)))
-- \inst|Bx|op_2~9\ = CARRY((\inst|Bx|R\(4)) # (!\inst|Bx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(4),
	datad => VCC,
	cin => \inst|Bx|op_2~7\,
	combout => \inst|Bx|op_2~8_combout\,
	cout => \inst|Bx|op_2~9\);

-- Location: LCCOMB_X76_Y26_N16
\inst|Bx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~10_combout\ = (\inst|Bx|R\(5) & (\inst|Bx|op_2~9\ & VCC)) # (!\inst|Bx|R\(5) & (!\inst|Bx|op_2~9\))
-- \inst|Bx|op_2~11\ = CARRY((!\inst|Bx|R\(5) & !\inst|Bx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(5),
	datad => VCC,
	cin => \inst|Bx|op_2~9\,
	combout => \inst|Bx|op_2~10_combout\,
	cout => \inst|Bx|op_2~11\);

-- Location: LCCOMB_X76_Y26_N18
\inst|Bx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~12_combout\ = (\inst|Bx|R\(6) & ((GND) # (!\inst|Bx|op_2~11\))) # (!\inst|Bx|R\(6) & (\inst|Bx|op_2~11\ $ (GND)))
-- \inst|Bx|op_2~13\ = CARRY((\inst|Bx|R\(6)) # (!\inst|Bx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(6),
	datad => VCC,
	cin => \inst|Bx|op_2~11\,
	combout => \inst|Bx|op_2~12_combout\,
	cout => \inst|Bx|op_2~13\);

-- Location: LCCOMB_X76_Y26_N20
\inst|Bx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~14_combout\ = \inst|Bx|op_2~13\ $ (!\inst|Bx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Bx|R\(7),
	cin => \inst|Bx|op_2~13\,
	combout => \inst|Bx|op_2~14_combout\);

-- Location: LCCOMB_X76_Y26_N4
\inst|Bx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~2_combout\ = (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~14_combout\) # ((\inst|Bx|R\(7) & \inst|Bx|R[7]~1_combout\)))) # (!\inst|Bx|_~2_combout\ & (\inst|Bx|R\(7) & (\inst|Bx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~2_combout\,
	datab => \inst|Bx|R\(7),
	datac => \inst|Bx|R[7]~1_combout\,
	datad => \inst|Bx|op_2~14_combout\,
	combout => \inst|Bx|R[7]~2_combout\);

-- Location: LCCOMB_X75_Y26_N28
\inst|Bx|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~4_combout\ = (\inst|Bx|R[7]~0_combout\) # ((\inst|Bx|R[7]~2_combout\) # ((\inst|Bx|R[6]~3_combout\ & \inst|Bx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[7]~0_combout\,
	datab => \inst|Bx|R[6]~3_combout\,
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|R[7]~2_combout\,
	combout => \inst|Bx|R[7]~4_combout\);

-- Location: LCCOMB_X72_Y26_N14
\inst|Bx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~5_combout\ = (\inst|Bx|R[7]~4_combout\) # ((\inst|Bx|_~3_combout\ & \inst|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~3_combout\,
	datac => \inst|BUS[7]~10_combout\,
	datad => \inst|Bx|R[7]~4_combout\,
	combout => \inst|Bx|R[7]~5_combout\);

-- Location: FF_X72_Y26_N15
\inst|Bx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(7));

-- Location: LCCOMB_X72_Y26_N8
\inst|Bx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~33_combout\ = (\inst|Bx|_~4_combout\ & ((\inst|Bx|R\(7)) # ((\inst|Bx|R\(0) & \inst|Bx|R[7]~1_combout\)))) # (!\inst|Bx|_~4_combout\ & (((\inst|Bx|R\(0) & \inst|Bx|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~4_combout\,
	datab => \inst|Bx|R\(7),
	datac => \inst|Bx|R\(0),
	datad => \inst|Bx|R[7]~1_combout\,
	combout => \inst|Bx|R[0]~33_combout\);

-- Location: LCCOMB_X72_Y26_N30
\inst|Bx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~34_combout\ = (\inst|Bx|R[0]~32_combout\) # ((\inst|Bx|R[0]~33_combout\) # ((\inst|Bx|_~3_combout\ & \inst|BUS[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[0]~32_combout\,
	datab => \inst|Bx|R[0]~33_combout\,
	datac => \inst|Bx|_~3_combout\,
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|Bx|R[0]~34_combout\);

-- Location: FF_X72_Y26_N31
\inst|Bx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(0));

-- Location: LCCOMB_X74_Y26_N8
\inst|Bx|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~27_combout\ = (\inst|Bx|R[5]~6_combout\ & ((\inst|Bx|R\(2)) # ((\inst|Bx|R\(0) & \inst|Bx|R[6]~3_combout\)))) # (!\inst|Bx|R[5]~6_combout\ & (((\inst|Bx|R\(0) & \inst|Bx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~6_combout\,
	datab => \inst|Bx|R\(2),
	datac => \inst|Bx|R\(0),
	datad => \inst|Bx|R[6]~3_combout\,
	combout => \inst|Bx|R[1]~27_combout\);

-- Location: LCCOMB_X75_Y26_N14
\inst|Bx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~0_combout\ = (\inst|Bx|R\(0) & (\inst|Bx|R\(1) $ (VCC))) # (!\inst|Bx|R\(0) & (\inst|Bx|R\(1) & VCC))
-- \inst|Bx|op_1~1\ = CARRY((\inst|Bx|R\(0) & \inst|Bx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|R\(1),
	datad => VCC,
	combout => \inst|Bx|op_1~0_combout\,
	cout => \inst|Bx|op_1~1\);

-- Location: LCCOMB_X76_Y26_N28
\inst|Bx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~28_combout\ = (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~2_combout\) # ((\inst|Bx|R[7]~1_combout\ & \inst|Bx|R\(1))))) # (!\inst|Bx|_~2_combout\ & (((\inst|Bx|R[7]~1_combout\ & \inst|Bx|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~2_combout\,
	datab => \inst|Bx|op_2~2_combout\,
	datac => \inst|Bx|R[7]~1_combout\,
	datad => \inst|Bx|R\(1),
	combout => \inst|Bx|R[1]~28_combout\);

-- Location: LCCOMB_X75_Y26_N30
\inst|Bx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~29_combout\ = (\inst|Bx|R[1]~27_combout\) # ((\inst|Bx|R[1]~28_combout\) # ((\inst|Bx|_~0_combout\ & \inst|Bx|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[1]~27_combout\,
	datab => \inst|Bx|_~0_combout\,
	datac => \inst|Bx|op_1~0_combout\,
	datad => \inst|Bx|R[1]~28_combout\,
	combout => \inst|Bx|R[1]~29_combout\);

-- Location: LCCOMB_X72_Y26_N26
\inst|Bx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~30_combout\ = (\inst|Bx|R[1]~29_combout\) # ((\inst|BUS[1]~64_combout\ & \inst|Bx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[1]~64_combout\,
	datac => \inst|Bx|_~3_combout\,
	datad => \inst|Bx|R[1]~29_combout\,
	combout => \inst|Bx|R[1]~30_combout\);

-- Location: FF_X72_Y26_N27
\inst|Bx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(1));

-- Location: LCCOMB_X74_Y26_N0
\inst|Bx|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~23_combout\ = (\inst|Bx|R[5]~6_combout\ & ((\inst|Bx|R\(3)) # ((\inst|Bx|R\(1) & \inst|Bx|R[6]~3_combout\)))) # (!\inst|Bx|R[5]~6_combout\ & (((\inst|Bx|R\(1) & \inst|Bx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~6_combout\,
	datab => \inst|Bx|R\(3),
	datac => \inst|Bx|R\(1),
	datad => \inst|Bx|R[6]~3_combout\,
	combout => \inst|Bx|R[2]~23_combout\);

-- Location: LCCOMB_X76_Y26_N26
\inst|Bx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~24_combout\ = (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~4_combout\) # ((\inst|Bx|R\(2) & \inst|Bx|R[7]~1_combout\)))) # (!\inst|Bx|_~2_combout\ & (\inst|Bx|R\(2) & (\inst|Bx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~2_combout\,
	datab => \inst|Bx|R\(2),
	datac => \inst|Bx|R[7]~1_combout\,
	datad => \inst|Bx|op_2~4_combout\,
	combout => \inst|Bx|R[2]~24_combout\);

-- Location: LCCOMB_X75_Y26_N16
\inst|Bx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~2_combout\ = (\inst|Bx|R\(2) & (!\inst|Bx|op_1~1\)) # (!\inst|Bx|R\(2) & ((\inst|Bx|op_1~1\) # (GND)))
-- \inst|Bx|op_1~3\ = CARRY((!\inst|Bx|op_1~1\) # (!\inst|Bx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(2),
	datad => VCC,
	cin => \inst|Bx|op_1~1\,
	combout => \inst|Bx|op_1~2_combout\,
	cout => \inst|Bx|op_1~3\);

-- Location: LCCOMB_X74_Y26_N26
\inst|Bx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~25_combout\ = (\inst|Bx|R[2]~23_combout\) # ((\inst|Bx|R[2]~24_combout\) # ((\inst|Bx|_~0_combout\ & \inst|Bx|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~0_combout\,
	datab => \inst|Bx|R[2]~23_combout\,
	datac => \inst|Bx|R[2]~24_combout\,
	datad => \inst|Bx|op_1~2_combout\,
	combout => \inst|Bx|R[2]~25_combout\);

-- Location: LCCOMB_X74_Y26_N16
\inst|Bx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~26_combout\ = (\inst|Bx|R[2]~25_combout\) # ((\inst|BUS[2]~55_combout\ & \inst|Bx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~55_combout\,
	datac => \inst|Bx|R[2]~25_combout\,
	datad => \inst|Bx|_~3_combout\,
	combout => \inst|Bx|R[2]~26_combout\);

-- Location: FF_X74_Y26_N17
\inst|Bx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(2));

-- Location: LCCOMB_X75_Y26_N18
\inst|Bx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~4_combout\ = (\inst|Bx|R\(3) & (\inst|Bx|op_1~3\ $ (GND))) # (!\inst|Bx|R\(3) & (!\inst|Bx|op_1~3\ & VCC))
-- \inst|Bx|op_1~5\ = CARRY((\inst|Bx|R\(3) & !\inst|Bx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(3),
	datad => VCC,
	cin => \inst|Bx|op_1~3\,
	combout => \inst|Bx|op_1~4_combout\,
	cout => \inst|Bx|op_1~5\);

-- Location: LCCOMB_X76_Y26_N0
\inst|Bx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~20_combout\ = (\inst|Bx|R[7]~1_combout\ & ((\inst|Bx|R\(3)) # ((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~6_combout\)))) # (!\inst|Bx|R[7]~1_combout\ & (((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[7]~1_combout\,
	datab => \inst|Bx|R\(3),
	datac => \inst|Bx|_~2_combout\,
	datad => \inst|Bx|op_2~6_combout\,
	combout => \inst|Bx|R[3]~20_combout\);

-- Location: LCCOMB_X74_Y26_N30
\inst|Bx|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~19_combout\ = (\inst|Bx|R[5]~6_combout\ & ((\inst|Bx|R\(4)) # ((\inst|Bx|R\(2) & \inst|Bx|R[6]~3_combout\)))) # (!\inst|Bx|R[5]~6_combout\ & (\inst|Bx|R\(2) & ((\inst|Bx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~6_combout\,
	datab => \inst|Bx|R\(2),
	datac => \inst|Bx|R\(4),
	datad => \inst|Bx|R[6]~3_combout\,
	combout => \inst|Bx|R[3]~19_combout\);

-- Location: LCCOMB_X75_Y26_N0
\inst|Bx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~21_combout\ = (\inst|Bx|R[3]~20_combout\) # ((\inst|Bx|R[3]~19_combout\) # ((\inst|Bx|op_1~4_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_1~4_combout\,
	datab => \inst|Bx|_~0_combout\,
	datac => \inst|Bx|R[3]~20_combout\,
	datad => \inst|Bx|R[3]~19_combout\,
	combout => \inst|Bx|R[3]~21_combout\);

-- Location: LCCOMB_X72_Y26_N10
\inst|Bx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~22_combout\ = (\inst|Bx|R[3]~21_combout\) # ((\inst|BUS[3]~46_combout\ & \inst|Bx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[3]~46_combout\,
	datac => \inst|Bx|_~3_combout\,
	datad => \inst|Bx|R[3]~21_combout\,
	combout => \inst|Bx|R[3]~22_combout\);

-- Location: FF_X72_Y26_N11
\inst|Bx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(3));

-- Location: LCCOMB_X75_Y26_N6
\inst|Bx|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~15_combout\ = (\inst|Bx|R[5]~6_combout\ & ((\inst|Bx|R\(5)) # ((\inst|Bx|R\(3) & \inst|Bx|R[6]~3_combout\)))) # (!\inst|Bx|R[5]~6_combout\ & (\inst|Bx|R\(3) & ((\inst|Bx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~6_combout\,
	datab => \inst|Bx|R\(3),
	datac => \inst|Bx|R\(5),
	datad => \inst|Bx|R[6]~3_combout\,
	combout => \inst|Bx|R[4]~15_combout\);

-- Location: LCCOMB_X75_Y26_N20
\inst|Bx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~6_combout\ = (\inst|Bx|R\(4) & (!\inst|Bx|op_1~5\)) # (!\inst|Bx|R\(4) & ((\inst|Bx|op_1~5\) # (GND)))
-- \inst|Bx|op_1~7\ = CARRY((!\inst|Bx|op_1~5\) # (!\inst|Bx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(4),
	datad => VCC,
	cin => \inst|Bx|op_1~5\,
	combout => \inst|Bx|op_1~6_combout\,
	cout => \inst|Bx|op_1~7\);

-- Location: LCCOMB_X76_Y26_N2
\inst|Bx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~16_combout\ = (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~8_combout\) # ((\inst|Bx|R[7]~1_combout\ & \inst|Bx|R\(4))))) # (!\inst|Bx|_~2_combout\ & (((\inst|Bx|R[7]~1_combout\ & \inst|Bx|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~2_combout\,
	datab => \inst|Bx|op_2~8_combout\,
	datac => \inst|Bx|R[7]~1_combout\,
	datad => \inst|Bx|R\(4),
	combout => \inst|Bx|R[4]~16_combout\);

-- Location: LCCOMB_X75_Y26_N4
\inst|Bx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~17_combout\ = (\inst|Bx|R[4]~15_combout\) # ((\inst|Bx|R[4]~16_combout\) # ((\inst|Bx|op_1~6_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[4]~15_combout\,
	datab => \inst|Bx|op_1~6_combout\,
	datac => \inst|Bx|_~0_combout\,
	datad => \inst|Bx|R[4]~16_combout\,
	combout => \inst|Bx|R[4]~17_combout\);

-- Location: LCCOMB_X72_Y26_N18
\inst|Bx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~18_combout\ = (\inst|Bx|R[4]~17_combout\) # ((\inst|Bx|_~3_combout\ & \inst|BUS[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~3_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|Bx|R[4]~17_combout\,
	combout => \inst|Bx|R[4]~18_combout\);

-- Location: FF_X72_Y26_N19
\inst|Bx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(4));

-- Location: LCCOMB_X75_Y26_N2
\inst|Bx|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~11_combout\ = (\inst|Bx|R[5]~6_combout\ & ((\inst|Bx|R\(6)) # ((\inst|Bx|R\(4) & \inst|Bx|R[6]~3_combout\)))) # (!\inst|Bx|R[5]~6_combout\ & (\inst|Bx|R\(4) & ((\inst|Bx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~6_combout\,
	datab => \inst|Bx|R\(4),
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|R[6]~3_combout\,
	combout => \inst|Bx|R[5]~11_combout\);

-- Location: LCCOMB_X76_Y26_N24
\inst|Bx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~12_combout\ = (\inst|Bx|R[7]~1_combout\ & ((\inst|Bx|R\(5)) # ((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~10_combout\)))) # (!\inst|Bx|R[7]~1_combout\ & (((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[7]~1_combout\,
	datab => \inst|Bx|R\(5),
	datac => \inst|Bx|_~2_combout\,
	datad => \inst|Bx|op_2~10_combout\,
	combout => \inst|Bx|R[5]~12_combout\);

-- Location: LCCOMB_X75_Y26_N12
\inst|Bx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~13_combout\ = (\inst|Bx|R[5]~11_combout\) # ((\inst|Bx|R[5]~12_combout\) # ((\inst|Bx|op_1~8_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_1~8_combout\,
	datab => \inst|Bx|R[5]~11_combout\,
	datac => \inst|Bx|_~0_combout\,
	datad => \inst|Bx|R[5]~12_combout\,
	combout => \inst|Bx|R[5]~13_combout\);

-- Location: LCCOMB_X72_Y26_N2
\inst|Bx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~14_combout\ = (\inst|Bx|R[5]~13_combout\) # ((\inst|Bx|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~3_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|Bx|R[5]~13_combout\,
	combout => \inst|Bx|R[5]~14_combout\);

-- Location: FF_X72_Y26_N3
\inst|Bx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(5));

-- Location: LCCOMB_X75_Y26_N10
\inst|Bx|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~7_combout\ = (\inst|Bx|R\(5) & ((\inst|Bx|R[6]~3_combout\) # ((\inst|Bx|R\(7) & \inst|Bx|R[5]~6_combout\)))) # (!\inst|Bx|R\(5) & (((\inst|Bx|R\(7) & \inst|Bx|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(5),
	datab => \inst|Bx|R[6]~3_combout\,
	datac => \inst|Bx|R\(7),
	datad => \inst|Bx|R[5]~6_combout\,
	combout => \inst|Bx|R[6]~7_combout\);

-- Location: LCCOMB_X76_Y26_N22
\inst|Bx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~8_combout\ = (\inst|Bx|R[7]~1_combout\ & ((\inst|Bx|R\(6)) # ((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~12_combout\)))) # (!\inst|Bx|R[7]~1_combout\ & (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[7]~1_combout\,
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|op_2~12_combout\,
	combout => \inst|Bx|R[6]~8_combout\);

-- Location: LCCOMB_X75_Y26_N8
\inst|Bx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~9_combout\ = (\inst|Bx|R[6]~7_combout\) # ((\inst|Bx|R[6]~8_combout\) # ((\inst|Bx|op_1~10_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[6]~7_combout\,
	datab => \inst|Bx|op_1~10_combout\,
	datac => \inst|Bx|_~0_combout\,
	datad => \inst|Bx|R[6]~8_combout\,
	combout => \inst|Bx|R[6]~9_combout\);

-- Location: LCCOMB_X72_Y26_N22
\inst|Bx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~10_combout\ = (\inst|Bx|R[6]~9_combout\) # ((\inst|Bx|_~3_combout\ & \inst|BUS[6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~3_combout\,
	datac => \inst|BUS[6]~19_combout\,
	datad => \inst|Bx|R[6]~9_combout\,
	combout => \inst|Bx|R[6]~10_combout\);

-- Location: FF_X72_Y26_N23
\inst|Bx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(6));

-- Location: LCCOMB_X74_Y30_N28
\inst|Cx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~46_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|_~2_combout\);

-- Location: LCCOMB_X74_Y30_N20
\inst|Cx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~46_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|_~0_combout\);

-- Location: LCCOMB_X74_Y30_N14
\inst|Cx|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~1_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|R[7]~1_combout\);

-- Location: LCCOMB_X74_Y28_N14
\inst|Cx|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~6_combout\ = (\inst|_~46_combout\ & (\Cmd[0]~input_o\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~46_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	combout => \inst|Cx|R[5]~6_combout\);

-- Location: LCCOMB_X74_Y28_N2
\inst|Cx|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~31_combout\ = (\inst|_~46_combout\ & (!\Cmd[2]~input_o\ & \Cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~46_combout\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Cx|R[0]~31_combout\);

-- Location: LCCOMB_X74_Y28_N8
\inst|Cx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~32_combout\ = (\inst|Cx|R\(0) & (\inst|Cx|R[5]~6_combout\ & (\inst|Cx|R\(1)))) # (!\inst|Cx|R\(0) & ((\inst|Cx|R[0]~31_combout\) # ((\inst|Cx|R[5]~6_combout\ & \inst|Cx|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|R[5]~6_combout\,
	datac => \inst|Cx|R\(1),
	datad => \inst|Cx|R[0]~31_combout\,
	combout => \inst|Cx|R[0]~32_combout\);

-- Location: LCCOMB_X74_Y30_N4
\inst|Cx|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~46_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|_~4_combout\);

-- Location: LCCOMB_X75_Y30_N26
\inst|Cx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~33_combout\ = (\inst|Cx|R\(0) & ((\inst|Cx|R[7]~1_combout\) # ((\inst|Cx|_~4_combout\ & \inst|Cx|R\(7))))) # (!\inst|Cx|R\(0) & (\inst|Cx|_~4_combout\ & (\inst|Cx|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|_~4_combout\,
	datac => \inst|Cx|R\(7),
	datad => \inst|Cx|R[7]~1_combout\,
	combout => \inst|Cx|R[0]~33_combout\);

-- Location: LCCOMB_X74_Y28_N10
\inst|Cx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~34_combout\ = (\inst|Cx|R[0]~32_combout\) # ((\inst|Cx|R[0]~33_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datab => \inst|Cx|R[0]~32_combout\,
	datac => \inst|Cx|R[0]~33_combout\,
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|Cx|R[0]~34_combout\);

-- Location: FF_X74_Y28_N11
\inst|Cx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(0));

-- Location: LCCOMB_X75_Y30_N4
\inst|Cx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~1_cout\ = CARRY(\inst|Cx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datad => VCC,
	cout => \inst|Cx|op_2~1_cout\);

-- Location: LCCOMB_X75_Y30_N6
\inst|Cx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~2_combout\ = (\inst|Cx|R\(1) & (\inst|Cx|op_2~1_cout\ & VCC)) # (!\inst|Cx|R\(1) & (!\inst|Cx|op_2~1_cout\))
-- \inst|Cx|op_2~3\ = CARRY((!\inst|Cx|R\(1) & !\inst|Cx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(1),
	datad => VCC,
	cin => \inst|Cx|op_2~1_cout\,
	combout => \inst|Cx|op_2~2_combout\,
	cout => \inst|Cx|op_2~3\);

-- Location: LCCOMB_X75_Y30_N0
\inst|Cx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~28_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(1)) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~2_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|R\(1),
	datad => \inst|Cx|op_2~2_combout\,
	combout => \inst|Cx|R[1]~28_combout\);

-- Location: LCCOMB_X74_Y28_N18
\inst|Cx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~0_combout\ = (\inst|Cx|R\(1) & (\inst|Cx|R\(0) $ (VCC))) # (!\inst|Cx|R\(1) & (\inst|Cx|R\(0) & VCC))
-- \inst|Cx|op_1~1\ = CARRY((\inst|Cx|R\(1) & \inst|Cx|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(1),
	datab => \inst|Cx|R\(0),
	datad => VCC,
	combout => \inst|Cx|op_1~0_combout\,
	cout => \inst|Cx|op_1~1\);

-- Location: LCCOMB_X74_Y30_N12
\inst|Cx|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\inst|_~46_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|R[6]~3_combout\);

-- Location: LCCOMB_X74_Y28_N12
\inst|Cx|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~27_combout\ = (\inst|Cx|R\(0) & ((\inst|Cx|R[6]~3_combout\) # ((\inst|Cx|R[5]~6_combout\ & \inst|Cx|R\(2))))) # (!\inst|Cx|R\(0) & (((\inst|Cx|R[5]~6_combout\ & \inst|Cx|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|R[6]~3_combout\,
	datac => \inst|Cx|R[5]~6_combout\,
	datad => \inst|Cx|R\(2),
	combout => \inst|Cx|R[1]~27_combout\);

-- Location: LCCOMB_X75_Y28_N18
\inst|Cx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~29_combout\ = (\inst|Cx|R[1]~28_combout\) # ((\inst|Cx|R[1]~27_combout\) # ((\inst|Cx|op_1~0_combout\ & \inst|Cx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[1]~28_combout\,
	datab => \inst|Cx|op_1~0_combout\,
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|R[1]~27_combout\,
	combout => \inst|Cx|R[1]~29_combout\);

-- Location: LCCOMB_X75_Y28_N2
\inst|Cx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~30_combout\ = (\inst|Cx|R[1]~29_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[1]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|BUS[1]~64_combout\,
	datad => \inst|Cx|R[1]~29_combout\,
	combout => \inst|Cx|R[1]~30_combout\);

-- Location: FF_X75_Y28_N3
\inst|Cx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(1));

-- Location: LCCOMB_X75_Y30_N8
\inst|Cx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~4_combout\ = (\inst|Cx|R\(2) & ((GND) # (!\inst|Cx|op_2~3\))) # (!\inst|Cx|R\(2) & (\inst|Cx|op_2~3\ $ (GND)))
-- \inst|Cx|op_2~5\ = CARRY((\inst|Cx|R\(2)) # (!\inst|Cx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(2),
	datad => VCC,
	cin => \inst|Cx|op_2~3\,
	combout => \inst|Cx|op_2~4_combout\,
	cout => \inst|Cx|op_2~5\);

-- Location: LCCOMB_X75_Y30_N30
\inst|Cx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~24_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(2)) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~4_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|_~2_combout\ & (\inst|Cx|op_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|op_2~4_combout\,
	datad => \inst|Cx|R\(2),
	combout => \inst|Cx|R[2]~24_combout\);

-- Location: LCCOMB_X75_Y28_N22
\inst|Cx|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~23_combout\ = (\inst|Cx|R[5]~6_combout\ & ((\inst|Cx|R\(3)) # ((\inst|Cx|R\(1) & \inst|Cx|R[6]~3_combout\)))) # (!\inst|Cx|R[5]~6_combout\ & (\inst|Cx|R\(1) & ((\inst|Cx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~6_combout\,
	datab => \inst|Cx|R\(1),
	datac => \inst|Cx|R\(3),
	datad => \inst|Cx|R[6]~3_combout\,
	combout => \inst|Cx|R[2]~23_combout\);

-- Location: LCCOMB_X74_Y28_N20
\inst|Cx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~2_combout\ = (\inst|Cx|R\(2) & (!\inst|Cx|op_1~1\)) # (!\inst|Cx|R\(2) & ((\inst|Cx|op_1~1\) # (GND)))
-- \inst|Cx|op_1~3\ = CARRY((!\inst|Cx|op_1~1\) # (!\inst|Cx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(2),
	datad => VCC,
	cin => \inst|Cx|op_1~1\,
	combout => \inst|Cx|op_1~2_combout\,
	cout => \inst|Cx|op_1~3\);

-- Location: LCCOMB_X75_Y28_N8
\inst|Cx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~25_combout\ = (\inst|Cx|R[2]~24_combout\) # ((\inst|Cx|R[2]~23_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[2]~24_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|R[2]~23_combout\,
	datad => \inst|Cx|op_1~2_combout\,
	combout => \inst|Cx|R[2]~25_combout\);

-- Location: LCCOMB_X75_Y28_N4
\inst|Cx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~26_combout\ = (\inst|Cx|R[2]~25_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[2]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|Cx|R[2]~25_combout\,
	datad => \inst|BUS[2]~55_combout\,
	combout => \inst|Cx|R[2]~26_combout\);

-- Location: FF_X75_Y28_N5
\inst|Cx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(2));

-- Location: LCCOMB_X75_Y30_N10
\inst|Cx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~6_combout\ = (\inst|Cx|R\(3) & (\inst|Cx|op_2~5\ & VCC)) # (!\inst|Cx|R\(3) & (!\inst|Cx|op_2~5\))
-- \inst|Cx|op_2~7\ = CARRY((!\inst|Cx|R\(3) & !\inst|Cx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(3),
	datad => VCC,
	cin => \inst|Cx|op_2~5\,
	combout => \inst|Cx|op_2~6_combout\,
	cout => \inst|Cx|op_2~7\);

-- Location: LCCOMB_X75_Y30_N20
\inst|Cx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~20_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(3)) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~6_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|R\(3),
	datad => \inst|Cx|op_2~6_combout\,
	combout => \inst|Cx|R[3]~20_combout\);

-- Location: LCCOMB_X75_Y28_N26
\inst|Cx|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~19_combout\ = (\inst|Cx|R[5]~6_combout\ & ((\inst|Cx|R\(4)) # ((\inst|Cx|R[6]~3_combout\ & \inst|Cx|R\(2))))) # (!\inst|Cx|R[5]~6_combout\ & (\inst|Cx|R[6]~3_combout\ & (\inst|Cx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~6_combout\,
	datab => \inst|Cx|R[6]~3_combout\,
	datac => \inst|Cx|R\(2),
	datad => \inst|Cx|R\(4),
	combout => \inst|Cx|R[3]~19_combout\);

-- Location: LCCOMB_X74_Y28_N22
\inst|Cx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~4_combout\ = (\inst|Cx|R\(3) & (\inst|Cx|op_1~3\ $ (GND))) # (!\inst|Cx|R\(3) & (!\inst|Cx|op_1~3\ & VCC))
-- \inst|Cx|op_1~5\ = CARRY((\inst|Cx|R\(3) & !\inst|Cx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(3),
	datad => VCC,
	cin => \inst|Cx|op_1~3\,
	combout => \inst|Cx|op_1~4_combout\,
	cout => \inst|Cx|op_1~5\);

-- Location: LCCOMB_X75_Y28_N24
\inst|Cx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~21_combout\ = (\inst|Cx|R[3]~20_combout\) # ((\inst|Cx|R[3]~19_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[3]~20_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|R[3]~19_combout\,
	datad => \inst|Cx|op_1~4_combout\,
	combout => \inst|Cx|R[3]~21_combout\);

-- Location: LCCOMB_X75_Y28_N14
\inst|Cx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~22_combout\ = (\inst|Cx|R[3]~21_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|Cx|R[3]~21_combout\,
	combout => \inst|Cx|R[3]~22_combout\);

-- Location: FF_X75_Y28_N15
\inst|Cx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(3));

-- Location: LCCOMB_X75_Y30_N12
\inst|Cx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~8_combout\ = (\inst|Cx|R\(4) & ((GND) # (!\inst|Cx|op_2~7\))) # (!\inst|Cx|R\(4) & (\inst|Cx|op_2~7\ $ (GND)))
-- \inst|Cx|op_2~9\ = CARRY((\inst|Cx|R\(4)) # (!\inst|Cx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(4),
	datad => VCC,
	cin => \inst|Cx|op_2~7\,
	combout => \inst|Cx|op_2~8_combout\,
	cout => \inst|Cx|op_2~9\);

-- Location: LCCOMB_X75_Y30_N22
\inst|Cx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~16_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(4)) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~8_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|R\(4),
	datad => \inst|Cx|op_2~8_combout\,
	combout => \inst|Cx|R[4]~16_combout\);

-- Location: LCCOMB_X75_Y28_N30
\inst|Cx|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~15_combout\ = (\inst|Cx|R[5]~6_combout\ & ((\inst|Cx|R\(5)) # ((\inst|Cx|R\(3) & \inst|Cx|R[6]~3_combout\)))) # (!\inst|Cx|R[5]~6_combout\ & (((\inst|Cx|R\(3) & \inst|Cx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~6_combout\,
	datab => \inst|Cx|R\(5),
	datac => \inst|Cx|R\(3),
	datad => \inst|Cx|R[6]~3_combout\,
	combout => \inst|Cx|R[4]~15_combout\);

-- Location: LCCOMB_X74_Y28_N24
\inst|Cx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~6_combout\ = (\inst|Cx|R\(4) & (!\inst|Cx|op_1~5\)) # (!\inst|Cx|R\(4) & ((\inst|Cx|op_1~5\) # (GND)))
-- \inst|Cx|op_1~7\ = CARRY((!\inst|Cx|op_1~5\) # (!\inst|Cx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(4),
	datad => VCC,
	cin => \inst|Cx|op_1~5\,
	combout => \inst|Cx|op_1~6_combout\,
	cout => \inst|Cx|op_1~7\);

-- Location: LCCOMB_X75_Y28_N16
\inst|Cx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~17_combout\ = (\inst|Cx|R[4]~16_combout\) # ((\inst|Cx|R[4]~15_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[4]~16_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|R[4]~15_combout\,
	datad => \inst|Cx|op_1~6_combout\,
	combout => \inst|Cx|R[4]~17_combout\);

-- Location: LCCOMB_X75_Y28_N12
\inst|Cx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~18_combout\ = (\inst|Cx|R[4]~17_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|Cx|R[4]~17_combout\,
	combout => \inst|Cx|R[4]~18_combout\);

-- Location: FF_X75_Y28_N13
\inst|Cx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(4));

-- Location: LCCOMB_X75_Y30_N14
\inst|Cx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~10_combout\ = (\inst|Cx|R\(5) & (\inst|Cx|op_2~9\ & VCC)) # (!\inst|Cx|R\(5) & (!\inst|Cx|op_2~9\))
-- \inst|Cx|op_2~11\ = CARRY((!\inst|Cx|R\(5) & !\inst|Cx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(5),
	datad => VCC,
	cin => \inst|Cx|op_2~9\,
	combout => \inst|Cx|op_2~10_combout\,
	cout => \inst|Cx|op_2~11\);

-- Location: LCCOMB_X75_Y30_N28
\inst|Cx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~12_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(5)) # ((\inst|Cx|op_2~10_combout\ & \inst|Cx|_~2_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|op_2~10_combout\ & ((\inst|Cx|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|op_2~10_combout\,
	datac => \inst|Cx|R\(5),
	datad => \inst|Cx|_~2_combout\,
	combout => \inst|Cx|R[5]~12_combout\);

-- Location: LCCOMB_X74_Y28_N26
\inst|Cx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~8_combout\ = (\inst|Cx|R\(5) & (\inst|Cx|op_1~7\ $ (GND))) # (!\inst|Cx|R\(5) & (!\inst|Cx|op_1~7\ & VCC))
-- \inst|Cx|op_1~9\ = CARRY((\inst|Cx|R\(5) & !\inst|Cx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(5),
	datad => VCC,
	cin => \inst|Cx|op_1~7\,
	combout => \inst|Cx|op_1~8_combout\,
	cout => \inst|Cx|op_1~9\);

-- Location: LCCOMB_X74_Y28_N16
\inst|Cx|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~11_combout\ = (\inst|Cx|R\(6) & ((\inst|Cx|R[5]~6_combout\) # ((\inst|Cx|R\(4) & \inst|Cx|R[6]~3_combout\)))) # (!\inst|Cx|R\(6) & (\inst|Cx|R\(4) & ((\inst|Cx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(6),
	datab => \inst|Cx|R\(4),
	datac => \inst|Cx|R[5]~6_combout\,
	datad => \inst|Cx|R[6]~3_combout\,
	combout => \inst|Cx|R[5]~11_combout\);

-- Location: LCCOMB_X74_Y28_N6
\inst|Cx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~13_combout\ = (\inst|Cx|R[5]~12_combout\) # ((\inst|Cx|R[5]~11_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~0_combout\,
	datab => \inst|Cx|R[5]~12_combout\,
	datac => \inst|Cx|op_1~8_combout\,
	datad => \inst|Cx|R[5]~11_combout\,
	combout => \inst|Cx|R[5]~13_combout\);

-- Location: LCCOMB_X74_Y28_N4
\inst|Cx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~14_combout\ = (\inst|Cx|R[5]~13_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|Cx|R[5]~13_combout\,
	combout => \inst|Cx|R[5]~14_combout\);

-- Location: FF_X74_Y28_N5
\inst|Cx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(5));

-- Location: LCCOMB_X75_Y30_N16
\inst|Cx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~12_combout\ = (\inst|Cx|R\(6) & ((GND) # (!\inst|Cx|op_2~11\))) # (!\inst|Cx|R\(6) & (\inst|Cx|op_2~11\ $ (GND)))
-- \inst|Cx|op_2~13\ = CARRY((\inst|Cx|R\(6)) # (!\inst|Cx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(6),
	datad => VCC,
	cin => \inst|Cx|op_2~11\,
	combout => \inst|Cx|op_2~12_combout\,
	cout => \inst|Cx|op_2~13\);

-- Location: LCCOMB_X75_Y30_N2
\inst|Cx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~8_combout\ = (\inst|Cx|R\(6) & ((\inst|Cx|R[7]~1_combout\) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~12_combout\)))) # (!\inst|Cx|R\(6) & (\inst|Cx|_~2_combout\ & (\inst|Cx|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(6),
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|op_2~12_combout\,
	datad => \inst|Cx|R[7]~1_combout\,
	combout => \inst|Cx|R[6]~8_combout\);

-- Location: LCCOMB_X74_Y28_N28
\inst|Cx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~10_combout\ = (\inst|Cx|R\(6) & (!\inst|Cx|op_1~9\)) # (!\inst|Cx|R\(6) & ((\inst|Cx|op_1~9\) # (GND)))
-- \inst|Cx|op_1~11\ = CARRY((!\inst|Cx|op_1~9\) # (!\inst|Cx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(6),
	datad => VCC,
	cin => \inst|Cx|op_1~9\,
	combout => \inst|Cx|op_1~10_combout\,
	cout => \inst|Cx|op_1~11\);

-- Location: LCCOMB_X75_Y28_N28
\inst|Cx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~9_combout\ = (\inst|Cx|R[6]~8_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R[6]~8_combout\,
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|op_1~10_combout\,
	combout => \inst|Cx|R[6]~9_combout\);

-- Location: LCCOMB_X75_Y28_N6
\inst|Cx|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~7_combout\ = (\inst|Cx|R[5]~6_combout\ & ((\inst|Cx|R\(7)) # ((\inst|Cx|R[6]~3_combout\ & \inst|Cx|R\(5))))) # (!\inst|Cx|R[5]~6_combout\ & (\inst|Cx|R[6]~3_combout\ & (\inst|Cx|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~6_combout\,
	datab => \inst|Cx|R[6]~3_combout\,
	datac => \inst|Cx|R\(5),
	datad => \inst|Cx|R\(7),
	combout => \inst|Cx|R[6]~7_combout\);

-- Location: LCCOMB_X75_Y28_N10
\inst|Cx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~10_combout\ = (\inst|Cx|R[6]~9_combout\) # ((\inst|Cx|R[6]~7_combout\) # ((\inst|BUS[6]~19_combout\ & \inst|Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~19_combout\,
	datab => \inst|Cx|R[6]~9_combout\,
	datac => \inst|Cx|_~3_combout\,
	datad => \inst|Cx|R[6]~7_combout\,
	combout => \inst|Cx|R[6]~10_combout\);

-- Location: FF_X75_Y28_N11
\inst|Cx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(6));

-- Location: LCCOMB_X70_Y26_N0
\inst|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~45_combout\ = (\inst|SelMUX[1]~1_combout\ & (!\inst|SelMUX[0]~0_combout\ & (\inst|SelMUX[4]~2_combout\ & \inst|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[1]~1_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[4]~2_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~45_combout\);

-- Location: LCCOMB_X67_Y29_N28
\inst|DI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~3_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & (\inst|_~45_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|_~3_combout\);

-- Location: LCCOMB_X67_Y29_N22
\inst|DI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~45_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|_~2_combout\);

-- Location: LCCOMB_X67_Y29_N24
\inst|DI|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~1_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|R[7]~1_combout\);

-- Location: LCCOMB_X67_Y29_N8
\inst|DI|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (\inst|_~45_combout\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|R[0]~31_combout\);

-- Location: LCCOMB_X67_Y29_N2
\inst|DI|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~6_combout\ = (\Cmd[0]~input_o\ & (\inst|_~45_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|R[5]~6_combout\);

-- Location: LCCOMB_X67_Y29_N26
\inst|DI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~32_combout\ = (\inst|DI|R\(0) & (\inst|DI|R\(1) & ((\inst|DI|R[5]~6_combout\)))) # (!\inst|DI|R\(0) & ((\inst|DI|R[0]~31_combout\) # ((\inst|DI|R\(1) & \inst|DI|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|R\(1),
	datac => \inst|DI|R[0]~31_combout\,
	datad => \inst|DI|R[5]~6_combout\,
	combout => \inst|DI|R[0]~32_combout\);

-- Location: LCCOMB_X67_Y29_N20
\inst|DI|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~45_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|_~4_combout\);

-- Location: LCCOMB_X67_Y29_N0
\inst|DI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~45_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|_~0_combout\);

-- Location: LCCOMB_X67_Y29_N14
\inst|DI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~45_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|_~1_combout\);

-- Location: LCCOMB_X70_Y29_N14
\inst|DI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~10_combout\ = (\inst|DI|R\(6) & (!\inst|DI|op_1~9\)) # (!\inst|DI|R\(6) & ((\inst|DI|op_1~9\) # (GND)))
-- \inst|DI|op_1~11\ = CARRY((!\inst|DI|op_1~9\) # (!\inst|DI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(6),
	datad => VCC,
	cin => \inst|DI|op_1~9\,
	combout => \inst|DI|op_1~10_combout\,
	cout => \inst|DI|op_1~11\);

-- Location: LCCOMB_X70_Y29_N16
\inst|DI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~12_combout\ = \inst|DI|op_1~11\ $ (!\inst|DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|DI|R\(7),
	cin => \inst|DI|op_1~11\,
	combout => \inst|DI|op_1~12_combout\);

-- Location: LCCOMB_X67_Y29_N12
\inst|DI|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~0_combout\ = (\inst|DI|R\(0) & ((\inst|DI|_~1_combout\) # ((\inst|DI|_~0_combout\ & \inst|DI|op_1~12_combout\)))) # (!\inst|DI|R\(0) & (\inst|DI|_~0_combout\ & ((\inst|DI|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|_~0_combout\,
	datac => \inst|DI|_~1_combout\,
	datad => \inst|DI|op_1~12_combout\,
	combout => \inst|DI|R[7]~0_combout\);

-- Location: LCCOMB_X67_Y29_N16
\inst|DI|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\inst|_~45_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \inst|_~45_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|DI|R[6]~3_combout\);

-- Location: LCCOMB_X69_Y29_N10
\inst|DI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~10_combout\ = (\inst|DI|R\(5) & (\inst|DI|op_2~9\ & VCC)) # (!\inst|DI|R\(5) & (!\inst|DI|op_2~9\))
-- \inst|DI|op_2~11\ = CARRY((!\inst|DI|R\(5) & !\inst|DI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(5),
	datad => VCC,
	cin => \inst|DI|op_2~9\,
	combout => \inst|DI|op_2~10_combout\,
	cout => \inst|DI|op_2~11\);

-- Location: LCCOMB_X69_Y29_N12
\inst|DI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~12_combout\ = (\inst|DI|R\(6) & ((GND) # (!\inst|DI|op_2~11\))) # (!\inst|DI|R\(6) & (\inst|DI|op_2~11\ $ (GND)))
-- \inst|DI|op_2~13\ = CARRY((\inst|DI|R\(6)) # (!\inst|DI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(6),
	datad => VCC,
	cin => \inst|DI|op_2~11\,
	combout => \inst|DI|op_2~12_combout\,
	cout => \inst|DI|op_2~13\);

-- Location: LCCOMB_X69_Y29_N14
\inst|DI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~14_combout\ = \inst|DI|op_2~13\ $ (!\inst|DI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|DI|R\(7),
	cin => \inst|DI|op_2~13\,
	combout => \inst|DI|op_2~14_combout\);

-- Location: LCCOMB_X67_Y29_N6
\inst|DI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~2_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~14_combout\) # ((\inst|DI|R[7]~1_combout\ & \inst|DI|R\(7))))) # (!\inst|DI|_~2_combout\ & (\inst|DI|R[7]~1_combout\ & (\inst|DI|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|R[7]~1_combout\,
	datac => \inst|DI|R\(7),
	datad => \inst|DI|op_2~14_combout\,
	combout => \inst|DI|R[7]~2_combout\);

-- Location: LCCOMB_X67_Y29_N10
\inst|DI|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~4_combout\ = (\inst|DI|R[7]~0_combout\) # ((\inst|DI|R[7]~2_combout\) # ((\inst|DI|R[6]~3_combout\ & \inst|DI|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[7]~0_combout\,
	datab => \inst|DI|R[6]~3_combout\,
	datac => \inst|DI|R\(6),
	datad => \inst|DI|R[7]~2_combout\,
	combout => \inst|DI|R[7]~4_combout\);

-- Location: LCCOMB_X67_Y29_N4
\inst|DI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~5_combout\ = (\inst|DI|R[7]~4_combout\) # ((\inst|BUS[7]~10_combout\ & \inst|DI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[7]~4_combout\,
	datab => \inst|BUS[7]~10_combout\,
	datad => \inst|DI|_~3_combout\,
	combout => \inst|DI|R[7]~5_combout\);

-- Location: FF_X67_Y29_N5
\inst|DI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(7));

-- Location: LCCOMB_X67_Y29_N18
\inst|DI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~33_combout\ = (\inst|DI|R\(0) & ((\inst|DI|R[7]~1_combout\) # ((\inst|DI|_~4_combout\ & \inst|DI|R\(7))))) # (!\inst|DI|R\(0) & (\inst|DI|_~4_combout\ & (\inst|DI|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|_~4_combout\,
	datac => \inst|DI|R\(7),
	datad => \inst|DI|R[7]~1_combout\,
	combout => \inst|DI|R[0]~33_combout\);

-- Location: LCCOMB_X67_Y29_N30
\inst|DI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~34_combout\ = (\inst|DI|R[0]~32_combout\) # ((\inst|DI|R[0]~33_combout\) # ((\inst|BUS[0]~73_combout\ & \inst|DI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[0]~32_combout\,
	datab => \inst|DI|R[0]~33_combout\,
	datac => \inst|BUS[0]~73_combout\,
	datad => \inst|DI|_~3_combout\,
	combout => \inst|DI|R[0]~34_combout\);

-- Location: FF_X67_Y29_N31
\inst|DI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(0));

-- Location: LCCOMB_X71_Y29_N6
\inst|DI|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~27_combout\ = (\inst|DI|R\(0) & ((\inst|DI|R[6]~3_combout\) # ((\inst|DI|R[5]~6_combout\ & \inst|DI|R\(2))))) # (!\inst|DI|R\(0) & (((\inst|DI|R[5]~6_combout\ & \inst|DI|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|R[6]~3_combout\,
	datac => \inst|DI|R[5]~6_combout\,
	datad => \inst|DI|R\(2),
	combout => \inst|DI|R[1]~27_combout\);

-- Location: LCCOMB_X70_Y29_N4
\inst|DI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~0_combout\ = (\inst|DI|R\(1) & (\inst|DI|R\(0) $ (VCC))) # (!\inst|DI|R\(1) & (\inst|DI|R\(0) & VCC))
-- \inst|DI|op_1~1\ = CARRY((\inst|DI|R\(1) & \inst|DI|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(1),
	datab => \inst|DI|R\(0),
	datad => VCC,
	combout => \inst|DI|op_1~0_combout\,
	cout => \inst|DI|op_1~1\);

-- Location: LCCOMB_X69_Y29_N0
\inst|DI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~1_cout\ = CARRY(\inst|DI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datad => VCC,
	cout => \inst|DI|op_2~1_cout\);

-- Location: LCCOMB_X69_Y29_N2
\inst|DI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~2_combout\ = (\inst|DI|R\(1) & (\inst|DI|op_2~1_cout\ & VCC)) # (!\inst|DI|R\(1) & (!\inst|DI|op_2~1_cout\))
-- \inst|DI|op_2~3\ = CARRY((!\inst|DI|R\(1) & !\inst|DI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(1),
	datad => VCC,
	cin => \inst|DI|op_2~1_cout\,
	combout => \inst|DI|op_2~2_combout\,
	cout => \inst|DI|op_2~3\);

-- Location: LCCOMB_X69_Y29_N18
\inst|DI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~28_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~2_combout\) # ((\inst|DI|R\(1) & \inst|DI|R[7]~1_combout\)))) # (!\inst|DI|_~2_combout\ & (((\inst|DI|R\(1) & \inst|DI|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|op_2~2_combout\,
	datac => \inst|DI|R\(1),
	datad => \inst|DI|R[7]~1_combout\,
	combout => \inst|DI|R[1]~28_combout\);

-- Location: LCCOMB_X70_Y29_N18
\inst|DI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~29_combout\ = (\inst|DI|R[1]~27_combout\) # ((\inst|DI|R[1]~28_combout\) # ((\inst|DI|op_1~0_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[1]~27_combout\,
	datab => \inst|DI|op_1~0_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|R[1]~28_combout\,
	combout => \inst|DI|R[1]~29_combout\);

-- Location: LCCOMB_X71_Y29_N16
\inst|DI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~30_combout\ = (\inst|DI|R[1]~29_combout\) # ((\inst|DI|_~3_combout\ & \inst|BUS[1]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|_~3_combout\,
	datac => \inst|BUS[1]~64_combout\,
	datad => \inst|DI|R[1]~29_combout\,
	combout => \inst|DI|R[1]~30_combout\);

-- Location: FF_X71_Y29_N17
\inst|DI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(1));

-- Location: LCCOMB_X69_Y29_N4
\inst|DI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~4_combout\ = (\inst|DI|R\(2) & ((GND) # (!\inst|DI|op_2~3\))) # (!\inst|DI|R\(2) & (\inst|DI|op_2~3\ $ (GND)))
-- \inst|DI|op_2~5\ = CARRY((\inst|DI|R\(2)) # (!\inst|DI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(2),
	datad => VCC,
	cin => \inst|DI|op_2~3\,
	combout => \inst|DI|op_2~4_combout\,
	cout => \inst|DI|op_2~5\);

-- Location: LCCOMB_X69_Y29_N16
\inst|DI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~24_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~4_combout\) # ((\inst|DI|R\(2) & \inst|DI|R[7]~1_combout\)))) # (!\inst|DI|_~2_combout\ & (\inst|DI|R\(2) & ((\inst|DI|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|R\(2),
	datac => \inst|DI|op_2~4_combout\,
	datad => \inst|DI|R[7]~1_combout\,
	combout => \inst|DI|R[2]~24_combout\);

-- Location: LCCOMB_X71_Y29_N0
\inst|DI|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~23_combout\ = (\inst|DI|R[5]~6_combout\ & ((\inst|DI|R\(3)) # ((\inst|DI|R\(1) & \inst|DI|R[6]~3_combout\)))) # (!\inst|DI|R[5]~6_combout\ & (\inst|DI|R\(1) & ((\inst|DI|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~6_combout\,
	datab => \inst|DI|R\(1),
	datac => \inst|DI|R\(3),
	datad => \inst|DI|R[6]~3_combout\,
	combout => \inst|DI|R[2]~23_combout\);

-- Location: LCCOMB_X70_Y29_N6
\inst|DI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~2_combout\ = (\inst|DI|R\(2) & (!\inst|DI|op_1~1\)) # (!\inst|DI|R\(2) & ((\inst|DI|op_1~1\) # (GND)))
-- \inst|DI|op_1~3\ = CARRY((!\inst|DI|op_1~1\) # (!\inst|DI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(2),
	datad => VCC,
	cin => \inst|DI|op_1~1\,
	combout => \inst|DI|op_1~2_combout\,
	cout => \inst|DI|op_1~3\);

-- Location: LCCOMB_X70_Y29_N24
\inst|DI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~25_combout\ = (\inst|DI|R[2]~24_combout\) # ((\inst|DI|R[2]~23_combout\) # ((\inst|DI|_~0_combout\ & \inst|DI|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[2]~24_combout\,
	datab => \inst|DI|R[2]~23_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|op_1~2_combout\,
	combout => \inst|DI|R[2]~25_combout\);

-- Location: LCCOMB_X71_Y29_N24
\inst|DI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~26_combout\ = (\inst|DI|R[2]~25_combout\) # ((\inst|DI|_~3_combout\ & \inst|BUS[2]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|_~3_combout\,
	datac => \inst|BUS[2]~55_combout\,
	datad => \inst|DI|R[2]~25_combout\,
	combout => \inst|DI|R[2]~26_combout\);

-- Location: FF_X71_Y29_N25
\inst|DI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(2));

-- Location: LCCOMB_X69_Y29_N6
\inst|DI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~6_combout\ = (\inst|DI|R\(3) & (\inst|DI|op_2~5\ & VCC)) # (!\inst|DI|R\(3) & (!\inst|DI|op_2~5\))
-- \inst|DI|op_2~7\ = CARRY((!\inst|DI|R\(3) & !\inst|DI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(3),
	datad => VCC,
	cin => \inst|DI|op_2~5\,
	combout => \inst|DI|op_2~6_combout\,
	cout => \inst|DI|op_2~7\);

-- Location: LCCOMB_X69_Y29_N22
\inst|DI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~20_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~6_combout\) # ((\inst|DI|R[7]~1_combout\ & \inst|DI|R\(3))))) # (!\inst|DI|_~2_combout\ & (\inst|DI|R[7]~1_combout\ & (\inst|DI|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|R[7]~1_combout\,
	datac => \inst|DI|R\(3),
	datad => \inst|DI|op_2~6_combout\,
	combout => \inst|DI|R[3]~20_combout\);

-- Location: LCCOMB_X70_Y29_N8
\inst|DI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~4_combout\ = (\inst|DI|R\(3) & (\inst|DI|op_1~3\ $ (GND))) # (!\inst|DI|R\(3) & (!\inst|DI|op_1~3\ & VCC))
-- \inst|DI|op_1~5\ = CARRY((\inst|DI|R\(3) & !\inst|DI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(3),
	datad => VCC,
	cin => \inst|DI|op_1~3\,
	combout => \inst|DI|op_1~4_combout\,
	cout => \inst|DI|op_1~5\);

-- Location: LCCOMB_X70_Y29_N20
\inst|DI|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~19_combout\ = (\inst|DI|R\(4) & ((\inst|DI|R[5]~6_combout\) # ((\inst|DI|R\(2) & \inst|DI|R[6]~3_combout\)))) # (!\inst|DI|R\(4) & (\inst|DI|R\(2) & ((\inst|DI|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(4),
	datab => \inst|DI|R\(2),
	datac => \inst|DI|R[5]~6_combout\,
	datad => \inst|DI|R[6]~3_combout\,
	combout => \inst|DI|R[3]~19_combout\);

-- Location: LCCOMB_X70_Y29_N22
\inst|DI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~21_combout\ = (\inst|DI|R[3]~20_combout\) # ((\inst|DI|R[3]~19_combout\) # ((\inst|DI|op_1~4_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[3]~20_combout\,
	datab => \inst|DI|op_1~4_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|R[3]~19_combout\,
	combout => \inst|DI|R[3]~21_combout\);

-- Location: LCCOMB_X71_Y29_N4
\inst|DI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~22_combout\ = (\inst|DI|R[3]~21_combout\) # ((\inst|DI|_~3_combout\ & \inst|BUS[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|_~3_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|DI|R[3]~21_combout\,
	combout => \inst|DI|R[3]~22_combout\);

-- Location: FF_X71_Y29_N5
\inst|DI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(3));

-- Location: LCCOMB_X69_Y29_N8
\inst|DI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~8_combout\ = (\inst|DI|R\(4) & ((GND) # (!\inst|DI|op_2~7\))) # (!\inst|DI|R\(4) & (\inst|DI|op_2~7\ $ (GND)))
-- \inst|DI|op_2~9\ = CARRY((\inst|DI|R\(4)) # (!\inst|DI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(4),
	datad => VCC,
	cin => \inst|DI|op_2~7\,
	combout => \inst|DI|op_2~8_combout\,
	cout => \inst|DI|op_2~9\);

-- Location: LCCOMB_X69_Y29_N20
\inst|DI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~16_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~8_combout\) # ((\inst|DI|R[7]~1_combout\ & \inst|DI|R\(4))))) # (!\inst|DI|_~2_combout\ & (\inst|DI|R[7]~1_combout\ & ((\inst|DI|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|R[7]~1_combout\,
	datac => \inst|DI|op_2~8_combout\,
	datad => \inst|DI|R\(4),
	combout => \inst|DI|R[4]~16_combout\);

-- Location: LCCOMB_X70_Y29_N10
\inst|DI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~6_combout\ = (\inst|DI|R\(4) & (!\inst|DI|op_1~5\)) # (!\inst|DI|R\(4) & ((\inst|DI|op_1~5\) # (GND)))
-- \inst|DI|op_1~7\ = CARRY((!\inst|DI|op_1~5\) # (!\inst|DI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(4),
	datad => VCC,
	cin => \inst|DI|op_1~5\,
	combout => \inst|DI|op_1~6_combout\,
	cout => \inst|DI|op_1~7\);

-- Location: LCCOMB_X70_Y29_N2
\inst|DI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~17_combout\ = (\inst|DI|R[4]~16_combout\) # ((\inst|DI|_~0_combout\ & \inst|DI|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R[4]~16_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|op_1~6_combout\,
	combout => \inst|DI|R[4]~17_combout\);

-- Location: LCCOMB_X70_Y29_N28
\inst|DI|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~15_combout\ = (\inst|DI|R[6]~3_combout\ & ((\inst|DI|R\(3)) # ((\inst|DI|R\(5) & \inst|DI|R[5]~6_combout\)))) # (!\inst|DI|R[6]~3_combout\ & (\inst|DI|R\(5) & (\inst|DI|R[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[6]~3_combout\,
	datab => \inst|DI|R\(5),
	datac => \inst|DI|R[5]~6_combout\,
	datad => \inst|DI|R\(3),
	combout => \inst|DI|R[4]~15_combout\);

-- Location: LCCOMB_X71_Y29_N30
\inst|DI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~18_combout\ = (\inst|DI|R[4]~17_combout\) # ((\inst|DI|R[4]~15_combout\) # ((\inst|DI|_~3_combout\ & \inst|BUS[4]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[4]~17_combout\,
	datab => \inst|DI|_~3_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|DI|R[4]~15_combout\,
	combout => \inst|DI|R[4]~18_combout\);

-- Location: FF_X71_Y29_N31
\inst|DI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(4));

-- Location: LCCOMB_X69_Y29_N26
\inst|DI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~12_combout\ = (\inst|DI|_~2_combout\ & ((\inst|DI|op_2~10_combout\) # ((\inst|DI|R[7]~1_combout\ & \inst|DI|R\(5))))) # (!\inst|DI|_~2_combout\ & (\inst|DI|R[7]~1_combout\ & (\inst|DI|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~2_combout\,
	datab => \inst|DI|R[7]~1_combout\,
	datac => \inst|DI|R\(5),
	datad => \inst|DI|op_2~10_combout\,
	combout => \inst|DI|R[5]~12_combout\);

-- Location: LCCOMB_X71_Y29_N18
\inst|DI|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~11_combout\ = (\inst|DI|R[5]~6_combout\ & ((\inst|DI|R\(6)) # ((\inst|DI|R[6]~3_combout\ & \inst|DI|R\(4))))) # (!\inst|DI|R[5]~6_combout\ & (((\inst|DI|R[6]~3_combout\ & \inst|DI|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~6_combout\,
	datab => \inst|DI|R\(6),
	datac => \inst|DI|R[6]~3_combout\,
	datad => \inst|DI|R\(4),
	combout => \inst|DI|R[5]~11_combout\);

-- Location: LCCOMB_X70_Y29_N12
\inst|DI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~8_combout\ = (\inst|DI|R\(5) & (\inst|DI|op_1~7\ $ (GND))) # (!\inst|DI|R\(5) & (!\inst|DI|op_1~7\ & VCC))
-- \inst|DI|op_1~9\ = CARRY((\inst|DI|R\(5) & !\inst|DI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(5),
	datad => VCC,
	cin => \inst|DI|op_1~7\,
	combout => \inst|DI|op_1~8_combout\,
	cout => \inst|DI|op_1~9\);

-- Location: LCCOMB_X70_Y29_N30
\inst|DI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~13_combout\ = (\inst|DI|R[5]~12_combout\) # ((\inst|DI|R[5]~11_combout\) # ((\inst|DI|_~0_combout\ & \inst|DI|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~12_combout\,
	datab => \inst|DI|R[5]~11_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|op_1~8_combout\,
	combout => \inst|DI|R[5]~13_combout\);

-- Location: LCCOMB_X69_Y29_N30
\inst|DI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~14_combout\ = (\inst|DI|R[5]~13_combout\) # ((\inst|DI|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~13_combout\,
	datab => \inst|DI|_~3_combout\,
	datac => \inst|BUS[5]~28_combout\,
	combout => \inst|DI|R[5]~14_combout\);

-- Location: FF_X69_Y29_N31
\inst|DI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(5));

-- Location: LCCOMB_X70_Y29_N0
\inst|DI|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~7_combout\ = (\inst|DI|R[6]~3_combout\ & ((\inst|DI|R\(5)) # ((\inst|DI|R[5]~6_combout\ & \inst|DI|R\(7))))) # (!\inst|DI|R[6]~3_combout\ & (((\inst|DI|R[5]~6_combout\ & \inst|DI|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[6]~3_combout\,
	datab => \inst|DI|R\(5),
	datac => \inst|DI|R[5]~6_combout\,
	datad => \inst|DI|R\(7),
	combout => \inst|DI|R[6]~7_combout\);

-- Location: LCCOMB_X69_Y29_N24
\inst|DI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~8_combout\ = (\inst|DI|op_2~12_combout\ & ((\inst|DI|_~2_combout\) # ((\inst|DI|R\(6) & \inst|DI|R[7]~1_combout\)))) # (!\inst|DI|op_2~12_combout\ & (\inst|DI|R\(6) & ((\inst|DI|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_2~12_combout\,
	datab => \inst|DI|R\(6),
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|R[7]~1_combout\,
	combout => \inst|DI|R[6]~8_combout\);

-- Location: LCCOMB_X70_Y29_N26
\inst|DI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~9_combout\ = (\inst|DI|R[6]~7_combout\) # ((\inst|DI|R[6]~8_combout\) # ((\inst|DI|op_1~10_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_1~10_combout\,
	datab => \inst|DI|R[6]~7_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|R[6]~8_combout\,
	combout => \inst|DI|R[6]~9_combout\);

-- Location: LCCOMB_X69_Y29_N28
\inst|DI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~10_combout\ = (\inst|DI|R[6]~9_combout\) # ((\inst|BUS[6]~19_combout\ & \inst|DI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[6]~19_combout\,
	datac => \inst|DI|_~3_combout\,
	datad => \inst|DI|R[6]~9_combout\,
	combout => \inst|DI|R[6]~10_combout\);

-- Location: FF_X69_Y29_N29
\inst|DI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(6));

-- Location: IOIBUF_X66_Y54_N22
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

-- Location: FF_X71_Y29_N3
\inst|SRC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~37_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(4));

-- Location: LCCOMB_X71_Y29_N2
\inst|SelBus[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[4]~3_combout\ = (\SelSRC~input_o\ & (\SRC_UC[4]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[4]~input_o\,
	datac => \inst|SRC|R\(4),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[4]~3_combout\);

-- Location: LCCOMB_X69_Y28_N20
\inst|BUS[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~16_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & ((\inst|DI|R\(6)))) # (!\inst|SelBus[4]~3_combout\ & (\inst|Cx|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(6),
	datab => \inst|_~29_combout\,
	datac => \inst|DI|R\(6),
	datad => \inst|SelBus[4]~3_combout\,
	combout => \inst|BUS[6]~16_combout\);

-- Location: IOIBUF_X66_Y54_N29
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

-- Location: FF_X71_Y29_N9
\inst|SRC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~73_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(0));

-- Location: LCCOMB_X71_Y29_N12
\inst|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~49_combout\ = (!\inst|SelBus[4]~3_combout\ & ((\SelSRC~input_o\ & (\SRC_UC[0]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[0]~input_o\,
	datab => \inst|SRC|R\(0),
	datac => \inst|SelBus[4]~3_combout\,
	datad => \SelSRC~input_o\,
	combout => \inst|_~49_combout\);

-- Location: LCCOMB_X70_Y28_N8
\inst|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~50_combout\ = (!\inst|SelBus[1]~2_combout\ & (!\inst|SelBus[2]~1_combout\ & (\inst|_~49_combout\ & !\inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~49_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~50_combout\);

-- Location: IOIBUF_X78_Y43_N1
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

-- Location: LCCOMB_X70_Y28_N16
\inst|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~32_combout\ = (!\inst|SelBus[1]~2_combout\ & (\inst|SelBus[2]~1_combout\ & (\inst|_~49_combout\ & !\inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~49_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~32_combout\);

-- Location: LCCOMB_X70_Y26_N28
\inst|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~34_combout\ = (!\inst|SelMUX[3]~4_combout\ & (!\inst|SelMUX[0]~0_combout\ & (\inst|_~53_combout\ & \inst|SelMUX[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[3]~4_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|_~53_combout\,
	datad => \inst|SelMUX[2]~3_combout\,
	combout => \inst|_~34_combout\);

-- Location: FF_X40_Y13_N13
\inst|alu_x|R[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[6]~_Duplicate_1_q\);

-- Location: FF_X40_Y13_N11
\inst|alu_y|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(6));

-- Location: FF_X40_Y13_N3
\inst|alu_x|R[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X41_Y13_N4
\inst|alu_y|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_y|R[4]~feeder_combout\ = \inst|BUS[4]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[4]~37_combout\,
	combout => \inst|alu_y|R[4]~feeder_combout\);

-- Location: FF_X41_Y13_N5
\inst|alu_y|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_y|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(4));

-- Location: FF_X40_Y13_N1
\inst|alu_x|R[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~37_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X39_Y13_N16
\inst|alu_x|R[3]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_x|R[3]~_Duplicate_1feeder_combout\ = \inst|BUS[3]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[3]~46_combout\,
	combout => \inst|alu_x|R[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X39_Y13_N17
\inst|alu_x|R[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_x|R[3]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[3]~_Duplicate_1_q\);

-- Location: FF_X40_Y13_N7
\inst|alu_x|R[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X39_Y13_N14
\inst|alu_x|R[1]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_x|R[1]~_Duplicate_1feeder_combout\ = \inst|BUS[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[1]~64_combout\,
	combout => \inst|alu_x|R[1]~_Duplicate_1feeder_combout\);

-- Location: FF_X39_Y13_N15
\inst|alu_x|R[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_x|R[1]~_Duplicate_1feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[1]~_Duplicate_1_q\);

-- Location: FF_X40_Y13_N5
\inst|alu_x|R[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~73_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[0]~_Duplicate_1_q\);

-- Location: FF_X40_Y13_N15
\inst|alu_y|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~73_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(0));

-- Location: LCCOMB_X38_Y13_N0
\inst|ALU|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~0_combout\ = (\inst|alu_x|R[0]~_Duplicate_1_q\ & (\inst|alu_y|R\(0) $ (VCC))) # (!\inst|alu_x|R[0]~_Duplicate_1_q\ & (\inst|alu_y|R\(0) & VCC))
-- \inst|ALU|op_2~1\ = CARRY((\inst|alu_x|R[0]~_Duplicate_1_q\ & \inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datad => VCC,
	combout => \inst|ALU|op_2~0_combout\,
	cout => \inst|ALU|op_2~1\);

-- Location: LCCOMB_X38_Y13_N2
\inst|ALU|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~2_combout\ = (\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1) & (\inst|ALU|op_2~1\ & VCC)) # (!\inst|alu_y|R\(1) & (!\inst|ALU|op_2~1\)))) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1) & (!\inst|ALU|op_2~1\)) # 
-- (!\inst|alu_y|R\(1) & ((\inst|ALU|op_2~1\) # (GND)))))
-- \inst|ALU|op_2~3\ = CARRY((\inst|alu_x|R[1]~_Duplicate_1_q\ & (!\inst|alu_y|R\(1) & !\inst|ALU|op_2~1\)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((!\inst|ALU|op_2~1\) # (!\inst|alu_y|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(1),
	datad => VCC,
	cin => \inst|ALU|op_2~1\,
	combout => \inst|ALU|op_2~2_combout\,
	cout => \inst|ALU|op_2~3\);

-- Location: LCCOMB_X38_Y13_N4
\inst|ALU|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~4_combout\ = ((\inst|alu_y|R\(2) $ (\inst|alu_x|R[2]~_Duplicate_1_q\ $ (!\inst|ALU|op_2~3\)))) # (GND)
-- \inst|ALU|op_2~5\ = CARRY((\inst|alu_y|R\(2) & ((\inst|alu_x|R[2]~_Duplicate_1_q\) # (!\inst|ALU|op_2~3\))) # (!\inst|alu_y|R\(2) & (\inst|alu_x|R[2]~_Duplicate_1_q\ & !\inst|ALU|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_2~3\,
	combout => \inst|ALU|op_2~4_combout\,
	cout => \inst|ALU|op_2~5\);

-- Location: LCCOMB_X38_Y13_N6
\inst|ALU|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~6_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3) & (\inst|ALU|op_2~5\ & VCC)) # (!\inst|alu_y|R\(3) & (!\inst|ALU|op_2~5\)))) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3) & (!\inst|ALU|op_2~5\)) # 
-- (!\inst|alu_y|R\(3) & ((\inst|ALU|op_2~5\) # (GND)))))
-- \inst|ALU|op_2~7\ = CARRY((\inst|alu_x|R[3]~_Duplicate_1_q\ & (!\inst|alu_y|R\(3) & !\inst|ALU|op_2~5\)) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & ((!\inst|ALU|op_2~5\) # (!\inst|alu_y|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(3),
	datad => VCC,
	cin => \inst|ALU|op_2~5\,
	combout => \inst|ALU|op_2~6_combout\,
	cout => \inst|ALU|op_2~7\);

-- Location: LCCOMB_X38_Y13_N8
\inst|ALU|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~8_combout\ = ((\inst|alu_y|R\(4) $ (\inst|alu_x|R[4]~_Duplicate_1_q\ $ (!\inst|ALU|op_2~7\)))) # (GND)
-- \inst|ALU|op_2~9\ = CARRY((\inst|alu_y|R\(4) & ((\inst|alu_x|R[4]~_Duplicate_1_q\) # (!\inst|ALU|op_2~7\))) # (!\inst|alu_y|R\(4) & (\inst|alu_x|R[4]~_Duplicate_1_q\ & !\inst|ALU|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(4),
	datab => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_2~7\,
	combout => \inst|ALU|op_2~8_combout\,
	cout => \inst|ALU|op_2~9\);

-- Location: LCCOMB_X38_Y13_N10
\inst|ALU|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~10_combout\ = (\inst|alu_y|R\(5) & ((\inst|alu_x|R[5]~_Duplicate_1_q\ & (\inst|ALU|op_2~9\ & VCC)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & (!\inst|ALU|op_2~9\)))) # (!\inst|alu_y|R\(5) & ((\inst|alu_x|R[5]~_Duplicate_1_q\ & 
-- (!\inst|ALU|op_2~9\)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|ALU|op_2~9\) # (GND)))))
-- \inst|ALU|op_2~11\ = CARRY((\inst|alu_y|R\(5) & (!\inst|alu_x|R[5]~_Duplicate_1_q\ & !\inst|ALU|op_2~9\)) # (!\inst|alu_y|R\(5) & ((!\inst|ALU|op_2~9\) # (!\inst|alu_x|R[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_2~9\,
	combout => \inst|ALU|op_2~10_combout\,
	cout => \inst|ALU|op_2~11\);

-- Location: LCCOMB_X38_Y13_N12
\inst|ALU|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~12_combout\ = ((\inst|alu_x|R[6]~_Duplicate_1_q\ $ (\inst|alu_y|R\(6) $ (!\inst|ALU|op_2~11\)))) # (GND)
-- \inst|ALU|op_2~13\ = CARRY((\inst|alu_x|R[6]~_Duplicate_1_q\ & ((\inst|alu_y|R\(6)) # (!\inst|ALU|op_2~11\))) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & (\inst|alu_y|R\(6) & !\inst|ALU|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(6),
	datad => VCC,
	cin => \inst|ALU|op_2~11\,
	combout => \inst|ALU|op_2~12_combout\,
	cout => \inst|ALU|op_2~13\);

-- Location: IOIBUF_X51_Y0_N8
\SelOp[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelOp(0),
	o => \SelOp[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\SelOp[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelOp(1),
	o => \SelOp[1]~input_o\);

-- Location: LCCOMB_X43_Y12_N12
\inst|ALU|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~13_combout\ = (\SelOp[0]~input_o\ & (\SelOp[2]~input_o\ & \SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~13_combout\);

-- Location: LCCOMB_X43_Y12_N16
\inst|ALU|Result[6]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~108_combout\ = (\SelOp[2]~input_o\ & (!\SelOp[1]~input_o\ & ((\SelOp[0]~input_o\) # (\inst|alu_x|R[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \SelOp[2]~input_o\,
	datac => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Result[6]~108_combout\);

-- Location: DSPMULT_X48_Y12_N0
\inst|ALU|op_5|auto_generated|mac_mult1\ : fiftyfivenm_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \Reloj~inputclkctrl_outclk\,
	aclr => \Reset~inputclkctrl_outclk\,
	ena => \inst|_~34_combout\,
	dataa => \inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|ALU|op_5|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X48_Y12_N2
\inst|ALU|op_5|auto_generated|mac_out2\ : fiftyfivenm_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_5|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X47_Y12_N16
\inst|ALU|Result[6]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~107_combout\ = (!\SelOp[2]~input_o\ & (\SelOp[1]~input_o\ & (\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\ & !\SelOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[1]~input_o\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[6]~107_combout\);

-- Location: LCCOMB_X43_Y12_N30
\inst|ALU|Result[6]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~109_combout\ = (\inst|ALU|Result[6]~107_combout\) # ((\inst|alu_y|R\(6) & ((\inst|ALU|Result[6]~108_combout\))) # (!\inst|alu_y|R\(6) & (\inst|ALU|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|ALU|Result[6]~108_combout\,
	datac => \inst|alu_y|R\(6),
	datad => \inst|ALU|Result[6]~107_combout\,
	combout => \inst|ALU|Result[6]~109_combout\);

-- Location: LCCOMB_X39_Y13_N6
\inst|ALU|Result[6]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~110_combout\ = (\SelOp[2]~input_o\ & ((\inst|alu_x|R[6]~_Duplicate_1_q\ & (\SelOp[0]~input_o\ & !\SelOp[1]~input_o\)) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & ((\SelOp[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Result[6]~110_combout\);

-- Location: LCCOMB_X41_Y13_N6
\inst|ALU|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~0_combout\ = (\inst|alu_y|R\(0) & (\inst|alu_x|R[0]~_Duplicate_1_q\ $ (VCC))) # (!\inst|alu_y|R\(0) & ((\inst|alu_x|R[0]~_Duplicate_1_q\) # (GND)))
-- \inst|ALU|op_3~1\ = CARRY((\inst|alu_x|R[0]~_Duplicate_1_q\) # (!\inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \inst|ALU|op_3~0_combout\,
	cout => \inst|ALU|op_3~1\);

-- Location: LCCOMB_X41_Y13_N8
\inst|ALU|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~2_combout\ = (\inst|alu_y|R\(1) & ((\inst|alu_x|R[1]~_Duplicate_1_q\ & (!\inst|ALU|op_3~1\)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|ALU|op_3~1\) # (GND))))) # (!\inst|alu_y|R\(1) & ((\inst|alu_x|R[1]~_Duplicate_1_q\ & 
-- (\inst|ALU|op_3~1\ & VCC)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & (!\inst|ALU|op_3~1\))))
-- \inst|ALU|op_3~3\ = CARRY((\inst|alu_y|R\(1) & ((!\inst|ALU|op_3~1\) # (!\inst|alu_x|R[1]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(1) & (!\inst|alu_x|R[1]~_Duplicate_1_q\ & !\inst|ALU|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~1\,
	combout => \inst|ALU|op_3~2_combout\,
	cout => \inst|ALU|op_3~3\);

-- Location: LCCOMB_X41_Y13_N10
\inst|ALU|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~4_combout\ = ((\inst|alu_y|R\(2) $ (\inst|alu_x|R[2]~_Duplicate_1_q\ $ (\inst|ALU|op_3~3\)))) # (GND)
-- \inst|ALU|op_3~5\ = CARRY((\inst|alu_y|R\(2) & (\inst|alu_x|R[2]~_Duplicate_1_q\ & !\inst|ALU|op_3~3\)) # (!\inst|alu_y|R\(2) & ((\inst|alu_x|R[2]~_Duplicate_1_q\) # (!\inst|ALU|op_3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~3\,
	combout => \inst|ALU|op_3~4_combout\,
	cout => \inst|ALU|op_3~5\);

-- Location: LCCOMB_X41_Y13_N12
\inst|ALU|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~6_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3) & (!\inst|ALU|op_3~5\)) # (!\inst|alu_y|R\(3) & (\inst|ALU|op_3~5\ & VCC)))) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3) & ((\inst|ALU|op_3~5\) # (GND))) # 
-- (!\inst|alu_y|R\(3) & (!\inst|ALU|op_3~5\))))
-- \inst|ALU|op_3~7\ = CARRY((\inst|alu_x|R[3]~_Duplicate_1_q\ & (\inst|alu_y|R\(3) & !\inst|ALU|op_3~5\)) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3)) # (!\inst|ALU|op_3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(3),
	datad => VCC,
	cin => \inst|ALU|op_3~5\,
	combout => \inst|ALU|op_3~6_combout\,
	cout => \inst|ALU|op_3~7\);

-- Location: LCCOMB_X41_Y13_N14
\inst|ALU|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~8_combout\ = ((\inst|alu_x|R[4]~_Duplicate_1_q\ $ (\inst|alu_y|R\(4) $ (\inst|ALU|op_3~7\)))) # (GND)
-- \inst|ALU|op_3~9\ = CARRY((\inst|alu_x|R[4]~_Duplicate_1_q\ & ((!\inst|ALU|op_3~7\) # (!\inst|alu_y|R\(4)))) # (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (!\inst|alu_y|R\(4) & !\inst|ALU|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(4),
	datad => VCC,
	cin => \inst|ALU|op_3~7\,
	combout => \inst|ALU|op_3~8_combout\,
	cout => \inst|ALU|op_3~9\);

-- Location: LCCOMB_X41_Y13_N16
\inst|ALU|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~10_combout\ = (\inst|alu_y|R\(5) & ((\inst|alu_x|R[5]~_Duplicate_1_q\ & (!\inst|ALU|op_3~9\)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|ALU|op_3~9\) # (GND))))) # (!\inst|alu_y|R\(5) & ((\inst|alu_x|R[5]~_Duplicate_1_q\ & 
-- (\inst|ALU|op_3~9\ & VCC)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & (!\inst|ALU|op_3~9\))))
-- \inst|ALU|op_3~11\ = CARRY((\inst|alu_y|R\(5) & ((!\inst|ALU|op_3~9\) # (!\inst|alu_x|R[5]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(5) & (!\inst|alu_x|R[5]~_Duplicate_1_q\ & !\inst|ALU|op_3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~9\,
	combout => \inst|ALU|op_3~10_combout\,
	cout => \inst|ALU|op_3~11\);

-- Location: LCCOMB_X41_Y13_N18
\inst|ALU|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~12_combout\ = ((\inst|alu_x|R[6]~_Duplicate_1_q\ $ (\inst|alu_y|R\(6) $ (\inst|ALU|op_3~11\)))) # (GND)
-- \inst|ALU|op_3~13\ = CARRY((\inst|alu_x|R[6]~_Duplicate_1_q\ & ((!\inst|ALU|op_3~11\) # (!\inst|alu_y|R\(6)))) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & (!\inst|alu_y|R\(6) & !\inst|ALU|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(6),
	datad => VCC,
	cin => \inst|ALU|op_3~11\,
	combout => \inst|ALU|op_3~12_combout\,
	cout => \inst|ALU|op_3~13\);

-- Location: LCCOMB_X43_Y12_N6
\inst|ALU|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~14_combout\ = (\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~14_combout\);

-- Location: LCCOMB_X39_Y13_N8
\inst|ALU|Result[6]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~111_combout\ = (\inst|ALU|Result[6]~110_combout\) # ((\inst|ALU|op_3~12_combout\ & \inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[6]~110_combout\,
	datac => \inst|ALU|op_3~12_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Result[6]~111_combout\);

-- Location: LCCOMB_X43_Y12_N20
\inst|ALU|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~5_combout\ = (!\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~5_combout\);

-- Location: LCCOMB_X40_Y13_N6
\inst|ALU|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~8_combout\ = (!\inst|alu_x|R[3]~_Duplicate_1_q\ & (!\inst|alu_x|R[0]~_Duplicate_1_q\ & (!\inst|alu_x|R[2]~_Duplicate_1_q\ & !\inst|alu_x|R[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datac => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => \inst|alu_x|R[1]~_Duplicate_1_q\,
	combout => \inst|ALU|_~8_combout\);

-- Location: FF_X40_Y13_N9
\inst|alu_x|R[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X40_Y13_N12
\inst|ALU|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~7_combout\ = (!\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|alu_x|R[5]~_Duplicate_1_q\ & (!\inst|alu_x|R[6]~_Duplicate_1_q\ & !\inst|alu_x|R[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datac => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => \inst|alu_x|R[4]~_Duplicate_1_q\,
	combout => \inst|ALU|_~7_combout\);

-- Location: LCCOMB_X39_Y13_N4
\inst|ALU|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~9_combout\ = (\inst|ALU|_~8_combout\ & \inst|ALU|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~8_combout\,
	datac => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|_~9_combout\);

-- Location: LCCOMB_X43_Y12_N18
\inst|ALU|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~10_combout\ = (\inst|ALU|_~5_combout\ & ((\inst|alu_y|R\(0)) # ((!\inst|ALU|_~9_combout\) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~5_combout\,
	datac => \inst|ALU|_~6_combout\,
	datad => \inst|ALU|_~9_combout\,
	combout => \inst|ALU|_~10_combout\);

-- Location: LCCOMB_X39_Y13_N18
\inst|ALU|Result[6]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~112_combout\ = (\inst|ALU|Result[6]~109_combout\) # ((\inst|ALU|Result[6]~111_combout\) # ((\inst|ALU|op_2~12_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~12_combout\,
	datab => \inst|ALU|Result[6]~109_combout\,
	datac => \inst|ALU|Result[6]~111_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[6]~112_combout\);

-- Location: LCCOMB_X40_Y13_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ = (!\inst|alu_y|R\(2) & (!\inst|alu_y|R\(3) & \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datac => \inst|alu_y|R\(3),
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\);

-- Location: LCCOMB_X39_Y13_N0
\inst|ALU|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~11_combout\ = (!\SelOp[2]~input_o\ & \SelOp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~11_combout\);

-- Location: LCCOMB_X40_Y13_N18
\inst|ALU|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~12_combout\ = (\SelOp[0]~input_o\ & (\inst|ALU|_~11_combout\ & ((!\inst|ALU|_~8_combout\) # (!\inst|ALU|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~7_combout\,
	datab => \SelOp[0]~input_o\,
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|_~8_combout\,
	combout => \inst|ALU|_~12_combout\);

-- Location: LCCOMB_X40_Y13_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # 
-- (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\,
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\);

-- Location: LCCOMB_X39_Y13_N2
\inst|ALU|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~33_combout\ = (\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & \SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~33_combout\);

-- Location: LCCOMB_X40_Y13_N24
\inst|ALU|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~16_combout\ = (\inst|ALU|_~33_combout\ & (\inst|alu_y|R\(1) & ((!\inst|ALU|_~8_combout\) # (!\inst|ALU|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~7_combout\,
	datab => \inst|ALU|_~33_combout\,
	datac => \inst|alu_y|R\(1),
	datad => \inst|ALU|_~8_combout\,
	combout => \inst|ALU|_~16_combout\);

-- Location: LCCOMB_X40_Y13_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_x|R[7]~_Duplicate_1_q\ & !\inst|ALU|_~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X40_Y13_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ = ((\inst|alu_x|R[6]~_Duplicate_1_q\) # (!\inst|ALU|_~12_combout\)) # (!\inst|alu_y|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\);

-- Location: LCCOMB_X40_Y13_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\) # ((\inst|ALU|_~16_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\))) # (!\inst|ALU|_~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\,
	datab => \inst|ALU|_~16_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\);

-- Location: LCCOMB_X36_Y12_N24
\inst|ALU|Result[6]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~113_combout\ = (\inst|ALU|Result[6]~112_combout\) # ((!\inst|ALU|_~15_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[6]~112_combout\,
	datac => \inst|ALU|_~15_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\,
	combout => \inst|ALU|Result[6]~113_combout\);

-- Location: FF_X36_Y12_N25
\inst|alu_r|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[6]~113_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(6));

-- Location: LCCOMB_X71_Y29_N8
\inst|SelBus[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[0]~4_combout\ = (\SelSRC~input_o\ & (\SRC_UC[0]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[0]~input_o\,
	datac => \inst|SRC|R\(0),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[0]~4_combout\);

-- Location: LCCOMB_X71_Y29_N26
\inst|_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~51_combout\ = (!\inst|SelBus[0]~4_combout\ & ((\SelSRC~input_o\ & (!\SRC_UC[4]~input_o\)) # (!\SelSRC~input_o\ & ((!\inst|SRC|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[4]~input_o\,
	datab => \inst|SRC|R\(4),
	datac => \inst|SelBus[0]~4_combout\,
	datad => \SelSRC~input_o\,
	combout => \inst|_~51_combout\);

-- Location: LCCOMB_X70_Y28_N24
\inst|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~30_combout\ = (!\inst|SelBus[1]~2_combout\ & (!\inst|SelBus[2]~1_combout\ & (\inst|_~51_combout\ & \inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~51_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~30_combout\);

-- Location: LCCOMB_X70_Y28_N18
\inst|BUS[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~17_combout\ = (\Fx[6]~input_o\ & ((\inst|_~32_combout\) # ((\inst|alu_r|R\(6) & \inst|_~30_combout\)))) # (!\Fx[6]~input_o\ & (((\inst|alu_r|R\(6) & \inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[6]~input_o\,
	datab => \inst|_~32_combout\,
	datac => \inst|alu_r|R\(6),
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[6]~17_combout\);

-- Location: LCCOMB_X70_Y28_N4
\inst|BUS[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~18_combout\ = (\inst|BUS[6]~16_combout\) # ((\inst|BUS[6]~17_combout\) # ((\inst|Bx|R\(6) & \inst|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(6),
	datab => \inst|BUS[6]~16_combout\,
	datac => \inst|_~50_combout\,
	datad => \inst|BUS[6]~17_combout\,
	combout => \inst|BUS[6]~18_combout\);

-- Location: LCCOMB_X72_Y26_N12
\inst|IR|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[6]~feeder_combout\ = \inst|BUS[6]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[6]~19_combout\,
	combout => \inst|IR|R[6]~feeder_combout\);

-- Location: LCCOMB_X71_Y26_N28
\inst|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~41_combout\ = (\inst|_~53_combout\ & (\inst|SelMUX[3]~4_combout\ & (\inst|SelMUX[2]~3_combout\ & !\inst|SelMUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~53_combout\,
	datab => \inst|SelMUX[3]~4_combout\,
	datac => \inst|SelMUX[2]~3_combout\,
	datad => \inst|SelMUX[0]~0_combout\,
	combout => \inst|_~41_combout\);

-- Location: FF_X72_Y26_N13
\inst|IR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(6));

-- Location: LCCOMB_X70_Y28_N6
\inst|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~25_combout\ = (\inst|SelBus[1]~2_combout\ & (\inst|SelBus[2]~1_combout\ & (!\inst|SelBus[4]~3_combout\ & \inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~25_combout\);

-- Location: LCCOMB_X71_Y26_N14
\inst|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~40_combout\ = (\inst|_~53_combout\ & (\inst|SelMUX[3]~4_combout\ & (\inst|SelMUX[2]~3_combout\ & \inst|SelMUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~53_combout\,
	datab => \inst|SelMUX[3]~4_combout\,
	datac => \inst|SelMUX[2]~3_combout\,
	datad => \inst|SelMUX[0]~0_combout\,
	combout => \inst|_~40_combout\);

-- Location: FF_X72_Y28_N25
\inst|BP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(6));

-- Location: LCCOMB_X72_Y28_N24
\inst|BUS[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~12_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(6)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR|R\(6),
	datab => \inst|_~25_combout\,
	datac => \inst|BP|R\(6),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[6]~12_combout\);

-- Location: LCCOMB_X71_Y26_N4
\inst|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~36_combout\ = (!\inst|SelMUX[4]~2_combout\ & (!\inst|SelMUX[0]~0_combout\ & (!\inst|SelMUX[1]~1_combout\ & \inst|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~2_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[1]~1_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~36_combout\);

-- Location: LCCOMB_X74_Y25_N30
\inst|Ax|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~3_combout\ = (\inst|_~36_combout\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|_~3_combout\);

-- Location: LCCOMB_X74_Y25_N8
\inst|Ax|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~0_combout\ = (\inst|_~36_combout\ & (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|_~0_combout\);

-- Location: LCCOMB_X74_Y25_N20
\inst|Ax|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~1_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))) # (!\inst|_~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|R[7]~1_combout\);

-- Location: LCCOMB_X75_Y25_N8
\inst|Ax|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~1_cout\ = CARRY(\inst|Ax|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(0),
	datad => VCC,
	cout => \inst|Ax|op_2~1_cout\);

-- Location: LCCOMB_X75_Y25_N10
\inst|Ax|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~2_combout\ = (\inst|Ax|R\(1) & (\inst|Ax|op_2~1_cout\ & VCC)) # (!\inst|Ax|R\(1) & (!\inst|Ax|op_2~1_cout\))
-- \inst|Ax|op_2~3\ = CARRY((!\inst|Ax|R\(1) & !\inst|Ax|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(1),
	datad => VCC,
	cin => \inst|Ax|op_2~1_cout\,
	combout => \inst|Ax|op_2~2_combout\,
	cout => \inst|Ax|op_2~3\);

-- Location: LCCOMB_X74_Y25_N18
\inst|Ax|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~2_combout\ = (\inst|_~36_combout\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|_~2_combout\);

-- Location: LCCOMB_X75_Y25_N30
\inst|Ax|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~28_combout\ = (\inst|Ax|R\(1) & ((\inst|Ax|R[7]~1_combout\) # ((\inst|Ax|op_2~2_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R\(1) & (((\inst|Ax|op_2~2_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(1),
	datab => \inst|Ax|R[7]~1_combout\,
	datac => \inst|Ax|op_2~2_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[1]~28_combout\);

-- Location: LCCOMB_X72_Y25_N14
\inst|Ax|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~0_combout\ = (\inst|Ax|R\(0) & (\inst|Ax|R\(1) $ (VCC))) # (!\inst|Ax|R\(0) & (\inst|Ax|R\(1) & VCC))
-- \inst|Ax|op_1~1\ = CARRY((\inst|Ax|R\(0) & \inst|Ax|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(0),
	datab => \inst|Ax|R\(1),
	datad => VCC,
	combout => \inst|Ax|op_1~0_combout\,
	cout => \inst|Ax|op_1~1\);

-- Location: LCCOMB_X74_Y25_N12
\inst|Ax|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~6_combout\ = (\inst|_~36_combout\ & (\Cmd[0]~input_o\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	combout => \inst|Ax|R[5]~6_combout\);

-- Location: LCCOMB_X74_Y25_N22
\inst|Ax|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~3_combout\ = (\inst|_~36_combout\ & (!\Cmd[0]~input_o\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	combout => \inst|Ax|R[6]~3_combout\);

-- Location: LCCOMB_X72_Y25_N0
\inst|Ax|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~27_combout\ = (\inst|Ax|R[5]~6_combout\ & ((\inst|Ax|R\(2)) # ((\inst|Ax|R[6]~3_combout\ & \inst|Ax|R\(0))))) # (!\inst|Ax|R[5]~6_combout\ & (((\inst|Ax|R[6]~3_combout\ & \inst|Ax|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[5]~6_combout\,
	datab => \inst|Ax|R\(2),
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[1]~27_combout\);

-- Location: LCCOMB_X72_Y25_N6
\inst|Ax|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~29_combout\ = (\inst|Ax|R[1]~28_combout\) # ((\inst|Ax|R[1]~27_combout\) # ((\inst|Ax|op_1~0_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[1]~28_combout\,
	datab => \inst|Ax|op_1~0_combout\,
	datac => \inst|Ax|_~0_combout\,
	datad => \inst|Ax|R[1]~27_combout\,
	combout => \inst|Ax|R[1]~29_combout\);

-- Location: LCCOMB_X72_Y25_N28
\inst|Ax|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~30_combout\ = (\inst|Ax|R[1]~29_combout\) # ((\inst|BUS[1]~64_combout\ & \inst|Ax|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[1]~29_combout\,
	datab => \inst|BUS[1]~64_combout\,
	datac => \inst|Ax|_~3_combout\,
	combout => \inst|Ax|R[1]~30_combout\);

-- Location: FF_X72_Y25_N29
\inst|Ax|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(1));

-- Location: LCCOMB_X74_Y25_N4
\inst|Ax|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~31_combout\ = (\inst|_~36_combout\ & (\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	combout => \inst|Ax|R[0]~31_combout\);

-- Location: LCCOMB_X74_Y25_N14
\inst|Ax|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~32_combout\ = (\inst|Ax|R\(1) & ((\inst|Ax|R[5]~6_combout\) # ((!\inst|Ax|R\(0) & \inst|Ax|R[0]~31_combout\)))) # (!\inst|Ax|R\(1) & (!\inst|Ax|R\(0) & (\inst|Ax|R[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(1),
	datab => \inst|Ax|R\(0),
	datac => \inst|Ax|R[0]~31_combout\,
	datad => \inst|Ax|R[5]~6_combout\,
	combout => \inst|Ax|R[0]~32_combout\);

-- Location: LCCOMB_X74_Y25_N0
\inst|Ax|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~4_combout\ = (\inst|_~36_combout\ & (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|_~4_combout\);

-- Location: LCCOMB_X74_Y25_N10
\inst|Ax|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~1_combout\ = (\inst|_~36_combout\ & (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~36_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|Ax|_~1_combout\);

-- Location: LCCOMB_X72_Y25_N24
\inst|Ax|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~10_combout\ = (\inst|Ax|R\(6) & (!\inst|Ax|op_1~9\)) # (!\inst|Ax|R\(6) & ((\inst|Ax|op_1~9\) # (GND)))
-- \inst|Ax|op_1~11\ = CARRY((!\inst|Ax|op_1~9\) # (!\inst|Ax|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datad => VCC,
	cin => \inst|Ax|op_1~9\,
	combout => \inst|Ax|op_1~10_combout\,
	cout => \inst|Ax|op_1~11\);

-- Location: LCCOMB_X72_Y25_N26
\inst|Ax|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~12_combout\ = \inst|Ax|R\(7) $ (!\inst|Ax|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(7),
	cin => \inst|Ax|op_1~11\,
	combout => \inst|Ax|op_1~12_combout\);

-- Location: LCCOMB_X74_Y25_N28
\inst|Ax|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~0_combout\ = (\inst|Ax|_~1_combout\ & ((\inst|Ax|R\(0)) # ((\inst|Ax|_~0_combout\ & \inst|Ax|op_1~12_combout\)))) # (!\inst|Ax|_~1_combout\ & (\inst|Ax|_~0_combout\ & (\inst|Ax|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|_~1_combout\,
	datab => \inst|Ax|_~0_combout\,
	datac => \inst|Ax|op_1~12_combout\,
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[7]~0_combout\);

-- Location: LCCOMB_X75_Y25_N12
\inst|Ax|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~4_combout\ = (\inst|Ax|R\(2) & ((GND) # (!\inst|Ax|op_2~3\))) # (!\inst|Ax|R\(2) & (\inst|Ax|op_2~3\ $ (GND)))
-- \inst|Ax|op_2~5\ = CARRY((\inst|Ax|R\(2)) # (!\inst|Ax|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(2),
	datad => VCC,
	cin => \inst|Ax|op_2~3\,
	combout => \inst|Ax|op_2~4_combout\,
	cout => \inst|Ax|op_2~5\);

-- Location: LCCOMB_X75_Y25_N14
\inst|Ax|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~6_combout\ = (\inst|Ax|R\(3) & (\inst|Ax|op_2~5\ & VCC)) # (!\inst|Ax|R\(3) & (!\inst|Ax|op_2~5\))
-- \inst|Ax|op_2~7\ = CARRY((!\inst|Ax|R\(3) & !\inst|Ax|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(3),
	datad => VCC,
	cin => \inst|Ax|op_2~5\,
	combout => \inst|Ax|op_2~6_combout\,
	cout => \inst|Ax|op_2~7\);

-- Location: LCCOMB_X75_Y25_N16
\inst|Ax|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~8_combout\ = (\inst|Ax|R\(4) & ((GND) # (!\inst|Ax|op_2~7\))) # (!\inst|Ax|R\(4) & (\inst|Ax|op_2~7\ $ (GND)))
-- \inst|Ax|op_2~9\ = CARRY((\inst|Ax|R\(4)) # (!\inst|Ax|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(4),
	datad => VCC,
	cin => \inst|Ax|op_2~7\,
	combout => \inst|Ax|op_2~8_combout\,
	cout => \inst|Ax|op_2~9\);

-- Location: LCCOMB_X75_Y25_N18
\inst|Ax|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~10_combout\ = (\inst|Ax|R\(5) & (\inst|Ax|op_2~9\ & VCC)) # (!\inst|Ax|R\(5) & (!\inst|Ax|op_2~9\))
-- \inst|Ax|op_2~11\ = CARRY((!\inst|Ax|R\(5) & !\inst|Ax|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(5),
	datad => VCC,
	cin => \inst|Ax|op_2~9\,
	combout => \inst|Ax|op_2~10_combout\,
	cout => \inst|Ax|op_2~11\);

-- Location: LCCOMB_X75_Y25_N20
\inst|Ax|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~12_combout\ = (\inst|Ax|R\(6) & ((GND) # (!\inst|Ax|op_2~11\))) # (!\inst|Ax|R\(6) & (\inst|Ax|op_2~11\ $ (GND)))
-- \inst|Ax|op_2~13\ = CARRY((\inst|Ax|R\(6)) # (!\inst|Ax|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datad => VCC,
	cin => \inst|Ax|op_2~11\,
	combout => \inst|Ax|op_2~12_combout\,
	cout => \inst|Ax|op_2~13\);

-- Location: LCCOMB_X75_Y25_N22
\inst|Ax|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~14_combout\ = \inst|Ax|op_2~13\ $ (!\inst|Ax|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ax|R\(7),
	cin => \inst|Ax|op_2~13\,
	combout => \inst|Ax|op_2~14_combout\);

-- Location: LCCOMB_X75_Y25_N6
\inst|Ax|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~2_combout\ = (\inst|Ax|op_2~14_combout\ & ((\inst|Ax|_~2_combout\) # ((\inst|Ax|R[7]~1_combout\ & \inst|Ax|R\(7))))) # (!\inst|Ax|op_2~14_combout\ & (\inst|Ax|R[7]~1_combout\ & (\inst|Ax|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_2~14_combout\,
	datab => \inst|Ax|R[7]~1_combout\,
	datac => \inst|Ax|R\(7),
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[7]~2_combout\);

-- Location: LCCOMB_X74_Y25_N24
\inst|Ax|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~4_combout\ = (\inst|Ax|R[7]~0_combout\) # ((\inst|Ax|R[7]~2_combout\) # ((\inst|Ax|R\(6) & \inst|Ax|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|Ax|R[7]~0_combout\,
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R[7]~2_combout\,
	combout => \inst|Ax|R[7]~4_combout\);

-- Location: LCCOMB_X75_Y25_N0
\inst|Ax|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~5_combout\ = (\inst|Ax|R[7]~4_combout\) # ((\inst|BUS[7]~10_combout\ & \inst|Ax|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R[7]~4_combout\,
	datac => \inst|BUS[7]~10_combout\,
	datad => \inst|Ax|_~3_combout\,
	combout => \inst|Ax|R[7]~5_combout\);

-- Location: FF_X75_Y25_N1
\inst|Ax|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(7));

-- Location: LCCOMB_X74_Y25_N6
\inst|Ax|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~33_combout\ = (\inst|Ax|_~4_combout\ & ((\inst|Ax|R\(7)) # ((\inst|Ax|R[7]~1_combout\ & \inst|Ax|R\(0))))) # (!\inst|Ax|_~4_combout\ & (\inst|Ax|R[7]~1_combout\ & ((\inst|Ax|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|_~4_combout\,
	datab => \inst|Ax|R[7]~1_combout\,
	datac => \inst|Ax|R\(7),
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[0]~33_combout\);

-- Location: LCCOMB_X74_Y25_N2
\inst|Ax|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~34_combout\ = (\inst|Ax|R[0]~32_combout\) # ((\inst|Ax|R[0]~33_combout\) # ((\inst|Ax|_~3_combout\ & \inst|BUS[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|_~3_combout\,
	datab => \inst|Ax|R[0]~32_combout\,
	datac => \inst|BUS[0]~73_combout\,
	datad => \inst|Ax|R[0]~33_combout\,
	combout => \inst|Ax|R[0]~34_combout\);

-- Location: FF_X74_Y25_N3
\inst|Ax|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(0));

-- Location: LCCOMB_X72_Y25_N16
\inst|Ax|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~2_combout\ = (\inst|Ax|R\(2) & (!\inst|Ax|op_1~1\)) # (!\inst|Ax|R\(2) & ((\inst|Ax|op_1~1\) # (GND)))
-- \inst|Ax|op_1~3\ = CARRY((!\inst|Ax|op_1~1\) # (!\inst|Ax|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(2),
	datad => VCC,
	cin => \inst|Ax|op_1~1\,
	combout => \inst|Ax|op_1~2_combout\,
	cout => \inst|Ax|op_1~3\);

-- Location: LCCOMB_X75_Y25_N4
\inst|Ax|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~24_combout\ = (\inst|Ax|op_2~4_combout\ & ((\inst|Ax|_~2_combout\) # ((\inst|Ax|R[7]~1_combout\ & \inst|Ax|R\(2))))) # (!\inst|Ax|op_2~4_combout\ & (\inst|Ax|R[7]~1_combout\ & (\inst|Ax|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_2~4_combout\,
	datab => \inst|Ax|R[7]~1_combout\,
	datac => \inst|Ax|R\(2),
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[2]~24_combout\);

-- Location: LCCOMB_X71_Y25_N30
\inst|Ax|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~25_combout\ = (\inst|Ax|R[2]~24_combout\) # ((\inst|Ax|op_1~2_combout\ & \inst|Ax|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_1~2_combout\,
	datac => \inst|Ax|R[2]~24_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[2]~25_combout\);

-- Location: LCCOMB_X72_Y25_N8
\inst|Ax|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~23_combout\ = (\inst|Ax|R[5]~6_combout\ & ((\inst|Ax|R\(3)) # ((\inst|Ax|R\(1) & \inst|Ax|R[6]~3_combout\)))) # (!\inst|Ax|R[5]~6_combout\ & (\inst|Ax|R\(1) & (\inst|Ax|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[5]~6_combout\,
	datab => \inst|Ax|R\(1),
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R\(3),
	combout => \inst|Ax|R[2]~23_combout\);

-- Location: LCCOMB_X71_Y25_N20
\inst|Ax|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~26_combout\ = (\inst|Ax|R[2]~25_combout\) # ((\inst|Ax|R[2]~23_combout\) # ((\inst|BUS[2]~55_combout\ & \inst|Ax|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[2]~25_combout\,
	datab => \inst|Ax|R[2]~23_combout\,
	datac => \inst|BUS[2]~55_combout\,
	datad => \inst|Ax|_~3_combout\,
	combout => \inst|Ax|R[2]~26_combout\);

-- Location: FF_X71_Y25_N21
\inst|Ax|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(2));

-- Location: LCCOMB_X72_Y25_N18
\inst|Ax|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~4_combout\ = (\inst|Ax|R\(3) & (\inst|Ax|op_1~3\ $ (GND))) # (!\inst|Ax|R\(3) & (!\inst|Ax|op_1~3\ & VCC))
-- \inst|Ax|op_1~5\ = CARRY((\inst|Ax|R\(3) & !\inst|Ax|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(3),
	datad => VCC,
	cin => \inst|Ax|op_1~3\,
	combout => \inst|Ax|op_1~4_combout\,
	cout => \inst|Ax|op_1~5\);

-- Location: LCCOMB_X72_Y25_N4
\inst|Ax|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~19_combout\ = (\inst|Ax|R\(4) & ((\inst|Ax|R[5]~6_combout\) # ((\inst|Ax|R\(2) & \inst|Ax|R[6]~3_combout\)))) # (!\inst|Ax|R\(4) & (\inst|Ax|R\(2) & (\inst|Ax|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(4),
	datab => \inst|Ax|R\(2),
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R[5]~6_combout\,
	combout => \inst|Ax|R[3]~19_combout\);

-- Location: LCCOMB_X75_Y25_N26
\inst|Ax|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~20_combout\ = (\inst|Ax|op_2~6_combout\ & ((\inst|Ax|_~2_combout\) # ((\inst|Ax|R[7]~1_combout\ & \inst|Ax|R\(3))))) # (!\inst|Ax|op_2~6_combout\ & (\inst|Ax|R[7]~1_combout\ & (\inst|Ax|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_2~6_combout\,
	datab => \inst|Ax|R[7]~1_combout\,
	datac => \inst|Ax|R\(3),
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[3]~20_combout\);

-- Location: LCCOMB_X72_Y25_N30
\inst|Ax|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~21_combout\ = (\inst|Ax|R[3]~19_combout\) # ((\inst|Ax|R[3]~20_combout\) # ((\inst|Ax|_~0_combout\ & \inst|Ax|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|_~0_combout\,
	datab => \inst|Ax|op_1~4_combout\,
	datac => \inst|Ax|R[3]~19_combout\,
	datad => \inst|Ax|R[3]~20_combout\,
	combout => \inst|Ax|R[3]~21_combout\);

-- Location: LCCOMB_X71_Y24_N16
\inst|Ax|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~22_combout\ = (\inst|Ax|R[3]~21_combout\) # ((\inst|BUS[3]~46_combout\ & \inst|Ax|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~46_combout\,
	datab => \inst|Ax|_~3_combout\,
	datac => \inst|Ax|R[3]~21_combout\,
	combout => \inst|Ax|R[3]~22_combout\);

-- Location: FF_X71_Y24_N17
\inst|Ax|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(3));

-- Location: LCCOMB_X72_Y25_N20
\inst|Ax|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~6_combout\ = (\inst|Ax|R\(4) & (!\inst|Ax|op_1~5\)) # (!\inst|Ax|R\(4) & ((\inst|Ax|op_1~5\) # (GND)))
-- \inst|Ax|op_1~7\ = CARRY((!\inst|Ax|op_1~5\) # (!\inst|Ax|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(4),
	datad => VCC,
	cin => \inst|Ax|op_1~5\,
	combout => \inst|Ax|op_1~6_combout\,
	cout => \inst|Ax|op_1~7\);

-- Location: LCCOMB_X75_Y25_N24
\inst|Ax|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~16_combout\ = (\inst|Ax|R[7]~1_combout\ & ((\inst|Ax|R\(4)) # ((\inst|Ax|_~2_combout\ & \inst|Ax|op_2~8_combout\)))) # (!\inst|Ax|R[7]~1_combout\ & (\inst|Ax|_~2_combout\ & ((\inst|Ax|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[7]~1_combout\,
	datab => \inst|Ax|_~2_combout\,
	datac => \inst|Ax|R\(4),
	datad => \inst|Ax|op_2~8_combout\,
	combout => \inst|Ax|R[4]~16_combout\);

-- Location: LCCOMB_X72_Y25_N2
\inst|Ax|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~15_combout\ = (\inst|Ax|R[5]~6_combout\ & ((\inst|Ax|R\(5)) # ((\inst|Ax|R[6]~3_combout\ & \inst|Ax|R\(3))))) # (!\inst|Ax|R[5]~6_combout\ & (((\inst|Ax|R[6]~3_combout\ & \inst|Ax|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[5]~6_combout\,
	datab => \inst|Ax|R\(5),
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R\(3),
	combout => \inst|Ax|R[4]~15_combout\);

-- Location: LCCOMB_X71_Y25_N24
\inst|Ax|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~17_combout\ = (\inst|Ax|R[4]~16_combout\) # ((\inst|Ax|R[4]~15_combout\) # ((\inst|Ax|op_1~6_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_1~6_combout\,
	datab => \inst|Ax|_~0_combout\,
	datac => \inst|Ax|R[4]~16_combout\,
	datad => \inst|Ax|R[4]~15_combout\,
	combout => \inst|Ax|R[4]~17_combout\);

-- Location: LCCOMB_X71_Y25_N14
\inst|Ax|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~18_combout\ = (\inst|Ax|R[4]~17_combout\) # ((\inst|BUS[4]~37_combout\ & \inst|Ax|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R[4]~17_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|Ax|_~3_combout\,
	combout => \inst|Ax|R[4]~18_combout\);

-- Location: FF_X71_Y25_N15
\inst|Ax|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(4));

-- Location: LCCOMB_X72_Y25_N22
\inst|Ax|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~8_combout\ = (\inst|Ax|R\(5) & (\inst|Ax|op_1~7\ $ (GND))) # (!\inst|Ax|R\(5) & (!\inst|Ax|op_1~7\ & VCC))
-- \inst|Ax|op_1~9\ = CARRY((\inst|Ax|R\(5) & !\inst|Ax|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(5),
	datad => VCC,
	cin => \inst|Ax|op_1~7\,
	combout => \inst|Ax|op_1~8_combout\,
	cout => \inst|Ax|op_1~9\);

-- Location: LCCOMB_X75_Y25_N2
\inst|Ax|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~12_combout\ = (\inst|Ax|op_2~10_combout\ & ((\inst|Ax|_~2_combout\) # ((\inst|Ax|R\(5) & \inst|Ax|R[7]~1_combout\)))) # (!\inst|Ax|op_2~10_combout\ & (((\inst|Ax|R\(5) & \inst|Ax|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_2~10_combout\,
	datab => \inst|Ax|_~2_combout\,
	datac => \inst|Ax|R\(5),
	datad => \inst|Ax|R[7]~1_combout\,
	combout => \inst|Ax|R[5]~12_combout\);

-- Location: LCCOMB_X71_Y25_N22
\inst|Ax|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~13_combout\ = (\inst|Ax|R[5]~12_combout\) # ((\inst|Ax|op_1~8_combout\ & \inst|Ax|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_1~8_combout\,
	datac => \inst|Ax|R[5]~12_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[5]~13_combout\);

-- Location: LCCOMB_X72_Y25_N12
\inst|Ax|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~11_combout\ = (\inst|Ax|R[5]~6_combout\ & ((\inst|Ax|R\(6)) # ((\inst|Ax|R\(4) & \inst|Ax|R[6]~3_combout\)))) # (!\inst|Ax|R[5]~6_combout\ & (\inst|Ax|R\(4) & (\inst|Ax|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[5]~6_combout\,
	datab => \inst|Ax|R\(4),
	datac => \inst|Ax|R[6]~3_combout\,
	datad => \inst|Ax|R\(6),
	combout => \inst|Ax|R[5]~11_combout\);

-- Location: LCCOMB_X71_Y25_N8
\inst|Ax|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~14_combout\ = (\inst|Ax|R[5]~13_combout\) # ((\inst|Ax|R[5]~11_combout\) # ((\inst|BUS[5]~28_combout\ & \inst|Ax|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[5]~13_combout\,
	datab => \inst|Ax|R[5]~11_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|Ax|_~3_combout\,
	combout => \inst|Ax|R[5]~14_combout\);

-- Location: FF_X71_Y25_N9
\inst|Ax|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(5));

-- Location: LCCOMB_X75_Y25_N28
\inst|Ax|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~8_combout\ = (\inst|Ax|R[7]~1_combout\ & ((\inst|Ax|R\(6)) # ((\inst|Ax|_~2_combout\ & \inst|Ax|op_2~12_combout\)))) # (!\inst|Ax|R[7]~1_combout\ & (\inst|Ax|_~2_combout\ & ((\inst|Ax|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[7]~1_combout\,
	datab => \inst|Ax|_~2_combout\,
	datac => \inst|Ax|R\(6),
	datad => \inst|Ax|op_2~12_combout\,
	combout => \inst|Ax|R[6]~8_combout\);

-- Location: LCCOMB_X74_Y25_N26
\inst|Ax|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~9_combout\ = (\inst|Ax|R[6]~8_combout\) # ((\inst|Ax|op_1~10_combout\ & \inst|Ax|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|op_1~10_combout\,
	datac => \inst|Ax|_~0_combout\,
	datad => \inst|Ax|R[6]~8_combout\,
	combout => \inst|Ax|R[6]~9_combout\);

-- Location: LCCOMB_X72_Y25_N10
\inst|Ax|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~7_combout\ = (\inst|Ax|R[6]~3_combout\ & ((\inst|Ax|R\(5)) # ((\inst|Ax|R\(7) & \inst|Ax|R[5]~6_combout\)))) # (!\inst|Ax|R[6]~3_combout\ & (\inst|Ax|R\(7) & ((\inst|Ax|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~3_combout\,
	datab => \inst|Ax|R\(7),
	datac => \inst|Ax|R\(5),
	datad => \inst|Ax|R[5]~6_combout\,
	combout => \inst|Ax|R[6]~7_combout\);

-- Location: LCCOMB_X74_Y25_N16
\inst|Ax|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~10_combout\ = (\inst|Ax|R[6]~9_combout\) # ((\inst|Ax|R[6]~7_combout\) # ((\inst|Ax|_~3_combout\ & \inst|BUS[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~9_combout\,
	datab => \inst|Ax|R[6]~7_combout\,
	datac => \inst|Ax|_~3_combout\,
	datad => \inst|BUS[6]~19_combout\,
	combout => \inst|Ax|R[6]~10_combout\);

-- Location: FF_X74_Y25_N17
\inst|Ax|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(6));

-- Location: LCCOMB_X70_Y28_N20
\inst|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~26_combout\ = (!\inst|SelBus[2]~1_combout\ & (!\inst|SelBus[1]~2_combout\ & !\inst|SelBus[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|SelBus[1]~2_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~26_combout\);

-- Location: LCCOMB_X71_Y25_N26
\inst|BUS[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~13_combout\ = (\inst|Ax|R\(6) & (\inst|_~26_combout\ & \inst|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|_~26_combout\,
	datad => \inst|_~51_combout\,
	combout => \inst|BUS[6]~13_combout\);

-- Location: LCCOMB_X70_Y28_N12
\inst|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~28_combout\ = (\inst|_~26_combout\ & (\inst|SelBus[4]~3_combout\ & \inst|SelBus[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~26_combout\,
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|_~28_combout\);

-- Location: LCCOMB_X70_Y26_N20
\inst|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~42_combout\ = (!\inst|SelMUX[1]~1_combout\ & (\inst|SelMUX[0]~0_combout\ & (\inst|SelMUX[4]~2_combout\ & \inst|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[1]~1_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[4]~2_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~42_combout\);

-- Location: LCCOMB_X66_Y24_N14
\inst|SI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~3_combout\ = (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|_~3_combout\);

-- Location: LCCOMB_X66_Y24_N8
\inst|SI|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~1_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\inst|_~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|R[7]~1_combout\);

-- Location: LCCOMB_X66_Y24_N22
\inst|SI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|_~2_combout\);

-- Location: LCCOMB_X66_Y24_N0
\inst|SI|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~6_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|R[5]~6_combout\);

-- Location: LCCOMB_X66_Y24_N4
\inst|SI|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|R[0]~31_combout\);

-- Location: LCCOMB_X67_Y24_N16
\inst|SI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~32_combout\ = (\inst|SI|R[5]~6_combout\ & ((\inst|SI|R\(1)) # ((\inst|SI|R[0]~31_combout\ & !\inst|SI|R\(0))))) # (!\inst|SI|R[5]~6_combout\ & (((\inst|SI|R[0]~31_combout\ & !\inst|SI|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[5]~6_combout\,
	datab => \inst|SI|R\(1),
	datac => \inst|SI|R[0]~31_combout\,
	datad => \inst|SI|R\(0),
	combout => \inst|SI|R[0]~32_combout\);

-- Location: LCCOMB_X65_Y24_N10
\inst|SI|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~10_combout\ = (\inst|SI|R\(6) & (!\inst|SI|op_1~9\)) # (!\inst|SI|R\(6) & ((\inst|SI|op_1~9\) # (GND)))
-- \inst|SI|op_1~11\ = CARRY((!\inst|SI|op_1~9\) # (!\inst|SI|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(6),
	datad => VCC,
	cin => \inst|SI|op_1~9\,
	combout => \inst|SI|op_1~10_combout\,
	cout => \inst|SI|op_1~11\);

-- Location: LCCOMB_X65_Y24_N12
\inst|SI|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~12_combout\ = \inst|SI|op_1~11\ $ (!\inst|SI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SI|R\(7),
	cin => \inst|SI|op_1~11\,
	combout => \inst|SI|op_1~12_combout\);

-- Location: LCCOMB_X66_Y24_N28
\inst|SI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|_~0_combout\);

-- Location: LCCOMB_X66_Y24_N2
\inst|SI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|_~1_combout\);

-- Location: LCCOMB_X66_Y24_N12
\inst|SI|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~0_combout\ = (\inst|SI|op_1~12_combout\ & ((\inst|SI|_~0_combout\) # ((\inst|SI|R\(0) & \inst|SI|_~1_combout\)))) # (!\inst|SI|op_1~12_combout\ & (((\inst|SI|R\(0) & \inst|SI|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|op_1~12_combout\,
	datab => \inst|SI|_~0_combout\,
	datac => \inst|SI|R\(0),
	datad => \inst|SI|_~1_combout\,
	combout => \inst|SI|R[7]~0_combout\);

-- Location: LCCOMB_X64_Y24_N16
\inst|SI|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~8_combout\ = (\inst|SI|R\(4) & ((GND) # (!\inst|SI|op_2~7\))) # (!\inst|SI|R\(4) & (\inst|SI|op_2~7\ $ (GND)))
-- \inst|SI|op_2~9\ = CARRY((\inst|SI|R\(4)) # (!\inst|SI|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datad => VCC,
	cin => \inst|SI|op_2~7\,
	combout => \inst|SI|op_2~8_combout\,
	cout => \inst|SI|op_2~9\);

-- Location: LCCOMB_X64_Y24_N18
\inst|SI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~10_combout\ = (\inst|SI|R\(5) & (\inst|SI|op_2~9\ & VCC)) # (!\inst|SI|R\(5) & (!\inst|SI|op_2~9\))
-- \inst|SI|op_2~11\ = CARRY((!\inst|SI|R\(5) & !\inst|SI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(5),
	datad => VCC,
	cin => \inst|SI|op_2~9\,
	combout => \inst|SI|op_2~10_combout\,
	cout => \inst|SI|op_2~11\);

-- Location: LCCOMB_X64_Y24_N20
\inst|SI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~12_combout\ = (\inst|SI|R\(6) & ((GND) # (!\inst|SI|op_2~11\))) # (!\inst|SI|R\(6) & (\inst|SI|op_2~11\ $ (GND)))
-- \inst|SI|op_2~13\ = CARRY((\inst|SI|R\(6)) # (!\inst|SI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(6),
	datad => VCC,
	cin => \inst|SI|op_2~11\,
	combout => \inst|SI|op_2~12_combout\,
	cout => \inst|SI|op_2~13\);

-- Location: LCCOMB_X64_Y24_N22
\inst|SI|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~14_combout\ = \inst|SI|op_2~13\ $ (!\inst|SI|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SI|R\(7),
	cin => \inst|SI|op_2~13\,
	combout => \inst|SI|op_2~14_combout\);

-- Location: LCCOMB_X64_Y24_N28
\inst|SI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~2_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(7)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~14_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|_~2_combout\ & (\inst|SI|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|op_2~14_combout\,
	datad => \inst|SI|R\(7),
	combout => \inst|SI|R[7]~2_combout\);

-- Location: LCCOMB_X66_Y24_N30
\inst|SI|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~3_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|R[6]~3_combout\);

-- Location: LCCOMB_X66_Y24_N24
\inst|SI|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~4_combout\ = (\inst|SI|R[7]~0_combout\) # ((\inst|SI|R[7]~2_combout\) # ((\inst|SI|R[6]~3_combout\ & \inst|SI|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~0_combout\,
	datab => \inst|SI|R[7]~2_combout\,
	datac => \inst|SI|R[6]~3_combout\,
	datad => \inst|SI|R\(6),
	combout => \inst|SI|R[7]~4_combout\);

-- Location: LCCOMB_X67_Y24_N20
\inst|SI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~5_combout\ = (\inst|SI|R[7]~4_combout\) # ((\inst|BUS[7]~10_combout\ & \inst|SI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R[7]~4_combout\,
	datac => \inst|BUS[7]~10_combout\,
	datad => \inst|SI|_~3_combout\,
	combout => \inst|SI|R[7]~5_combout\);

-- Location: FF_X67_Y24_N21
\inst|SI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(7));

-- Location: LCCOMB_X66_Y24_N26
\inst|SI|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~4_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~42_combout\,
	combout => \inst|SI|_~4_combout\);

-- Location: LCCOMB_X67_Y24_N14
\inst|SI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~33_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(0)) # ((\inst|SI|R\(7) & \inst|SI|_~4_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|R\(7) & (\inst|SI|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|R\(7),
	datac => \inst|SI|_~4_combout\,
	datad => \inst|SI|R\(0),
	combout => \inst|SI|R[0]~33_combout\);

-- Location: LCCOMB_X67_Y24_N24
\inst|SI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~34_combout\ = (\inst|SI|R[0]~32_combout\) # ((\inst|SI|R[0]~33_combout\) # ((\inst|BUS[0]~73_combout\ & \inst|SI|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~73_combout\,
	datab => \inst|SI|R[0]~32_combout\,
	datac => \inst|SI|R[0]~33_combout\,
	datad => \inst|SI|_~3_combout\,
	combout => \inst|SI|R[0]~34_combout\);

-- Location: FF_X67_Y24_N25
\inst|SI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(0));

-- Location: LCCOMB_X64_Y24_N8
\inst|SI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~1_cout\ = CARRY(\inst|SI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(0),
	datad => VCC,
	cout => \inst|SI|op_2~1_cout\);

-- Location: LCCOMB_X64_Y24_N10
\inst|SI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~2_combout\ = (\inst|SI|R\(1) & (\inst|SI|op_2~1_cout\ & VCC)) # (!\inst|SI|R\(1) & (!\inst|SI|op_2~1_cout\))
-- \inst|SI|op_2~3\ = CARRY((!\inst|SI|R\(1) & !\inst|SI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(1),
	datad => VCC,
	cin => \inst|SI|op_2~1_cout\,
	combout => \inst|SI|op_2~2_combout\,
	cout => \inst|SI|op_2~3\);

-- Location: LCCOMB_X64_Y24_N0
\inst|SI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~28_combout\ = (\inst|SI|R\(1) & ((\inst|SI|R[7]~1_combout\) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~2_combout\)))) # (!\inst|SI|R\(1) & (\inst|SI|_~2_combout\ & ((\inst|SI|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(1),
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|R[7]~1_combout\,
	datad => \inst|SI|op_2~2_combout\,
	combout => \inst|SI|R[1]~28_combout\);

-- Location: LCCOMB_X65_Y24_N0
\inst|SI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~0_combout\ = (\inst|SI|R\(1) & (\inst|SI|R\(0) $ (VCC))) # (!\inst|SI|R\(1) & (\inst|SI|R\(0) & VCC))
-- \inst|SI|op_1~1\ = CARRY((\inst|SI|R\(1) & \inst|SI|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(1),
	datab => \inst|SI|R\(0),
	datad => VCC,
	combout => \inst|SI|op_1~0_combout\,
	cout => \inst|SI|op_1~1\);

-- Location: LCCOMB_X66_Y24_N10
\inst|SI|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~27_combout\ = (\inst|SI|R[6]~3_combout\ & ((\inst|SI|R\(0)) # ((\inst|SI|R[5]~6_combout\ & \inst|SI|R\(2))))) # (!\inst|SI|R[6]~3_combout\ & (\inst|SI|R[5]~6_combout\ & ((\inst|SI|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~3_combout\,
	datab => \inst|SI|R[5]~6_combout\,
	datac => \inst|SI|R\(0),
	datad => \inst|SI|R\(2),
	combout => \inst|SI|R[1]~27_combout\);

-- Location: LCCOMB_X65_Y24_N18
\inst|SI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~29_combout\ = (\inst|SI|R[1]~28_combout\) # ((\inst|SI|R[1]~27_combout\) # ((\inst|SI|op_1~0_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[1]~28_combout\,
	datab => \inst|SI|op_1~0_combout\,
	datac => \inst|SI|R[1]~27_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[1]~29_combout\);

-- Location: LCCOMB_X65_Y24_N20
\inst|SI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~30_combout\ = (\inst|SI|R[1]~29_combout\) # ((\inst|BUS[1]~64_combout\ & \inst|SI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[1]~64_combout\,
	datac => \inst|SI|_~3_combout\,
	datad => \inst|SI|R[1]~29_combout\,
	combout => \inst|SI|R[1]~30_combout\);

-- Location: FF_X65_Y24_N21
\inst|SI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(1));

-- Location: LCCOMB_X64_Y24_N12
\inst|SI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~4_combout\ = (\inst|SI|R\(2) & ((GND) # (!\inst|SI|op_2~3\))) # (!\inst|SI|R\(2) & (\inst|SI|op_2~3\ $ (GND)))
-- \inst|SI|op_2~5\ = CARRY((\inst|SI|R\(2)) # (!\inst|SI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(2),
	datad => VCC,
	cin => \inst|SI|op_2~3\,
	combout => \inst|SI|op_2~4_combout\,
	cout => \inst|SI|op_2~5\);

-- Location: LCCOMB_X64_Y24_N2
\inst|SI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~24_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(2)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~4_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|_~2_combout\ & ((\inst|SI|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|R\(2),
	datad => \inst|SI|op_2~4_combout\,
	combout => \inst|SI|R[2]~24_combout\);

-- Location: LCCOMB_X65_Y24_N2
\inst|SI|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~2_combout\ = (\inst|SI|R\(2) & (!\inst|SI|op_1~1\)) # (!\inst|SI|R\(2) & ((\inst|SI|op_1~1\) # (GND)))
-- \inst|SI|op_1~3\ = CARRY((!\inst|SI|op_1~1\) # (!\inst|SI|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(2),
	datad => VCC,
	cin => \inst|SI|op_1~1\,
	combout => \inst|SI|op_1~2_combout\,
	cout => \inst|SI|op_1~3\);

-- Location: LCCOMB_X65_Y24_N22
\inst|SI|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~23_combout\ = (\inst|SI|R[6]~3_combout\ & ((\inst|SI|R\(1)) # ((\inst|SI|R[5]~6_combout\ & \inst|SI|R\(3))))) # (!\inst|SI|R[6]~3_combout\ & (\inst|SI|R[5]~6_combout\ & (\inst|SI|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~3_combout\,
	datab => \inst|SI|R[5]~6_combout\,
	datac => \inst|SI|R\(3),
	datad => \inst|SI|R\(1),
	combout => \inst|SI|R[2]~23_combout\);

-- Location: LCCOMB_X65_Y24_N24
\inst|SI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~25_combout\ = (\inst|SI|R[2]~24_combout\) # ((\inst|SI|R[2]~23_combout\) # ((\inst|SI|op_1~2_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[2]~24_combout\,
	datab => \inst|SI|op_1~2_combout\,
	datac => \inst|SI|R[2]~23_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[2]~25_combout\);

-- Location: LCCOMB_X66_Y24_N6
\inst|SI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~26_combout\ = (\inst|SI|R[2]~25_combout\) # ((\inst|BUS[2]~55_combout\ & \inst|SI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[2]~55_combout\,
	datac => \inst|SI|_~3_combout\,
	datad => \inst|SI|R[2]~25_combout\,
	combout => \inst|SI|R[2]~26_combout\);

-- Location: FF_X66_Y24_N7
\inst|SI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(2));

-- Location: LCCOMB_X64_Y24_N14
\inst|SI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~6_combout\ = (\inst|SI|R\(3) & (\inst|SI|op_2~5\ & VCC)) # (!\inst|SI|R\(3) & (!\inst|SI|op_2~5\))
-- \inst|SI|op_2~7\ = CARRY((!\inst|SI|R\(3) & !\inst|SI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(3),
	datad => VCC,
	cin => \inst|SI|op_2~5\,
	combout => \inst|SI|op_2~6_combout\,
	cout => \inst|SI|op_2~7\);

-- Location: LCCOMB_X64_Y24_N24
\inst|SI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~20_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(3)) # ((\inst|SI|op_2~6_combout\ & \inst|SI|_~2_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|op_2~6_combout\ & ((\inst|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|op_2~6_combout\,
	datac => \inst|SI|R\(3),
	datad => \inst|SI|_~2_combout\,
	combout => \inst|SI|R[3]~20_combout\);

-- Location: LCCOMB_X65_Y24_N4
\inst|SI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~4_combout\ = (\inst|SI|R\(3) & (\inst|SI|op_1~3\ $ (GND))) # (!\inst|SI|R\(3) & (!\inst|SI|op_1~3\ & VCC))
-- \inst|SI|op_1~5\ = CARRY((\inst|SI|R\(3) & !\inst|SI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(3),
	datad => VCC,
	cin => \inst|SI|op_1~3\,
	combout => \inst|SI|op_1~4_combout\,
	cout => \inst|SI|op_1~5\);

-- Location: LCCOMB_X66_Y24_N16
\inst|SI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~21_combout\ = (\inst|SI|R[3]~20_combout\) # ((\inst|SI|op_1~4_combout\ & \inst|SI|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R[3]~20_combout\,
	datac => \inst|SI|op_1~4_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[3]~21_combout\);

-- Location: LCCOMB_X67_Y24_N6
\inst|SI|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~19_combout\ = (\inst|SI|R[5]~6_combout\ & ((\inst|SI|R\(4)) # ((\inst|SI|R\(2) & \inst|SI|R[6]~3_combout\)))) # (!\inst|SI|R[5]~6_combout\ & (\inst|SI|R\(2) & ((\inst|SI|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[5]~6_combout\,
	datab => \inst|SI|R\(2),
	datac => \inst|SI|R\(4),
	datad => \inst|SI|R[6]~3_combout\,
	combout => \inst|SI|R[3]~19_combout\);

-- Location: LCCOMB_X67_Y24_N4
\inst|SI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~22_combout\ = (\inst|SI|R[3]~21_combout\) # ((\inst|SI|R[3]~19_combout\) # ((\inst|SI|_~3_combout\ & \inst|BUS[3]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[3]~21_combout\,
	datab => \inst|SI|_~3_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|SI|R[3]~19_combout\,
	combout => \inst|SI|R[3]~22_combout\);

-- Location: FF_X67_Y24_N5
\inst|SI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(3));

-- Location: LCCOMB_X64_Y24_N26
\inst|SI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~16_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(4)) # ((\inst|SI|op_2~8_combout\ & \inst|SI|_~2_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|op_2~8_combout\ & ((\inst|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|op_2~8_combout\,
	datac => \inst|SI|R\(4),
	datad => \inst|SI|_~2_combout\,
	combout => \inst|SI|R[4]~16_combout\);

-- Location: LCCOMB_X65_Y24_N14
\inst|SI|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~15_combout\ = (\inst|SI|R[6]~3_combout\ & ((\inst|SI|R\(3)) # ((\inst|SI|R[5]~6_combout\ & \inst|SI|R\(5))))) # (!\inst|SI|R[6]~3_combout\ & (((\inst|SI|R[5]~6_combout\ & \inst|SI|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~3_combout\,
	datab => \inst|SI|R\(3),
	datac => \inst|SI|R[5]~6_combout\,
	datad => \inst|SI|R\(5),
	combout => \inst|SI|R[4]~15_combout\);

-- Location: LCCOMB_X65_Y24_N6
\inst|SI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~6_combout\ = (\inst|SI|R\(4) & (!\inst|SI|op_1~5\)) # (!\inst|SI|R\(4) & ((\inst|SI|op_1~5\) # (GND)))
-- \inst|SI|op_1~7\ = CARRY((!\inst|SI|op_1~5\) # (!\inst|SI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datad => VCC,
	cin => \inst|SI|op_1~5\,
	combout => \inst|SI|op_1~6_combout\,
	cout => \inst|SI|op_1~7\);

-- Location: LCCOMB_X65_Y24_N28
\inst|SI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~17_combout\ = (\inst|SI|R[4]~16_combout\) # ((\inst|SI|R[4]~15_combout\) # ((\inst|SI|_~0_combout\ & \inst|SI|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[4]~16_combout\,
	datab => \inst|SI|_~0_combout\,
	datac => \inst|SI|R[4]~15_combout\,
	datad => \inst|SI|op_1~6_combout\,
	combout => \inst|SI|R[4]~17_combout\);

-- Location: LCCOMB_X65_Y24_N30
\inst|SI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~18_combout\ = (\inst|SI|R[4]~17_combout\) # ((\inst|SI|_~3_combout\ & \inst|BUS[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R[4]~17_combout\,
	datac => \inst|SI|_~3_combout\,
	datad => \inst|BUS[4]~37_combout\,
	combout => \inst|SI|R[4]~18_combout\);

-- Location: FF_X65_Y24_N31
\inst|SI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(4));

-- Location: LCCOMB_X65_Y24_N8
\inst|SI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~8_combout\ = (\inst|SI|R\(5) & (\inst|SI|op_1~7\ $ (GND))) # (!\inst|SI|R\(5) & (!\inst|SI|op_1~7\ & VCC))
-- \inst|SI|op_1~9\ = CARRY((\inst|SI|R\(5) & !\inst|SI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(5),
	datad => VCC,
	cin => \inst|SI|op_1~7\,
	combout => \inst|SI|op_1~8_combout\,
	cout => \inst|SI|op_1~9\);

-- Location: LCCOMB_X64_Y24_N4
\inst|SI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~12_combout\ = (\inst|SI|R[7]~1_combout\ & ((\inst|SI|R\(5)) # ((\inst|SI|op_2~10_combout\ & \inst|SI|_~2_combout\)))) # (!\inst|SI|R[7]~1_combout\ & (\inst|SI|op_2~10_combout\ & ((\inst|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~1_combout\,
	datab => \inst|SI|op_2~10_combout\,
	datac => \inst|SI|R\(5),
	datad => \inst|SI|_~2_combout\,
	combout => \inst|SI|R[5]~12_combout\);

-- Location: LCCOMB_X67_Y24_N28
\inst|SI|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~11_combout\ = (\inst|SI|R[5]~6_combout\ & ((\inst|SI|R\(6)) # ((\inst|SI|R[6]~3_combout\ & \inst|SI|R\(4))))) # (!\inst|SI|R[5]~6_combout\ & (\inst|SI|R[6]~3_combout\ & (\inst|SI|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[5]~6_combout\,
	datab => \inst|SI|R[6]~3_combout\,
	datac => \inst|SI|R\(4),
	datad => \inst|SI|R\(6),
	combout => \inst|SI|R[5]~11_combout\);

-- Location: LCCOMB_X66_Y24_N18
\inst|SI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~13_combout\ = (\inst|SI|R[5]~12_combout\) # ((\inst|SI|R[5]~11_combout\) # ((\inst|SI|op_1~8_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|op_1~8_combout\,
	datab => \inst|SI|_~0_combout\,
	datac => \inst|SI|R[5]~12_combout\,
	datad => \inst|SI|R[5]~11_combout\,
	combout => \inst|SI|R[5]~13_combout\);

-- Location: LCCOMB_X67_Y24_N2
\inst|SI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~14_combout\ = (\inst|SI|R[5]~13_combout\) # ((\inst|SI|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|_~3_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|SI|R[5]~13_combout\,
	combout => \inst|SI|R[5]~14_combout\);

-- Location: FF_X67_Y24_N3
\inst|SI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(5));

-- Location: LCCOMB_X64_Y24_N30
\inst|SI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~8_combout\ = (\inst|SI|R\(6) & ((\inst|SI|R[7]~1_combout\) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~12_combout\)))) # (!\inst|SI|R\(6) & (\inst|SI|_~2_combout\ & ((\inst|SI|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(6),
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|R[7]~1_combout\,
	datad => \inst|SI|op_2~12_combout\,
	combout => \inst|SI|R[6]~8_combout\);

-- Location: LCCOMB_X65_Y24_N26
\inst|SI|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~7_combout\ = (\inst|SI|R[6]~3_combout\ & ((\inst|SI|R\(5)) # ((\inst|SI|R[5]~6_combout\ & \inst|SI|R\(7))))) # (!\inst|SI|R[6]~3_combout\ & (\inst|SI|R[5]~6_combout\ & ((\inst|SI|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~3_combout\,
	datab => \inst|SI|R[5]~6_combout\,
	datac => \inst|SI|R\(5),
	datad => \inst|SI|R\(7),
	combout => \inst|SI|R[6]~7_combout\);

-- Location: LCCOMB_X65_Y24_N16
\inst|SI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~9_combout\ = (\inst|SI|R[6]~8_combout\) # ((\inst|SI|R[6]~7_combout\) # ((\inst|SI|op_1~10_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|op_1~10_combout\,
	datab => \inst|SI|R[6]~8_combout\,
	datac => \inst|SI|R[6]~7_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[6]~9_combout\);

-- Location: LCCOMB_X66_Y24_N20
\inst|SI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~10_combout\ = (\inst|SI|R[6]~9_combout\) # ((\inst|BUS[6]~19_combout\ & \inst|SI|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~9_combout\,
	datab => \inst|BUS[6]~19_combout\,
	datac => \inst|SI|_~3_combout\,
	combout => \inst|SI|R[6]~10_combout\);

-- Location: FF_X66_Y24_N21
\inst|SI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(6));

-- Location: LCCOMB_X70_Y28_N14
\inst|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~27_combout\ = (\inst|SelBus[4]~3_combout\ & (\inst|_~26_combout\ & !\inst|SelBus[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[4]~3_combout\,
	datab => \inst|_~26_combout\,
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|_~27_combout\);

-- Location: LCCOMB_X71_Y26_N6
\inst|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~43_combout\ = (\inst|SelMUX[4]~2_combout\ & (!\inst|SelMUX[0]~0_combout\ & (!\inst|SelMUX[1]~1_combout\ & \inst|_~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~2_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[1]~1_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~43_combout\);

-- Location: LCCOMB_X72_Y24_N6
\inst|SP|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~3_combout\ = (!\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|_~3_combout\);

-- Location: LCCOMB_X72_Y24_N26
\inst|SP|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~1_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|R[7]~1_combout\);

-- Location: LCCOMB_X72_Y24_N4
\inst|SP|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~2_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|_~2_combout\);

-- Location: LCCOMB_X72_Y24_N28
\inst|SP|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~6_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|R[5]~6_combout\);

-- Location: LCCOMB_X72_Y24_N22
\inst|SP|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~4_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|_~4_combout\);

-- Location: LCCOMB_X72_Y24_N20
\inst|SP|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~33_combout\ = (\inst|SP|R[7]~1_combout\ & ((\inst|SP|R\(0)) # ((\inst|SP|_~4_combout\ & \inst|SP|R\(7))))) # (!\inst|SP|R[7]~1_combout\ & (((\inst|SP|_~4_combout\ & \inst|SP|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[7]~1_combout\,
	datab => \inst|SP|R\(0),
	datac => \inst|SP|_~4_combout\,
	datad => \inst|SP|R\(7),
	combout => \inst|SP|R[0]~33_combout\);

-- Location: LCCOMB_X72_Y24_N14
\inst|SP|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|R[0]~31_combout\);

-- Location: LCCOMB_X72_Y24_N0
\inst|SP|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~32_combout\ = (\inst|SP|R\(1) & ((\inst|SP|R[5]~6_combout\) # ((!\inst|SP|R\(0) & \inst|SP|R[0]~31_combout\)))) # (!\inst|SP|R\(1) & (!\inst|SP|R\(0) & (\inst|SP|R[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(1),
	datab => \inst|SP|R\(0),
	datac => \inst|SP|R[0]~31_combout\,
	datad => \inst|SP|R[5]~6_combout\,
	combout => \inst|SP|R[0]~32_combout\);

-- Location: LCCOMB_X72_Y24_N8
\inst|SP|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~34_combout\ = (\inst|SP|R[0]~33_combout\) # ((\inst|SP|R[0]~32_combout\) # ((\inst|SP|_~3_combout\ & \inst|BUS[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~3_combout\,
	datab => \inst|SP|R[0]~33_combout\,
	datac => \inst|BUS[0]~73_combout\,
	datad => \inst|SP|R[0]~32_combout\,
	combout => \inst|SP|R[0]~34_combout\);

-- Location: FF_X72_Y24_N9
\inst|SP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(0));

-- Location: LCCOMB_X72_Y24_N24
\inst|SP|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|R[6]~3_combout\);

-- Location: LCCOMB_X70_Y24_N30
\inst|SP|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~27_combout\ = (\inst|SP|R[5]~6_combout\ & ((\inst|SP|R\(2)) # ((\inst|SP|R\(0) & \inst|SP|R[6]~3_combout\)))) # (!\inst|SP|R[5]~6_combout\ & (\inst|SP|R\(0) & ((\inst|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~6_combout\,
	datab => \inst|SP|R\(0),
	datac => \inst|SP|R\(2),
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[1]~27_combout\);

-- Location: LCCOMB_X72_Y24_N10
\inst|SP|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|_~0_combout\);

-- Location: LCCOMB_X69_Y24_N12
\inst|SP|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~1_cout\ = CARRY(\inst|SP|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(0),
	datad => VCC,
	cout => \inst|SP|op_2~1_cout\);

-- Location: LCCOMB_X69_Y24_N14
\inst|SP|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~2_combout\ = (\inst|SP|R\(1) & (\inst|SP|op_2~1_cout\ & VCC)) # (!\inst|SP|R\(1) & (!\inst|SP|op_2~1_cout\))
-- \inst|SP|op_2~3\ = CARRY((!\inst|SP|R\(1) & !\inst|SP|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(1),
	datad => VCC,
	cin => \inst|SP|op_2~1_cout\,
	combout => \inst|SP|op_2~2_combout\,
	cout => \inst|SP|op_2~3\);

-- Location: LCCOMB_X69_Y24_N4
\inst|SP|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~28_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~2_combout\) # ((\inst|SP|R\(1) & \inst|SP|R[7]~1_combout\)))) # (!\inst|SP|_~2_combout\ & (((\inst|SP|R\(1) & \inst|SP|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|op_2~2_combout\,
	datac => \inst|SP|R\(1),
	datad => \inst|SP|R[7]~1_combout\,
	combout => \inst|SP|R[1]~28_combout\);

-- Location: LCCOMB_X70_Y24_N6
\inst|SP|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~0_combout\ = (\inst|SP|R\(1) & (\inst|SP|R\(0) $ (VCC))) # (!\inst|SP|R\(1) & (\inst|SP|R\(0) & VCC))
-- \inst|SP|op_1~1\ = CARRY((\inst|SP|R\(1) & \inst|SP|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(1),
	datab => \inst|SP|R\(0),
	datad => VCC,
	combout => \inst|SP|op_1~0_combout\,
	cout => \inst|SP|op_1~1\);

-- Location: LCCOMB_X69_Y24_N30
\inst|SP|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~29_combout\ = (\inst|SP|R[1]~27_combout\) # ((\inst|SP|R[1]~28_combout\) # ((\inst|SP|_~0_combout\ & \inst|SP|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[1]~27_combout\,
	datab => \inst|SP|_~0_combout\,
	datac => \inst|SP|R[1]~28_combout\,
	datad => \inst|SP|op_1~0_combout\,
	combout => \inst|SP|R[1]~29_combout\);

-- Location: LCCOMB_X72_Y24_N2
\inst|SP|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~30_combout\ = (\inst|SP|R[1]~29_combout\) # ((\inst|BUS[1]~64_combout\ & \inst|SP|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[1]~29_combout\,
	datac => \inst|BUS[1]~64_combout\,
	datad => \inst|SP|_~3_combout\,
	combout => \inst|SP|R[1]~30_combout\);

-- Location: FF_X72_Y24_N3
\inst|SP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(1));

-- Location: LCCOMB_X69_Y24_N16
\inst|SP|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~4_combout\ = (\inst|SP|R\(2) & ((GND) # (!\inst|SP|op_2~3\))) # (!\inst|SP|R\(2) & (\inst|SP|op_2~3\ $ (GND)))
-- \inst|SP|op_2~5\ = CARRY((\inst|SP|R\(2)) # (!\inst|SP|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(2),
	datad => VCC,
	cin => \inst|SP|op_2~3\,
	combout => \inst|SP|op_2~4_combout\,
	cout => \inst|SP|op_2~5\);

-- Location: LCCOMB_X69_Y24_N2
\inst|SP|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~24_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~4_combout\) # ((\inst|SP|R[7]~1_combout\ & \inst|SP|R\(2))))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R[7]~1_combout\ & (\inst|SP|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R[7]~1_combout\,
	datac => \inst|SP|R\(2),
	datad => \inst|SP|op_2~4_combout\,
	combout => \inst|SP|R[2]~24_combout\);

-- Location: LCCOMB_X70_Y24_N8
\inst|SP|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~2_combout\ = (\inst|SP|R\(2) & (!\inst|SP|op_1~1\)) # (!\inst|SP|R\(2) & ((\inst|SP|op_1~1\) # (GND)))
-- \inst|SP|op_1~3\ = CARRY((!\inst|SP|op_1~1\) # (!\inst|SP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(2),
	datad => VCC,
	cin => \inst|SP|op_1~1\,
	combout => \inst|SP|op_1~2_combout\,
	cout => \inst|SP|op_1~3\);

-- Location: LCCOMB_X70_Y24_N22
\inst|SP|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~23_combout\ = (\inst|SP|R[5]~6_combout\ & ((\inst|SP|R\(3)) # ((\inst|SP|R[6]~3_combout\ & \inst|SP|R\(1))))) # (!\inst|SP|R[5]~6_combout\ & (\inst|SP|R[6]~3_combout\ & (\inst|SP|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~6_combout\,
	datab => \inst|SP|R[6]~3_combout\,
	datac => \inst|SP|R\(1),
	datad => \inst|SP|R\(3),
	combout => \inst|SP|R[2]~23_combout\);

-- Location: LCCOMB_X70_Y24_N20
\inst|SP|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~25_combout\ = (\inst|SP|R[2]~24_combout\) # ((\inst|SP|R[2]~23_combout\) # ((\inst|SP|op_1~2_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[2]~24_combout\,
	datab => \inst|SP|op_1~2_combout\,
	datac => \inst|SP|R[2]~23_combout\,
	datad => \inst|SP|_~0_combout\,
	combout => \inst|SP|R[2]~25_combout\);

-- Location: LCCOMB_X71_Y24_N20
\inst|SP|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~26_combout\ = (\inst|SP|R[2]~25_combout\) # ((\inst|SP|_~3_combout\ & \inst|BUS[2]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~3_combout\,
	datab => \inst|BUS[2]~55_combout\,
	datad => \inst|SP|R[2]~25_combout\,
	combout => \inst|SP|R[2]~26_combout\);

-- Location: FF_X71_Y24_N21
\inst|SP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(2));

-- Location: LCCOMB_X70_Y24_N10
\inst|SP|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~4_combout\ = (\inst|SP|R\(3) & (\inst|SP|op_1~3\ $ (GND))) # (!\inst|SP|R\(3) & (!\inst|SP|op_1~3\ & VCC))
-- \inst|SP|op_1~5\ = CARRY((\inst|SP|R\(3) & !\inst|SP|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(3),
	datad => VCC,
	cin => \inst|SP|op_1~3\,
	combout => \inst|SP|op_1~4_combout\,
	cout => \inst|SP|op_1~5\);

-- Location: LCCOMB_X69_Y24_N18
\inst|SP|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~6_combout\ = (\inst|SP|R\(3) & (\inst|SP|op_2~5\ & VCC)) # (!\inst|SP|R\(3) & (!\inst|SP|op_2~5\))
-- \inst|SP|op_2~7\ = CARRY((!\inst|SP|R\(3) & !\inst|SP|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(3),
	datad => VCC,
	cin => \inst|SP|op_2~5\,
	combout => \inst|SP|op_2~6_combout\,
	cout => \inst|SP|op_2~7\);

-- Location: LCCOMB_X69_Y24_N28
\inst|SP|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~20_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~6_combout\) # ((\inst|SP|R\(3) & \inst|SP|R[7]~1_combout\)))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R\(3) & (\inst|SP|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R\(3),
	datac => \inst|SP|R[7]~1_combout\,
	datad => \inst|SP|op_2~6_combout\,
	combout => \inst|SP|R[3]~20_combout\);

-- Location: LCCOMB_X71_Y24_N14
\inst|SP|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~19_combout\ = (\inst|SP|R[5]~6_combout\ & ((\inst|SP|R\(4)) # ((\inst|SP|R\(2) & \inst|SP|R[6]~3_combout\)))) # (!\inst|SP|R[5]~6_combout\ & (\inst|SP|R\(2) & ((\inst|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~6_combout\,
	datab => \inst|SP|R\(2),
	datac => \inst|SP|R\(4),
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[3]~19_combout\);

-- Location: LCCOMB_X70_Y24_N0
\inst|SP|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~21_combout\ = (\inst|SP|R[3]~20_combout\) # ((\inst|SP|R[3]~19_combout\) # ((\inst|SP|op_1~4_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|op_1~4_combout\,
	datab => \inst|SP|R[3]~20_combout\,
	datac => \inst|SP|R[3]~19_combout\,
	datad => \inst|SP|_~0_combout\,
	combout => \inst|SP|R[3]~21_combout\);

-- Location: LCCOMB_X71_Y24_N22
\inst|SP|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~22_combout\ = (\inst|SP|R[3]~21_combout\) # ((\inst|BUS[3]~46_combout\ & \inst|SP|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[3]~21_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|SP|_~3_combout\,
	combout => \inst|SP|R[3]~22_combout\);

-- Location: FF_X71_Y24_N23
\inst|SP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(3));

-- Location: LCCOMB_X70_Y24_N12
\inst|SP|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~6_combout\ = (\inst|SP|R\(4) & (!\inst|SP|op_1~5\)) # (!\inst|SP|R\(4) & ((\inst|SP|op_1~5\) # (GND)))
-- \inst|SP|op_1~7\ = CARRY((!\inst|SP|op_1~5\) # (!\inst|SP|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(4),
	datad => VCC,
	cin => \inst|SP|op_1~5\,
	combout => \inst|SP|op_1~6_combout\,
	cout => \inst|SP|op_1~7\);

-- Location: LCCOMB_X70_Y24_N4
\inst|SP|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~15_combout\ = (\inst|SP|R\(3) & ((\inst|SP|R[6]~3_combout\) # ((\inst|SP|R\(5) & \inst|SP|R[5]~6_combout\)))) # (!\inst|SP|R\(3) & (\inst|SP|R\(5) & (\inst|SP|R[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(3),
	datab => \inst|SP|R\(5),
	datac => \inst|SP|R[5]~6_combout\,
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[4]~15_combout\);

-- Location: LCCOMB_X69_Y24_N20
\inst|SP|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~8_combout\ = (\inst|SP|R\(4) & ((GND) # (!\inst|SP|op_2~7\))) # (!\inst|SP|R\(4) & (\inst|SP|op_2~7\ $ (GND)))
-- \inst|SP|op_2~9\ = CARRY((\inst|SP|R\(4)) # (!\inst|SP|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(4),
	datad => VCC,
	cin => \inst|SP|op_2~7\,
	combout => \inst|SP|op_2~8_combout\,
	cout => \inst|SP|op_2~9\);

-- Location: LCCOMB_X69_Y24_N10
\inst|SP|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~16_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~8_combout\) # ((\inst|SP|R\(4) & \inst|SP|R[7]~1_combout\)))) # (!\inst|SP|_~2_combout\ & (((\inst|SP|R\(4) & \inst|SP|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|op_2~8_combout\,
	datac => \inst|SP|R\(4),
	datad => \inst|SP|R[7]~1_combout\,
	combout => \inst|SP|R[4]~16_combout\);

-- Location: LCCOMB_X70_Y24_N26
\inst|SP|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~17_combout\ = (\inst|SP|R[4]~15_combout\) # ((\inst|SP|R[4]~16_combout\) # ((\inst|SP|op_1~6_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|op_1~6_combout\,
	datab => \inst|SP|R[4]~15_combout\,
	datac => \inst|SP|R[4]~16_combout\,
	datad => \inst|SP|_~0_combout\,
	combout => \inst|SP|R[4]~17_combout\);

-- Location: LCCOMB_X71_Y24_N26
\inst|SP|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~18_combout\ = (\inst|SP|R[4]~17_combout\) # ((\inst|BUS[4]~37_combout\ & \inst|SP|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[4]~37_combout\,
	datac => \inst|SP|R[4]~17_combout\,
	datad => \inst|SP|_~3_combout\,
	combout => \inst|SP|R[4]~18_combout\);

-- Location: FF_X71_Y24_N27
\inst|SP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(4));

-- Location: LCCOMB_X69_Y24_N22
\inst|SP|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~10_combout\ = (\inst|SP|R\(5) & (\inst|SP|op_2~9\ & VCC)) # (!\inst|SP|R\(5) & (!\inst|SP|op_2~9\))
-- \inst|SP|op_2~11\ = CARRY((!\inst|SP|R\(5) & !\inst|SP|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(5),
	datad => VCC,
	cin => \inst|SP|op_2~9\,
	combout => \inst|SP|op_2~10_combout\,
	cout => \inst|SP|op_2~11\);

-- Location: LCCOMB_X69_Y24_N8
\inst|SP|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~12_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~10_combout\) # ((\inst|SP|R\(5) & \inst|SP|R[7]~1_combout\)))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R\(5) & ((\inst|SP|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R\(5),
	datac => \inst|SP|op_2~10_combout\,
	datad => \inst|SP|R[7]~1_combout\,
	combout => \inst|SP|R[5]~12_combout\);

-- Location: LCCOMB_X71_Y24_N28
\inst|SP|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~11_combout\ = (\inst|SP|R[5]~6_combout\ & ((\inst|SP|R\(6)) # ((\inst|SP|R\(4) & \inst|SP|R[6]~3_combout\)))) # (!\inst|SP|R[5]~6_combout\ & (((\inst|SP|R\(4) & \inst|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~6_combout\,
	datab => \inst|SP|R\(6),
	datac => \inst|SP|R\(4),
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[5]~11_combout\);

-- Location: LCCOMB_X70_Y24_N14
\inst|SP|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~8_combout\ = (\inst|SP|R\(5) & (\inst|SP|op_1~7\ $ (GND))) # (!\inst|SP|R\(5) & (!\inst|SP|op_1~7\ & VCC))
-- \inst|SP|op_1~9\ = CARRY((\inst|SP|R\(5) & !\inst|SP|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(5),
	datad => VCC,
	cin => \inst|SP|op_1~7\,
	combout => \inst|SP|op_1~8_combout\,
	cout => \inst|SP|op_1~9\);

-- Location: LCCOMB_X70_Y24_N28
\inst|SP|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~13_combout\ = (\inst|SP|R[5]~12_combout\) # ((\inst|SP|R[5]~11_combout\) # ((\inst|SP|op_1~8_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~12_combout\,
	datab => \inst|SP|R[5]~11_combout\,
	datac => \inst|SP|op_1~8_combout\,
	datad => \inst|SP|_~0_combout\,
	combout => \inst|SP|R[5]~13_combout\);

-- Location: LCCOMB_X71_Y24_N0
\inst|SP|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~14_combout\ = (\inst|SP|R[5]~13_combout\) # ((\inst|SP|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~3_combout\,
	datab => \inst|BUS[5]~28_combout\,
	datad => \inst|SP|R[5]~13_combout\,
	combout => \inst|SP|R[5]~14_combout\);

-- Location: FF_X71_Y24_N1
\inst|SP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(5));

-- Location: LCCOMB_X69_Y24_N24
\inst|SP|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~12_combout\ = (\inst|SP|R\(6) & ((GND) # (!\inst|SP|op_2~11\))) # (!\inst|SP|R\(6) & (\inst|SP|op_2~11\ $ (GND)))
-- \inst|SP|op_2~13\ = CARRY((\inst|SP|R\(6)) # (!\inst|SP|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(6),
	datad => VCC,
	cin => \inst|SP|op_2~11\,
	combout => \inst|SP|op_2~12_combout\,
	cout => \inst|SP|op_2~13\);

-- Location: LCCOMB_X69_Y24_N26
\inst|SP|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~14_combout\ = \inst|SP|op_2~13\ $ (!\inst|SP|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SP|R\(7),
	cin => \inst|SP|op_2~13\,
	combout => \inst|SP|op_2~14_combout\);

-- Location: LCCOMB_X69_Y24_N0
\inst|SP|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~2_combout\ = (\inst|SP|R\(7) & ((\inst|SP|R[7]~1_combout\) # ((\inst|SP|op_2~14_combout\ & \inst|SP|_~2_combout\)))) # (!\inst|SP|R\(7) & (((\inst|SP|op_2~14_combout\ & \inst|SP|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(7),
	datab => \inst|SP|R[7]~1_combout\,
	datac => \inst|SP|op_2~14_combout\,
	datad => \inst|SP|_~2_combout\,
	combout => \inst|SP|R[7]~2_combout\);

-- Location: LCCOMB_X72_Y24_N12
\inst|SP|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~43_combout\,
	combout => \inst|SP|_~1_combout\);

-- Location: LCCOMB_X70_Y24_N16
\inst|SP|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~10_combout\ = (\inst|SP|R\(6) & (!\inst|SP|op_1~9\)) # (!\inst|SP|R\(6) & ((\inst|SP|op_1~9\) # (GND)))
-- \inst|SP|op_1~11\ = CARRY((!\inst|SP|op_1~9\) # (!\inst|SP|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(6),
	datad => VCC,
	cin => \inst|SP|op_1~9\,
	combout => \inst|SP|op_1~10_combout\,
	cout => \inst|SP|op_1~11\);

-- Location: LCCOMB_X70_Y24_N18
\inst|SP|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~12_combout\ = \inst|SP|op_1~11\ $ (!\inst|SP|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SP|R\(7),
	cin => \inst|SP|op_1~11\,
	combout => \inst|SP|op_1~12_combout\);

-- Location: LCCOMB_X72_Y24_N30
\inst|SP|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~0_combout\ = (\inst|SP|_~1_combout\ & ((\inst|SP|R\(0)) # ((\inst|SP|op_1~12_combout\ & \inst|SP|_~0_combout\)))) # (!\inst|SP|_~1_combout\ & (((\inst|SP|op_1~12_combout\ & \inst|SP|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~1_combout\,
	datab => \inst|SP|R\(0),
	datac => \inst|SP|op_1~12_combout\,
	datad => \inst|SP|_~0_combout\,
	combout => \inst|SP|R[7]~0_combout\);

-- Location: LCCOMB_X71_Y24_N6
\inst|SP|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~4_combout\ = (\inst|SP|R[7]~2_combout\) # ((\inst|SP|R[7]~0_combout\) # ((\inst|SP|R\(6) & \inst|SP|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[7]~2_combout\,
	datab => \inst|SP|R\(6),
	datac => \inst|SP|R[7]~0_combout\,
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[7]~4_combout\);

-- Location: LCCOMB_X72_Y24_N16
\inst|SP|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~5_combout\ = (\inst|SP|R[7]~4_combout\) # ((\inst|BUS[7]~10_combout\ & \inst|SP|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~10_combout\,
	datac => \inst|SP|R[7]~4_combout\,
	datad => \inst|SP|_~3_combout\,
	combout => \inst|SP|R[7]~5_combout\);

-- Location: FF_X72_Y24_N17
\inst|SP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(7));

-- Location: LCCOMB_X70_Y24_N24
\inst|SP|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~7_combout\ = (\inst|SP|R\(7) & ((\inst|SP|R[5]~6_combout\) # ((\inst|SP|R\(5) & \inst|SP|R[6]~3_combout\)))) # (!\inst|SP|R\(7) & (\inst|SP|R\(5) & ((\inst|SP|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(7),
	datab => \inst|SP|R\(5),
	datac => \inst|SP|R[5]~6_combout\,
	datad => \inst|SP|R[6]~3_combout\,
	combout => \inst|SP|R[6]~7_combout\);

-- Location: LCCOMB_X69_Y24_N6
\inst|SP|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~8_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~12_combout\) # ((\inst|SP|R\(6) & \inst|SP|R[7]~1_combout\)))) # (!\inst|SP|_~2_combout\ & (((\inst|SP|R\(6) & \inst|SP|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|op_2~12_combout\,
	datac => \inst|SP|R\(6),
	datad => \inst|SP|R[7]~1_combout\,
	combout => \inst|SP|R[6]~8_combout\);

-- Location: LCCOMB_X70_Y24_N2
\inst|SP|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~9_combout\ = (\inst|SP|R[6]~8_combout\) # ((\inst|SP|_~0_combout\ & \inst|SP|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~0_combout\,
	datab => \inst|SP|op_1~10_combout\,
	datac => \inst|SP|R[6]~8_combout\,
	combout => \inst|SP|R[6]~9_combout\);

-- Location: LCCOMB_X71_Y24_N18
\inst|SP|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~10_combout\ = (\inst|SP|R[6]~7_combout\) # ((\inst|SP|R[6]~9_combout\) # ((\inst|SP|_~3_combout\ & \inst|BUS[6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~3_combout\,
	datab => \inst|BUS[6]~19_combout\,
	datac => \inst|SP|R[6]~7_combout\,
	datad => \inst|SP|R[6]~9_combout\,
	combout => \inst|SP|R[6]~10_combout\);

-- Location: FF_X71_Y24_N19
\inst|SP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(6));

-- Location: LCCOMB_X67_Y24_N12
\inst|BUS[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~14_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(6)) # ((\inst|_~27_combout\ & \inst|SP|R\(6))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(6),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(6),
	combout => \inst|BUS[6]~14_combout\);

-- Location: IOIBUF_X78_Y40_N1
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

-- Location: IOIBUF_X78_Y41_N8
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

-- Location: IOIBUF_X78_Y43_N8
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

-- Location: LCCOMB_X74_Y29_N8
\inst|MAR|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[0]~7_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[0]~73_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(0),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|MAR|R[0]~7_combout\);

-- Location: LCCOMB_X71_Y26_N20
\inst|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~39_combout\ = (!\inst|SelMUX[1]~1_combout\ & (!\inst|SelMUX[0]~0_combout\ & (\inst|SelMUX[2]~3_combout\ & !\inst|SelMUX[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[1]~1_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[2]~3_combout\,
	datad => \inst|SelMUX[4]~2_combout\,
	combout => \inst|_~39_combout\);

-- Location: LCCOMB_X71_Y26_N2
\inst|_~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~55_combout\ = (\inst|_~39_combout\ & ((\SelDST~input_o\ & (\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[3]~input_o\,
	datab => \inst|DST|R\(3),
	datac => \SelDST~input_o\,
	datad => \inst|_~39_combout\,
	combout => \inst|_~55_combout\);

-- Location: FF_X74_Y29_N9
\inst|MAR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(0));

-- Location: LCCOMB_X74_Y29_N28
\inst|MAR|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[1]~6_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[1]~64_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datab => \inst|PC|R\(1),
	datac => \inst|BUS[1]~64_combout\,
	combout => \inst|MAR|R[1]~6_combout\);

-- Location: FF_X74_Y29_N29
\inst|MAR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[1]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(1));

-- Location: LCCOMB_X74_Y29_N0
\inst|MAR|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[2]~5_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[2]~55_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(2),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[2]~55_combout\,
	combout => \inst|MAR|R[2]~5_combout\);

-- Location: FF_X74_Y29_N1
\inst|MAR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(2));

-- Location: LCCOMB_X74_Y29_N16
\inst|MAR|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[3]~4_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[3]~46_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(3),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[3]~46_combout\,
	combout => \inst|MAR|R[3]~4_combout\);

-- Location: FF_X74_Y29_N17
\inst|MAR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[3]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(3));

-- Location: LCCOMB_X74_Y29_N24
\inst|MAR|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[4]~3_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[4]~37_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datab => \inst|BUS[4]~37_combout\,
	datac => \SelMAR~input_o\,
	combout => \inst|MAR|R[4]~3_combout\);

-- Location: FF_X74_Y29_N25
\inst|MAR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[4]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(4));

-- Location: LCCOMB_X74_Y29_N12
\inst|MAR|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[5]~2_combout\ = (\SelMAR~input_o\ & (\inst|BUS[5]~28_combout\)) # (!\SelMAR~input_o\ & ((\inst|PC|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[5]~28_combout\,
	datab => \inst|PC|R\(5),
	datac => \SelMAR~input_o\,
	combout => \inst|MAR|R[5]~2_combout\);

-- Location: FF_X74_Y29_N13
\inst|MAR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[5]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(5));

-- Location: LCCOMB_X74_Y29_N4
\inst|MAR|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[6]~1_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[6]~19_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[6]~19_combout\,
	combout => \inst|MAR|R[6]~1_combout\);

-- Location: FF_X74_Y29_N5
\inst|MAR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[6]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(6));

-- Location: LCCOMB_X77_Y29_N0
\inst|PC|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~0_combout\ = (\inst|PC|R\(0) & (\inst|PC|R\(1) $ (VCC))) # (!\inst|PC|R\(0) & (\inst|PC|R\(1) & VCC))
-- \inst|PC|op_1~1\ = CARRY((\inst|PC|R\(0) & \inst|PC|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(0),
	datab => \inst|PC|R\(1),
	datad => VCC,
	combout => \inst|PC|op_1~0_combout\,
	cout => \inst|PC|op_1~1\);

-- Location: LCCOMB_X77_Y29_N2
\inst|PC|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~2_combout\ = (\inst|PC|R\(2) & (!\inst|PC|op_1~1\)) # (!\inst|PC|R\(2) & ((\inst|PC|op_1~1\) # (GND)))
-- \inst|PC|op_1~3\ = CARRY((!\inst|PC|op_1~1\) # (!\inst|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(2),
	datad => VCC,
	cin => \inst|PC|op_1~1\,
	combout => \inst|PC|op_1~2_combout\,
	cout => \inst|PC|op_1~3\);

-- Location: LCCOMB_X77_Y29_N4
\inst|PC|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~4_combout\ = (\inst|PC|R\(3) & (\inst|PC|op_1~3\ $ (GND))) # (!\inst|PC|R\(3) & (!\inst|PC|op_1~3\ & VCC))
-- \inst|PC|op_1~5\ = CARRY((\inst|PC|R\(3) & !\inst|PC|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(3),
	datad => VCC,
	cin => \inst|PC|op_1~3\,
	combout => \inst|PC|op_1~4_combout\,
	cout => \inst|PC|op_1~5\);

-- Location: LCCOMB_X77_Y29_N6
\inst|PC|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~6_combout\ = (\inst|PC|R\(4) & (!\inst|PC|op_1~5\)) # (!\inst|PC|R\(4) & ((\inst|PC|op_1~5\) # (GND)))
-- \inst|PC|op_1~7\ = CARRY((!\inst|PC|op_1~5\) # (!\inst|PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datad => VCC,
	cin => \inst|PC|op_1~5\,
	combout => \inst|PC|op_1~6_combout\,
	cout => \inst|PC|op_1~7\);

-- Location: LCCOMB_X77_Y29_N8
\inst|PC|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~8_combout\ = (\inst|PC|R\(5) & (\inst|PC|op_1~7\ $ (GND))) # (!\inst|PC|R\(5) & (!\inst|PC|op_1~7\ & VCC))
-- \inst|PC|op_1~9\ = CARRY((\inst|PC|R\(5) & !\inst|PC|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(5),
	datad => VCC,
	cin => \inst|PC|op_1~7\,
	combout => \inst|PC|op_1~8_combout\,
	cout => \inst|PC|op_1~9\);

-- Location: LCCOMB_X77_Y29_N10
\inst|PC|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~10_combout\ = (\inst|PC|R\(6) & (!\inst|PC|op_1~9\)) # (!\inst|PC|R\(6) & ((\inst|PC|op_1~9\) # (GND)))
-- \inst|PC|op_1~11\ = CARRY((!\inst|PC|op_1~9\) # (!\inst|PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datad => VCC,
	cin => \inst|PC|op_1~9\,
	combout => \inst|PC|op_1~10_combout\,
	cout => \inst|PC|op_1~11\);

-- Location: LCCOMB_X77_Y29_N12
\inst|PC|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~12_combout\ = \inst|PC|op_1~11\ $ (!\inst|PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC|R\(7),
	cin => \inst|PC|op_1~11\,
	combout => \inst|PC|op_1~12_combout\);

-- Location: LCCOMB_X75_Y29_N26
\inst|PC|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\inst|_~47_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|_~1_combout\);

-- Location: LCCOMB_X75_Y29_N4
\inst|PC|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~0_combout\ = (\inst|PC|op_1~12_combout\ & ((\inst|PC|_~0_combout\) # ((\inst|PC|R\(0) & \inst|PC|_~1_combout\)))) # (!\inst|PC|op_1~12_combout\ & (\inst|PC|R\(0) & (\inst|PC|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|op_1~12_combout\,
	datab => \inst|PC|R\(0),
	datac => \inst|PC|_~1_combout\,
	datad => \inst|PC|_~0_combout\,
	combout => \inst|PC|R[7]~0_combout\);

-- Location: LCCOMB_X77_Y29_N22
\inst|PC|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~8_combout\ = (\inst|PC|R\(4) & ((GND) # (!\inst|PC|op_2~7\))) # (!\inst|PC|R\(4) & (\inst|PC|op_2~7\ $ (GND)))
-- \inst|PC|op_2~9\ = CARRY((\inst|PC|R\(4)) # (!\inst|PC|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datad => VCC,
	cin => \inst|PC|op_2~7\,
	combout => \inst|PC|op_2~8_combout\,
	cout => \inst|PC|op_2~9\);

-- Location: LCCOMB_X77_Y29_N24
\inst|PC|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~10_combout\ = (\inst|PC|R\(5) & (\inst|PC|op_2~9\ & VCC)) # (!\inst|PC|R\(5) & (!\inst|PC|op_2~9\))
-- \inst|PC|op_2~11\ = CARRY((!\inst|PC|R\(5) & !\inst|PC|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(5),
	datad => VCC,
	cin => \inst|PC|op_2~9\,
	combout => \inst|PC|op_2~10_combout\,
	cout => \inst|PC|op_2~11\);

-- Location: LCCOMB_X77_Y29_N26
\inst|PC|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~12_combout\ = (\inst|PC|R\(6) & ((GND) # (!\inst|PC|op_2~11\))) # (!\inst|PC|R\(6) & (\inst|PC|op_2~11\ $ (GND)))
-- \inst|PC|op_2~13\ = CARRY((\inst|PC|R\(6)) # (!\inst|PC|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datad => VCC,
	cin => \inst|PC|op_2~11\,
	combout => \inst|PC|op_2~12_combout\,
	cout => \inst|PC|op_2~13\);

-- Location: LCCOMB_X77_Y29_N28
\inst|PC|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~14_combout\ = \inst|PC|op_2~13\ $ (!\inst|PC|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC|R\(7),
	cin => \inst|PC|op_2~13\,
	combout => \inst|PC|op_2~14_combout\);

-- Location: LCCOMB_X76_Y29_N24
\inst|PC|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~2_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(7)) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~14_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R\(7),
	datad => \inst|PC|op_2~14_combout\,
	combout => \inst|PC|R[7]~2_combout\);

-- Location: LCCOMB_X75_Y29_N24
\inst|PC|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~4_combout\ = (\inst|PC|R[7]~0_combout\) # ((\inst|PC|R[7]~2_combout\) # ((\inst|PC|R\(6) & \inst|PC|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datab => \inst|PC|R[6]~3_combout\,
	datac => \inst|PC|R[7]~0_combout\,
	datad => \inst|PC|R[7]~2_combout\,
	combout => \inst|PC|R[7]~4_combout\);

-- Location: LCCOMB_X74_Y29_N26
\inst|PC|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~5_combout\ = (\inst|PC|R[7]~4_combout\) # ((\inst|PC|_~3_combout\ & \inst|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~3_combout\,
	datac => \inst|BUS[7]~10_combout\,
	datad => \inst|PC|R[7]~4_combout\,
	combout => \inst|PC|R[7]~5_combout\);

-- Location: FF_X74_Y29_N27
\inst|PC|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(7));

-- Location: LCCOMB_X74_Y29_N20
\inst|MAR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[7]~0_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[7]~10_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(7),
	datab => \inst|BUS[7]~10_combout\,
	datac => \SelMAR~input_o\,
	combout => \inst|MAR|R[7]~0_combout\);

-- Location: FF_X74_Y29_N21
\inst|MAR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(7));

-- Location: M9K_X73_Y29_N0
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

-- Location: LCCOMB_X72_Y29_N20
\inst|MDR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[7]~0_combout\ = (\SelMDR~input_o\ & ((\inst|BUS[7]~10_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|BUS[7]~10_combout\,
	datac => \SelMDR~input_o\,
	combout => \inst|MDR|R[7]~0_combout\);

-- Location: LCCOMB_X71_Y26_N8
\inst|_~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~54_combout\ = (\inst|_~38_combout\ & ((\SelDST~input_o\ & ((\DST_UC[2]~input_o\))) # (!\SelDST~input_o\ & (\inst|DST|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R\(2),
	datab => \DST_UC[2]~input_o\,
	datac => \SelDST~input_o\,
	datad => \inst|_~38_combout\,
	combout => \inst|_~54_combout\);

-- Location: FF_X72_Y29_N21
\inst|MDR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(7));

-- Location: LCCOMB_X72_Y29_N12
\inst|MDR|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[5]~2_combout\ = (\SelMDR~input_o\ & (\inst|BUS[5]~28_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|MDR|R[5]~2_combout\);

-- Location: FF_X72_Y29_N13
\inst|MDR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[5]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(5));

-- Location: LCCOMB_X72_Y29_N24
\inst|MDR|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[4]~3_combout\ = (\SelMDR~input_o\ & (\inst|BUS[4]~37_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[4]~37_combout\,
	datac => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|MDR|R[4]~3_combout\);

-- Location: FF_X72_Y29_N25
\inst|MDR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[4]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(4));

-- Location: LCCOMB_X72_Y29_N0
\inst|MDR|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[3]~4_combout\ = (\SelMDR~input_o\ & (\inst|BUS[3]~46_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|MDR|R[3]~4_combout\);

-- Location: FF_X72_Y29_N1
\inst|MDR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[3]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(3));

-- Location: LCCOMB_X72_Y29_N28
\inst|MDR|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[2]~5_combout\ = (\SelMDR~input_o\ & (\inst|BUS[2]~55_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~55_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datac => \SelMDR~input_o\,
	combout => \inst|MDR|R[2]~5_combout\);

-- Location: FF_X72_Y29_N29
\inst|MDR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(2));

-- Location: LCCOMB_X72_Y29_N4
\inst|MDR|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[1]~6_combout\ = (\SelMDR~input_o\ & ((\inst|BUS[1]~64_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|altsyncram_component|auto_generated|q_a\(1),
	datac => \SelMDR~input_o\,
	datad => \inst|BUS[1]~64_combout\,
	combout => \inst|MDR|R[1]~6_combout\);

-- Location: FF_X72_Y29_N5
\inst|MDR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[1]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(1));

-- Location: LCCOMB_X72_Y29_N8
\inst|MDR|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[0]~7_combout\ = (\SelMDR~input_o\ & (\inst|BUS[0]~73_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~73_combout\,
	datac => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|MDR|R[0]~7_combout\);

-- Location: FF_X72_Y29_N9
\inst|MDR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(0));

-- Location: LCCOMB_X72_Y29_N16
\inst|MDR|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[6]~1_combout\ = (\SelMDR~input_o\ & (\inst|BUS[6]~19_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \inst|BUS[6]~19_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|MDR|R[6]~1_combout\);

-- Location: FF_X72_Y29_N17
\inst|MDR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[6]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(6));

-- Location: LCCOMB_X70_Y28_N0
\inst|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~24_combout\ = (!\inst|SelBus[1]~2_combout\ & (\inst|SelBus[2]~1_combout\ & (!\inst|SelBus[4]~3_combout\ & \inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~24_combout\);

-- Location: LCCOMB_X72_Y29_N10
\inst|BUS[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~11_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(6))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(6),
	datab => \inst|_~24_combout\,
	datac => \inst|MAR|R\(6),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[6]~11_combout\);

-- Location: LCCOMB_X70_Y28_N28
\inst|BUS[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~15_combout\ = (\inst|BUS[6]~12_combout\) # ((\inst|BUS[6]~13_combout\) # ((\inst|BUS[6]~14_combout\) # (\inst|BUS[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~12_combout\,
	datab => \inst|BUS[6]~13_combout\,
	datac => \inst|BUS[6]~14_combout\,
	datad => \inst|BUS[6]~11_combout\,
	combout => \inst|BUS[6]~15_combout\);

-- Location: LCCOMB_X70_Y28_N2
\inst|BUS[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~19_combout\ = (\inst|BUS[6]~18_combout\) # ((\inst|BUS[6]~15_combout\) # ((\inst|PC|R\(6) & \inst|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datab => \inst|BUS[6]~18_combout\,
	datac => \inst|_~31_combout\,
	datad => \inst|BUS[6]~15_combout\,
	combout => \inst|BUS[6]~19_combout\);

-- Location: LCCOMB_X76_Y29_N20
\inst|PC|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~8_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(6)) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~12_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R\(6),
	datad => \inst|PC|op_2~12_combout\,
	combout => \inst|PC|R[6]~8_combout\);

-- Location: LCCOMB_X75_Y29_N20
\inst|PC|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~6_combout\ = (\Cmd[0]~input_o\ & (\inst|_~47_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|R[5]~6_combout\);

-- Location: LCCOMB_X76_Y29_N6
\inst|PC|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~7_combout\ = (\inst|PC|R\(5) & ((\inst|PC|R[6]~3_combout\) # ((\inst|PC|R[5]~6_combout\ & \inst|PC|R\(7))))) # (!\inst|PC|R\(5) & (\inst|PC|R[5]~6_combout\ & (\inst|PC|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(5),
	datab => \inst|PC|R[5]~6_combout\,
	datac => \inst|PC|R\(7),
	datad => \inst|PC|R[6]~3_combout\,
	combout => \inst|PC|R[6]~7_combout\);

-- Location: LCCOMB_X76_Y29_N2
\inst|PC|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~9_combout\ = (\inst|PC|R[6]~8_combout\) # ((\inst|PC|R[6]~7_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|R[6]~8_combout\,
	datac => \inst|PC|op_1~10_combout\,
	datad => \inst|PC|R[6]~7_combout\,
	combout => \inst|PC|R[6]~9_combout\);

-- Location: LCCOMB_X74_Y29_N30
\inst|PC|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~10_combout\ = (\inst|PC|R[6]~9_combout\) # ((\inst|BUS[6]~19_combout\ & \inst|PC|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~19_combout\,
	datac => \inst|PC|R[6]~9_combout\,
	datad => \inst|PC|_~3_combout\,
	combout => \inst|PC|R[6]~10_combout\);

-- Location: FF_X74_Y29_N31
\inst|PC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(6));

-- Location: LCCOMB_X76_Y29_N28
\inst|PC|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~11_combout\ = (\inst|PC|R\(6) & ((\inst|PC|R[5]~6_combout\) # ((\inst|PC|R\(4) & \inst|PC|R[6]~3_combout\)))) # (!\inst|PC|R\(6) & (((\inst|PC|R\(4) & \inst|PC|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(6),
	datab => \inst|PC|R[5]~6_combout\,
	datac => \inst|PC|R\(4),
	datad => \inst|PC|R[6]~3_combout\,
	combout => \inst|PC|R[5]~11_combout\);

-- Location: LCCOMB_X76_Y29_N18
\inst|PC|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~12_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(5)) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~10_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R\(5),
	datad => \inst|PC|op_2~10_combout\,
	combout => \inst|PC|R[5]~12_combout\);

-- Location: LCCOMB_X76_Y29_N4
\inst|PC|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~13_combout\ = (\inst|PC|R[5]~11_combout\) # ((\inst|PC|R[5]~12_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|R[5]~11_combout\,
	datac => \inst|PC|op_1~8_combout\,
	datad => \inst|PC|R[5]~12_combout\,
	combout => \inst|PC|R[5]~13_combout\);

-- Location: LCCOMB_X74_Y29_N14
\inst|PC|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~14_combout\ = (\inst|PC|R[5]~13_combout\) # ((\inst|BUS[5]~28_combout\ & \inst|PC|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R[5]~13_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|PC|_~3_combout\,
	combout => \inst|PC|R[5]~14_combout\);

-- Location: FF_X74_Y29_N15
\inst|PC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(5));

-- Location: LCCOMB_X40_Y12_N8
\inst|ALU|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~17_combout\ = (\inst|alu_y|R\(2) & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_y|R\(2),
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|_~17_combout\);

-- Location: LCCOMB_X40_Y13_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\) # (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ $ (\inst|ALU|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\,
	datab => \inst|ALU|_~16_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X41_Y12_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ = (!\inst|ALU|_~15_combout\ & (\inst|alu_x|R[6]~_Duplicate_1_q\ $ (((\inst|alu_y|R\(0) & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\,
	datad => \inst|ALU|_~15_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X40_Y13_N2
\inst|ALU|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~19_combout\ = (\inst|alu_x|R[5]~_Duplicate_1_q\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|_~19_combout\);

-- Location: LCCOMB_X40_Y13_N26
\inst|ALU|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~18_combout\ = (\inst|ALU|_~33_combout\ & (\inst|alu_y|R\(0) & ((!\inst|ALU|_~7_combout\) # (!\inst|ALU|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~8_combout\,
	datab => \inst|ALU|_~33_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|_~18_combout\);

-- Location: LCCOMB_X41_Y12_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\inst|ALU|_~19_combout\ & ((GND) # (!\inst|ALU|_~18_combout\))) # (!\inst|ALU|_~19_combout\ & (\inst|ALU|_~18_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst|ALU|_~19_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~19_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X41_Y12_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|ALU|_~16_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\))) # (!\inst|ALU|_~16_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X41_Y12_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|ALU|_~17_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|ALU|_~17_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\inst|ALU|_~17_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~17_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X41_Y12_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X41_Y13_N2
\inst|ALU|Result[5]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~147_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ & (!\inst|alu_y|R\(3) & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\inst|ALU|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \inst|alu_y|R\(3),
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|ALU|_~15_combout\,
	combout => \inst|ALU|Result[5]~147_combout\);

-- Location: LCCOMB_X43_Y12_N0
\inst|ALU|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~20_combout\ = (\SelOp[0]~input_o\ & (\SelOp[2]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~20_combout\);

-- Location: LCCOMB_X43_Y12_N22
\inst|ALU|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~21_combout\ = (!\SelOp[0]~input_o\ & (\SelOp[2]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~21_combout\);

-- Location: LCCOMB_X42_Y13_N28
\inst|ALU|Result[5]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~114_combout\ = (\inst|alu_y|R\(5) & ((\inst|ALU|_~20_combout\) # ((\inst|alu_x|R[5]~_Duplicate_1_q\ & \inst|ALU|_~21_combout\)))) # (!\inst|alu_y|R\(5) & (\inst|ALU|_~20_combout\ & (\inst|alu_x|R[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|ALU|_~20_combout\,
	datac => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => \inst|ALU|_~21_combout\,
	combout => \inst|ALU|Result[5]~114_combout\);

-- Location: LCCOMB_X47_Y12_N24
\inst|ALU|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~4_combout\ = (!\SelOp[2]~input_o\ & (\SelOp[1]~input_o\ & !\SelOp[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[1]~input_o\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|_~4_combout\);

-- Location: LCCOMB_X47_Y12_N2
\inst|ALU|Result[5]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~115_combout\ = (\inst|ALU|_~13_combout\ & (((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\)) # (!\inst|alu_y|R\(5)))) # (!\inst|ALU|_~13_combout\ & (\inst|ALU|_~4_combout\ & 
-- ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|alu_y|R\(5),
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\,
	combout => \inst|ALU|Result[5]~115_combout\);

-- Location: LCCOMB_X43_Y12_N4
\inst|ALU|Result[7]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~116_combout\ = (\SelOp[2]~input_o\ & \SelOp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelOp[2]~input_o\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Result[7]~116_combout\);

-- Location: LCCOMB_X42_Y13_N18
\inst|ALU|Result[5]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~117_combout\ = (\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~10_combout\ & \inst|ALU|_~14_combout\)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~10_combout\ & 
-- \inst|ALU|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~116_combout\,
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datac => \inst|ALU|op_3~10_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Result[5]~117_combout\);

-- Location: LCCOMB_X42_Y13_N20
\inst|ALU|Result[5]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~118_combout\ = (\inst|ALU|Result[5]~114_combout\) # ((\inst|ALU|Result[5]~115_combout\) # (\inst|ALU|Result[5]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[5]~114_combout\,
	datac => \inst|ALU|Result[5]~115_combout\,
	datad => \inst|ALU|Result[5]~117_combout\,
	combout => \inst|ALU|Result[5]~118_combout\);

-- Location: LCCOMB_X42_Y13_N26
\inst|ALU|Result[5]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~119_combout\ = (\inst|ALU|Result[5]~147_combout\) # ((\inst|ALU|Result[5]~118_combout\) # ((\inst|ALU|_~10_combout\ & \inst|ALU|op_2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[5]~147_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|op_2~10_combout\,
	datad => \inst|ALU|Result[5]~118_combout\,
	combout => \inst|ALU|Result[5]~119_combout\);

-- Location: FF_X42_Y12_N29
\inst|alu_r|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|ALU|Result[5]~119_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(5));

-- Location: LCCOMB_X69_Y28_N12
\inst|BUS[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~26_combout\ = (\inst|_~31_combout\ & ((\inst|PC|R\(5)) # ((\inst|alu_r|R\(5) & \inst|_~30_combout\)))) # (!\inst|_~31_combout\ & (((\inst|alu_r|R\(5) & \inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~31_combout\,
	datab => \inst|PC|R\(5),
	datac => \inst|alu_r|R\(5),
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[5]~26_combout\);

-- Location: LCCOMB_X69_Y28_N14
\inst|BUS[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~25_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & ((\inst|DI|R\(5)))) # (!\inst|SelBus[4]~3_combout\ & (\inst|Cx|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(5),
	datab => \inst|_~29_combout\,
	datac => \inst|DI|R\(5),
	datad => \inst|SelBus[4]~3_combout\,
	combout => \inst|BUS[5]~25_combout\);

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: LCCOMB_X69_Y28_N10
\inst|BUS[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~27_combout\ = (\inst|BUS[5]~26_combout\) # ((\inst|BUS[5]~25_combout\) # ((\Fx[5]~input_o\ & \inst|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[5]~26_combout\,
	datab => \inst|BUS[5]~25_combout\,
	datac => \Fx[5]~input_o\,
	datad => \inst|_~32_combout\,
	combout => \inst|BUS[5]~27_combout\);

-- Location: LCCOMB_X70_Y28_N26
\inst|_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~52_combout\ = (!\inst|SelBus[1]~2_combout\ & (!\inst|SelBus[2]~1_combout\ & (\inst|_~51_combout\ & !\inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~51_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~52_combout\);

-- Location: LCCOMB_X72_Y28_N28
\inst|BUS[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~23_combout\ = (\inst|_~50_combout\ & ((\inst|Bx|R\(5)) # ((\inst|Ax|R\(5) & \inst|_~52_combout\)))) # (!\inst|_~50_combout\ & (((\inst|Ax|R\(5) & \inst|_~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~50_combout\,
	datab => \inst|Bx|R\(5),
	datac => \inst|Ax|R\(5),
	datad => \inst|_~52_combout\,
	combout => \inst|BUS[5]~23_combout\);

-- Location: LCCOMB_X67_Y24_N8
\inst|BUS[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~22_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(5)) # ((\inst|_~27_combout\ & \inst|SP|R\(5))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(5),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(5),
	combout => \inst|BUS[5]~22_combout\);

-- Location: LCCOMB_X72_Y26_N28
\inst|IR|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[5]~feeder_combout\ = \inst|BUS[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[5]~28_combout\,
	combout => \inst|IR|R[5]~feeder_combout\);

-- Location: FF_X72_Y26_N29
\inst|IR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(5));

-- Location: FF_X72_Y28_N27
\inst|BP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(5));

-- Location: LCCOMB_X72_Y28_N26
\inst|BUS[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~21_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(5)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR|R\(5),
	datab => \inst|_~25_combout\,
	datac => \inst|BP|R\(5),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[5]~21_combout\);

-- Location: LCCOMB_X71_Y28_N8
\inst|BUS[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~24_combout\ = (\inst|BUS[5]~23_combout\) # ((\inst|BUS[5]~22_combout\) # (\inst|BUS[5]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[5]~23_combout\,
	datac => \inst|BUS[5]~22_combout\,
	datad => \inst|BUS[5]~21_combout\,
	combout => \inst|BUS[5]~24_combout\);

-- Location: LCCOMB_X72_Y29_N18
\inst|BUS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~20_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(5))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(5),
	datab => \inst|_~24_combout\,
	datac => \inst|MAR|R\(5),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[5]~20_combout\);

-- Location: LCCOMB_X69_Y28_N0
\inst|BUS[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~28_combout\ = (\inst|BUS[5]~27_combout\) # ((\inst|BUS[5]~24_combout\) # ((\inst|BUS[5]~20_combout\) # (!\inst|BUS[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[5]~27_combout\,
	datab => \inst|BUS[5]~24_combout\,
	datac => \inst|BUS[5]~20_combout\,
	datad => \inst|BUS[7]~9_combout\,
	combout => \inst|BUS[5]~28_combout\);

-- Location: FF_X41_Y13_N31
\inst|alu_y|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(5));

-- Location: LCCOMB_X40_Y13_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ = (!\inst|alu_y|R\(5) & (!\inst|alu_y|R\(7) & (!\inst|alu_y|R\(6) & !\inst|alu_y|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_y|R\(7),
	datac => \inst|alu_y|R\(6),
	datad => \inst|alu_y|R\(4),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\);

-- Location: LCCOMB_X40_Y13_N20
\inst|ALU|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~6_combout\ = (!\inst|alu_y|R\(1) & (!\inst|alu_y|R\(3) & (!\inst|alu_y|R\(2) & \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_y|R\(3),
	datac => \inst|alu_y|R\(2),
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \inst|ALU|_~6_combout\);

-- Location: LCCOMB_X40_Y13_N14
\inst|ALU|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~15_combout\ = ((\inst|ALU|_~6_combout\ & !\inst|alu_y|R\(0))) # (!\inst|ALU|_~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|_~15_combout\);

-- Location: LCCOMB_X39_Y13_N24
\inst|ALU|Result[0]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~141_combout\ = (\inst|ALU|op_2~0_combout\ & \inst|ALU|_~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|op_2~0_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[0]~141_combout\);

-- Location: LCCOMB_X43_Y13_N18
\inst|ALU|Result[0]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~144_combout\ = (\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~0_combout\ & \inst|ALU|_~14_combout\)) # (!\inst|alu_x|R[0]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~0_combout\ & 
-- \inst|ALU|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~116_combout\,
	datab => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datac => \inst|ALU|op_3~0_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Result[0]~144_combout\);

-- Location: LCCOMB_X43_Y13_N8
\inst|ALU|Result[0]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~142_combout\ = (\inst|ALU|_~20_combout\ & ((\inst|alu_y|R\(0)) # ((\inst|alu_x|R[0]~_Duplicate_1_q\)))) # (!\inst|ALU|_~20_combout\ & (\inst|alu_y|R\(0) & (\inst|ALU|_~21_combout\ & \inst|alu_x|R[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~20_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~21_combout\,
	datad => \inst|alu_x|R[0]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[0]~142_combout\);

-- Location: LCCOMB_X47_Y12_N18
\inst|ALU|Result[0]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~143_combout\ = (\inst|alu_y|R\(0) & (\inst|ALU|_~4_combout\ & (\inst|ALU|op_5|auto_generated|mac_out2~dataout\))) # (!\inst|alu_y|R\(0) & ((\inst|ALU|_~13_combout\) # ((\inst|ALU|_~4_combout\ & 
-- \inst|ALU|op_5|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~dataout\,
	datad => \inst|ALU|_~13_combout\,
	combout => \inst|ALU|Result[0]~143_combout\);

-- Location: LCCOMB_X43_Y13_N4
\inst|ALU|Result[0]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~145_combout\ = (\inst|ALU|Result[0]~144_combout\) # ((\inst|ALU|Result[0]~142_combout\) # (\inst|ALU|Result[0]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[0]~144_combout\,
	datac => \inst|ALU|Result[0]~142_combout\,
	datad => \inst|ALU|Result[0]~143_combout\,
	combout => \inst|ALU|Result[0]~145_combout\);

-- Location: LCCOMB_X36_Y12_N16
\inst|ALU|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~30_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_y|R\(7) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|alu_y|R\(7),
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|_~30_combout\);

-- Location: LCCOMB_X38_Y13_N30
\inst|ALU|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~28_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_y|R\(6) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~6_combout\,
	datad => \inst|alu_y|R\(6),
	combout => \inst|ALU|_~28_combout\);

-- Location: LCCOMB_X38_Y12_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ = (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(6)) # (\inst|alu_y|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(6),
	datac => \inst|ALU|_~15_combout\,
	datad => \inst|alu_y|R\(7),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\);

-- Location: LCCOMB_X41_Y13_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ = (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(3)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \inst|alu_y|R\(3),
	datad => \inst|ALU|_~15_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\);

-- Location: LCCOMB_X41_Y12_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X41_Y13_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # 
-- (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\);

-- Location: LCCOMB_X40_Y12_N6
\inst|ALU|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~22_combout\ = (\inst|alu_y|R\(3) & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(3),
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|_~22_combout\);

-- Location: LCCOMB_X41_Y12_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X41_Y12_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & (((\inst|ALU|_~19_combout\)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|ALU|_~19_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|ALU|_~19_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X40_Y13_N0
\inst|ALU|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~23_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_x|R[4]~_Duplicate_1_q\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|_~23_combout\);

-- Location: LCCOMB_X41_Y12_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\inst|ALU|_~23_combout\ & ((GND) # (!\inst|ALU|_~18_combout\))) # (!\inst|ALU|_~23_combout\ & (\inst|ALU|_~18_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst|ALU|_~23_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~23_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X41_Y12_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|ALU|_~16_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\))) # (!\inst|ALU|_~16_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X41_Y12_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|ALU|_~17_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|ALU|_~17_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\inst|ALU|_~17_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~17_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X41_Y12_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X41_Y12_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X41_Y12_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X40_Y12_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ = (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(5)) # ((\inst|alu_y|R\(7)) # (\inst|alu_y|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_y|R\(7),
	datac => \inst|alu_y|R\(6),
	datad => \inst|ALU|_~15_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\);

-- Location: LCCOMB_X39_Y12_N12
\inst|ALU|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~24_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_y|R\(4) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|alu_y|R\(4),
	combout => \inst|ALU|_~24_combout\);

-- Location: LCCOMB_X41_Y12_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X41_Y12_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X40_Y12_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & (\inst|ALU|_~23_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|_~23_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~23_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X40_Y12_N26
\inst|ALU|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~25_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|_~25_combout\);

-- Location: LCCOMB_X40_Y12_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\inst|ALU|_~25_combout\ & ((GND) # (!\inst|ALU|_~18_combout\))) # (!\inst|ALU|_~25_combout\ & (\inst|ALU|_~18_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\inst|ALU|_~25_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~25_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X40_Y12_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst|ALU|_~16_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\))) # (!\inst|ALU|_~16_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X40_Y12_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\inst|ALU|_~17_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\inst|ALU|_~17_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ & 
-- (!\inst|ALU|_~17_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \inst|ALU|_~17_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X40_Y12_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X40_Y12_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\inst|ALU|_~24_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\inst|ALU|_~24_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & 
-- (!\inst|ALU|_~24_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \inst|ALU|_~24_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X40_Y12_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X40_Y12_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X39_Y12_N6
\inst|ALU|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~26_combout\ = (\inst|ALU|_~12_combout\ & (\inst|alu_y|R\(5) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|alu_y|R\(5),
	combout => \inst|ALU|_~26_combout\);

-- Location: LCCOMB_X40_Y12_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X40_Y12_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X40_Y12_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X40_Y12_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & (\inst|ALU|_~25_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|_~25_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~25_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X39_Y12_N8
\inst|ALU|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~27_combout\ = (\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|_~27_combout\);

-- Location: LCCOMB_X39_Y12_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\inst|ALU|_~18_combout\ & (\inst|ALU|_~27_combout\ $ (VCC))) # (!\inst|ALU|_~18_combout\ & ((\inst|ALU|_~27_combout\) # (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\inst|ALU|_~27_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~18_combout\,
	datab => \inst|ALU|_~27_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X39_Y12_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\inst|ALU|_~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\inst|ALU|_~16_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\inst|ALU|_~16_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~16_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datab => \inst|ALU|_~16_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X39_Y12_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ $ (\inst|ALU|_~17_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # (!\inst|ALU|_~17_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ & 
-- (!\inst|ALU|_~17_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \inst|ALU|_~17_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X39_Y12_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X39_Y12_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\inst|ALU|_~24_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\inst|ALU|_~24_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\inst|ALU|_~24_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~24_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X39_Y12_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\inst|ALU|_~26_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\))) # (!\inst|ALU|_~26_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X39_Y12_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X39_Y12_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X39_Y12_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X39_Y12_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X39_Y12_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X39_Y12_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X39_Y12_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & (((\inst|ALU|_~27_combout\)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|_~27_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \inst|ALU|_~27_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X38_Y13_N20
\inst|ALU|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~29_combout\ = (\inst|alu_x|R[1]~_Duplicate_1_q\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~12_combout\,
	combout => \inst|ALU|_~29_combout\);

-- Location: LCCOMB_X38_Y12_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\inst|ALU|_~18_combout\ & (\inst|ALU|_~29_combout\ $ (VCC))) # (!\inst|ALU|_~18_combout\ & ((\inst|ALU|_~29_combout\) # (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\inst|ALU|_~29_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~18_combout\,
	datab => \inst|ALU|_~29_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X38_Y12_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\inst|ALU|_~16_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\))) # (!\inst|ALU|_~16_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X38_Y12_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\inst|ALU|_~17_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\inst|ALU|_~17_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ & 
-- (!\inst|ALU|_~17_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \inst|ALU|_~17_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X38_Y12_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X38_Y12_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ $ (\inst|ALU|_~24_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\) # (!\inst|ALU|_~24_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- (!\inst|ALU|_~24_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datab => \inst|ALU|_~24_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X38_Y12_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\inst|ALU|_~26_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\))) # (!\inst|ALU|_~26_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X38_Y12_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\inst|ALU|_~28_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\inst|ALU|_~28_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # (!\inst|ALU|_~28_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~28_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X38_Y12_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X37_Y12_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[54]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\) # ((\inst|alu_y|R\(7) & !\inst|ALU|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|_~15_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54));

-- Location: LCCOMB_X37_Y12_N24
\inst|alu_res|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[7]~0_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54),
	combout => \inst|alu_res|R[7]~0_combout\);

-- Location: LCCOMB_X37_Y12_N26
\inst|alu_res|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[6]~1_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54),
	combout => \inst|alu_res|R[6]~1_combout\);

-- Location: LCCOMB_X37_Y12_N28
\inst|alu_res|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[5]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54),
	combout => \inst|alu_res|R[5]~2_combout\);

-- Location: LCCOMB_X37_Y12_N4
\inst|alu_res|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[4]~3_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54),
	combout => \inst|alu_res|R[4]~3_combout\);

-- Location: LCCOMB_X38_Y12_N4
\inst|alu_res|R[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[3]~7_combout\ = (\inst|ALU|_~15_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))) # (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(7) & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\inst|alu_y|R\(7) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	combout => \inst|alu_res|R[3]~7_combout\);

-- Location: LCCOMB_X37_Y12_N30
\inst|alu_res|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[3]~4_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|alu_res|R[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \inst|alu_res|R[3]~7_combout\,
	combout => \inst|alu_res|R[3]~4_combout\);

-- Location: LCCOMB_X38_Y12_N30
\inst|alu_res|R[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[2]~8_combout\ = (\inst|ALU|_~15_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))) # (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(7) & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\)) # (!\inst|alu_y|R\(7) & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datad => \inst|alu_y|R\(7),
	combout => \inst|alu_res|R[2]~8_combout\);

-- Location: LCCOMB_X37_Y12_N0
\inst|alu_res|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[2]~5_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|alu_res|R[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|R[2]~8_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|alu_res|R[2]~5_combout\);

-- Location: LCCOMB_X38_Y12_N0
\inst|alu_res|R[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[1]~9_combout\ = (\inst|ALU|_~15_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)) # (!\inst|ALU|_~15_combout\ & ((\inst|alu_y|R\(7) & ((\inst|ALU|_~29_combout\))) # 
-- (!\inst|alu_y|R\(7) & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datab => \inst|ALU|_~29_combout\,
	datac => \inst|ALU|_~15_combout\,
	datad => \inst|alu_y|R\(7),
	combout => \inst|alu_res|R[1]~9_combout\);

-- Location: LCCOMB_X38_Y12_N8
\inst|alu_res|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[1]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|_~29_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|alu_res|R[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~29_combout\,
	datab => \inst|alu_res|R[1]~9_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|alu_res|R[1]~6_combout\);

-- Location: LCCOMB_X36_Y12_N22
\inst|ALU|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~31_combout\ = (\inst|alu_x|R[0]~_Duplicate_1_q\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|_~31_combout\);

-- Location: LCCOMB_X37_Y12_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\inst|ALU|_~18_combout\ & (\inst|ALU|_~31_combout\ $ (VCC))) # (!\inst|ALU|_~18_combout\ & ((\inst|ALU|_~31_combout\) # (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\inst|ALU|_~31_combout\) # (!\inst|ALU|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~18_combout\,
	datab => \inst|ALU|_~31_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: LCCOMB_X37_Y12_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|alu_res|R[1]~6_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\inst|alu_res|R[1]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))))) 
-- # (!\inst|ALU|_~16_combout\ & ((\inst|alu_res|R[1]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)) # (!\inst|alu_res|R[1]~6_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\inst|ALU|_~16_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # 
-- (!\inst|alu_res|R[1]~6_combout\))) # (!\inst|ALU|_~16_combout\ & (!\inst|alu_res|R[1]~6_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|alu_res|R[1]~6_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X37_Y12_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\inst|ALU|_~17_combout\ $ (\inst|alu_res|R[2]~5_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\inst|ALU|_~17_combout\ & (\inst|alu_res|R[2]~5_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)) # (!\inst|ALU|_~17_combout\ & ((\inst|alu_res|R[2]~5_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~17_combout\,
	datab => \inst|alu_res|R[2]~5_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X37_Y12_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\inst|alu_res|R[3]~4_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)))) # 
-- (!\inst|alu_res|R[3]~4_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))) # (!\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\inst|alu_res|R[3]~4_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\inst|alu_res|R[3]~4_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|R[3]~4_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X37_Y12_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\inst|ALU|_~24_combout\ $ (\inst|alu_res|R[4]~3_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\inst|ALU|_~24_combout\ & (\inst|alu_res|R[4]~3_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)) # (!\inst|ALU|_~24_combout\ & ((\inst|alu_res|R[4]~3_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~24_combout\,
	datab => \inst|alu_res|R[4]~3_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

-- Location: LCCOMB_X37_Y12_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\inst|ALU|_~26_combout\ & ((\inst|alu_res|R[5]~2_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\inst|alu_res|R[5]~2_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))))) 
-- # (!\inst|ALU|_~26_combout\ & ((\inst|alu_res|R[5]~2_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)) # (!\inst|alu_res|R[5]~2_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\inst|ALU|_~26_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # 
-- (!\inst|alu_res|R[5]~2_combout\))) # (!\inst|ALU|_~26_combout\ & (!\inst|alu_res|R[5]~2_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|alu_res|R[5]~2_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

-- Location: LCCOMB_X37_Y12_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\inst|alu_res|R[6]~1_combout\ $ (\inst|ALU|_~28_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\inst|alu_res|R[6]~1_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\) # 
-- (!\inst|ALU|_~28_combout\))) # (!\inst|alu_res|R[6]~1_combout\ & (!\inst|ALU|_~28_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|R[6]~1_combout\,
	datab => \inst|ALU|_~28_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

-- Location: LCCOMB_X37_Y12_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\inst|ALU|_~30_combout\ & ((\inst|alu_res|R[7]~0_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # (!\inst|alu_res|R[7]~0_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # 
-- (GND))))) # (!\inst|ALU|_~30_combout\ & ((\inst|alu_res|R[7]~0_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # (!\inst|alu_res|R[7]~0_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\inst|ALU|_~30_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # 
-- (!\inst|alu_res|R[7]~0_combout\))) # (!\inst|ALU|_~30_combout\ & (!\inst|alu_res|R[7]~0_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~30_combout\,
	datab => \inst|alu_res|R[7]~0_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

-- Location: LCCOMB_X37_Y12_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X36_Y12_N12
\inst|ALU|Result[0]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~146_combout\ = (\inst|ALU|Result[0]~141_combout\) # ((\inst|ALU|Result[0]~145_combout\) # ((!\inst|ALU|_~15_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Result[0]~141_combout\,
	datac => \inst|ALU|Result[0]~145_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|ALU|Result[0]~146_combout\);

-- Location: FF_X36_Y12_N13
\inst|alu_r|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[0]~146_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(0));

-- Location: IOIBUF_X69_Y54_N29
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

-- Location: LCCOMB_X69_Y28_N26
\inst|BUS[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~71_combout\ = (\inst|alu_r|R\(0) & ((\inst|_~30_combout\) # ((\inst|_~32_combout\ & \Fx[0]~input_o\)))) # (!\inst|alu_r|R\(0) & (\inst|_~32_combout\ & (\Fx[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_r|R\(0),
	datab => \inst|_~32_combout\,
	datac => \Fx[0]~input_o\,
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[0]~71_combout\);

-- Location: LCCOMB_X71_Y28_N4
\inst|BUS[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~70_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & (\inst|DI|R\(0))) # (!\inst|SelBus[4]~3_combout\ & ((\inst|Cx|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|_~29_combout\,
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|Cx|R\(0),
	combout => \inst|BUS[0]~70_combout\);

-- Location: LCCOMB_X71_Y28_N22
\inst|BUS[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~72_combout\ = (\inst|BUS[0]~71_combout\) # ((\inst|BUS[0]~70_combout\) # ((\inst|Bx|R\(0) & \inst|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~71_combout\,
	datab => \inst|BUS[0]~70_combout\,
	datac => \inst|Bx|R\(0),
	datad => \inst|_~50_combout\,
	combout => \inst|BUS[0]~72_combout\);

-- Location: LCCOMB_X67_Y24_N22
\inst|BUS[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~68_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(0)) # ((\inst|_~27_combout\ & \inst|SP|R\(0))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(0),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(0),
	combout => \inst|BUS[0]~68_combout\);

-- Location: LCCOMB_X71_Y25_N18
\inst|BUS[0]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~67_combout\ = (\inst|Ax|R\(0) & (\inst|_~26_combout\ & \inst|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(0),
	datab => \inst|_~26_combout\,
	datad => \inst|_~51_combout\,
	combout => \inst|BUS[0]~67_combout\);

-- Location: LCCOMB_X72_Y29_N14
\inst|BUS[0]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~65_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|MDR|R\(0)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|MAR|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR|R\(0),
	datab => \inst|_~24_combout\,
	datac => \inst|MDR|R\(0),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[0]~65_combout\);

-- Location: LCCOMB_X72_Y26_N4
\inst|IR|R[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[0]~feeder_combout\ = \inst|BUS[0]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|IR|R[0]~feeder_combout\);

-- Location: FF_X72_Y26_N5
\inst|IR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(0));

-- Location: FF_X71_Y25_N1
\inst|BP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~73_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(0));

-- Location: LCCOMB_X71_Y25_N0
\inst|BUS[0]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~66_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(0)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|IR|R\(0),
	datac => \inst|BP|R\(0),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[0]~66_combout\);

-- Location: LCCOMB_X71_Y25_N16
\inst|BUS[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~69_combout\ = (\inst|BUS[0]~68_combout\) # ((\inst|BUS[0]~67_combout\) # ((\inst|BUS[0]~65_combout\) # (\inst|BUS[0]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~68_combout\,
	datab => \inst|BUS[0]~67_combout\,
	datac => \inst|BUS[0]~65_combout\,
	datad => \inst|BUS[0]~66_combout\,
	combout => \inst|BUS[0]~69_combout\);

-- Location: LCCOMB_X71_Y28_N12
\inst|BUS[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~73_combout\ = (\inst|BUS[0]~72_combout\) # ((\inst|BUS[0]~69_combout\) # ((\inst|_~31_combout\ & \inst|PC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~72_combout\,
	datab => \inst|_~31_combout\,
	datac => \inst|PC|R\(0),
	datad => \inst|BUS[0]~69_combout\,
	combout => \inst|BUS[0]~73_combout\);

-- Location: LCCOMB_X75_Y29_N8
\inst|PC|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (\inst|_~47_combout\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|R[0]~31_combout\);

-- Location: LCCOMB_X75_Y29_N14
\inst|PC|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~32_combout\ = (\inst|PC|R\(1) & ((\inst|PC|R[5]~6_combout\) # ((!\inst|PC|R\(0) & \inst|PC|R[0]~31_combout\)))) # (!\inst|PC|R\(1) & (!\inst|PC|R\(0) & (\inst|PC|R[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(1),
	datab => \inst|PC|R\(0),
	datac => \inst|PC|R[0]~31_combout\,
	datad => \inst|PC|R[5]~6_combout\,
	combout => \inst|PC|R[0]~32_combout\);

-- Location: LCCOMB_X75_Y29_N12
\inst|PC|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~4_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\inst|_~47_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|_~4_combout\);

-- Location: LCCOMB_X75_Y29_N10
\inst|PC|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~33_combout\ = (\inst|PC|_~4_combout\ & ((\inst|PC|R\(7)) # ((\inst|PC|R\(0) & \inst|PC|R[7]~1_combout\)))) # (!\inst|PC|_~4_combout\ & (\inst|PC|R\(0) & ((\inst|PC|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~4_combout\,
	datab => \inst|PC|R\(0),
	datac => \inst|PC|R\(7),
	datad => \inst|PC|R[7]~1_combout\,
	combout => \inst|PC|R[0]~33_combout\);

-- Location: LCCOMB_X74_Y29_N22
\inst|PC|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~34_combout\ = (\inst|PC|R[0]~32_combout\) # ((\inst|PC|R[0]~33_combout\) # ((\inst|BUS[0]~73_combout\ & \inst|PC|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~73_combout\,
	datab => \inst|PC|R[0]~32_combout\,
	datac => \inst|PC|R[0]~33_combout\,
	datad => \inst|PC|_~3_combout\,
	combout => \inst|PC|R[0]~34_combout\);

-- Location: FF_X74_Y29_N23
\inst|PC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(0));

-- Location: LCCOMB_X77_Y29_N14
\inst|PC|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~1_cout\ = CARRY(\inst|PC|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(0),
	datad => VCC,
	cout => \inst|PC|op_2~1_cout\);

-- Location: LCCOMB_X77_Y29_N16
\inst|PC|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~2_combout\ = (\inst|PC|R\(1) & (\inst|PC|op_2~1_cout\ & VCC)) # (!\inst|PC|R\(1) & (!\inst|PC|op_2~1_cout\))
-- \inst|PC|op_2~3\ = CARRY((!\inst|PC|R\(1) & !\inst|PC|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(1),
	datad => VCC,
	cin => \inst|PC|op_2~1_cout\,
	combout => \inst|PC|op_2~2_combout\,
	cout => \inst|PC|op_2~3\);

-- Location: LCCOMB_X76_Y29_N22
\inst|PC|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~28_combout\ = (\inst|PC|R\(1) & ((\inst|PC|R[7]~1_combout\) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~2_combout\)))) # (!\inst|PC|R\(1) & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(1),
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R[7]~1_combout\,
	datad => \inst|PC|op_2~2_combout\,
	combout => \inst|PC|R[1]~28_combout\);

-- Location: LCCOMB_X75_Y29_N22
\inst|PC|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~29_combout\ = (\inst|PC|R[1]~28_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|_~0_combout\,
	datac => \inst|PC|op_1~0_combout\,
	datad => \inst|PC|R[1]~28_combout\,
	combout => \inst|PC|R[1]~29_combout\);

-- Location: LCCOMB_X75_Y29_N28
\inst|PC|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~27_combout\ = (\inst|PC|R\(2) & ((\inst|PC|R[5]~6_combout\) # ((\inst|PC|R[6]~3_combout\ & \inst|PC|R\(0))))) # (!\inst|PC|R\(2) & (\inst|PC|R[6]~3_combout\ & (\inst|PC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(2),
	datab => \inst|PC|R[6]~3_combout\,
	datac => \inst|PC|R\(0),
	datad => \inst|PC|R[5]~6_combout\,
	combout => \inst|PC|R[1]~27_combout\);

-- Location: LCCOMB_X74_Y29_N2
\inst|PC|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~30_combout\ = (\inst|PC|R[1]~29_combout\) # ((\inst|PC|R[1]~27_combout\) # ((\inst|PC|_~3_combout\ & \inst|BUS[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~3_combout\,
	datab => \inst|PC|R[1]~29_combout\,
	datac => \inst|BUS[1]~64_combout\,
	datad => \inst|PC|R[1]~27_combout\,
	combout => \inst|PC|R[1]~30_combout\);

-- Location: FF_X74_Y29_N3
\inst|PC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(1));

-- Location: LCCOMB_X77_Y29_N18
\inst|PC|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~4_combout\ = (\inst|PC|R\(2) & ((GND) # (!\inst|PC|op_2~3\))) # (!\inst|PC|R\(2) & (\inst|PC|op_2~3\ $ (GND)))
-- \inst|PC|op_2~5\ = CARRY((\inst|PC|R\(2)) # (!\inst|PC|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(2),
	datad => VCC,
	cin => \inst|PC|op_2~3\,
	combout => \inst|PC|op_2~4_combout\,
	cout => \inst|PC|op_2~5\);

-- Location: LCCOMB_X77_Y29_N20
\inst|PC|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~6_combout\ = (\inst|PC|R\(3) & (\inst|PC|op_2~5\ & VCC)) # (!\inst|PC|R\(3) & (!\inst|PC|op_2~5\))
-- \inst|PC|op_2~7\ = CARRY((!\inst|PC|R\(3) & !\inst|PC|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(3),
	datad => VCC,
	cin => \inst|PC|op_2~5\,
	combout => \inst|PC|op_2~6_combout\,
	cout => \inst|PC|op_2~7\);

-- Location: LCCOMB_X76_Y29_N10
\inst|PC|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~20_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(3)) # ((\inst|PC|op_2~6_combout\ & \inst|PC|_~2_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (((\inst|PC|op_2~6_combout\ & \inst|PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|R\(3),
	datac => \inst|PC|op_2~6_combout\,
	datad => \inst|PC|_~2_combout\,
	combout => \inst|PC|R[3]~20_combout\);

-- Location: LCCOMB_X76_Y29_N0
\inst|PC|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~19_combout\ = (\inst|PC|R[6]~3_combout\ & ((\inst|PC|R\(2)) # ((\inst|PC|R\(4) & \inst|PC|R[5]~6_combout\)))) # (!\inst|PC|R[6]~3_combout\ & (((\inst|PC|R\(4) & \inst|PC|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[6]~3_combout\,
	datab => \inst|PC|R\(2),
	datac => \inst|PC|R\(4),
	datad => \inst|PC|R[5]~6_combout\,
	combout => \inst|PC|R[3]~19_combout\);

-- Location: LCCOMB_X76_Y29_N16
\inst|PC|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~21_combout\ = (\inst|PC|R[3]~20_combout\) # ((\inst|PC|R[3]~19_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[3]~20_combout\,
	datab => \inst|PC|R[3]~19_combout\,
	datac => \inst|PC|_~0_combout\,
	datad => \inst|PC|op_1~4_combout\,
	combout => \inst|PC|R[3]~21_combout\);

-- Location: LCCOMB_X74_Y29_N18
\inst|PC|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~22_combout\ = (\inst|PC|R[3]~21_combout\) # ((\inst|BUS[3]~46_combout\ & \inst|PC|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~46_combout\,
	datac => \inst|PC|R[3]~21_combout\,
	datad => \inst|PC|_~3_combout\,
	combout => \inst|PC|R[3]~22_combout\);

-- Location: FF_X74_Y29_N19
\inst|PC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(3));

-- Location: LCCOMB_X76_Y29_N12
\inst|PC|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~16_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(4)) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~8_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R\(4),
	datad => \inst|PC|op_2~8_combout\,
	combout => \inst|PC|R[4]~16_combout\);

-- Location: LCCOMB_X76_Y29_N14
\inst|PC|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~15_combout\ = (\inst|PC|R[6]~3_combout\ & ((\inst|PC|R\(3)) # ((\inst|PC|R\(5) & \inst|PC|R[5]~6_combout\)))) # (!\inst|PC|R[6]~3_combout\ & (((\inst|PC|R\(5) & \inst|PC|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[6]~3_combout\,
	datab => \inst|PC|R\(3),
	datac => \inst|PC|R\(5),
	datad => \inst|PC|R[5]~6_combout\,
	combout => \inst|PC|R[4]~15_combout\);

-- Location: LCCOMB_X76_Y29_N26
\inst|PC|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~17_combout\ = (\inst|PC|R[4]~16_combout\) # ((\inst|PC|R[4]~15_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[4]~16_combout\,
	datab => \inst|PC|R[4]~15_combout\,
	datac => \inst|PC|_~0_combout\,
	datad => \inst|PC|op_1~6_combout\,
	combout => \inst|PC|R[4]~17_combout\);

-- Location: LCCOMB_X74_Y29_N10
\inst|PC|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~18_combout\ = (\inst|PC|R[4]~17_combout\) # ((\inst|PC|_~3_combout\ & \inst|BUS[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~3_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|PC|R[4]~17_combout\,
	combout => \inst|PC|R[4]~18_combout\);

-- Location: FF_X74_Y29_N11
\inst|PC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(4));

-- Location: IOIBUF_X78_Y43_N15
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

-- Location: LCCOMB_X42_Y13_N12
\inst|ALU|Result[4]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~122_combout\ = (\inst|ALU|op_2~8_combout\ & ((\inst|ALU|_~10_combout\) # ((!\inst|alu_y|R\(4) & \inst|ALU|_~13_combout\)))) # (!\inst|ALU|op_2~8_combout\ & (!\inst|alu_y|R\(4) & (\inst|ALU|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~8_combout\,
	datab => \inst|alu_y|R\(4),
	datac => \inst|ALU|_~13_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[4]~122_combout\);

-- Location: LCCOMB_X42_Y13_N22
\inst|ALU|Result[4]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~121_combout\ = (\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|_~14_combout\ & \inst|ALU|op_3~8_combout\)) # (!\inst|alu_x|R[4]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~116_combout\ & (\inst|ALU|_~14_combout\ & 
-- (\inst|ALU|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~116_combout\,
	datab => \inst|ALU|_~14_combout\,
	datac => \inst|ALU|op_3~8_combout\,
	datad => \inst|alu_x|R[4]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[4]~121_combout\);

-- Location: LCCOMB_X42_Y13_N16
\inst|ALU|Result[4]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~120_combout\ = (\inst|ALU|_~20_combout\ & (((\inst|alu_y|R\(4)) # (\inst|alu_x|R[4]~_Duplicate_1_q\)))) # (!\inst|ALU|_~20_combout\ & (\inst|ALU|_~21_combout\ & (\inst|alu_y|R\(4) & \inst|alu_x|R[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~21_combout\,
	datab => \inst|ALU|_~20_combout\,
	datac => \inst|alu_y|R\(4),
	datad => \inst|alu_x|R[4]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[4]~120_combout\);

-- Location: LCCOMB_X42_Y13_N30
\inst|ALU|Result[4]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~123_combout\ = (\inst|ALU|Result[4]~122_combout\) # ((\inst|ALU|Result[4]~121_combout\) # (\inst|ALU|Result[4]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[4]~122_combout\,
	datac => \inst|ALU|Result[4]~121_combout\,
	datad => \inst|ALU|Result[4]~120_combout\,
	combout => \inst|ALU|Result[4]~123_combout\);

-- Location: LCCOMB_X42_Y12_N20
\inst|ALU|Result[4]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~124_combout\ = (\inst|ALU|Result[4]~123_combout\) # ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result[4]~123_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\,
	combout => \inst|ALU|Result[4]~124_combout\);

-- Location: LCCOMB_X42_Y12_N22
\inst|ALU|Result[4]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~125_combout\ = (\inst|ALU|Result[4]~124_combout\) # ((!\inst|ALU|_~15_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datad => \inst|ALU|Result[4]~124_combout\,
	combout => \inst|ALU|Result[4]~125_combout\);

-- Location: FF_X42_Y12_N23
\inst|alu_r|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[4]~125_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(4));

-- Location: LCCOMB_X71_Y28_N0
\inst|BUS[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~35_combout\ = (\Fx[4]~input_o\ & ((\inst|_~32_combout\) # ((\inst|alu_r|R\(4) & \inst|_~30_combout\)))) # (!\Fx[4]~input_o\ & (\inst|alu_r|R\(4) & ((\inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[4]~input_o\,
	datab => \inst|alu_r|R\(4),
	datac => \inst|_~32_combout\,
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[4]~35_combout\);

-- Location: LCCOMB_X71_Y28_N6
\inst|BUS[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~34_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & ((\inst|DI|R\(4)))) # (!\inst|SelBus[4]~3_combout\ & (\inst|Cx|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(4),
	datab => \inst|SelBus[4]~3_combout\,
	datac => \inst|DI|R\(4),
	datad => \inst|_~29_combout\,
	combout => \inst|BUS[4]~34_combout\);

-- Location: LCCOMB_X71_Y28_N10
\inst|BUS[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~36_combout\ = (\inst|BUS[4]~35_combout\) # ((\inst|BUS[4]~34_combout\) # ((\inst|_~50_combout\ & \inst|Bx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~50_combout\,
	datab => \inst|BUS[4]~35_combout\,
	datac => \inst|Bx|R\(4),
	datad => \inst|BUS[4]~34_combout\,
	combout => \inst|BUS[4]~36_combout\);

-- Location: LCCOMB_X72_Y29_N30
\inst|BUS[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~29_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(4))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~4_combout\,
	datab => \inst|MDR|R\(4),
	datac => \inst|MAR|R\(4),
	datad => \inst|_~24_combout\,
	combout => \inst|BUS[4]~29_combout\);

-- Location: LCCOMB_X71_Y25_N2
\inst|BUS[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~31_combout\ = (\inst|_~26_combout\ & (\inst|Ax|R\(4) & \inst|_~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~26_combout\,
	datac => \inst|Ax|R\(4),
	datad => \inst|_~51_combout\,
	combout => \inst|BUS[4]~31_combout\);

-- Location: LCCOMB_X67_Y24_N30
\inst|BUS[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~32_combout\ = (\inst|SI|R\(4) & ((\inst|_~28_combout\) # ((\inst|_~27_combout\ & \inst|SP|R\(4))))) # (!\inst|SI|R\(4) & (\inst|_~27_combout\ & ((\inst|SP|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datab => \inst|_~27_combout\,
	datac => \inst|_~28_combout\,
	datad => \inst|SP|R\(4),
	combout => \inst|BUS[4]~32_combout\);

-- Location: LCCOMB_X72_Y26_N20
\inst|IR|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[4]~feeder_combout\ = \inst|BUS[4]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[4]~37_combout\,
	combout => \inst|IR|R[4]~feeder_combout\);

-- Location: FF_X72_Y26_N21
\inst|IR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(4));

-- Location: FF_X71_Y25_N13
\inst|BP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~37_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(4));

-- Location: LCCOMB_X71_Y25_N12
\inst|BUS[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~30_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(4)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~4_combout\,
	datab => \inst|IR|R\(4),
	datac => \inst|BP|R\(4),
	datad => \inst|_~25_combout\,
	combout => \inst|BUS[4]~30_combout\);

-- Location: LCCOMB_X71_Y25_N4
\inst|BUS[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~33_combout\ = (\inst|BUS[4]~29_combout\) # ((\inst|BUS[4]~31_combout\) # ((\inst|BUS[4]~32_combout\) # (\inst|BUS[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~29_combout\,
	datab => \inst|BUS[4]~31_combout\,
	datac => \inst|BUS[4]~32_combout\,
	datad => \inst|BUS[4]~30_combout\,
	combout => \inst|BUS[4]~33_combout\);

-- Location: LCCOMB_X71_Y24_N24
\inst|BUS[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~37_combout\ = (\inst|BUS[4]~36_combout\) # ((\inst|BUS[4]~33_combout\) # ((\inst|PC|R\(4) & \inst|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datab => \inst|_~31_combout\,
	datac => \inst|BUS[4]~36_combout\,
	datad => \inst|BUS[4]~33_combout\,
	combout => \inst|BUS[4]~37_combout\);

-- Location: LCCOMB_X71_Y24_N10
\inst|DST|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[4]~feeder_combout\ = \inst|BUS[4]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[4]~37_combout\,
	combout => \inst|DST|R[4]~feeder_combout\);

-- Location: FF_X71_Y24_N11
\inst|DST|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(4));

-- Location: LCCOMB_X70_Y26_N8
\inst|SelMUX[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[4]~2_combout\ = (\SelDST~input_o\ & (\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST_UC[4]~input_o\,
	datac => \inst|DST|R\(4),
	datad => \SelDST~input_o\,
	combout => \inst|SelMUX[4]~2_combout\);

-- Location: LCCOMB_X71_Y26_N10
\inst|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~38_combout\ = (!\inst|SelMUX[4]~2_combout\ & (\inst|SelMUX[0]~0_combout\ & (!\inst|SelMUX[1]~1_combout\ & \inst|SelMUX[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~2_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|SelMUX[1]~1_combout\,
	datad => \inst|SelMUX[3]~4_combout\,
	combout => \inst|_~38_combout\);

-- Location: LCCOMB_X71_Y26_N16
\inst|_~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~56_combout\ = (\inst|_~38_combout\ & ((\SelDST~input_o\ & ((!\DST_UC[2]~input_o\))) # (!\SelDST~input_o\ & (!\inst|DST|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R\(2),
	datab => \DST_UC[2]~input_o\,
	datac => \SelDST~input_o\,
	datad => \inst|_~38_combout\,
	combout => \inst|_~56_combout\);

-- Location: FF_X71_Y24_N9
\inst|DST|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(2));

-- Location: LCCOMB_X71_Y26_N22
\inst|SelMUX[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[2]~3_combout\ = (\SelDST~input_o\ & (\DST_UC[2]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \DST_UC[2]~input_o\,
	datad => \inst|DST|R\(2),
	combout => \inst|SelMUX[2]~3_combout\);

-- Location: LCCOMB_X71_Y26_N26
\inst|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~47_combout\ = (\inst|_~53_combout\ & (\inst|SelMUX[3]~4_combout\ & (!\inst|SelMUX[2]~3_combout\ & \inst|SelMUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~53_combout\,
	datab => \inst|SelMUX[3]~4_combout\,
	datac => \inst|SelMUX[2]~3_combout\,
	datad => \inst|SelMUX[0]~0_combout\,
	combout => \inst|_~47_combout\);

-- Location: LCCOMB_X75_Y29_N2
\inst|PC|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\inst|_~47_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~47_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|PC|R[6]~3_combout\);

-- Location: LCCOMB_X76_Y29_N30
\inst|PC|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~23_combout\ = (\inst|PC|R[6]~3_combout\ & ((\inst|PC|R\(1)) # ((\inst|PC|R\(3) & \inst|PC|R[5]~6_combout\)))) # (!\inst|PC|R[6]~3_combout\ & (((\inst|PC|R\(3) & \inst|PC|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[6]~3_combout\,
	datab => \inst|PC|R\(1),
	datac => \inst|PC|R\(3),
	datad => \inst|PC|R[5]~6_combout\,
	combout => \inst|PC|R[2]~23_combout\);

-- Location: LCCOMB_X76_Y29_N8
\inst|PC|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~24_combout\ = (\inst|PC|R[7]~1_combout\ & ((\inst|PC|R\(2)) # ((\inst|PC|_~2_combout\ & \inst|PC|op_2~4_combout\)))) # (!\inst|PC|R[7]~1_combout\ & (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~1_combout\,
	datab => \inst|PC|_~2_combout\,
	datac => \inst|PC|R\(2),
	datad => \inst|PC|op_2~4_combout\,
	combout => \inst|PC|R[2]~24_combout\);

-- Location: LCCOMB_X75_Y29_N18
\inst|PC|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~25_combout\ = (\inst|PC|R[2]~23_combout\) # ((\inst|PC|R[2]~24_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[2]~23_combout\,
	datab => \inst|PC|_~0_combout\,
	datac => \inst|PC|R[2]~24_combout\,
	datad => \inst|PC|op_1~2_combout\,
	combout => \inst|PC|R[2]~25_combout\);

-- Location: LCCOMB_X74_Y29_N6
\inst|PC|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~26_combout\ = (\inst|PC|R[2]~25_combout\) # ((\inst|BUS[2]~55_combout\ & \inst|PC|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~55_combout\,
	datab => \inst|PC|R[2]~25_combout\,
	datad => \inst|PC|_~3_combout\,
	combout => \inst|PC|R[2]~26_combout\);

-- Location: FF_X74_Y29_N7
\inst|PC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(2));

-- Location: LCCOMB_X72_Y29_N26
\inst|BUS[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~47_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(2))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~4_combout\,
	datab => \inst|MDR|R\(2),
	datac => \inst|MAR|R\(2),
	datad => \inst|_~24_combout\,
	combout => \inst|BUS[2]~47_combout\);

-- Location: LCCOMB_X71_Y25_N28
\inst|BUS[2]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~49_combout\ = (\inst|_~51_combout\ & (\inst|Ax|R\(2) & \inst|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~51_combout\,
	datac => \inst|Ax|R\(2),
	datad => \inst|_~26_combout\,
	combout => \inst|BUS[2]~49_combout\);

-- Location: LCCOMB_X67_Y24_N0
\inst|BUS[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~50_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(2)) # ((\inst|_~27_combout\ & \inst|SP|R\(2))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(2),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(2),
	combout => \inst|BUS[2]~50_combout\);

-- Location: FF_X71_Y26_N1
\inst|IR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(2));

-- Location: FF_X71_Y25_N7
\inst|BP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(2));

-- Location: LCCOMB_X71_Y25_N6
\inst|BUS[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~48_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(2)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|IR|R\(2),
	datac => \inst|BP|R\(2),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[2]~48_combout\);

-- Location: LCCOMB_X71_Y25_N10
\inst|BUS[2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~51_combout\ = (\inst|BUS[2]~47_combout\) # ((\inst|BUS[2]~49_combout\) # ((\inst|BUS[2]~50_combout\) # (\inst|BUS[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~47_combout\,
	datab => \inst|BUS[2]~49_combout\,
	datac => \inst|BUS[2]~50_combout\,
	datad => \inst|BUS[2]~48_combout\,
	combout => \inst|BUS[2]~51_combout\);

-- Location: IOIBUF_X78_Y44_N23
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

-- Location: LCCOMB_X42_Y12_N4
\inst|ALU|Result[2]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~132_combout\ = (\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~4_combout\ & \inst|ALU|_~14_combout\)) # (!\inst|alu_x|R[2]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~4_combout\ & 
-- \inst|ALU|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~116_combout\,
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datac => \inst|ALU|op_3~4_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Result[2]~132_combout\);

-- Location: LCCOMB_X42_Y12_N18
\inst|ALU|Result[2]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~133_combout\ = (\inst|alu_y|R\(2) & (((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ & \inst|ALU|_~4_combout\)))) # (!\inst|alu_y|R\(2) & ((\inst|ALU|_~13_combout\) # ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ & 
-- \inst|ALU|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|ALU|_~13_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\,
	datad => \inst|ALU|_~4_combout\,
	combout => \inst|ALU|Result[2]~133_combout\);

-- Location: LCCOMB_X42_Y12_N12
\inst|ALU|Result[2]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~134_combout\ = (\inst|ALU|Result[2]~132_combout\) # ((\inst|ALU|Result[2]~133_combout\) # ((\inst|ALU|op_2~4_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~4_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|Result[2]~132_combout\,
	datad => \inst|ALU|Result[2]~133_combout\,
	combout => \inst|ALU|Result[2]~134_combout\);

-- Location: LCCOMB_X42_Y12_N16
\inst|ALU|Result[2]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~149_combout\ = (\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	combout => \inst|ALU|Result[2]~149_combout\);

-- Location: LCCOMB_X42_Y12_N26
\inst|ALU|Result[2]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~131_combout\ = (\inst|alu_y|R\(2) & ((\inst|ALU|_~20_combout\) # ((\inst|alu_x|R[2]~_Duplicate_1_q\ & \inst|ALU|_~21_combout\)))) # (!\inst|alu_y|R\(2) & (\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|ALU|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datac => \inst|ALU|_~20_combout\,
	datad => \inst|ALU|_~21_combout\,
	combout => \inst|ALU|Result[2]~131_combout\);

-- Location: LCCOMB_X42_Y12_N6
\inst|ALU|Result[2]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~135_combout\ = (\inst|ALU|Result[2]~134_combout\) # ((\inst|ALU|Result[2]~131_combout\) # ((\inst|ALU|Result[2]~149_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[2]~134_combout\,
	datab => \inst|ALU|Result[2]~149_combout\,
	datac => \inst|ALU|Result[2]~131_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Result[2]~135_combout\);

-- Location: FF_X42_Y12_N7
\inst|alu_r|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[2]~135_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(2));

-- Location: LCCOMB_X71_Y28_N20
\inst|BUS[2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~53_combout\ = (\Fx[2]~input_o\ & ((\inst|_~32_combout\) # ((\inst|alu_r|R\(2) & \inst|_~30_combout\)))) # (!\Fx[2]~input_o\ & (\inst|alu_r|R\(2) & ((\inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[2]~input_o\,
	datab => \inst|alu_r|R\(2),
	datac => \inst|_~32_combout\,
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[2]~53_combout\);

-- Location: LCCOMB_X71_Y29_N22
\inst|BUS[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~52_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & (\inst|DI|R\(2))) # (!\inst|SelBus[4]~3_combout\ & ((\inst|Cx|R\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~29_combout\,
	datab => \inst|DI|R\(2),
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|Cx|R\(2),
	combout => \inst|BUS[2]~52_combout\);

-- Location: LCCOMB_X71_Y28_N18
\inst|BUS[2]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~54_combout\ = (\inst|BUS[2]~53_combout\) # ((\inst|BUS[2]~52_combout\) # ((\inst|Bx|R\(2) & \inst|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(2),
	datab => \inst|BUS[2]~53_combout\,
	datac => \inst|BUS[2]~52_combout\,
	datad => \inst|_~50_combout\,
	combout => \inst|BUS[2]~54_combout\);

-- Location: LCCOMB_X71_Y28_N24
\inst|BUS[2]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~55_combout\ = (\inst|BUS[2]~51_combout\) # ((\inst|BUS[2]~54_combout\) # ((\inst|PC|R\(2) & \inst|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(2),
	datab => \inst|_~31_combout\,
	datac => \inst|BUS[2]~51_combout\,
	datad => \inst|BUS[2]~54_combout\,
	combout => \inst|BUS[2]~55_combout\);

-- Location: FF_X71_Y29_N11
\inst|SRC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~55_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(2));

-- Location: IOIBUF_X78_Y45_N22
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

-- Location: LCCOMB_X71_Y29_N10
\inst|SelBus[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[2]~1_combout\ = (\SelSRC~input_o\ & ((\SRC_UC[2]~input_o\))) # (!\SelSRC~input_o\ & (\inst|SRC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelSRC~input_o\,
	datac => \inst|SRC|R\(2),
	datad => \SRC_UC[2]~input_o\,
	combout => \inst|SelBus[2]~1_combout\);

-- Location: LCCOMB_X70_Y28_N30
\inst|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~29_combout\ = (!\inst|SelBus[3]~0_combout\ & (!\inst|SelBus[2]~1_combout\ & (\inst|SelBus[1]~2_combout\ & !\inst|SelBus[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[3]~0_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|SelBus[1]~2_combout\,
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|_~29_combout\);

-- Location: LCCOMB_X71_Y29_N14
\inst|BUS[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~43_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & (\inst|DI|R\(3))) # (!\inst|SelBus[4]~3_combout\ & ((\inst|Cx|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~29_combout\,
	datab => \inst|DI|R\(3),
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|Cx|R\(3),
	combout => \inst|BUS[3]~43_combout\);

-- Location: LCCOMB_X42_Y12_N30
\inst|ALU|Result[3]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~148_combout\ = (\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|Result[3]~148_combout\);

-- Location: LCCOMB_X42_Y12_N0
\inst|ALU|Result[3]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~126_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|ALU|_~20_combout\) # ((\inst|ALU|_~21_combout\ & \inst|alu_y|R\(3))))) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & (((\inst|ALU|_~20_combout\ & \inst|alu_y|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|ALU|_~21_combout\,
	datac => \inst|ALU|_~20_combout\,
	datad => \inst|alu_y|R\(3),
	combout => \inst|ALU|Result[3]~126_combout\);

-- Location: LCCOMB_X42_Y12_N10
\inst|ALU|Result[3]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~127_combout\ = (\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~6_combout\ & \inst|ALU|_~14_combout\)) # (!\inst|alu_x|R[3]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~116_combout\ & (((\inst|ALU|op_3~6_combout\ & 
-- \inst|ALU|_~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~116_combout\,
	datab => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datac => \inst|ALU|op_3~6_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Result[3]~127_combout\);

-- Location: LCCOMB_X42_Y12_N24
\inst|ALU|Result[3]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~128_combout\ = (\inst|alu_y|R\(3) & (\inst|ALU|_~4_combout\ & ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\)))) # (!\inst|alu_y|R\(3) & ((\inst|ALU|_~13_combout\) # ((\inst|ALU|_~4_combout\ & 
-- \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(3),
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|_~13_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\,
	combout => \inst|ALU|Result[3]~128_combout\);

-- Location: LCCOMB_X42_Y12_N14
\inst|ALU|Result[3]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~129_combout\ = (\inst|ALU|Result[3]~127_combout\) # ((\inst|ALU|Result[3]~128_combout\) # ((\inst|ALU|op_2~6_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[3]~127_combout\,
	datab => \inst|ALU|Result[3]~128_combout\,
	datac => \inst|ALU|op_2~6_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[3]~129_combout\);

-- Location: LCCOMB_X42_Y12_N8
\inst|ALU|Result[3]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~130_combout\ = (\inst|ALU|Result[3]~126_combout\) # ((\inst|ALU|Result[3]~129_combout\) # ((\inst|ALU|Result[3]~148_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[3]~148_combout\,
	datab => \inst|ALU|Result[3]~126_combout\,
	datac => \inst|ALU|Result[3]~129_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Result[3]~130_combout\);

-- Location: FF_X42_Y12_N9
\inst|alu_r|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[3]~130_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(3));

-- Location: LCCOMB_X71_Y28_N16
\inst|BUS[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~44_combout\ = (\inst|alu_r|R\(3) & ((\inst|_~30_combout\) # ((\inst|_~31_combout\ & \inst|PC|R\(3))))) # (!\inst|alu_r|R\(3) & (\inst|_~31_combout\ & (\inst|PC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_r|R\(3),
	datab => \inst|_~31_combout\,
	datac => \inst|PC|R\(3),
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[3]~44_combout\);

-- Location: LCCOMB_X71_Y28_N14
\inst|BUS[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~45_combout\ = (\inst|BUS[3]~43_combout\) # ((\inst|BUS[3]~44_combout\) # ((\Fx[3]~input_o\ & \inst|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[3]~input_o\,
	datab => \inst|BUS[3]~43_combout\,
	datac => \inst|_~32_combout\,
	datad => \inst|BUS[3]~44_combout\,
	combout => \inst|BUS[3]~45_combout\);

-- Location: LCCOMB_X72_Y29_N2
\inst|BUS[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~38_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(3))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(3),
	datab => \inst|_~24_combout\,
	datac => \inst|MAR|R\(3),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[3]~38_combout\);

-- Location: LCCOMB_X67_Y24_N18
\inst|BUS[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~40_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(3)) # ((\inst|_~27_combout\ & \inst|SP|R\(3))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(3),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(3),
	combout => \inst|BUS[3]~40_combout\);

-- Location: LCCOMB_X72_Y26_N24
\inst|IR|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[3]~feeder_combout\ = \inst|BUS[3]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[3]~46_combout\,
	combout => \inst|IR|R[3]~feeder_combout\);

-- Location: FF_X72_Y26_N25
\inst|IR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(3));

-- Location: FF_X72_Y28_N15
\inst|BP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~46_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(3));

-- Location: LCCOMB_X72_Y28_N14
\inst|BUS[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~39_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(3)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR|R\(3),
	datab => \inst|_~25_combout\,
	datac => \inst|BP|R\(3),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[3]~39_combout\);

-- Location: LCCOMB_X72_Y28_N12
\inst|BUS[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~41_combout\ = (\inst|Ax|R\(3) & ((\inst|_~52_combout\) # ((\inst|Bx|R\(3) & \inst|_~50_combout\)))) # (!\inst|Ax|R\(3) & (((\inst|Bx|R\(3) & \inst|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(3),
	datab => \inst|_~52_combout\,
	datac => \inst|Bx|R\(3),
	datad => \inst|_~50_combout\,
	combout => \inst|BUS[3]~41_combout\);

-- Location: LCCOMB_X72_Y28_N6
\inst|BUS[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~42_combout\ = (\inst|BUS[3]~40_combout\) # ((\inst|BUS[3]~39_combout\) # (\inst|BUS[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[3]~40_combout\,
	datac => \inst|BUS[3]~39_combout\,
	datad => \inst|BUS[3]~41_combout\,
	combout => \inst|BUS[3]~42_combout\);

-- Location: LCCOMB_X72_Y28_N20
\inst|BUS[3]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~46_combout\ = (\inst|BUS[3]~45_combout\) # ((\inst|BUS[3]~38_combout\) # ((\inst|BUS[3]~42_combout\) # (!\inst|BUS[7]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~45_combout\,
	datab => \inst|BUS[3]~38_combout\,
	datac => \inst|BUS[7]~9_combout\,
	datad => \inst|BUS[3]~42_combout\,
	combout => \inst|BUS[3]~46_combout\);

-- Location: LCCOMB_X72_Y28_N30
\inst|DST|R[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[3]~feeder_combout\ = \inst|BUS[3]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[3]~46_combout\,
	combout => \inst|DST|R[3]~feeder_combout\);

-- Location: FF_X72_Y28_N31
\inst|DST|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(3));

-- Location: LCCOMB_X71_Y26_N24
\inst|SelMUX[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[3]~4_combout\ = (\SelDST~input_o\ & (\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[3]~input_o\,
	datab => \inst|DST|R\(3),
	datac => \SelDST~input_o\,
	combout => \inst|SelMUX[3]~4_combout\);

-- Location: LCCOMB_X70_Y26_N6
\inst|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~37_combout\ = (\inst|SelMUX[3]~4_combout\ & (!\inst|SelMUX[0]~0_combout\ & (\inst|_~53_combout\ & !\inst|SelMUX[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[3]~4_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datac => \inst|_~53_combout\,
	datad => \inst|SelMUX[2]~3_combout\,
	combout => \inst|_~37_combout\);

-- Location: FF_X71_Y29_N29
\inst|SRC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~64_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(1));

-- Location: LCCOMB_X71_Y29_N28
\inst|SelBus[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[1]~2_combout\ = (\SelSRC~input_o\ & (\SRC_UC[1]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC_UC[1]~input_o\,
	datac => \inst|SRC|R\(1),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[1]~2_combout\);

-- Location: LCCOMB_X70_Y28_N22
\inst|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~31_combout\ = (\inst|SelBus[1]~2_combout\ & (!\inst|SelBus[2]~1_combout\ & (\inst|_~49_combout\ & \inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~2_combout\,
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~49_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~31_combout\);

-- Location: LCCOMB_X70_Y28_N10
\inst|BUS[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~8_combout\ = (\inst|_~25_combout\) # ((\inst|_~26_combout\) # ((\inst|_~29_combout\) # (\inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|_~26_combout\,
	datac => \inst|_~29_combout\,
	datad => \inst|_~24_combout\,
	combout => \inst|BUS[7]~8_combout\);

-- Location: LCCOMB_X69_Y28_N24
\inst|BUS[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~9_combout\ = (\inst|_~31_combout\) # ((\inst|_~32_combout\) # ((\inst|BUS[7]~8_combout\) # (\inst|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~31_combout\,
	datab => \inst|_~32_combout\,
	datac => \inst|BUS[7]~8_combout\,
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[7]~9_combout\);

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: LCCOMB_X71_Y28_N2
\inst|BUS[1]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~61_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & (\inst|DI|R\(1))) # (!\inst|SelBus[4]~3_combout\ & ((\inst|Cx|R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(1),
	datab => \inst|Cx|R\(1),
	datac => \inst|SelBus[4]~3_combout\,
	datad => \inst|_~29_combout\,
	combout => \inst|BUS[1]~61_combout\);

-- Location: LCCOMB_X47_Y12_N20
\inst|ALU|Result[1]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~136_combout\ = (\inst|ALU|_~13_combout\ & (((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\ & \inst|ALU|_~4_combout\)) # (!\inst|alu_y|R\(1)))) # (!\inst|ALU|_~13_combout\ & (\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\ & 
-- (\inst|ALU|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\,
	datac => \inst|ALU|_~4_combout\,
	datad => \inst|alu_y|R\(1),
	combout => \inst|ALU|Result[1]~136_combout\);

-- Location: LCCOMB_X42_Y13_N10
\inst|ALU|Result[1]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~138_combout\ = (\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|ALU|_~20_combout\) # ((\inst|ALU|_~21_combout\ & \inst|alu_y|R\(1))))) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & (((\inst|alu_y|R\(1) & \inst|ALU|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~21_combout\,
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datac => \inst|alu_y|R\(1),
	datad => \inst|ALU|_~20_combout\,
	combout => \inst|ALU|Result[1]~138_combout\);

-- Location: LCCOMB_X42_Y13_N24
\inst|ALU|Result[1]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~137_combout\ = (\inst|ALU|op_3~2_combout\ & ((\inst|ALU|_~14_combout\) # ((!\inst|alu_x|R[1]~_Duplicate_1_q\ & \inst|ALU|Result[7]~116_combout\)))) # (!\inst|ALU|op_3~2_combout\ & (((!\inst|alu_x|R[1]~_Duplicate_1_q\ & 
-- \inst|ALU|Result[7]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~2_combout\,
	datab => \inst|ALU|_~14_combout\,
	datac => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => \inst|ALU|Result[7]~116_combout\,
	combout => \inst|ALU|Result[1]~137_combout\);

-- Location: LCCOMB_X42_Y13_N4
\inst|ALU|Result[1]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~139_combout\ = (\inst|ALU|Result[1]~138_combout\) # ((\inst|ALU|Result[1]~137_combout\) # ((\inst|ALU|op_2~2_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[1]~138_combout\,
	datab => \inst|ALU|Result[1]~137_combout\,
	datac => \inst|ALU|op_2~2_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[1]~139_combout\);

-- Location: LCCOMB_X36_Y12_N18
\inst|ALU|Result[1]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~140_combout\ = (\inst|ALU|Result[1]~136_combout\) # ((\inst|ALU|Result[1]~139_combout\) # ((!\inst|ALU|_~15_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Result[1]~136_combout\,
	datac => \inst|ALU|Result[1]~139_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(54),
	combout => \inst|ALU|Result[1]~140_combout\);

-- Location: FF_X36_Y12_N19
\inst|alu_r|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[1]~140_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(1));

-- Location: LCCOMB_X71_Y28_N28
\inst|BUS[1]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~62_combout\ = (\inst|PC|R\(1) & ((\inst|_~31_combout\) # ((\inst|alu_r|R\(1) & \inst|_~30_combout\)))) # (!\inst|PC|R\(1) & (((\inst|alu_r|R\(1) & \inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(1),
	datab => \inst|_~31_combout\,
	datac => \inst|alu_r|R\(1),
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[1]~62_combout\);

-- Location: LCCOMB_X71_Y28_N30
\inst|BUS[1]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~63_combout\ = (\inst|BUS[1]~61_combout\) # ((\inst|BUS[1]~62_combout\) # ((\Fx[1]~input_o\ & \inst|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[1]~input_o\,
	datab => \inst|BUS[1]~61_combout\,
	datac => \inst|_~32_combout\,
	datad => \inst|BUS[1]~62_combout\,
	combout => \inst|BUS[1]~63_combout\);

-- Location: LCCOMB_X72_Y29_N6
\inst|BUS[1]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~56_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|MDR|R\(1)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|MAR|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~4_combout\,
	datab => \inst|MAR|R\(1),
	datac => \inst|MDR|R\(1),
	datad => \inst|_~24_combout\,
	combout => \inst|BUS[1]~56_combout\);

-- Location: LCCOMB_X72_Y26_N0
\inst|IR|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[1]~feeder_combout\ = \inst|BUS[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[1]~64_combout\,
	combout => \inst|IR|R[1]~feeder_combout\);

-- Location: FF_X72_Y26_N1
\inst|IR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(1));

-- Location: FF_X72_Y28_N23
\inst|BP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~64_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(1));

-- Location: LCCOMB_X72_Y28_N22
\inst|BUS[1]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~57_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(1)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR|R\(1),
	datab => \inst|_~25_combout\,
	datac => \inst|BP|R\(1),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[1]~57_combout\);

-- Location: LCCOMB_X67_Y24_N10
\inst|BUS[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~58_combout\ = (\inst|_~28_combout\ & ((\inst|SI|R\(1)) # ((\inst|_~27_combout\ & \inst|SP|R\(1))))) # (!\inst|_~28_combout\ & (((\inst|_~27_combout\ & \inst|SP|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~28_combout\,
	datab => \inst|SI|R\(1),
	datac => \inst|_~27_combout\,
	datad => \inst|SP|R\(1),
	combout => \inst|BUS[1]~58_combout\);

-- Location: LCCOMB_X72_Y28_N0
\inst|BUS[1]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~59_combout\ = (\inst|Ax|R\(1) & ((\inst|_~52_combout\) # ((\inst|Bx|R\(1) & \inst|_~50_combout\)))) # (!\inst|Ax|R\(1) & (((\inst|Bx|R\(1) & \inst|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(1),
	datab => \inst|_~52_combout\,
	datac => \inst|Bx|R\(1),
	datad => \inst|_~50_combout\,
	combout => \inst|BUS[1]~59_combout\);

-- Location: LCCOMB_X72_Y28_N10
\inst|BUS[1]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~60_combout\ = (\inst|BUS[1]~57_combout\) # ((\inst|BUS[1]~58_combout\) # (\inst|BUS[1]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[1]~57_combout\,
	datac => \inst|BUS[1]~58_combout\,
	datad => \inst|BUS[1]~59_combout\,
	combout => \inst|BUS[1]~60_combout\);

-- Location: LCCOMB_X72_Y28_N8
\inst|BUS[1]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~64_combout\ = ((\inst|BUS[1]~63_combout\) # ((\inst|BUS[1]~56_combout\) # (\inst|BUS[1]~60_combout\))) # (!\inst|BUS[7]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~9_combout\,
	datab => \inst|BUS[1]~63_combout\,
	datac => \inst|BUS[1]~56_combout\,
	datad => \inst|BUS[1]~60_combout\,
	combout => \inst|BUS[1]~64_combout\);

-- Location: LCCOMB_X72_Y28_N4
\inst|DST|R[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[1]~feeder_combout\ = \inst|BUS[1]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[1]~64_combout\,
	combout => \inst|DST|R[1]~feeder_combout\);

-- Location: FF_X72_Y28_N5
\inst|DST|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(1));

-- Location: LCCOMB_X70_Y26_N14
\inst|_~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~53_combout\ = (!\inst|SelMUX[4]~2_combout\ & ((\SelDST~input_o\ & ((\DST_UC[1]~input_o\))) # (!\SelDST~input_o\ & (\inst|DST|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R\(1),
	datab => \inst|SelMUX[4]~2_combout\,
	datac => \DST_UC[1]~input_o\,
	datad => \SelDST~input_o\,
	combout => \inst|_~53_combout\);

-- Location: LCCOMB_X71_Y26_N12
\inst|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~46_combout\ = (\inst|_~53_combout\ & (!\inst|SelMUX[0]~0_combout\ & \inst|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~53_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~46_combout\);

-- Location: LCCOMB_X74_Y30_N6
\inst|Cx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~3_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & (\inst|_~46_combout\ & !\Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|_~3_combout\);

-- Location: LCCOMB_X74_Y30_N26
\inst|Cx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~46_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~46_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Cx|_~1_combout\);

-- Location: LCCOMB_X74_Y28_N30
\inst|Cx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~12_combout\ = \inst|Cx|op_1~11\ $ (!\inst|Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Cx|R\(7),
	cin => \inst|Cx|op_1~11\,
	combout => \inst|Cx|op_1~12_combout\);

-- Location: LCCOMB_X74_Y28_N0
\inst|Cx|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~0_combout\ = (\inst|Cx|R\(0) & ((\inst|Cx|_~1_combout\) # ((\inst|Cx|op_1~12_combout\ & \inst|Cx|_~0_combout\)))) # (!\inst|Cx|R\(0) & (((\inst|Cx|op_1~12_combout\ & \inst|Cx|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|_~1_combout\,
	datac => \inst|Cx|op_1~12_combout\,
	datad => \inst|Cx|_~0_combout\,
	combout => \inst|Cx|R[7]~0_combout\);

-- Location: LCCOMB_X75_Y30_N18
\inst|Cx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~14_combout\ = \inst|Cx|R\(7) $ (!\inst|Cx|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(7),
	cin => \inst|Cx|op_2~13\,
	combout => \inst|Cx|op_2~14_combout\);

-- Location: LCCOMB_X75_Y30_N24
\inst|Cx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~2_combout\ = (\inst|Cx|R[7]~1_combout\ & ((\inst|Cx|R\(7)) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~14_combout\)))) # (!\inst|Cx|R[7]~1_combout\ & (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~1_combout\,
	datab => \inst|Cx|_~2_combout\,
	datac => \inst|Cx|R\(7),
	datad => \inst|Cx|op_2~14_combout\,
	combout => \inst|Cx|R[7]~2_combout\);

-- Location: LCCOMB_X75_Y28_N0
\inst|Cx|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~4_combout\ = (\inst|Cx|R[7]~0_combout\) # ((\inst|Cx|R[7]~2_combout\) # ((\inst|Cx|R\(6) & \inst|Cx|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~0_combout\,
	datab => \inst|Cx|R[7]~2_combout\,
	datac => \inst|Cx|R\(6),
	datad => \inst|Cx|R[6]~3_combout\,
	combout => \inst|Cx|R[7]~4_combout\);

-- Location: LCCOMB_X75_Y28_N20
\inst|Cx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~5_combout\ = (\inst|Cx|R[7]~4_combout\) # ((\inst|Cx|_~3_combout\ & \inst|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~3_combout\,
	datac => \inst|BUS[7]~10_combout\,
	datad => \inst|Cx|R[7]~4_combout\,
	combout => \inst|Cx|R[7]~5_combout\);

-- Location: FF_X75_Y28_N21
\inst|Cx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(7));

-- Location: LCCOMB_X69_Y28_N18
\inst|BUS[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~5_combout\ = (\inst|_~29_combout\ & ((\inst|SelBus[4]~3_combout\ & ((\inst|DI|R\(7)))) # (!\inst|SelBus[4]~3_combout\ & (\inst|Cx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(7),
	datab => \inst|SelBus[4]~3_combout\,
	datac => \inst|DI|R\(7),
	datad => \inst|_~29_combout\,
	combout => \inst|BUS[7]~5_combout\);

-- Location: LCCOMB_X38_Y13_N14
\inst|ALU|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~14_combout\ = (\inst|alu_y|R\(7) & ((\inst|alu_x|R[7]~_Duplicate_1_q\ & (\inst|ALU|op_2~13\ & VCC)) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|ALU|op_2~13\)))) # (!\inst|alu_y|R\(7) & ((\inst|alu_x|R[7]~_Duplicate_1_q\ & 
-- (!\inst|ALU|op_2~13\)) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|ALU|op_2~13\) # (GND)))))
-- \inst|ALU|op_2~15\ = CARRY((\inst|alu_y|R\(7) & (!\inst|alu_x|R[7]~_Duplicate_1_q\ & !\inst|ALU|op_2~13\)) # (!\inst|alu_y|R\(7) & ((!\inst|ALU|op_2~13\) # (!\inst|alu_x|R[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(7),
	datab => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_2~13\,
	combout => \inst|ALU|op_2~14_combout\,
	cout => \inst|ALU|op_2~15\);

-- Location: LCCOMB_X43_Y12_N8
\inst|ALU|Result[7]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~100_combout\ = (\inst|alu_y|R\(0) & (\inst|ALU|_~12_combout\ & (\inst|ALU|_~6_combout\ & \inst|alu_x|R[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~12_combout\,
	datac => \inst|ALU|_~6_combout\,
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[7]~100_combout\);

-- Location: LCCOMB_X43_Y12_N24
\inst|ALU|Result[7]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~104_combout\ = (\SelOp[2]~input_o\ & ((\SelOp[1]~input_o\ & ((!\inst|alu_x|R[7]~_Duplicate_1_q\))) # (!\SelOp[1]~input_o\ & (\SelOp[0]~input_o\ & \inst|alu_x|R[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \SelOp[1]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[7]~104_combout\);

-- Location: LCCOMB_X41_Y13_N20
\inst|ALU|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~14_combout\ = (\inst|alu_y|R\(7) & ((\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|ALU|op_3~13\)) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|ALU|op_3~13\) # (GND))))) # (!\inst|alu_y|R\(7) & ((\inst|alu_x|R[7]~_Duplicate_1_q\ & 
-- (\inst|ALU|op_3~13\ & VCC)) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|ALU|op_3~13\))))
-- \inst|ALU|op_3~15\ = CARRY((\inst|alu_y|R\(7) & ((!\inst|ALU|op_3~13\) # (!\inst|alu_x|R[7]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(7) & (!\inst|alu_x|R[7]~_Duplicate_1_q\ & !\inst|ALU|op_3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(7),
	datab => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~13\,
	combout => \inst|ALU|op_3~14_combout\,
	cout => \inst|ALU|op_3~15\);

-- Location: LCCOMB_X47_Y12_N26
\inst|ALU|Result[7]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~101_combout\ = (!\SelOp[2]~input_o\ & (\SelOp[1]~input_o\ & (\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\ & !\SelOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[1]~input_o\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[7]~101_combout\);

-- Location: LCCOMB_X43_Y12_N10
\inst|ALU|Result[7]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~102_combout\ = (!\SelOp[1]~input_o\ & (\SelOp[2]~input_o\ & ((\SelOp[0]~input_o\) # (\inst|alu_x|R[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \SelOp[1]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[7]~102_combout\);

-- Location: LCCOMB_X43_Y12_N2
\inst|ALU|Result[7]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~103_combout\ = (\inst|ALU|Result[7]~101_combout\) # ((\inst|alu_y|R\(7) & ((\inst|ALU|Result[7]~102_combout\))) # (!\inst|alu_y|R\(7) & (\inst|ALU|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|Result[7]~101_combout\,
	datad => \inst|ALU|Result[7]~102_combout\,
	combout => \inst|ALU|Result[7]~103_combout\);

-- Location: LCCOMB_X43_Y12_N28
\inst|ALU|Result[7]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~105_combout\ = (\inst|ALU|Result[7]~104_combout\) # ((\inst|ALU|Result[7]~103_combout\) # ((\inst|ALU|_~14_combout\ & \inst|ALU|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~14_combout\,
	datab => \inst|ALU|Result[7]~104_combout\,
	datac => \inst|ALU|op_3~14_combout\,
	datad => \inst|ALU|Result[7]~103_combout\,
	combout => \inst|ALU|Result[7]~105_combout\);

-- Location: LCCOMB_X43_Y12_N26
\inst|ALU|Result[7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~106_combout\ = (\inst|ALU|Result[7]~100_combout\) # ((\inst|ALU|Result[7]~105_combout\) # ((\inst|ALU|op_2~14_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~14_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|Result[7]~100_combout\,
	datad => \inst|ALU|Result[7]~105_combout\,
	combout => \inst|ALU|Result[7]~106_combout\);

-- Location: FF_X69_Y28_N29
\inst|alu_r|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|ALU|Result[7]~106_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(7));

-- Location: LCCOMB_X69_Y28_N8
\inst|BUS[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~6_combout\ = (\inst|PC|R\(7) & ((\inst|_~31_combout\) # ((\inst|alu_r|R\(7) & \inst|_~30_combout\)))) # (!\inst|PC|R\(7) & (\inst|alu_r|R\(7) & ((\inst|_~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(7),
	datab => \inst|alu_r|R\(7),
	datac => \inst|_~31_combout\,
	datad => \inst|_~30_combout\,
	combout => \inst|BUS[7]~6_combout\);

-- Location: LCCOMB_X69_Y28_N22
\inst|BUS[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~7_combout\ = (\inst|BUS[7]~5_combout\) # ((\inst|BUS[7]~6_combout\) # ((\Fx[7]~input_o\ & \inst|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[7]~input_o\,
	datab => \inst|BUS[7]~5_combout\,
	datac => \inst|BUS[7]~6_combout\,
	datad => \inst|_~32_combout\,
	combout => \inst|BUS[7]~7_combout\);

-- Location: LCCOMB_X72_Y29_N22
\inst|BUS[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~0_combout\ = (\inst|_~24_combout\ & ((\inst|SelBus[0]~4_combout\ & (\inst|MDR|R\(7))) # (!\inst|SelBus[0]~4_combout\ & ((\inst|MAR|R\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(7),
	datab => \inst|_~24_combout\,
	datac => \inst|MAR|R\(7),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[7]~0_combout\);

-- Location: LCCOMB_X72_Y26_N16
\inst|IR|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[7]~feeder_combout\ = \inst|BUS[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[7]~10_combout\,
	combout => \inst|IR|R[7]~feeder_combout\);

-- Location: FF_X72_Y26_N17
\inst|IR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|IR|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(7));

-- Location: FF_X72_Y28_N17
\inst|BP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(7));

-- Location: LCCOMB_X72_Y28_N16
\inst|BUS[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~1_combout\ = (\inst|_~25_combout\ & ((\inst|SelBus[0]~4_combout\ & ((\inst|BP|R\(7)))) # (!\inst|SelBus[0]~4_combout\ & (\inst|IR|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR|R\(7),
	datab => \inst|_~25_combout\,
	datac => \inst|BP|R\(7),
	datad => \inst|SelBus[0]~4_combout\,
	combout => \inst|BUS[7]~1_combout\);

-- Location: LCCOMB_X67_Y24_N26
\inst|BUS[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~2_combout\ = (\inst|_~27_combout\ & ((\inst|SP|R\(7)) # ((\inst|_~28_combout\ & \inst|SI|R\(7))))) # (!\inst|_~27_combout\ & (((\inst|_~28_combout\ & \inst|SI|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~27_combout\,
	datab => \inst|SP|R\(7),
	datac => \inst|_~28_combout\,
	datad => \inst|SI|R\(7),
	combout => \inst|BUS[7]~2_combout\);

-- Location: LCCOMB_X72_Y28_N18
\inst|BUS[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~3_combout\ = (\inst|Ax|R\(7) & ((\inst|_~52_combout\) # ((\inst|Bx|R\(7) & \inst|_~50_combout\)))) # (!\inst|Ax|R\(7) & (((\inst|Bx|R\(7) & \inst|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(7),
	datab => \inst|_~52_combout\,
	datac => \inst|Bx|R\(7),
	datad => \inst|_~50_combout\,
	combout => \inst|BUS[7]~3_combout\);

-- Location: LCCOMB_X69_Y28_N28
\inst|BUS[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~4_combout\ = (\inst|BUS[7]~1_combout\) # ((\inst|BUS[7]~2_combout\) # (\inst|BUS[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~1_combout\,
	datab => \inst|BUS[7]~2_combout\,
	datad => \inst|BUS[7]~3_combout\,
	combout => \inst|BUS[7]~4_combout\);

-- Location: LCCOMB_X69_Y28_N30
\inst|BUS[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~10_combout\ = (\inst|BUS[7]~7_combout\) # (((\inst|BUS[7]~0_combout\) # (\inst|BUS[7]~4_combout\)) # (!\inst|BUS[7]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~7_combout\,
	datab => \inst|BUS[7]~9_combout\,
	datac => \inst|BUS[7]~0_combout\,
	datad => \inst|BUS[7]~4_combout\,
	combout => \inst|BUS[7]~10_combout\);

-- Location: LCCOMB_X41_Y13_N28
\inst|alu_y|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_y|R[7]~feeder_combout\ = \inst|BUS[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[7]~10_combout\,
	combout => \inst|alu_y|R[7]~feeder_combout\);

-- Location: FF_X41_Y13_N29
\inst|alu_y|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_y|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(7));

-- Location: LCCOMB_X41_Y13_N22
\inst|ALU|op_3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~16_combout\ = \inst|ALU|op_3~15\ $ (GND)
-- \inst|ALU|op_3~17\ = CARRY(!\inst|ALU|op_3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|ALU|op_3~15\,
	combout => \inst|ALU|op_3~16_combout\,
	cout => \inst|ALU|op_3~17\);

-- Location: LCCOMB_X41_Y13_N24
\inst|ALU|op_3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~18_combout\ = !\inst|ALU|op_3~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|op_3~17\,
	combout => \inst|ALU|op_3~18_combout\);

-- Location: LCCOMB_X40_Y8_N4
\inst|ALU|Result[16]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[16]~96_combout\ = (\SelOp[2]~input_o\ & (((!\SelOp[1]~input_o\)))) # (!\SelOp[2]~input_o\ & (((\SelOp[1]~input_o\) # (!\SelOp[0]~input_o\)) # (!\inst|ALU|op_3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \inst|ALU|op_3~18_combout\,
	datac => \SelOp[1]~input_o\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[16]~96_combout\);

-- Location: LCCOMB_X40_Y8_N14
\inst|ALU|Result[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(15) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\ & \inst|ALU|_~4_combout\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~96_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\,
	datad => \inst|ALU|_~4_combout\,
	combout => \inst|ALU|Result\(15));

-- Location: LCCOMB_X40_Y8_N24
\inst|ALU|Result[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(14) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\ & \inst|ALU|_~4_combout\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~96_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\,
	datad => \inst|ALU|_~4_combout\,
	combout => \inst|ALU|Result\(14));

-- Location: LCCOMB_X40_Y8_N6
\inst|ALU|Result[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(13) = ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result[16]~96_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\,
	combout => \inst|ALU|Result\(13));

-- Location: LCCOMB_X40_Y8_N16
\inst|ALU|Result[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(12) = ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result[16]~96_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\,
	combout => \inst|ALU|Result\(12));

-- Location: LCCOMB_X40_Y8_N10
\inst|ALU|Result[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(11) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\ & \inst|ALU|_~4_combout\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~96_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\,
	datad => \inst|ALU|_~4_combout\,
	combout => \inst|ALU|Result\(11));

-- Location: LCCOMB_X40_Y8_N12
\inst|ALU|Result[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(10) = ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result[16]~96_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\,
	combout => \inst|ALU|Result\(10));

-- Location: LCCOMB_X40_Y8_N22
\inst|ALU|Result[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(9) = ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\)) # (!\inst|ALU|Result[16]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result[16]~96_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\,
	combout => \inst|ALU|Result\(9));

-- Location: LCCOMB_X39_Y13_N10
\inst|ALU|Result[8]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~98_combout\ = (\SelOp[2]~input_o\ & (((\SelOp[1]~input_o\)))) # (!\SelOp[2]~input_o\ & (\SelOp[0]~input_o\ & (\inst|ALU|op_3~16_combout\ & !\SelOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \SelOp[2]~input_o\,
	datac => \inst|ALU|op_3~16_combout\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Result[8]~98_combout\);

-- Location: LCCOMB_X38_Y13_N16
\inst|ALU|op_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~16_combout\ = !\inst|ALU|op_2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|ALU|op_2~15\,
	combout => \inst|ALU|op_2~16_combout\);

-- Location: LCCOMB_X40_Y8_N28
\inst|ALU|Result[8]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~97_combout\ = (\inst|ALU|_~10_combout\ & ((\inst|ALU|op_2~16_combout\) # ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~16_combout\,
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Result[8]~97_combout\);

-- Location: LCCOMB_X40_Y8_N30
\inst|ALU|Result[8]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~99_combout\ = (\inst|ALU|Result[8]~98_combout\) # ((\inst|ALU|Result[8]~97_combout\) # ((\inst|ALU|_~4_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[8]~98_combout\,
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\,
	datad => \inst|ALU|Result[8]~97_combout\,
	combout => \inst|ALU|Result[8]~99_combout\);

-- Location: LCCOMB_X74_Y21_N28
\inst|DST|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[7]~feeder_combout\ = \inst|BUS[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[7]~10_combout\,
	combout => \inst|DST|R[7]~feeder_combout\);

-- Location: FF_X74_Y21_N29
\inst|DST|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(7));

-- Location: LCCOMB_X71_Y24_N30
\inst|DST|R[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[6]~feeder_combout\ = \inst|BUS[6]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[6]~19_combout\,
	combout => \inst|DST|R[6]~feeder_combout\);

-- Location: FF_X71_Y24_N31
\inst|DST|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[6]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(6));

-- Location: LCCOMB_X71_Y24_N4
\inst|DST|R[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[5]~feeder_combout\ = \inst|BUS[5]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[5]~28_combout\,
	combout => \inst|DST|R[5]~feeder_combout\);

-- Location: FF_X71_Y24_N5
\inst|DST|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DST|R[5]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(5));

-- Location: LCCOMB_X71_Y26_N0
\inst|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~48_combout\ = (\inst|_~53_combout\ & (\inst|SelMUX[0]~0_combout\ & \inst|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~53_combout\,
	datab => \inst|SelMUX[0]~0_combout\,
	datad => \inst|_~35_combout\,
	combout => \inst|_~48_combout\);

-- Location: LCCOMB_X74_Y27_N14
\inst|Dx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~1_combout\ = (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~48_combout\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|_~1_combout\);

-- Location: LCCOMB_X74_Y27_N4
\inst|Dx|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~6_combout\ = (\Cmd[0]~input_o\ & (\inst|_~48_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Dx|R[5]~6_combout\);

-- Location: LCCOMB_X75_Y27_N0
\inst|Dx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~0_combout\ = (\inst|Dx|R\(1) & (\inst|Dx|R\(0) $ (VCC))) # (!\inst|Dx|R\(1) & (\inst|Dx|R\(0) & VCC))
-- \inst|Dx|op_1~1\ = CARRY((\inst|Dx|R\(1) & \inst|Dx|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(1),
	datab => \inst|Dx|R\(0),
	datad => VCC,
	combout => \inst|Dx|op_1~0_combout\,
	cout => \inst|Dx|op_1~1\);

-- Location: LCCOMB_X74_Y27_N8
\inst|Dx|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~3_combout\ = (!\Cmd[0]~input_o\ & (\inst|_~48_combout\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Dx|R[6]~3_combout\);

-- Location: LCCOMB_X74_Y27_N10
\inst|Dx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~3_combout\ = (!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & (\inst|_~48_combout\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|_~3_combout\);

-- Location: LCCOMB_X74_Y27_N0
\inst|Dx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~0_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~48_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|_~0_combout\);

-- Location: LCCOMB_X74_Y27_N24
\inst|Dx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~2_combout\ = (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~48_combout\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|_~2_combout\);

-- Location: LCCOMB_X74_Y27_N18
\inst|Dx|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~1_combout\ = ((!\Cmd[2]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[0]~input_o\))) # (!\inst|_~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|R[7]~1_combout\);

-- Location: LCCOMB_X77_Y27_N8
\inst|Dx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~1_cout\ = CARRY(\inst|Dx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(0),
	datad => VCC,
	cout => \inst|Dx|op_2~1_cout\);

-- Location: LCCOMB_X77_Y27_N10
\inst|Dx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~2_combout\ = (\inst|Dx|R\(1) & (\inst|Dx|op_2~1_cout\ & VCC)) # (!\inst|Dx|R\(1) & (!\inst|Dx|op_2~1_cout\))
-- \inst|Dx|op_2~3\ = CARRY((!\inst|Dx|R\(1) & !\inst|Dx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(1),
	datad => VCC,
	cin => \inst|Dx|op_2~1_cout\,
	combout => \inst|Dx|op_2~2_combout\,
	cout => \inst|Dx|op_2~3\);

-- Location: LCCOMB_X77_Y27_N12
\inst|Dx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~4_combout\ = (\inst|Dx|R\(2) & ((GND) # (!\inst|Dx|op_2~3\))) # (!\inst|Dx|R\(2) & (\inst|Dx|op_2~3\ $ (GND)))
-- \inst|Dx|op_2~5\ = CARRY((\inst|Dx|R\(2)) # (!\inst|Dx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(2),
	datad => VCC,
	cin => \inst|Dx|op_2~3\,
	combout => \inst|Dx|op_2~4_combout\,
	cout => \inst|Dx|op_2~5\);

-- Location: LCCOMB_X77_Y27_N28
\inst|Dx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~24_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~4_combout\) # ((\inst|Dx|R\(2) & \inst|Dx|R[7]~1_combout\)))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R\(2) & (\inst|Dx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R\(2),
	datac => \inst|Dx|R[7]~1_combout\,
	datad => \inst|Dx|op_2~4_combout\,
	combout => \inst|Dx|R[2]~24_combout\);

-- Location: LCCOMB_X75_Y27_N2
\inst|Dx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~2_combout\ = (\inst|Dx|R\(2) & (!\inst|Dx|op_1~1\)) # (!\inst|Dx|R\(2) & ((\inst|Dx|op_1~1\) # (GND)))
-- \inst|Dx|op_1~3\ = CARRY((!\inst|Dx|op_1~1\) # (!\inst|Dx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(2),
	datad => VCC,
	cin => \inst|Dx|op_1~1\,
	combout => \inst|Dx|op_1~2_combout\,
	cout => \inst|Dx|op_1~3\);

-- Location: LCCOMB_X76_Y27_N20
\inst|Dx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~25_combout\ = (\inst|Dx|R[2]~24_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~0_combout\,
	datab => \inst|Dx|R[2]~24_combout\,
	datad => \inst|Dx|op_1~2_combout\,
	combout => \inst|Dx|R[2]~25_combout\);

-- Location: LCCOMB_X75_Y27_N4
\inst|Dx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~4_combout\ = (\inst|Dx|R\(3) & (\inst|Dx|op_1~3\ $ (GND))) # (!\inst|Dx|R\(3) & (!\inst|Dx|op_1~3\ & VCC))
-- \inst|Dx|op_1~5\ = CARRY((\inst|Dx|R\(3) & !\inst|Dx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(3),
	datad => VCC,
	cin => \inst|Dx|op_1~3\,
	combout => \inst|Dx|op_1~4_combout\,
	cout => \inst|Dx|op_1~5\);

-- Location: LCCOMB_X75_Y27_N6
\inst|Dx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~6_combout\ = (\inst|Dx|R\(4) & (!\inst|Dx|op_1~5\)) # (!\inst|Dx|R\(4) & ((\inst|Dx|op_1~5\) # (GND)))
-- \inst|Dx|op_1~7\ = CARRY((!\inst|Dx|op_1~5\) # (!\inst|Dx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(4),
	datad => VCC,
	cin => \inst|Dx|op_1~5\,
	combout => \inst|Dx|op_1~6_combout\,
	cout => \inst|Dx|op_1~7\);

-- Location: LCCOMB_X77_Y27_N14
\inst|Dx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~6_combout\ = (\inst|Dx|R\(3) & (\inst|Dx|op_2~5\ & VCC)) # (!\inst|Dx|R\(3) & (!\inst|Dx|op_2~5\))
-- \inst|Dx|op_2~7\ = CARRY((!\inst|Dx|R\(3) & !\inst|Dx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(3),
	datad => VCC,
	cin => \inst|Dx|op_2~5\,
	combout => \inst|Dx|op_2~6_combout\,
	cout => \inst|Dx|op_2~7\);

-- Location: LCCOMB_X77_Y27_N16
\inst|Dx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~8_combout\ = (\inst|Dx|R\(4) & ((GND) # (!\inst|Dx|op_2~7\))) # (!\inst|Dx|R\(4) & (\inst|Dx|op_2~7\ $ (GND)))
-- \inst|Dx|op_2~9\ = CARRY((\inst|Dx|R\(4)) # (!\inst|Dx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(4),
	datad => VCC,
	cin => \inst|Dx|op_2~7\,
	combout => \inst|Dx|op_2~8_combout\,
	cout => \inst|Dx|op_2~9\);

-- Location: LCCOMB_X77_Y27_N24
\inst|Dx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~16_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~8_combout\) # ((\inst|Dx|R\(4) & \inst|Dx|R[7]~1_combout\)))) # (!\inst|Dx|_~2_combout\ & (((\inst|Dx|R\(4) & \inst|Dx|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|op_2~8_combout\,
	datac => \inst|Dx|R\(4),
	datad => \inst|Dx|R[7]~1_combout\,
	combout => \inst|Dx|R[4]~16_combout\);

-- Location: LCCOMB_X75_Y27_N8
\inst|Dx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~8_combout\ = (\inst|Dx|R\(5) & (\inst|Dx|op_1~7\ $ (GND))) # (!\inst|Dx|R\(5) & (!\inst|Dx|op_1~7\ & VCC))
-- \inst|Dx|op_1~9\ = CARRY((\inst|Dx|R\(5) & !\inst|Dx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(5),
	datad => VCC,
	cin => \inst|Dx|op_1~7\,
	combout => \inst|Dx|op_1~8_combout\,
	cout => \inst|Dx|op_1~9\);

-- Location: LCCOMB_X75_Y27_N10
\inst|Dx|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~10_combout\ = (\inst|Dx|R\(6) & (!\inst|Dx|op_1~9\)) # (!\inst|Dx|R\(6) & ((\inst|Dx|op_1~9\) # (GND)))
-- \inst|Dx|op_1~11\ = CARRY((!\inst|Dx|op_1~9\) # (!\inst|Dx|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(6),
	datad => VCC,
	cin => \inst|Dx|op_1~9\,
	combout => \inst|Dx|op_1~10_combout\,
	cout => \inst|Dx|op_1~11\);

-- Location: LCCOMB_X77_Y27_N18
\inst|Dx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~10_combout\ = (\inst|Dx|R\(5) & (\inst|Dx|op_2~9\ & VCC)) # (!\inst|Dx|R\(5) & (!\inst|Dx|op_2~9\))
-- \inst|Dx|op_2~11\ = CARRY((!\inst|Dx|R\(5) & !\inst|Dx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(5),
	datad => VCC,
	cin => \inst|Dx|op_2~9\,
	combout => \inst|Dx|op_2~10_combout\,
	cout => \inst|Dx|op_2~11\);

-- Location: LCCOMB_X77_Y27_N20
\inst|Dx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~12_combout\ = (\inst|Dx|R\(6) & ((GND) # (!\inst|Dx|op_2~11\))) # (!\inst|Dx|R\(6) & (\inst|Dx|op_2~11\ $ (GND)))
-- \inst|Dx|op_2~13\ = CARRY((\inst|Dx|R\(6)) # (!\inst|Dx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(6),
	datad => VCC,
	cin => \inst|Dx|op_2~11\,
	combout => \inst|Dx|op_2~12_combout\,
	cout => \inst|Dx|op_2~13\);

-- Location: LCCOMB_X77_Y27_N26
\inst|Dx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~8_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~12_combout\) # ((\inst|Dx|R[7]~1_combout\ & \inst|Dx|R\(6))))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R[7]~1_combout\ & (\inst|Dx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R[7]~1_combout\,
	datac => \inst|Dx|R\(6),
	datad => \inst|Dx|op_2~12_combout\,
	combout => \inst|Dx|R[6]~8_combout\);

-- Location: LCCOMB_X76_Y27_N4
\inst|Dx|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~7_combout\ = (\inst|Dx|R[6]~3_combout\ & ((\inst|Dx|R\(5)) # ((\inst|Dx|R\(7) & \inst|Dx|R[5]~6_combout\)))) # (!\inst|Dx|R[6]~3_combout\ & (((\inst|Dx|R\(7) & \inst|Dx|R[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~3_combout\,
	datab => \inst|Dx|R\(5),
	datac => \inst|Dx|R\(7),
	datad => \inst|Dx|R[5]~6_combout\,
	combout => \inst|Dx|R[6]~7_combout\);

-- Location: LCCOMB_X76_Y27_N22
\inst|Dx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~9_combout\ = (\inst|Dx|R[6]~8_combout\) # ((\inst|Dx|R[6]~7_combout\) # ((\inst|Dx|op_1~10_combout\ & \inst|Dx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|op_1~10_combout\,
	datab => \inst|Dx|R[6]~8_combout\,
	datac => \inst|Dx|R[6]~7_combout\,
	datad => \inst|Dx|_~0_combout\,
	combout => \inst|Dx|R[6]~9_combout\);

-- Location: LCCOMB_X75_Y27_N26
\inst|Dx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~10_combout\ = (\inst|Dx|R[6]~9_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~3_combout\,
	datab => \inst|BUS[6]~19_combout\,
	datad => \inst|Dx|R[6]~9_combout\,
	combout => \inst|Dx|R[6]~10_combout\);

-- Location: FF_X75_Y27_N27
\inst|Dx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(6));

-- Location: LCCOMB_X75_Y27_N18
\inst|Dx|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~11_combout\ = (\inst|Dx|R\(6) & ((\inst|Dx|R[5]~6_combout\) # ((\inst|Dx|R\(4) & \inst|Dx|R[6]~3_combout\)))) # (!\inst|Dx|R\(6) & (\inst|Dx|R\(4) & ((\inst|Dx|R[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(6),
	datab => \inst|Dx|R\(4),
	datac => \inst|Dx|R[5]~6_combout\,
	datad => \inst|Dx|R[6]~3_combout\,
	combout => \inst|Dx|R[5]~11_combout\);

-- Location: LCCOMB_X76_Y27_N24
\inst|Dx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~12_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~10_combout\) # ((\inst|Dx|R\(5) & \inst|Dx|R[7]~1_combout\)))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R\(5) & (\inst|Dx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R\(5),
	datac => \inst|Dx|R[7]~1_combout\,
	datad => \inst|Dx|op_2~10_combout\,
	combout => \inst|Dx|R[5]~12_combout\);

-- Location: LCCOMB_X75_Y27_N28
\inst|Dx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~13_combout\ = (\inst|Dx|R[5]~11_combout\) # ((\inst|Dx|R[5]~12_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~0_combout\,
	datab => \inst|Dx|R[5]~11_combout\,
	datac => \inst|Dx|op_1~8_combout\,
	datad => \inst|Dx|R[5]~12_combout\,
	combout => \inst|Dx|R[5]~13_combout\);

-- Location: LCCOMB_X74_Y27_N16
\inst|Dx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~14_combout\ = (\inst|Dx|R[5]~13_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~3_combout\,
	datab => \inst|Dx|R[5]~13_combout\,
	datad => \inst|BUS[5]~28_combout\,
	combout => \inst|Dx|R[5]~14_combout\);

-- Location: FF_X74_Y27_N17
\inst|Dx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(5));

-- Location: LCCOMB_X76_Y27_N2
\inst|Dx|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~15_combout\ = (\inst|Dx|R[5]~6_combout\ & ((\inst|Dx|R\(5)) # ((\inst|Dx|R[6]~3_combout\ & \inst|Dx|R\(3))))) # (!\inst|Dx|R[5]~6_combout\ & (((\inst|Dx|R[6]~3_combout\ & \inst|Dx|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~6_combout\,
	datab => \inst|Dx|R\(5),
	datac => \inst|Dx|R[6]~3_combout\,
	datad => \inst|Dx|R\(3),
	combout => \inst|Dx|R[4]~15_combout\);

-- Location: LCCOMB_X76_Y27_N28
\inst|Dx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~17_combout\ = (\inst|Dx|R[4]~16_combout\) # ((\inst|Dx|R[4]~15_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~0_combout\,
	datab => \inst|Dx|op_1~6_combout\,
	datac => \inst|Dx|R[4]~16_combout\,
	datad => \inst|Dx|R[4]~15_combout\,
	combout => \inst|Dx|R[4]~17_combout\);

-- Location: LCCOMB_X77_Y27_N4
\inst|Dx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~18_combout\ = (\inst|Dx|R[4]~17_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|_~3_combout\,
	datac => \inst|BUS[4]~37_combout\,
	datad => \inst|Dx|R[4]~17_combout\,
	combout => \inst|Dx|R[4]~18_combout\);

-- Location: FF_X77_Y27_N5
\inst|Dx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(4));

-- Location: LCCOMB_X75_Y27_N14
\inst|Dx|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~19_combout\ = (\inst|Dx|R[6]~3_combout\ & ((\inst|Dx|R\(2)) # ((\inst|Dx|R[5]~6_combout\ & \inst|Dx|R\(4))))) # (!\inst|Dx|R[6]~3_combout\ & (\inst|Dx|R[5]~6_combout\ & (\inst|Dx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~3_combout\,
	datab => \inst|Dx|R[5]~6_combout\,
	datac => \inst|Dx|R\(4),
	datad => \inst|Dx|R\(2),
	combout => \inst|Dx|R[3]~19_combout\);

-- Location: LCCOMB_X77_Y27_N6
\inst|Dx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~20_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~6_combout\) # ((\inst|Dx|R\(3) & \inst|Dx|R[7]~1_combout\)))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R\(3) & ((\inst|Dx|R[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R\(3),
	datac => \inst|Dx|op_2~6_combout\,
	datad => \inst|Dx|R[7]~1_combout\,
	combout => \inst|Dx|R[3]~20_combout\);

-- Location: LCCOMB_X76_Y27_N18
\inst|Dx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~21_combout\ = (\inst|Dx|R[3]~19_combout\) # ((\inst|Dx|R[3]~20_combout\) # ((\inst|Dx|op_1~4_combout\ & \inst|Dx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[3]~19_combout\,
	datab => \inst|Dx|R[3]~20_combout\,
	datac => \inst|Dx|op_1~4_combout\,
	datad => \inst|Dx|_~0_combout\,
	combout => \inst|Dx|R[3]~21_combout\);

-- Location: LCCOMB_X76_Y27_N6
\inst|Dx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~22_combout\ = (\inst|Dx|R[3]~21_combout\) # ((\inst|BUS[3]~46_combout\ & \inst|Dx|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[3]~46_combout\,
	datac => \inst|Dx|_~3_combout\,
	datad => \inst|Dx|R[3]~21_combout\,
	combout => \inst|Dx|R[3]~22_combout\);

-- Location: FF_X76_Y27_N7
\inst|Dx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(3));

-- Location: LCCOMB_X75_Y27_N20
\inst|Dx|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~23_combout\ = (\inst|Dx|R[6]~3_combout\ & ((\inst|Dx|R\(1)) # ((\inst|Dx|R[5]~6_combout\ & \inst|Dx|R\(3))))) # (!\inst|Dx|R[6]~3_combout\ & (\inst|Dx|R[5]~6_combout\ & ((\inst|Dx|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~3_combout\,
	datab => \inst|Dx|R[5]~6_combout\,
	datac => \inst|Dx|R\(1),
	datad => \inst|Dx|R\(3),
	combout => \inst|Dx|R[2]~23_combout\);

-- Location: LCCOMB_X75_Y27_N24
\inst|Dx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~26_combout\ = (\inst|Dx|R[2]~25_combout\) # ((\inst|Dx|R[2]~23_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[2]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~3_combout\,
	datab => \inst|BUS[2]~55_combout\,
	datac => \inst|Dx|R[2]~25_combout\,
	datad => \inst|Dx|R[2]~23_combout\,
	combout => \inst|Dx|R[2]~26_combout\);

-- Location: FF_X75_Y27_N25
\inst|Dx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(2));

-- Location: LCCOMB_X75_Y27_N22
\inst|Dx|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~27_combout\ = (\inst|Dx|R[6]~3_combout\ & ((\inst|Dx|R\(0)) # ((\inst|Dx|R[5]~6_combout\ & \inst|Dx|R\(2))))) # (!\inst|Dx|R[6]~3_combout\ & (\inst|Dx|R[5]~6_combout\ & ((\inst|Dx|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~3_combout\,
	datab => \inst|Dx|R[5]~6_combout\,
	datac => \inst|Dx|R\(0),
	datad => \inst|Dx|R\(2),
	combout => \inst|Dx|R[1]~27_combout\);

-- Location: LCCOMB_X77_Y27_N30
\inst|Dx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~28_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~2_combout\) # ((\inst|Dx|R[7]~1_combout\ & \inst|Dx|R\(1))))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R[7]~1_combout\ & (\inst|Dx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R[7]~1_combout\,
	datac => \inst|Dx|R\(1),
	datad => \inst|Dx|op_2~2_combout\,
	combout => \inst|Dx|R[1]~28_combout\);

-- Location: LCCOMB_X76_Y27_N26
\inst|Dx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~29_combout\ = (\inst|Dx|R[1]~27_combout\) # ((\inst|Dx|R[1]~28_combout\) # ((\inst|Dx|op_1~0_combout\ & \inst|Dx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|op_1~0_combout\,
	datab => \inst|Dx|R[1]~27_combout\,
	datac => \inst|Dx|R[1]~28_combout\,
	datad => \inst|Dx|_~0_combout\,
	combout => \inst|Dx|R[1]~29_combout\);

-- Location: LCCOMB_X76_Y27_N16
\inst|Dx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~30_combout\ = (\inst|Dx|R[1]~29_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[1]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[1]~29_combout\,
	datab => \inst|Dx|_~3_combout\,
	datad => \inst|BUS[1]~64_combout\,
	combout => \inst|Dx|R[1]~30_combout\);

-- Location: FF_X76_Y27_N17
\inst|Dx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(1));

-- Location: LCCOMB_X74_Y27_N2
\inst|Dx|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (\inst|_~48_combout\ & !\Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Dx|R[0]~31_combout\);

-- Location: LCCOMB_X74_Y27_N12
\inst|Dx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~32_combout\ = (\inst|Dx|R\(0) & (\inst|Dx|R[5]~6_combout\ & (\inst|Dx|R\(1)))) # (!\inst|Dx|R\(0) & ((\inst|Dx|R[0]~31_combout\) # ((\inst|Dx|R[5]~6_combout\ & \inst|Dx|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(0),
	datab => \inst|Dx|R[5]~6_combout\,
	datac => \inst|Dx|R\(1),
	datad => \inst|Dx|R[0]~31_combout\,
	combout => \inst|Dx|R[0]~32_combout\);

-- Location: LCCOMB_X74_Y27_N26
\inst|Dx|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~4_combout\ = (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~48_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[2]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~48_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|Dx|_~4_combout\);

-- Location: LCCOMB_X74_Y27_N20
\inst|Dx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~33_combout\ = (\inst|Dx|R\(0) & ((\inst|Dx|R[7]~1_combout\) # ((\inst|Dx|_~4_combout\ & \inst|Dx|R\(7))))) # (!\inst|Dx|R\(0) & (((\inst|Dx|_~4_combout\ & \inst|Dx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(0),
	datab => \inst|Dx|R[7]~1_combout\,
	datac => \inst|Dx|_~4_combout\,
	datad => \inst|Dx|R\(7),
	combout => \inst|Dx|R[0]~33_combout\);

-- Location: LCCOMB_X74_Y27_N6
\inst|Dx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~34_combout\ = (\inst|Dx|R[0]~32_combout\) # ((\inst|Dx|R[0]~33_combout\) # ((\inst|BUS[0]~73_combout\ & \inst|Dx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[0]~32_combout\,
	datab => \inst|Dx|R[0]~33_combout\,
	datac => \inst|BUS[0]~73_combout\,
	datad => \inst|Dx|_~3_combout\,
	combout => \inst|Dx|R[0]~34_combout\);

-- Location: FF_X74_Y27_N7
\inst|Dx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(0));

-- Location: LCCOMB_X75_Y27_N12
\inst|Dx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~12_combout\ = \inst|Dx|R\(7) $ (!\inst|Dx|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(7),
	cin => \inst|Dx|op_1~11\,
	combout => \inst|Dx|op_1~12_combout\);

-- Location: LCCOMB_X75_Y27_N30
\inst|Dx|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~0_combout\ = (\inst|Dx|_~1_combout\ & ((\inst|Dx|R\(0)) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~12_combout\)))) # (!\inst|Dx|_~1_combout\ & (((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~1_combout\,
	datab => \inst|Dx|R\(0),
	datac => \inst|Dx|_~0_combout\,
	datad => \inst|Dx|op_1~12_combout\,
	combout => \inst|Dx|R[7]~0_combout\);

-- Location: LCCOMB_X77_Y27_N22
\inst|Dx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~14_combout\ = \inst|Dx|op_2~13\ $ (!\inst|Dx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Dx|R\(7),
	cin => \inst|Dx|op_2~13\,
	combout => \inst|Dx|op_2~14_combout\);

-- Location: LCCOMB_X76_Y27_N10
\inst|Dx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~2_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~14_combout\) # ((\inst|Dx|R\(7) & \inst|Dx|R[7]~1_combout\)))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R\(7) & (\inst|Dx|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R\(7),
	datac => \inst|Dx|R[7]~1_combout\,
	datad => \inst|Dx|op_2~14_combout\,
	combout => \inst|Dx|R[7]~2_combout\);

-- Location: LCCOMB_X75_Y27_N16
\inst|Dx|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~4_combout\ = (\inst|Dx|R[7]~0_combout\) # ((\inst|Dx|R[7]~2_combout\) # ((\inst|Dx|R\(6) & \inst|Dx|R[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[7]~0_combout\,
	datab => \inst|Dx|R[7]~2_combout\,
	datac => \inst|Dx|R\(6),
	datad => \inst|Dx|R[6]~3_combout\,
	combout => \inst|Dx|R[7]~4_combout\);

-- Location: LCCOMB_X76_Y27_N12
\inst|Dx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~5_combout\ = (\inst|Dx|R[7]~4_combout\) # ((\inst|Dx|_~3_combout\ & \inst|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[7]~4_combout\,
	datab => \inst|Dx|_~3_combout\,
	datac => \inst|BUS[7]~10_combout\,
	combout => \inst|Dx|R[7]~5_combout\);

-- Location: FF_X76_Y27_N13
\inst|Dx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(7));

-- Location: LCCOMB_X71_Y26_N30
\inst|_~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~57_combout\ = (\inst|_~39_combout\ & ((\SelDST~input_o\ & (!\DST_UC[3]~input_o\)) # (!\SelDST~input_o\ & ((!\inst|DST|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[3]~input_o\,
	datab => \inst|DST|R\(3),
	datac => \SelDST~input_o\,
	datad => \inst|_~39_combout\,
	combout => \inst|_~57_combout\);

-- Location: LCCOMB_X72_Y21_N10
\inst|Ex|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~3_combout\ = (!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|_~3_combout\);

-- Location: LCCOMB_X72_Y21_N22
\inst|Ex|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~1_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\inst|_~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|R[7]~1_combout\);

-- Location: LCCOMB_X72_Y21_N12
\inst|Ex|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|_~2_combout\);

-- Location: LCCOMB_X72_Y21_N0
\inst|Ex|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~6_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|R[5]~6_combout\);

-- Location: LCCOMB_X72_Y21_N16
\inst|Ex|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~3_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|R[6]~3_combout\);

-- Location: LCCOMB_X72_Y21_N8
\inst|Ex|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|_~0_combout\);

-- Location: LCCOMB_X72_Y21_N20
\inst|Ex|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~4_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|_~4_combout\);

-- Location: LCCOMB_X74_Y21_N4
\inst|Ex|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~33_combout\ = (\inst|Ex|R[7]~1_combout\ & ((\inst|Ex|R\(0)) # ((\inst|Ex|_~4_combout\ & \inst|Ex|R\(7))))) # (!\inst|Ex|R[7]~1_combout\ & (\inst|Ex|_~4_combout\ & (\inst|Ex|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~1_combout\,
	datab => \inst|Ex|_~4_combout\,
	datac => \inst|Ex|R\(7),
	datad => \inst|Ex|R\(0),
	combout => \inst|Ex|R[0]~33_combout\);

-- Location: LCCOMB_X72_Y21_N18
\inst|Ex|R[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~31_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|R[0]~31_combout\);

-- Location: LCCOMB_X75_Y21_N30
\inst|Ex|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~32_combout\ = (\inst|Ex|R\(0) & (\inst|Ex|R[5]~6_combout\ & ((\inst|Ex|R\(1))))) # (!\inst|Ex|R\(0) & ((\inst|Ex|R[0]~31_combout\) # ((\inst|Ex|R[5]~6_combout\ & \inst|Ex|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(0),
	datab => \inst|Ex|R[5]~6_combout\,
	datac => \inst|Ex|R[0]~31_combout\,
	datad => \inst|Ex|R\(1),
	combout => \inst|Ex|R[0]~32_combout\);

-- Location: LCCOMB_X74_Y21_N16
\inst|Ex|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~34_combout\ = (\inst|Ex|R[0]~33_combout\) # ((\inst|Ex|R[0]~32_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~3_combout\,
	datab => \inst|Ex|R[0]~33_combout\,
	datac => \inst|Ex|R[0]~32_combout\,
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|Ex|R[0]~34_combout\);

-- Location: FF_X74_Y21_N17
\inst|Ex|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[0]~34_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(0));

-- Location: LCCOMB_X75_Y21_N0
\inst|Ex|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~1_cout\ = CARRY(\inst|Ex|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(0),
	datad => VCC,
	cout => \inst|Ex|op_2~1_cout\);

-- Location: LCCOMB_X75_Y21_N2
\inst|Ex|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~2_combout\ = (\inst|Ex|R\(1) & (\inst|Ex|op_2~1_cout\ & VCC)) # (!\inst|Ex|R\(1) & (!\inst|Ex|op_2~1_cout\))
-- \inst|Ex|op_2~3\ = CARRY((!\inst|Ex|R\(1) & !\inst|Ex|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(1),
	datad => VCC,
	cin => \inst|Ex|op_2~1_cout\,
	combout => \inst|Ex|op_2~2_combout\,
	cout => \inst|Ex|op_2~3\);

-- Location: LCCOMB_X75_Y21_N24
\inst|Ex|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~28_combout\ = (\inst|Ex|_~2_combout\ & ((\inst|Ex|op_2~2_combout\) # ((\inst|Ex|R[7]~1_combout\ & \inst|Ex|R\(1))))) # (!\inst|Ex|_~2_combout\ & (((\inst|Ex|R[7]~1_combout\ & \inst|Ex|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~2_combout\,
	datab => \inst|Ex|op_2~2_combout\,
	datac => \inst|Ex|R[7]~1_combout\,
	datad => \inst|Ex|R\(1),
	combout => \inst|Ex|R[1]~28_combout\);

-- Location: LCCOMB_X76_Y21_N0
\inst|Ex|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~0_combout\ = (\inst|Ex|R\(0) & (\inst|Ex|R\(1) $ (VCC))) # (!\inst|Ex|R\(0) & (\inst|Ex|R\(1) & VCC))
-- \inst|Ex|op_1~1\ = CARRY((\inst|Ex|R\(0) & \inst|Ex|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(0),
	datab => \inst|Ex|R\(1),
	datad => VCC,
	combout => \inst|Ex|op_1~0_combout\,
	cout => \inst|Ex|op_1~1\);

-- Location: LCCOMB_X76_Y21_N26
\inst|Ex|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~29_combout\ = (\inst|Ex|R[1]~28_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~0_combout\,
	datab => \inst|Ex|R[1]~28_combout\,
	datad => \inst|Ex|op_1~0_combout\,
	combout => \inst|Ex|R[1]~29_combout\);

-- Location: LCCOMB_X75_Y21_N22
\inst|Ex|R[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~27_combout\ = (\inst|Ex|R\(0) & ((\inst|Ex|R[6]~3_combout\) # ((\inst|Ex|R[5]~6_combout\ & \inst|Ex|R\(2))))) # (!\inst|Ex|R\(0) & (((\inst|Ex|R[5]~6_combout\ & \inst|Ex|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(0),
	datab => \inst|Ex|R[6]~3_combout\,
	datac => \inst|Ex|R[5]~6_combout\,
	datad => \inst|Ex|R\(2),
	combout => \inst|Ex|R[1]~27_combout\);

-- Location: LCCOMB_X76_Y21_N18
\inst|Ex|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~30_combout\ = (\inst|Ex|R[1]~29_combout\) # ((\inst|Ex|R[1]~27_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[1]~29_combout\,
	datab => \inst|Ex|_~3_combout\,
	datac => \inst|BUS[1]~64_combout\,
	datad => \inst|Ex|R[1]~27_combout\,
	combout => \inst|Ex|R[1]~30_combout\);

-- Location: FF_X76_Y21_N19
\inst|Ex|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[1]~30_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(1));

-- Location: LCCOMB_X75_Y21_N4
\inst|Ex|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~4_combout\ = (\inst|Ex|R\(2) & ((GND) # (!\inst|Ex|op_2~3\))) # (!\inst|Ex|R\(2) & (\inst|Ex|op_2~3\ $ (GND)))
-- \inst|Ex|op_2~5\ = CARRY((\inst|Ex|R\(2)) # (!\inst|Ex|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(2),
	datad => VCC,
	cin => \inst|Ex|op_2~3\,
	combout => \inst|Ex|op_2~4_combout\,
	cout => \inst|Ex|op_2~5\);

-- Location: LCCOMB_X75_Y21_N20
\inst|Ex|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~24_combout\ = (\inst|Ex|R[7]~1_combout\ & ((\inst|Ex|R\(2)) # ((\inst|Ex|op_2~4_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~1_combout\ & (((\inst|Ex|op_2~4_combout\ & \inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~1_combout\,
	datab => \inst|Ex|R\(2),
	datac => \inst|Ex|op_2~4_combout\,
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[2]~24_combout\);

-- Location: LCCOMB_X76_Y21_N30
\inst|Ex|R[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~23_combout\ = (\inst|Ex|R[6]~3_combout\ & ((\inst|Ex|R\(1)) # ((\inst|Ex|R\(3) & \inst|Ex|R[5]~6_combout\)))) # (!\inst|Ex|R[6]~3_combout\ & (\inst|Ex|R\(3) & (\inst|Ex|R[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~3_combout\,
	datab => \inst|Ex|R\(3),
	datac => \inst|Ex|R[5]~6_combout\,
	datad => \inst|Ex|R\(1),
	combout => \inst|Ex|R[2]~23_combout\);

-- Location: LCCOMB_X76_Y21_N2
\inst|Ex|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~2_combout\ = (\inst|Ex|R\(2) & (!\inst|Ex|op_1~1\)) # (!\inst|Ex|R\(2) & ((\inst|Ex|op_1~1\) # (GND)))
-- \inst|Ex|op_1~3\ = CARRY((!\inst|Ex|op_1~1\) # (!\inst|Ex|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(2),
	datad => VCC,
	cin => \inst|Ex|op_1~1\,
	combout => \inst|Ex|op_1~2_combout\,
	cout => \inst|Ex|op_1~3\);

-- Location: LCCOMB_X76_Y21_N24
\inst|Ex|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~25_combout\ = (\inst|Ex|R[2]~24_combout\) # ((\inst|Ex|R[2]~23_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~0_combout\,
	datab => \inst|Ex|R[2]~24_combout\,
	datac => \inst|Ex|R[2]~23_combout\,
	datad => \inst|Ex|op_1~2_combout\,
	combout => \inst|Ex|R[2]~25_combout\);

-- Location: LCCOMB_X75_Y21_N16
\inst|Ex|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~26_combout\ = (\inst|Ex|R[2]~25_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[2]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|_~3_combout\,
	datac => \inst|BUS[2]~55_combout\,
	datad => \inst|Ex|R[2]~25_combout\,
	combout => \inst|Ex|R[2]~26_combout\);

-- Location: FF_X75_Y21_N17
\inst|Ex|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[2]~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(2));

-- Location: LCCOMB_X76_Y21_N14
\inst|Ex|R[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~19_combout\ = (\inst|Ex|R\(2) & ((\inst|Ex|R[6]~3_combout\) # ((\inst|Ex|R[5]~6_combout\ & \inst|Ex|R\(4))))) # (!\inst|Ex|R\(2) & (\inst|Ex|R[5]~6_combout\ & (\inst|Ex|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(2),
	datab => \inst|Ex|R[5]~6_combout\,
	datac => \inst|Ex|R\(4),
	datad => \inst|Ex|R[6]~3_combout\,
	combout => \inst|Ex|R[3]~19_combout\);

-- Location: LCCOMB_X76_Y21_N4
\inst|Ex|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~4_combout\ = (\inst|Ex|R\(3) & (\inst|Ex|op_1~3\ $ (GND))) # (!\inst|Ex|R\(3) & (!\inst|Ex|op_1~3\ & VCC))
-- \inst|Ex|op_1~5\ = CARRY((\inst|Ex|R\(3) & !\inst|Ex|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(3),
	datad => VCC,
	cin => \inst|Ex|op_1~3\,
	combout => \inst|Ex|op_1~4_combout\,
	cout => \inst|Ex|op_1~5\);

-- Location: LCCOMB_X75_Y21_N6
\inst|Ex|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~6_combout\ = (\inst|Ex|R\(3) & (\inst|Ex|op_2~5\ & VCC)) # (!\inst|Ex|R\(3) & (!\inst|Ex|op_2~5\))
-- \inst|Ex|op_2~7\ = CARRY((!\inst|Ex|R\(3) & !\inst|Ex|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(3),
	datad => VCC,
	cin => \inst|Ex|op_2~5\,
	combout => \inst|Ex|op_2~6_combout\,
	cout => \inst|Ex|op_2~7\);

-- Location: LCCOMB_X75_Y21_N18
\inst|Ex|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~20_combout\ = (\inst|Ex|_~2_combout\ & ((\inst|Ex|op_2~6_combout\) # ((\inst|Ex|R\(3) & \inst|Ex|R[7]~1_combout\)))) # (!\inst|Ex|_~2_combout\ & (\inst|Ex|R\(3) & (\inst|Ex|R[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~2_combout\,
	datab => \inst|Ex|R\(3),
	datac => \inst|Ex|R[7]~1_combout\,
	datad => \inst|Ex|op_2~6_combout\,
	combout => \inst|Ex|R[3]~20_combout\);

-- Location: LCCOMB_X76_Y21_N16
\inst|Ex|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~21_combout\ = (\inst|Ex|R[3]~19_combout\) # ((\inst|Ex|R[3]~20_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~0_combout\,
	datab => \inst|Ex|R[3]~19_combout\,
	datac => \inst|Ex|op_1~4_combout\,
	datad => \inst|Ex|R[3]~20_combout\,
	combout => \inst|Ex|R[3]~21_combout\);

-- Location: LCCOMB_X76_Y21_N28
\inst|Ex|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~22_combout\ = (\inst|Ex|R[3]~21_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|_~3_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|Ex|R[3]~21_combout\,
	combout => \inst|Ex|R[3]~22_combout\);

-- Location: FF_X76_Y21_N29
\inst|Ex|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[3]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(3));

-- Location: LCCOMB_X75_Y21_N8
\inst|Ex|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~8_combout\ = (\inst|Ex|R\(4) & ((GND) # (!\inst|Ex|op_2~7\))) # (!\inst|Ex|R\(4) & (\inst|Ex|op_2~7\ $ (GND)))
-- \inst|Ex|op_2~9\ = CARRY((\inst|Ex|R\(4)) # (!\inst|Ex|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(4),
	datad => VCC,
	cin => \inst|Ex|op_2~7\,
	combout => \inst|Ex|op_2~8_combout\,
	cout => \inst|Ex|op_2~9\);

-- Location: LCCOMB_X75_Y21_N28
\inst|Ex|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~16_combout\ = (\inst|Ex|R[7]~1_combout\ & ((\inst|Ex|R\(4)) # ((\inst|Ex|op_2~8_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~1_combout\ & (((\inst|Ex|op_2~8_combout\ & \inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~1_combout\,
	datab => \inst|Ex|R\(4),
	datac => \inst|Ex|op_2~8_combout\,
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[4]~16_combout\);

-- Location: LCCOMB_X75_Y21_N26
\inst|Ex|R[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~15_combout\ = (\inst|Ex|R\(5) & ((\inst|Ex|R[5]~6_combout\) # ((\inst|Ex|R[6]~3_combout\ & \inst|Ex|R\(3))))) # (!\inst|Ex|R\(5) & (\inst|Ex|R[6]~3_combout\ & ((\inst|Ex|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(5),
	datab => \inst|Ex|R[6]~3_combout\,
	datac => \inst|Ex|R[5]~6_combout\,
	datad => \inst|Ex|R\(3),
	combout => \inst|Ex|R[4]~15_combout\);

-- Location: LCCOMB_X76_Y21_N6
\inst|Ex|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~6_combout\ = (\inst|Ex|R\(4) & (!\inst|Ex|op_1~5\)) # (!\inst|Ex|R\(4) & ((\inst|Ex|op_1~5\) # (GND)))
-- \inst|Ex|op_1~7\ = CARRY((!\inst|Ex|op_1~5\) # (!\inst|Ex|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(4),
	datad => VCC,
	cin => \inst|Ex|op_1~5\,
	combout => \inst|Ex|op_1~6_combout\,
	cout => \inst|Ex|op_1~7\);

-- Location: LCCOMB_X76_Y21_N20
\inst|Ex|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~17_combout\ = (\inst|Ex|R[4]~16_combout\) # ((\inst|Ex|R[4]~15_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~0_combout\,
	datab => \inst|Ex|R[4]~16_combout\,
	datac => \inst|Ex|R[4]~15_combout\,
	datad => \inst|Ex|op_1~6_combout\,
	combout => \inst|Ex|R[4]~17_combout\);

-- Location: LCCOMB_X76_Y21_N22
\inst|Ex|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~18_combout\ = (\inst|Ex|R[4]~17_combout\) # ((\inst|BUS[4]~37_combout\ & \inst|Ex|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BUS[4]~37_combout\,
	datac => \inst|Ex|_~3_combout\,
	datad => \inst|Ex|R[4]~17_combout\,
	combout => \inst|Ex|R[4]~18_combout\);

-- Location: FF_X76_Y21_N23
\inst|Ex|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[4]~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(4));

-- Location: LCCOMB_X74_Y21_N22
\inst|Ex|R[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~11_combout\ = (\inst|Ex|R[5]~6_combout\ & ((\inst|Ex|R\(6)) # ((\inst|Ex|R[6]~3_combout\ & \inst|Ex|R\(4))))) # (!\inst|Ex|R[5]~6_combout\ & (((\inst|Ex|R[6]~3_combout\ & \inst|Ex|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[5]~6_combout\,
	datab => \inst|Ex|R\(6),
	datac => \inst|Ex|R[6]~3_combout\,
	datad => \inst|Ex|R\(4),
	combout => \inst|Ex|R[5]~11_combout\);

-- Location: LCCOMB_X75_Y21_N10
\inst|Ex|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~10_combout\ = (\inst|Ex|R\(5) & (\inst|Ex|op_2~9\ & VCC)) # (!\inst|Ex|R\(5) & (!\inst|Ex|op_2~9\))
-- \inst|Ex|op_2~11\ = CARRY((!\inst|Ex|R\(5) & !\inst|Ex|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(5),
	datad => VCC,
	cin => \inst|Ex|op_2~9\,
	combout => \inst|Ex|op_2~10_combout\,
	cout => \inst|Ex|op_2~11\);

-- Location: LCCOMB_X74_Y21_N8
\inst|Ex|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~12_combout\ = (\inst|Ex|R[7]~1_combout\ & ((\inst|Ex|R\(5)) # ((\inst|Ex|_~2_combout\ & \inst|Ex|op_2~10_combout\)))) # (!\inst|Ex|R[7]~1_combout\ & (\inst|Ex|_~2_combout\ & (\inst|Ex|op_2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~1_combout\,
	datab => \inst|Ex|_~2_combout\,
	datac => \inst|Ex|op_2~10_combout\,
	datad => \inst|Ex|R\(5),
	combout => \inst|Ex|R[5]~12_combout\);

-- Location: LCCOMB_X76_Y21_N8
\inst|Ex|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~8_combout\ = (\inst|Ex|R\(5) & (\inst|Ex|op_1~7\ $ (GND))) # (!\inst|Ex|R\(5) & (!\inst|Ex|op_1~7\ & VCC))
-- \inst|Ex|op_1~9\ = CARRY((\inst|Ex|R\(5) & !\inst|Ex|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(5),
	datad => VCC,
	cin => \inst|Ex|op_1~7\,
	combout => \inst|Ex|op_1~8_combout\,
	cout => \inst|Ex|op_1~9\);

-- Location: LCCOMB_X74_Y21_N18
\inst|Ex|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~13_combout\ = (\inst|Ex|R[5]~11_combout\) # ((\inst|Ex|R[5]~12_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[5]~11_combout\,
	datab => \inst|Ex|R[5]~12_combout\,
	datac => \inst|Ex|_~0_combout\,
	datad => \inst|Ex|op_1~8_combout\,
	combout => \inst|Ex|R[5]~13_combout\);

-- Location: LCCOMB_X74_Y21_N6
\inst|Ex|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~14_combout\ = (\inst|Ex|R[5]~13_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~3_combout\,
	datab => \inst|Ex|R[5]~13_combout\,
	datad => \inst|BUS[5]~28_combout\,
	combout => \inst|Ex|R[5]~14_combout\);

-- Location: FF_X74_Y21_N7
\inst|Ex|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[5]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(5));

-- Location: LCCOMB_X75_Y21_N12
\inst|Ex|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~12_combout\ = (\inst|Ex|R\(6) & ((GND) # (!\inst|Ex|op_2~11\))) # (!\inst|Ex|R\(6) & (\inst|Ex|op_2~11\ $ (GND)))
-- \inst|Ex|op_2~13\ = CARRY((\inst|Ex|R\(6)) # (!\inst|Ex|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(6),
	datad => VCC,
	cin => \inst|Ex|op_2~11\,
	combout => \inst|Ex|op_2~12_combout\,
	cout => \inst|Ex|op_2~13\);

-- Location: LCCOMB_X74_Y21_N10
\inst|Ex|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~8_combout\ = (\inst|Ex|R[7]~1_combout\ & ((\inst|Ex|R\(6)) # ((\inst|Ex|_~2_combout\ & \inst|Ex|op_2~12_combout\)))) # (!\inst|Ex|R[7]~1_combout\ & (\inst|Ex|_~2_combout\ & (\inst|Ex|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~1_combout\,
	datab => \inst|Ex|_~2_combout\,
	datac => \inst|Ex|op_2~12_combout\,
	datad => \inst|Ex|R\(6),
	combout => \inst|Ex|R[6]~8_combout\);

-- Location: LCCOMB_X74_Y21_N24
\inst|Ex|R[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~7_combout\ = (\inst|Ex|R[5]~6_combout\ & ((\inst|Ex|R\(7)) # ((\inst|Ex|R[6]~3_combout\ & \inst|Ex|R\(5))))) # (!\inst|Ex|R[5]~6_combout\ & (\inst|Ex|R[6]~3_combout\ & ((\inst|Ex|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[5]~6_combout\,
	datab => \inst|Ex|R[6]~3_combout\,
	datac => \inst|Ex|R\(7),
	datad => \inst|Ex|R\(5),
	combout => \inst|Ex|R[6]~7_combout\);

-- Location: LCCOMB_X76_Y21_N10
\inst|Ex|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~10_combout\ = (\inst|Ex|R\(6) & (!\inst|Ex|op_1~9\)) # (!\inst|Ex|R\(6) & ((\inst|Ex|op_1~9\) # (GND)))
-- \inst|Ex|op_1~11\ = CARRY((!\inst|Ex|op_1~9\) # (!\inst|Ex|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(6),
	datad => VCC,
	cin => \inst|Ex|op_1~9\,
	combout => \inst|Ex|op_1~10_combout\,
	cout => \inst|Ex|op_1~11\);

-- Location: LCCOMB_X74_Y21_N0
\inst|Ex|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~9_combout\ = (\inst|Ex|R[6]~8_combout\) # ((\inst|Ex|R[6]~7_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~8_combout\,
	datab => \inst|Ex|R[6]~7_combout\,
	datac => \inst|Ex|_~0_combout\,
	datad => \inst|Ex|op_1~10_combout\,
	combout => \inst|Ex|R[6]~9_combout\);

-- Location: LCCOMB_X74_Y21_N20
\inst|Ex|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~10_combout\ = (\inst|Ex|R[6]~9_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[6]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~3_combout\,
	datac => \inst|BUS[6]~19_combout\,
	datad => \inst|Ex|R[6]~9_combout\,
	combout => \inst|Ex|R[6]~10_combout\);

-- Location: FF_X74_Y21_N21
\inst|Ex|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[6]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(6));

-- Location: LCCOMB_X75_Y21_N14
\inst|Ex|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~14_combout\ = \inst|Ex|op_2~13\ $ (!\inst|Ex|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ex|R\(7),
	cin => \inst|Ex|op_2~13\,
	combout => \inst|Ex|op_2~14_combout\);

-- Location: LCCOMB_X74_Y21_N12
\inst|Ex|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~2_combout\ = (\inst|Ex|R\(7) & ((\inst|Ex|R[7]~1_combout\) # ((\inst|Ex|op_2~14_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R\(7) & (\inst|Ex|op_2~14_combout\ & (\inst|Ex|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(7),
	datab => \inst|Ex|op_2~14_combout\,
	datac => \inst|Ex|_~2_combout\,
	datad => \inst|Ex|R[7]~1_combout\,
	combout => \inst|Ex|R[7]~2_combout\);

-- Location: LCCOMB_X76_Y21_N12
\inst|Ex|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~12_combout\ = \inst|Ex|op_1~11\ $ (!\inst|Ex|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ex|R\(7),
	cin => \inst|Ex|op_1~11\,
	combout => \inst|Ex|op_1~12_combout\);

-- Location: LCCOMB_X72_Y21_N26
\inst|Ex|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~57_combout\,
	combout => \inst|Ex|_~1_combout\);

-- Location: LCCOMB_X74_Y21_N2
\inst|Ex|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~0_combout\ = (\inst|Ex|op_1~12_combout\ & ((\inst|Ex|_~0_combout\) # ((\inst|Ex|_~1_combout\ & \inst|Ex|R\(0))))) # (!\inst|Ex|op_1~12_combout\ & (((\inst|Ex|_~1_combout\ & \inst|Ex|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_1~12_combout\,
	datab => \inst|Ex|_~0_combout\,
	datac => \inst|Ex|_~1_combout\,
	datad => \inst|Ex|R\(0),
	combout => \inst|Ex|R[7]~0_combout\);

-- Location: LCCOMB_X74_Y21_N26
\inst|Ex|R[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~4_combout\ = (\inst|Ex|R[7]~2_combout\) # ((\inst|Ex|R[7]~0_combout\) # ((\inst|Ex|R[6]~3_combout\ & \inst|Ex|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~2_combout\,
	datab => \inst|Ex|R[7]~0_combout\,
	datac => \inst|Ex|R[6]~3_combout\,
	datad => \inst|Ex|R\(6),
	combout => \inst|Ex|R[7]~4_combout\);

-- Location: LCCOMB_X74_Y21_N30
\inst|Ex|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~5_combout\ = (\inst|Ex|R[7]~4_combout\) # ((\inst|Ex|_~3_combout\ & \inst|BUS[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~3_combout\,
	datab => \inst|BUS[7]~10_combout\,
	datac => \inst|Ex|R[7]~4_combout\,
	combout => \inst|Ex|R[7]~5_combout\);

-- Location: FF_X74_Y21_N31
\inst|Ex|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[7]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(7));

-- Location: LCCOMB_X36_Y12_N6
\inst|ALU|Flags[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[7]~0_combout\ = (\inst|ALU|_~6_combout\ & (\inst|ALU|_~12_combout\ & !\inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|Flags[7]~0_combout\);

-- Location: FF_X36_Y12_N7
\inst|ALU|Flags[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(7));

-- Location: LCCOMB_X38_Y13_N18
\inst|ALU|Flags[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~3_combout\ = (\inst|alu_y|R\(2) & (\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|alu_x|R[3]~_Duplicate_1_q\ $ (!\inst|alu_y|R\(3))))) # (!\inst|alu_y|R\(2) & (!\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|alu_x|R[3]~_Duplicate_1_q\ $ 
-- (!\inst|alu_y|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datac => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datad => \inst|alu_y|R\(3),
	combout => \inst|ALU|Flags[6]~3_combout\);

-- Location: LCCOMB_X38_Y13_N28
\inst|ALU|Flags[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~4_combout\ = (!\inst|ALU|op_2~0_combout\ & (\inst|ALU|Flags[6]~3_combout\ & (\inst|alu_x|R[1]~_Duplicate_1_q\ $ (!\inst|alu_y|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~0_combout\,
	datab => \inst|ALU|Flags[6]~3_combout\,
	datac => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => \inst|alu_y|R\(1),
	combout => \inst|ALU|Flags[6]~4_combout\);

-- Location: LCCOMB_X43_Y12_N14
\inst|ALU|Flags[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~1_combout\ = (\inst|alu_y|R\(6) & (\inst|alu_x|R[6]~_Duplicate_1_q\ & (\inst|alu_y|R\(7) $ (!\inst|alu_x|R[7]~_Duplicate_1_q\)))) # (!\inst|alu_y|R\(6) & (!\inst|alu_x|R[6]~_Duplicate_1_q\ & (\inst|alu_y|R\(7) $ 
-- (!\inst|alu_x|R[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(6),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datac => \inst|alu_y|R\(7),
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	combout => \inst|ALU|Flags[6]~1_combout\);

-- Location: LCCOMB_X41_Y13_N30
\inst|ALU|Flags[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~2_combout\ = (\inst|alu_x|R[4]~_Duplicate_1_q\ & (\inst|alu_y|R\(4) & (\inst|alu_y|R\(5) $ (!\inst|alu_x|R[5]~_Duplicate_1_q\)))) # (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (!\inst|alu_y|R\(4) & (\inst|alu_y|R\(5) $ 
-- (!\inst|alu_x|R[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(4),
	datac => \inst|alu_y|R\(5),
	datad => \inst|alu_x|R[5]~_Duplicate_1_q\,
	combout => \inst|ALU|Flags[6]~2_combout\);

-- Location: LCCOMB_X38_Y12_N6
\inst|ALU|Flags[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~5_combout\ = (\inst|ALU|Flags[6]~4_combout\ & (\inst|ALU|Flags[6]~1_combout\ & \inst|ALU|Flags[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[6]~4_combout\,
	datac => \inst|ALU|Flags[6]~1_combout\,
	datad => \inst|ALU|Flags[6]~2_combout\,
	combout => \inst|ALU|Flags[6]~5_combout\);

-- Location: FF_X38_Y12_N7
\inst|ALU|Flags[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[6]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(6));

-- Location: LCCOMB_X38_Y11_N16
\inst|ALU|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~1_cout\ = CARRY((\inst|alu_x|R[0]~_Duplicate_1_q\ & !\inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datad => VCC,
	cout => \inst|ALU|op_1~1_cout\);

-- Location: LCCOMB_X38_Y11_N18
\inst|ALU|op_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~3_cout\ = CARRY((\inst|alu_y|R\(1) & ((!\inst|ALU|op_1~1_cout\) # (!\inst|alu_x|R[1]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(1) & (!\inst|alu_x|R[1]~_Duplicate_1_q\ & !\inst|ALU|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_1~1_cout\,
	cout => \inst|ALU|op_1~3_cout\);

-- Location: LCCOMB_X38_Y11_N20
\inst|ALU|op_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~5_cout\ = CARRY((\inst|alu_x|R[2]~_Duplicate_1_q\ & ((!\inst|ALU|op_1~3_cout\) # (!\inst|alu_y|R\(2)))) # (!\inst|alu_x|R[2]~_Duplicate_1_q\ & (!\inst|alu_y|R\(2) & !\inst|ALU|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(2),
	datad => VCC,
	cin => \inst|ALU|op_1~3_cout\,
	cout => \inst|ALU|op_1~5_cout\);

-- Location: LCCOMB_X38_Y11_N22
\inst|ALU|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~7_cout\ = CARRY((\inst|alu_y|R\(3) & ((!\inst|ALU|op_1~5_cout\) # (!\inst|alu_x|R[3]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(3) & (!\inst|alu_x|R[3]~_Duplicate_1_q\ & !\inst|ALU|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(3),
	datab => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_1~5_cout\,
	cout => \inst|ALU|op_1~7_cout\);

-- Location: LCCOMB_X38_Y11_N24
\inst|ALU|op_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~9_cout\ = CARRY((\inst|alu_x|R[4]~_Duplicate_1_q\ & ((!\inst|ALU|op_1~7_cout\) # (!\inst|alu_y|R\(4)))) # (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (!\inst|alu_y|R\(4) & !\inst|ALU|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(4),
	datad => VCC,
	cin => \inst|ALU|op_1~7_cout\,
	cout => \inst|ALU|op_1~9_cout\);

-- Location: LCCOMB_X38_Y11_N26
\inst|ALU|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~11_cout\ = CARRY((\inst|alu_y|R\(5) & ((!\inst|ALU|op_1~9_cout\) # (!\inst|alu_x|R[5]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(5) & (!\inst|alu_x|R[5]~_Duplicate_1_q\ & !\inst|ALU|op_1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_1~9_cout\,
	cout => \inst|ALU|op_1~11_cout\);

-- Location: LCCOMB_X38_Y11_N28
\inst|ALU|op_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~13_cout\ = CARRY((\inst|alu_x|R[6]~_Duplicate_1_q\ & ((!\inst|ALU|op_1~11_cout\) # (!\inst|alu_y|R\(6)))) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & (!\inst|alu_y|R\(6) & !\inst|ALU|op_1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(6),
	datad => VCC,
	cin => \inst|ALU|op_1~11_cout\,
	cout => \inst|ALU|op_1~13_cout\);

-- Location: LCCOMB_X38_Y11_N30
\inst|ALU|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~14_combout\ = (\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|ALU|op_1~13_cout\) # (!\inst|alu_y|R\(7)))) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & (\inst|ALU|op_1~13_cout\ & !\inst|alu_y|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \inst|alu_y|R\(7),
	cin => \inst|ALU|op_1~13_cout\,
	combout => \inst|ALU|op_1~14_combout\);

-- Location: LCCOMB_X38_Y12_N28
\inst|ALU|Flags[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[5]~6_combout\ = (!\inst|ALU|op_1~14_combout\ & (((!\inst|ALU|Flags[6]~2_combout\) # (!\inst|ALU|Flags[6]~1_combout\)) # (!\inst|ALU|Flags[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[6]~4_combout\,
	datab => \inst|ALU|op_1~14_combout\,
	datac => \inst|ALU|Flags[6]~1_combout\,
	datad => \inst|ALU|Flags[6]~2_combout\,
	combout => \inst|ALU|Flags[5]~6_combout\);

-- Location: FF_X38_Y12_N29
\inst|ALU|Flags[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[5]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(5));

-- Location: LCCOMB_X38_Y12_N10
\inst|ALU|Flags[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[4]~7_combout\ = (\inst|ALU|op_1~14_combout\ & (((!\inst|ALU|Flags[6]~2_combout\) # (!\inst|ALU|Flags[6]~1_combout\)) # (!\inst|ALU|Flags[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[6]~4_combout\,
	datab => \inst|ALU|op_1~14_combout\,
	datac => \inst|ALU|Flags[6]~1_combout\,
	datad => \inst|ALU|Flags[6]~2_combout\,
	combout => \inst|ALU|Flags[4]~7_combout\);

-- Location: FF_X38_Y12_N11
\inst|ALU|Flags[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[4]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(4));

-- Location: LCCOMB_X39_Y13_N12
\inst|ALU|Flags[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[3]~8_combout\ = (\inst|ALU|_~11_combout\ & ((\inst|ALU|_~9_combout\) # ((\inst|ALU|_~6_combout\ & !\inst|alu_y|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~11_combout\,
	datab => \inst|ALU|_~6_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~9_combout\,
	combout => \inst|ALU|Flags[3]~8_combout\);

-- Location: LCCOMB_X38_Y11_N0
\inst|ALU|op_4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~1_cout\ = CARRY((!\inst|alu_x|R[0]~_Duplicate_1_q\ & \inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datad => VCC,
	cout => \inst|ALU|op_4~1_cout\);

-- Location: LCCOMB_X38_Y11_N2
\inst|ALU|op_4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~3_cout\ = CARRY((\inst|alu_y|R\(1) & (\inst|alu_x|R[1]~_Duplicate_1_q\ & !\inst|ALU|op_4~1_cout\)) # (!\inst|alu_y|R\(1) & ((\inst|alu_x|R[1]~_Duplicate_1_q\) # (!\inst|ALU|op_4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_4~1_cout\,
	cout => \inst|ALU|op_4~3_cout\);

-- Location: LCCOMB_X38_Y11_N4
\inst|ALU|op_4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~5_cout\ = CARRY((\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|alu_y|R\(2) & !\inst|ALU|op_4~3_cout\)) # (!\inst|alu_x|R[2]~_Duplicate_1_q\ & ((\inst|alu_y|R\(2)) # (!\inst|ALU|op_4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(2),
	datad => VCC,
	cin => \inst|ALU|op_4~3_cout\,
	cout => \inst|ALU|op_4~5_cout\);

-- Location: LCCOMB_X38_Y11_N6
\inst|ALU|op_4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~7_cout\ = CARRY((\inst|alu_y|R\(3) & (\inst|alu_x|R[3]~_Duplicate_1_q\ & !\inst|ALU|op_4~5_cout\)) # (!\inst|alu_y|R\(3) & ((\inst|alu_x|R[3]~_Duplicate_1_q\) # (!\inst|ALU|op_4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(3),
	datab => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_4~5_cout\,
	cout => \inst|ALU|op_4~7_cout\);

-- Location: LCCOMB_X38_Y11_N8
\inst|ALU|op_4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~9_cout\ = CARRY((\inst|alu_x|R[4]~_Duplicate_1_q\ & (\inst|alu_y|R\(4) & !\inst|ALU|op_4~7_cout\)) # (!\inst|alu_x|R[4]~_Duplicate_1_q\ & ((\inst|alu_y|R\(4)) # (!\inst|ALU|op_4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(4),
	datad => VCC,
	cin => \inst|ALU|op_4~7_cout\,
	cout => \inst|ALU|op_4~9_cout\);

-- Location: LCCOMB_X38_Y11_N10
\inst|ALU|op_4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~11_cout\ = CARRY((\inst|alu_y|R\(5) & (\inst|alu_x|R[5]~_Duplicate_1_q\ & !\inst|ALU|op_4~9_cout\)) # (!\inst|alu_y|R\(5) & ((\inst|alu_x|R[5]~_Duplicate_1_q\) # (!\inst|ALU|op_4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_4~9_cout\,
	cout => \inst|ALU|op_4~11_cout\);

-- Location: LCCOMB_X38_Y11_N12
\inst|ALU|op_4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~13_cout\ = CARRY((\inst|alu_x|R[6]~_Duplicate_1_q\ & (\inst|alu_y|R\(6) & !\inst|ALU|op_4~11_cout\)) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & ((\inst|alu_y|R\(6)) # (!\inst|ALU|op_4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(6),
	datad => VCC,
	cin => \inst|ALU|op_4~11_cout\,
	cout => \inst|ALU|op_4~13_cout\);

-- Location: LCCOMB_X38_Y11_N14
\inst|ALU|op_4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~14_combout\ = (\inst|alu_x|R[7]~_Duplicate_1_q\ & (\inst|ALU|op_4~13_cout\ & \inst|alu_y|R\(7))) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|ALU|op_4~13_cout\) # (\inst|alu_y|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \inst|alu_y|R\(7),
	cin => \inst|ALU|op_4~13_cout\,
	combout => \inst|ALU|op_4~14_combout\);

-- Location: LCCOMB_X39_Y13_N22
\inst|ALU|Flags[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[3]~9_combout\ = (\inst|ALU|Flags[3]~8_combout\) # ((\inst|ALU|op_4~14_combout\ & \inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[3]~8_combout\,
	datac => \inst|ALU|op_4~14_combout\,
	datad => \inst|ALU|_~14_combout\,
	combout => \inst|ALU|Flags[3]~9_combout\);

-- Location: FF_X39_Y13_N23
\inst|ALU|Flags[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[3]~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(3));

-- Location: LCCOMB_X39_Y13_N30
\inst|ALU|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~32_combout\ = (\inst|ALU|_~6_combout\ & (\inst|ALU|_~7_combout\ & (!\inst|alu_y|R\(0) & \inst|ALU|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~6_combout\,
	datab => \inst|ALU|_~7_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~8_combout\,
	combout => \inst|ALU|_~32_combout\);

-- Location: LCCOMB_X39_Y13_N20
\inst|ALU|Flags[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~10_combout\ = (\SelOp[0]~input_o\ & (\inst|ALU|_~9_combout\ & ((\SelOp[1]~input_o\)))) # (!\SelOp[0]~input_o\ & (((\inst|ALU|_~32_combout\ & !\SelOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \inst|ALU|_~9_combout\,
	datac => \inst|ALU|_~32_combout\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Flags[2]~10_combout\);

-- Location: LCCOMB_X39_Y13_N26
\inst|ALU|Flags[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~11_combout\ = (!\SelOp[2]~input_o\ & \inst|ALU|Flags[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelOp[2]~input_o\,
	datad => \inst|ALU|Flags[2]~10_combout\,
	combout => \inst|ALU|Flags[2]~11_combout\);

-- Location: LCCOMB_X36_Y12_N20
\inst|ALU|Result[6]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~150_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ & (\inst|ALU|_~12_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\,
	datac => \inst|ALU|_~12_combout\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|Result[6]~150_combout\);

-- Location: LCCOMB_X39_Y13_N28
\inst|ALU|Flags[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~12_combout\ = (\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & (!\inst|ALU|op_4~14_combout\ & !\SelOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \SelOp[2]~input_o\,
	datac => \inst|ALU|op_4~14_combout\,
	datad => \SelOp[1]~input_o\,
	combout => \inst|ALU|Flags[2]~12_combout\);

-- Location: LCCOMB_X40_Y8_N20
\inst|ALU|Flags[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~13_combout\ = (!\inst|ALU|Result\(10) & (\inst|ALU|_~4_combout\ & (!\inst|ALU|Result\(12) & !\inst|ALU|Result\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(10),
	datab => \inst|ALU|_~4_combout\,
	datac => \inst|ALU|Result\(12),
	datad => \inst|ALU|Result\(11),
	combout => \inst|ALU|Flags[2]~13_combout\);

-- Location: LCCOMB_X40_Y8_N18
\inst|ALU|Flags[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~14_combout\ = (!\inst|ALU|Result\(13) & (\inst|ALU|Flags[2]~13_combout\ & (!\inst|ALU|Result\(15) & !\inst|ALU|Result\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(13),
	datab => \inst|ALU|Flags[2]~13_combout\,
	datac => \inst|ALU|Result\(15),
	datad => \inst|ALU|Result\(14),
	combout => \inst|ALU|Flags[2]~14_combout\);

-- Location: LCCOMB_X40_Y8_N0
\inst|ALU|Flags[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~15_combout\ = (\inst|ALU|_~20_combout\) # ((!\inst|ALU|Result\(9) & ((\inst|ALU|Flags[2]~12_combout\) # (\inst|ALU|Flags[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[2]~12_combout\,
	datab => \inst|ALU|_~20_combout\,
	datac => \inst|ALU|Result\(9),
	datad => \inst|ALU|Flags[2]~14_combout\,
	combout => \inst|ALU|Flags[2]~15_combout\);

-- Location: LCCOMB_X40_Y8_N26
\inst|ALU|Flags[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~16_combout\ = (!\inst|ALU|Result[7]~106_combout\ & ((\inst|ALU|_~21_combout\) # ((!\inst|ALU|Result[8]~99_combout\ & \inst|ALU|Flags[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[8]~99_combout\,
	datab => \inst|ALU|Flags[2]~15_combout\,
	datac => \inst|ALU|_~21_combout\,
	datad => \inst|ALU|Result[7]~106_combout\,
	combout => \inst|ALU|Flags[2]~16_combout\);

-- Location: LCCOMB_X42_Y12_N28
\inst|ALU|Flags[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~17_combout\ = (!\inst|ALU|Result[4]~125_combout\ & (!\inst|ALU|Result[3]~130_combout\ & (!\inst|ALU|Result[5]~119_combout\ & !\inst|ALU|Result[2]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[4]~125_combout\,
	datab => \inst|ALU|Result[3]~130_combout\,
	datac => \inst|ALU|Result[5]~119_combout\,
	datad => \inst|ALU|Result[2]~135_combout\,
	combout => \inst|ALU|Flags[2]~17_combout\);

-- Location: LCCOMB_X36_Y12_N8
\inst|ALU|Flags[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~18_combout\ = (!\inst|ALU|Result[0]~145_combout\ & (!\inst|ALU|Result[0]~141_combout\ & (!\inst|ALU|Result[6]~112_combout\ & \inst|ALU|Flags[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[0]~145_combout\,
	datab => \inst|ALU|Result[0]~141_combout\,
	datac => \inst|ALU|Result[6]~112_combout\,
	datad => \inst|ALU|Flags[2]~17_combout\,
	combout => \inst|ALU|Flags[2]~18_combout\);

-- Location: LCCOMB_X36_Y12_N26
\inst|ALU|Flags[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~19_combout\ = (!\inst|ALU|Result[6]~150_combout\ & (\inst|ALU|Flags[2]~16_combout\ & (\inst|ALU|Flags[2]~18_combout\ & !\inst|ALU|Result[1]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[6]~150_combout\,
	datab => \inst|ALU|Flags[2]~16_combout\,
	datac => \inst|ALU|Flags[2]~18_combout\,
	datad => \inst|ALU|Result[1]~140_combout\,
	combout => \inst|ALU|Flags[2]~19_combout\);

-- Location: LCCOMB_X36_Y12_N28
\inst|ALU|Flags[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~20_combout\ = (\inst|ALU|Flags[2]~11_combout\) # ((\inst|ALU|Flags[2]~19_combout\ & ((\inst|ALU|_~15_combout\) # (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Flags[2]~11_combout\,
	datac => \inst|ALU|Flags[2]~19_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|ALU|Flags[2]~20_combout\);

-- Location: FF_X36_Y12_N29
\inst|ALU|Flags[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[2]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(2));

-- Location: FF_X40_Y8_N29
\inst|ALU|Flags[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[8]~97_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(0));

-- Location: LCCOMB_X40_Y8_N8
\inst|alu_r|R[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_r|R[16]~0_combout\ = !\inst|ALU|Result[16]~96_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|Result[16]~96_combout\,
	combout => \inst|alu_r|R[16]~0_combout\);

-- Location: FF_X40_Y8_N9
\inst|alu_r|R[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_r|R[16]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(16));

-- Location: LCCOMB_X40_Y8_N2
\inst|alu_r|R[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_r|R[15]~feeder_combout\ = \inst|ALU|Result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|Result\(15),
	combout => \inst|alu_r|R[15]~feeder_combout\);

-- Location: FF_X40_Y8_N3
\inst|alu_r|R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_r|R[15]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(15));

-- Location: FF_X40_Y8_N25
\inst|alu_r|R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(14),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(14));

-- Location: FF_X40_Y8_N7
\inst|alu_r|R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(13),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(13));

-- Location: FF_X40_Y8_N17
\inst|alu_r|R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(12),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(12));

-- Location: FF_X40_Y8_N11
\inst|alu_r|R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(11),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(11));

-- Location: FF_X40_Y8_N13
\inst|alu_r|R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(10),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(10));

-- Location: FF_X40_Y8_N23
\inst|alu_r|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result\(9),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(9));

-- Location: FF_X40_Y8_N31
\inst|alu_r|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[8]~99_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_r|R\(8));

-- Location: FF_X37_Y12_N25
\inst|alu_res|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[7]~0_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(7));

-- Location: FF_X37_Y12_N27
\inst|alu_res|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[6]~1_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(6));

-- Location: FF_X37_Y12_N29
\inst|alu_res|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[5]~2_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(5));

-- Location: FF_X37_Y12_N5
\inst|alu_res|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[4]~3_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(4));

-- Location: FF_X37_Y12_N31
\inst|alu_res|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[3]~4_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(3));

-- Location: FF_X37_Y12_N1
\inst|alu_res|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[2]~5_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(2));

-- Location: FF_X38_Y12_N9
\inst|alu_res|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[1]~6_combout\,
	asdata => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sclr => \inst|ALU|_~15_combout\,
	sload => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(1));

-- Location: LCCOMB_X36_Y12_N30
\inst|ALU|Remain[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Remain[0]~8_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\inst|ALU|_~31_combout\)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (!\inst|ALU|_~15_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \inst|ALU|_~31_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|ALU|Remain[0]~8_combout\);

-- Location: FF_X36_Y12_N31
\inst|alu_res|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Remain[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(0));

-- Location: LCCOMB_X69_Y28_N16
\inst|SRC|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC|R[7]~feeder_combout\ = \inst|BUS[7]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[7]~10_combout\,
	combout => \inst|SRC|R[7]~feeder_combout\);

-- Location: FF_X69_Y28_N17
\inst|SRC|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SRC|R[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(7));

-- Location: FF_X70_Y28_N15
\inst|SRC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(6));

-- Location: FF_X69_Y29_N1
\inst|SRC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|_~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(5));

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

ww_ALU_t(16) <= \ALU_t[16]~output_o\;

ww_ALU_t(15) <= \ALU_t[15]~output_o\;

ww_ALU_t(14) <= \ALU_t[14]~output_o\;

ww_ALU_t(13) <= \ALU_t[13]~output_o\;

ww_ALU_t(12) <= \ALU_t[12]~output_o\;

ww_ALU_t(11) <= \ALU_t[11]~output_o\;

ww_ALU_t(10) <= \ALU_t[10]~output_o\;

ww_ALU_t(9) <= \ALU_t[9]~output_o\;

ww_ALU_t(8) <= \ALU_t[8]~output_o\;

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

ww_DST_t(7) <= \DST_t[7]~output_o\;

ww_DST_t(6) <= \DST_t[6]~output_o\;

ww_DST_t(5) <= \DST_t[5]~output_o\;

ww_DST_t(4) <= \DST_t[4]~output_o\;

ww_DST_t(3) <= \DST_t[3]~output_o\;

ww_DST_t(2) <= \DST_t[2]~output_o\;

ww_DST_t(1) <= \DST_t[1]~output_o\;

ww_DST_t(0) <= \DST_t[0]~output_o\;

ww_Dx_t(7) <= \Dx_t[7]~output_o\;

ww_Dx_t(6) <= \Dx_t[6]~output_o\;

ww_Dx_t(5) <= \Dx_t[5]~output_o\;

ww_Dx_t(4) <= \Dx_t[4]~output_o\;

ww_Dx_t(3) <= \Dx_t[3]~output_o\;

ww_Dx_t(2) <= \Dx_t[2]~output_o\;

ww_Dx_t(1) <= \Dx_t[1]~output_o\;

ww_Dx_t(0) <= \Dx_t[0]~output_o\;

ww_Ex_t(7) <= \Ex_t[7]~output_o\;

ww_Ex_t(6) <= \Ex_t[6]~output_o\;

ww_Ex_t(5) <= \Ex_t[5]~output_o\;

ww_Ex_t(4) <= \Ex_t[4]~output_o\;

ww_Ex_t(3) <= \Ex_t[3]~output_o\;

ww_Ex_t(2) <= \Ex_t[2]~output_o\;

ww_Ex_t(1) <= \Ex_t[1]~output_o\;

ww_Ex_t(0) <= \Ex_t[0]~output_o\;

ww_Flags(7) <= \Flags[7]~output_o\;

ww_Flags(6) <= \Flags[6]~output_o\;

ww_Flags(5) <= \Flags[5]~output_o\;

ww_Flags(4) <= \Flags[4]~output_o\;

ww_Flags(3) <= \Flags[3]~output_o\;

ww_Flags(2) <= \Flags[2]~output_o\;

ww_Flags(1) <= \Flags[1]~output_o\;

ww_Flags(0) <= \Flags[0]~output_o\;

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

ww_r_t(16) <= \r_t[16]~output_o\;

ww_r_t(15) <= \r_t[15]~output_o\;

ww_r_t(14) <= \r_t[14]~output_o\;

ww_r_t(13) <= \r_t[13]~output_o\;

ww_r_t(12) <= \r_t[12]~output_o\;

ww_r_t(11) <= \r_t[11]~output_o\;

ww_r_t(10) <= \r_t[10]~output_o\;

ww_r_t(9) <= \r_t[9]~output_o\;

ww_r_t(8) <= \r_t[8]~output_o\;

ww_r_t(7) <= \r_t[7]~output_o\;

ww_r_t(6) <= \r_t[6]~output_o\;

ww_r_t(5) <= \r_t[5]~output_o\;

ww_r_t(4) <= \r_t[4]~output_o\;

ww_r_t(3) <= \r_t[3]~output_o\;

ww_r_t(2) <= \r_t[2]~output_o\;

ww_r_t(1) <= \r_t[1]~output_o\;

ww_r_t(0) <= \r_t[0]~output_o\;

ww_res_t(7) <= \res_t[7]~output_o\;

ww_res_t(6) <= \res_t[6]~output_o\;

ww_res_t(5) <= \res_t[5]~output_o\;

ww_res_t(4) <= \res_t[4]~output_o\;

ww_res_t(3) <= \res_t[3]~output_o\;

ww_res_t(2) <= \res_t[2]~output_o\;

ww_res_t(1) <= \res_t[1]~output_o\;

ww_res_t(0) <= \res_t[0]~output_o\;

ww_SelBus_t(4) <= \SelBus_t[4]~output_o\;

ww_SelBus_t(3) <= \SelBus_t[3]~output_o\;

ww_SelBus_t(2) <= \SelBus_t[2]~output_o\;

ww_SelBus_t(1) <= \SelBus_t[1]~output_o\;

ww_SelBus_t(0) <= \SelBus_t[0]~output_o\;

ww_SRC_t(7) <= \SRC_t[7]~output_o\;

ww_SRC_t(6) <= \SRC_t[6]~output_o\;

ww_SRC_t(5) <= \SRC_t[5]~output_o\;

ww_SRC_t(4) <= \SRC_t[4]~output_o\;

ww_SRC_t(3) <= \SRC_t[3]~output_o\;

ww_SRC_t(2) <= \SRC_t[2]~output_o\;

ww_SRC_t(1) <= \SRC_t[1]~output_o\;

ww_SRC_t(0) <= \SRC_t[0]~output_o\;

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


