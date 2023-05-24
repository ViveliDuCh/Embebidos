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

-- DATE "05/22/2023 17:22:30"

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
	ADDR_BUS_t : OUT std_logic_vector(7 DOWNTO 0);
	Reloj : IN std_logic;
	Reset : IN std_logic;
	Enable_flag : IN std_logic;
	SelRHL : IN std_logic;
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
	ALU_t : OUT std_logic_vector(16 DOWNTO 0);
	Ax_t : OUT std_logic_vector(7 DOWNTO 0);
	Bus_t : OUT std_logic_vector(7 DOWNTO 0);
	Bx_t : OUT std_logic_vector(7 DOWNTO 0);
	Cx_t : OUT std_logic_vector(7 DOWNTO 0);
	DATA_BUS_IN_t : OUT std_logic_vector(7 DOWNTO 0);
	DATA_BUS_OUT_t : OUT std_logic_vector(7 DOWNTO 0);
	DST_t : OUT std_logic_vector(7 DOWNTO 0);
	Dx_t : OUT std_logic_vector(7 DOWNTO 0);
	Ex_t : OUT std_logic_vector(7 DOWNTO 0);
	Flags_t : OUT std_logic_vector(7 DOWNTO 0);
	IR_t : OUT std_logic_vector(7 DOWNTO 0);
	MAR_t : OUT std_logic_vector(7 DOWNTO 0);
	MDR_t : OUT std_logic_vector(7 DOWNTO 0);
	PC_t : OUT std_logic_vector(7 DOWNTO 0);
	r_t : OUT std_logic_vector(16 DOWNTO 0);
	res_t : OUT std_logic_vector(7 DOWNTO 0);
	SelBus_t : OUT std_logic_vector(4 DOWNTO 0);
	SRC_t : OUT std_logic_vector(7 DOWNTO 0);
	x_t : OUT std_logic_vector(7 DOWNTO 0);
	y_t : OUT std_logic_vector(7 DOWNTO 0)
	);
END MiQRObio;

-- Design Ports Information
-- ADDR_BUS_t[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[5]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_BUS_t[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[16]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[12]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[11]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[10]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[9]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[3]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_t[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[2]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ax_t[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[7]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[6]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bus_t[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bx_t[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[7]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[4]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cx_t[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_IN_t[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_BUS_OUT_t[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[6]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[1]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_t[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[7]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dx_t[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ex_t[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[7]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags_t[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_t[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[5]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAR_t[0]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_t[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[6]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[5]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[3]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_t[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[16]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[15]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[14]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[12]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[9]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[5]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[1]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_t[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res_t[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[2]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelBus_t[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_t[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_t[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[5]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_t[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelOp[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelSRC	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[0]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRC_UC[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelRHL	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[4]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fx[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMDR	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelDST	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[1]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DST_UC[0]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelMAR	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[0]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cmd[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_En	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable_flag	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ADDR_BUS_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Enable_flag : std_logic;
SIGNAL ww_SelRHL : std_logic;
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
SIGNAL ww_ALU_t : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_Ax_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_BUS_IN_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DATA_BUS_OUT_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DST_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dx_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Ex_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Flags_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IR_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAR_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MDR_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r_t : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_res_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelBus_t : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SRC_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \ADDR_BUS_t[7]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[6]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[5]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[4]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[3]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[2]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[1]~output_o\ : std_logic;
SIGNAL \ADDR_BUS_t[0]~output_o\ : std_logic;
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
SIGNAL \DATA_BUS_IN_t[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS_IN_t[0]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[7]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[6]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[5]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[4]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[3]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[2]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[1]~output_o\ : std_logic;
SIGNAL \DATA_BUS_OUT_t[0]~output_o\ : std_logic;
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
SIGNAL \Flags_t[7]~output_o\ : std_logic;
SIGNAL \Flags_t[6]~output_o\ : std_logic;
SIGNAL \Flags_t[5]~output_o\ : std_logic;
SIGNAL \Flags_t[4]~output_o\ : std_logic;
SIGNAL \Flags_t[3]~output_o\ : std_logic;
SIGNAL \Flags_t[2]~output_o\ : std_logic;
SIGNAL \Flags_t[1]~output_o\ : std_logic;
SIGNAL \Flags_t[0]~output_o\ : std_logic;
SIGNAL \IR_t[7]~output_o\ : std_logic;
SIGNAL \IR_t[6]~output_o\ : std_logic;
SIGNAL \IR_t[5]~output_o\ : std_logic;
SIGNAL \IR_t[4]~output_o\ : std_logic;
SIGNAL \IR_t[3]~output_o\ : std_logic;
SIGNAL \IR_t[2]~output_o\ : std_logic;
SIGNAL \IR_t[1]~output_o\ : std_logic;
SIGNAL \IR_t[0]~output_o\ : std_logic;
SIGNAL \MAR_t[7]~output_o\ : std_logic;
SIGNAL \MAR_t[6]~output_o\ : std_logic;
SIGNAL \MAR_t[5]~output_o\ : std_logic;
SIGNAL \MAR_t[4]~output_o\ : std_logic;
SIGNAL \MAR_t[3]~output_o\ : std_logic;
SIGNAL \MAR_t[2]~output_o\ : std_logic;
SIGNAL \MAR_t[1]~output_o\ : std_logic;
SIGNAL \MAR_t[0]~output_o\ : std_logic;
SIGNAL \MDR_t[7]~output_o\ : std_logic;
SIGNAL \MDR_t[6]~output_o\ : std_logic;
SIGNAL \MDR_t[5]~output_o\ : std_logic;
SIGNAL \MDR_t[4]~output_o\ : std_logic;
SIGNAL \MDR_t[3]~output_o\ : std_logic;
SIGNAL \MDR_t[2]~output_o\ : std_logic;
SIGNAL \MDR_t[1]~output_o\ : std_logic;
SIGNAL \MDR_t[0]~output_o\ : std_logic;
SIGNAL \PC_t[7]~output_o\ : std_logic;
SIGNAL \PC_t[6]~output_o\ : std_logic;
SIGNAL \PC_t[5]~output_o\ : std_logic;
SIGNAL \PC_t[4]~output_o\ : std_logic;
SIGNAL \PC_t[3]~output_o\ : std_logic;
SIGNAL \PC_t[2]~output_o\ : std_logic;
SIGNAL \PC_t[1]~output_o\ : std_logic;
SIGNAL \PC_t[0]~output_o\ : std_logic;
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
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \SelMAR~input_o\ : std_logic;
SIGNAL \Cmd[0]~input_o\ : std_logic;
SIGNAL \Cmd[2]~input_o\ : std_logic;
SIGNAL \Cmd[1]~input_o\ : std_logic;
SIGNAL \inst|DI|_~0_combout\ : std_logic;
SIGNAL \SRC_UC[4]~input_o\ : std_logic;
SIGNAL \SelDST~input_o\ : std_logic;
SIGNAL \DST_UC[2]~input_o\ : std_logic;
SIGNAL \SRC_UC[1]~input_o\ : std_logic;
SIGNAL \DST_UC[4]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|BP|R[0]~0_combout\ : std_logic;
SIGNAL \DST_UC[1]~input_o\ : std_logic;
SIGNAL \inst|SelMUX[1]~0_combout\ : std_logic;
SIGNAL \DST_UC[0]~input_o\ : std_logic;
SIGNAL \SelMDR~input_o\ : std_logic;
SIGNAL \Write_En~input_o\ : std_logic;
SIGNAL \inst|PC|_~3_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~36_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~33_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~7_combout\ : std_logic;
SIGNAL \inst|PC|_~0_combout\ : std_logic;
SIGNAL \inst|PC|_~2_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~32_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~34_combout\ : std_logic;
SIGNAL \inst|PC|R[0]~35_combout\ : std_logic;
SIGNAL \inst|MAR|R[0]~8_combout\ : std_logic;
SIGNAL \inst|_~15_combout\ : std_logic;
SIGNAL \inst|MAR|R[0]~1_combout\ : std_logic;
SIGNAL \inst|MAR|R[1]~7_combout\ : std_logic;
SIGNAL \inst|PC|op_2~1_cout\ : std_logic;
SIGNAL \inst|PC|op_2~3\ : std_logic;
SIGNAL \inst|PC|op_2~4_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~25_combout\ : std_logic;
SIGNAL \inst|PC|op_1~1\ : std_logic;
SIGNAL \inst|PC|op_1~2_combout\ : std_logic;
SIGNAL \inst|PC|op_2~5\ : std_logic;
SIGNAL \inst|PC|op_2~7\ : std_logic;
SIGNAL \inst|PC|op_2~8_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~17_combout\ : std_logic;
SIGNAL \inst|MAR|R[3]~5_combout\ : std_logic;
SIGNAL \inst|MAR|R[4]~4_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[7]~0_combout\ : std_logic;
SIGNAL \inst|alu_x|R[7]~0_combout\ : std_logic;
SIGNAL \inst|_~16_combout\ : std_logic;
SIGNAL \inst|alu_y|R[7]~0_combout\ : std_logic;
SIGNAL \inst|alu_x|R[7]~1_combout\ : std_logic;
SIGNAL \inst|alu_x|R[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst|alu_x|R[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ALU|op_2~1\ : std_logic;
SIGNAL \inst|ALU|op_2~3\ : std_logic;
SIGNAL \inst|ALU|op_2~5\ : std_logic;
SIGNAL \inst|ALU|op_2~7\ : std_logic;
SIGNAL \inst|ALU|op_2~9\ : std_logic;
SIGNAL \inst|ALU|op_2~10_combout\ : std_logic;
SIGNAL \SelOp[2]~input_o\ : std_logic;
SIGNAL \SelOp[0]~input_o\ : std_logic;
SIGNAL \SelOp[1]~input_o\ : std_logic;
SIGNAL \inst|ALU|_~16_combout\ : std_logic;
SIGNAL \inst|ALU|_~17_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~117_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~1\ : std_logic;
SIGNAL \inst|ALU|op_3~3\ : std_logic;
SIGNAL \inst|ALU|op_3~5\ : std_logic;
SIGNAL \inst|ALU|op_3~7\ : std_logic;
SIGNAL \inst|ALU|op_3~9\ : std_logic;
SIGNAL \inst|ALU|op_3~10_combout\ : std_logic;
SIGNAL \inst|ALU|_~10_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~119_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~120_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ : std_logic;
SIGNAL \inst|ALU|_~8_combout\ : std_logic;
SIGNAL \inst|alu_x|R[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|alu_x|R[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|ALU|_~4_combout\ : std_logic;
SIGNAL \inst|ALU|_~5_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[7]~0_combout\ : std_logic;
SIGNAL \inst|ALU|_~3_combout\ : std_logic;
SIGNAL \inst|ALU|_~11_combout\ : std_logic;
SIGNAL \inst|ALU|_~29_combout\ : std_logic;
SIGNAL \inst|ALU|_~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst|ALU|_~13_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst|ALU|_~15_combout\ : std_logic;
SIGNAL \inst|ALU|_~14_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~152_combout\ : std_logic;
SIGNAL \inst|ALU|_~9_combout\ : std_logic;
SIGNAL \inst|ALU|_~2_combout\ : std_logic;
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
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst|ALU|Result[5]~118_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~121_combout\ : std_logic;
SIGNAL \inst|ALU|_~6_combout\ : std_logic;
SIGNAL \inst|ALU|_~7_combout\ : std_logic;
SIGNAL \inst|ALU|Result[5]~122_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[5]~3_combout\ : std_logic;
SIGNAL \SRC_UC[0]~input_o\ : std_logic;
SIGNAL \inst|SRC|R[5]~0_combout\ : std_logic;
SIGNAL \SelSRC~input_o\ : std_logic;
SIGNAL \inst|SelBus[0]~2_combout\ : std_logic;
SIGNAL \SelRHL~input_o\ : std_logic;
SIGNAL \SRC_UC[2]~input_o\ : std_logic;
SIGNAL \inst|SelBus[2]~1_combout\ : std_logic;
SIGNAL \SRC_UC[3]~input_o\ : std_logic;
SIGNAL \inst|SelBus[3]~0_combout\ : std_logic;
SIGNAL \inst|_~1_combout\ : std_logic;
SIGNAL \inst|_~6_combout\ : std_logic;
SIGNAL \inst|_~21_combout\ : std_logic;
SIGNAL \inst|Cx|_~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~36_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~7_combout\ : std_logic;
SIGNAL \inst|Cx|_~1_combout\ : std_logic;
SIGNAL \inst|Cx|_~0_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~11\ : std_logic;
SIGNAL \inst|Cx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~1\ : std_logic;
SIGNAL \inst|Cx|op_1~3\ : std_logic;
SIGNAL \inst|Cx|op_1~5\ : std_logic;
SIGNAL \inst|Cx|op_1~7\ : std_logic;
SIGNAL \inst|Cx|op_1~9\ : std_logic;
SIGNAL \inst|Cx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Cx|R[6]~11_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~11\ : std_logic;
SIGNAL \inst|Cx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~13\ : std_logic;
SIGNAL \inst|Cx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~3_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Cx|R[7]~6_combout\ : std_logic;
SIGNAL \inst|Cx|_~3_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Cx|R[0]~35_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Cx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Cx|R[1]~31_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~3\ : std_logic;
SIGNAL \inst|Cx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Cx|R[2]~27_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~5\ : std_logic;
SIGNAL \inst|Cx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Cx|R[3]~23_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~7\ : std_logic;
SIGNAL \inst|Cx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Cx|R[4]~19_combout\ : std_logic;
SIGNAL \inst|Cx|op_2~9\ : std_logic;
SIGNAL \inst|Cx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Cx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Cx|R[5]~15_combout\ : std_logic;
SIGNAL \inst|_~3_combout\ : std_logic;
SIGNAL \inst|_~20_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~7_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~4_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~36_combout\ : std_logic;
SIGNAL \inst|DI|_~5_combout\ : std_logic;
SIGNAL \inst|DI|op_1~9\ : std_logic;
SIGNAL \inst|DI|op_1~10_combout\ : std_logic;
SIGNAL \inst|DI|_~2_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~8_combout\ : std_logic;
SIGNAL \inst|DI|_~4_combout\ : std_logic;
SIGNAL \inst|DI|op_2~1_cout\ : std_logic;
SIGNAL \inst|DI|op_2~3\ : std_logic;
SIGNAL \inst|DI|op_2~5\ : std_logic;
SIGNAL \inst|DI|op_2~7\ : std_logic;
SIGNAL \inst|DI|op_2~9\ : std_logic;
SIGNAL \inst|DI|op_2~11\ : std_logic;
SIGNAL \inst|DI|op_2~12_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~9_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~10_combout\ : std_logic;
SIGNAL \inst|DI|R[6]~11_combout\ : std_logic;
SIGNAL \inst|DI|op_1~11\ : std_logic;
SIGNAL \inst|DI|op_1~12_combout\ : std_logic;
SIGNAL \inst|DI|_~3_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~2_combout\ : std_logic;
SIGNAL \inst|DI|op_2~13\ : std_logic;
SIGNAL \inst|DI|op_2~14_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~3_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~5_combout\ : std_logic;
SIGNAL \inst|DI|R[7]~6_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~33_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~32_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~34_combout\ : std_logic;
SIGNAL \inst|DI|R[0]~35_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~28_combout\ : std_logic;
SIGNAL \inst|DI|op_1~0_combout\ : std_logic;
SIGNAL \inst|DI|op_2~2_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~29_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~30_combout\ : std_logic;
SIGNAL \inst|DI|R[1]~31_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~24_combout\ : std_logic;
SIGNAL \inst|DI|op_2~4_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~25_combout\ : std_logic;
SIGNAL \inst|DI|op_1~1\ : std_logic;
SIGNAL \inst|DI|op_1~2_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~26_combout\ : std_logic;
SIGNAL \inst|DI|R[2]~27_combout\ : std_logic;
SIGNAL \inst|DI|op_1~3\ : std_logic;
SIGNAL \inst|DI|op_1~4_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~20_combout\ : std_logic;
SIGNAL \inst|DI|op_2~6_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~21_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~22_combout\ : std_logic;
SIGNAL \inst|DI|R[3]~23_combout\ : std_logic;
SIGNAL \inst|DI|op_1~5\ : std_logic;
SIGNAL \inst|DI|op_1~6_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~16_combout\ : std_logic;
SIGNAL \inst|DI|op_2~8_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~17_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~18_combout\ : std_logic;
SIGNAL \inst|DI|R[4]~19_combout\ : std_logic;
SIGNAL \inst|DI|op_1~7\ : std_logic;
SIGNAL \inst|DI|op_1~8_combout\ : std_logic;
SIGNAL \inst|DI|op_2~10_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~13_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~12_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~14_combout\ : std_logic;
SIGNAL \inst|DI|R[5]~15_combout\ : std_logic;
SIGNAL \inst|BUS[5]~24_combout\ : std_logic;
SIGNAL \inst|_~22_combout\ : std_logic;
SIGNAL \inst|_~23_combout\ : std_logic;
SIGNAL \inst|Bx|_~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~36_combout\ : std_logic;
SIGNAL \inst|Bx|_~3_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~4_combout\ : std_logic;
SIGNAL \inst|Bx|_~1_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~9\ : std_logic;
SIGNAL \inst|Bx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~7_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~5\ : std_logic;
SIGNAL \inst|Bx|op_2~7\ : std_logic;
SIGNAL \inst|Bx|op_2~9\ : std_logic;
SIGNAL \inst|Bx|op_2~11\ : std_logic;
SIGNAL \inst|Bx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Bx|_~0_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Bx|R[6]~11_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~11\ : std_logic;
SIGNAL \inst|Bx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~13\ : std_logic;
SIGNAL \inst|Bx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~3_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Bx|R[7]~6_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Bx|R[0]~35_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Bx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Bx|R[1]~31_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~3\ : std_logic;
SIGNAL \inst|Bx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~1\ : std_logic;
SIGNAL \inst|Bx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Bx|R[2]~27_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~3\ : std_logic;
SIGNAL \inst|Bx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Bx|R[3]~23_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~5\ : std_logic;
SIGNAL \inst|Bx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Bx|R[4]~19_combout\ : std_logic;
SIGNAL \inst|Bx|op_1~7\ : std_logic;
SIGNAL \inst|Bx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Bx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Bx|R[5]~15_combout\ : std_logic;
SIGNAL \inst|_~4_combout\ : std_logic;
SIGNAL \inst|_~5_combout\ : std_logic;
SIGNAL \inst|_~2_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~11\ : std_logic;
SIGNAL \inst|ALU|op_3~13\ : std_logic;
SIGNAL \inst|ALU|op_3~15\ : std_logic;
SIGNAL \inst|ALU|op_3~17\ : std_logic;
SIGNAL \inst|ALU|op_3~18_combout\ : std_logic;
SIGNAL \inst|ALU|Result[16]~100_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst|alu_rh|R[5]~2_combout\ : std_logic;
SIGNAL \inst|_~0_combout\ : std_logic;
SIGNAL \inst|_~19_combout\ : std_logic;
SIGNAL \inst|SP|_~0_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~7_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~4_combout\ : std_logic;
SIGNAL \inst|SP|_~2_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~32_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~36_combout\ : std_logic;
SIGNAL \inst|SP|op_2~11\ : std_logic;
SIGNAL \inst|SP|op_2~12_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~9_combout\ : std_logic;
SIGNAL \inst|SP|op_1~7\ : std_logic;
SIGNAL \inst|SP|op_1~9\ : std_logic;
SIGNAL \inst|SP|op_1~10_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~8_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~10_combout\ : std_logic;
SIGNAL \inst|SP|R[6]~11_combout\ : std_logic;
SIGNAL \inst|SP|op_2~13\ : std_logic;
SIGNAL \inst|SP|op_2~14_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~3_combout\ : std_logic;
SIGNAL \inst|SP|_~1_combout\ : std_logic;
SIGNAL \inst|SP|op_1~11\ : std_logic;
SIGNAL \inst|SP|op_1~12_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~2_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~5_combout\ : std_logic;
SIGNAL \inst|SP|R[7]~6_combout\ : std_logic;
SIGNAL \inst|SP|_~3_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~33_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~34_combout\ : std_logic;
SIGNAL \inst|SP|R[0]~35_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~28_combout\ : std_logic;
SIGNAL \inst|SP|op_1~0_combout\ : std_logic;
SIGNAL \inst|SP|op_2~1_cout\ : std_logic;
SIGNAL \inst|SP|op_2~2_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~29_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~30_combout\ : std_logic;
SIGNAL \inst|SP|R[1]~31_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~24_combout\ : std_logic;
SIGNAL \inst|SP|op_2~3\ : std_logic;
SIGNAL \inst|SP|op_2~4_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~25_combout\ : std_logic;
SIGNAL \inst|SP|op_1~1\ : std_logic;
SIGNAL \inst|SP|op_1~2_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~26_combout\ : std_logic;
SIGNAL \inst|SP|R[2]~27_combout\ : std_logic;
SIGNAL \inst|SP|op_1~3\ : std_logic;
SIGNAL \inst|SP|op_1~4_combout\ : std_logic;
SIGNAL \inst|SP|op_2~5\ : std_logic;
SIGNAL \inst|SP|op_2~6_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~21_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~20_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~22_combout\ : std_logic;
SIGNAL \inst|SP|R[3]~23_combout\ : std_logic;
SIGNAL \inst|SP|op_1~5\ : std_logic;
SIGNAL \inst|SP|op_1~6_combout\ : std_logic;
SIGNAL \inst|SP|op_2~7\ : std_logic;
SIGNAL \inst|SP|op_2~8_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~17_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~16_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~18_combout\ : std_logic;
SIGNAL \inst|SP|R[4]~19_combout\ : std_logic;
SIGNAL \inst|SP|op_2~9\ : std_logic;
SIGNAL \inst|SP|op_2~10_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~13_combout\ : std_logic;
SIGNAL \inst|SP|op_1~8_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~12_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~14_combout\ : std_logic;
SIGNAL \inst|SP|R[5]~15_combout\ : std_logic;
SIGNAL \inst|_~18_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~4_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~7_combout\ : std_logic;
SIGNAL \inst|Ax|_~3_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~36_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~9\ : std_logic;
SIGNAL \inst|Ax|op_1~10_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~1_cout\ : std_logic;
SIGNAL \inst|Ax|op_2~3\ : std_logic;
SIGNAL \inst|Ax|op_2~5\ : std_logic;
SIGNAL \inst|Ax|op_2~7\ : std_logic;
SIGNAL \inst|Ax|op_2~9\ : std_logic;
SIGNAL \inst|Ax|op_2~11\ : std_logic;
SIGNAL \inst|Ax|op_2~12_combout\ : std_logic;
SIGNAL \inst|Ax|_~2_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Ax|_~0_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Ax|R[6]~11_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~13\ : std_logic;
SIGNAL \inst|Ax|op_2~14_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~3_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~11\ : std_logic;
SIGNAL \inst|Ax|op_1~12_combout\ : std_logic;
SIGNAL \inst|Ax|_~1_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Ax|R[7]~6_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Ax|R[0]~35_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~0_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~2_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Ax|R[1]~31_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~1\ : std_logic;
SIGNAL \inst|Ax|op_1~2_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~4_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Ax|R[2]~27_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~3\ : std_logic;
SIGNAL \inst|Ax|op_1~4_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~6_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Ax|R[3]~23_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~5\ : std_logic;
SIGNAL \inst|Ax|op_1~6_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~8_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Ax|R[4]~19_combout\ : std_logic;
SIGNAL \inst|Ax|op_1~7\ : std_logic;
SIGNAL \inst|Ax|op_1~8_combout\ : std_logic;
SIGNAL \inst|Ax|op_2~10_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Ax|R[5]~15_combout\ : std_logic;
SIGNAL \inst|BUS[5]~22_combout\ : std_logic;
SIGNAL \inst|BUS[5]~23_combout\ : std_logic;
SIGNAL \inst|BUS[5]~25_combout\ : std_logic;
SIGNAL \inst|BUS[7]~4_combout\ : std_logic;
SIGNAL \inst|BUS[7]~5_combout\ : std_logic;
SIGNAL \inst|BUS[7]~6_combout\ : std_logic;
SIGNAL \inst|BUS[5]~26_combout\ : std_logic;
SIGNAL \Fx[5]~input_o\ : std_logic;
SIGNAL \inst|_~8_combout\ : std_logic;
SIGNAL \inst|_~9_combout\ : std_logic;
SIGNAL \inst|BUS[5]~27_combout\ : std_logic;
SIGNAL \inst|_~11_combout\ : std_logic;
SIGNAL \inst|MAR|R[6]~2_combout\ : std_logic;
SIGNAL \inst|MDR|R[7]~0_combout\ : std_logic;
SIGNAL \inst|MDR|R[0]~1_combout\ : std_logic;
SIGNAL \inst|MDR|R[4]~4_combout\ : std_logic;
SIGNAL \inst|MDR|R[3]~5_combout\ : std_logic;
SIGNAL \inst|MDR|R[2]~6_combout\ : std_logic;
SIGNAL \inst|MDR|R[1]~7_combout\ : std_logic;
SIGNAL \inst|MDR|R[5]~3_combout\ : std_logic;
SIGNAL \inst|BUS[5]~28_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~7_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~4_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~28_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~36_combout\ : std_logic;
SIGNAL \inst|SI|_~2_combout\ : std_logic;
SIGNAL \inst|SI|op_2~1_cout\ : std_logic;
SIGNAL \inst|SI|op_2~2_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~29_combout\ : std_logic;
SIGNAL \inst|SI|op_1~0_combout\ : std_logic;
SIGNAL \inst|SI|_~0_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~30_combout\ : std_logic;
SIGNAL \inst|SI|R[1]~31_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~32_combout\ : std_logic;
SIGNAL \inst|SI|op_2~3\ : std_logic;
SIGNAL \inst|SI|op_2~5\ : std_logic;
SIGNAL \inst|SI|op_2~7\ : std_logic;
SIGNAL \inst|SI|op_2~9\ : std_logic;
SIGNAL \inst|SI|op_2~11\ : std_logic;
SIGNAL \inst|SI|op_2~12_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~9_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~8_combout\ : std_logic;
SIGNAL \inst|SI|op_1~9\ : std_logic;
SIGNAL \inst|SI|op_1~10_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~10_combout\ : std_logic;
SIGNAL \inst|SI|R[6]~11_combout\ : std_logic;
SIGNAL \inst|SI|_~1_combout\ : std_logic;
SIGNAL \inst|SI|op_1~11\ : std_logic;
SIGNAL \inst|SI|op_1~12_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~2_combout\ : std_logic;
SIGNAL \inst|SI|op_2~13\ : std_logic;
SIGNAL \inst|SI|op_2~14_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~3_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~5_combout\ : std_logic;
SIGNAL \inst|SI|R[7]~6_combout\ : std_logic;
SIGNAL \inst|SI|_~3_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~33_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~34_combout\ : std_logic;
SIGNAL \inst|SI|R[0]~35_combout\ : std_logic;
SIGNAL \inst|SI|op_1~1\ : std_logic;
SIGNAL \inst|SI|op_1~2_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~24_combout\ : std_logic;
SIGNAL \inst|SI|op_2~4_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~25_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~26_combout\ : std_logic;
SIGNAL \inst|SI|R[2]~27_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~20_combout\ : std_logic;
SIGNAL \inst|SI|op_2~6_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~21_combout\ : std_logic;
SIGNAL \inst|SI|op_1~3\ : std_logic;
SIGNAL \inst|SI|op_1~4_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~22_combout\ : std_logic;
SIGNAL \inst|SI|R[3]~23_combout\ : std_logic;
SIGNAL \inst|SI|op_1~5\ : std_logic;
SIGNAL \inst|SI|op_1~7\ : std_logic;
SIGNAL \inst|SI|op_1~8_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~12_combout\ : std_logic;
SIGNAL \inst|SI|op_2~10_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~13_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~14_combout\ : std_logic;
SIGNAL \inst|SI|R[5]~15_combout\ : std_logic;
SIGNAL \inst|_~13_combout\ : std_logic;
SIGNAL \inst|BP|R[0]~1_combout\ : std_logic;
SIGNAL \inst|_~12_combout\ : std_logic;
SIGNAL \inst|BUS[5]~29_combout\ : std_logic;
SIGNAL \inst|BUS[5]~30_combout\ : std_logic;
SIGNAL \inst|BUS[5]~31_combout\ : std_logic;
SIGNAL \inst|MAR|R[5]~3_combout\ : std_logic;
SIGNAL \inst|MDR|R[6]~2_combout\ : std_logic;
SIGNAL \inst|BUS[6]~19_combout\ : std_logic;
SIGNAL \inst|BUS[6]~16_combout\ : std_logic;
SIGNAL \Fx[6]~input_o\ : std_logic;
SIGNAL \inst|BUS[6]~17_combout\ : std_logic;
SIGNAL \inst|BUS[6]~18_combout\ : std_logic;
SIGNAL \inst|BUS[6]~20_combout\ : std_logic;
SIGNAL \inst|BUS[6]~14_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~151_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~11\ : std_logic;
SIGNAL \inst|ALU|op_2~12_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~114_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~112_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst|ALU|Result[6]~111_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~113_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~12_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~115_combout\ : std_logic;
SIGNAL \inst|ALU|Result[6]~116_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[6]~2_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst|alu_rh|R[6]~1_combout\ : std_logic;
SIGNAL \inst|BUS[6]~13_combout\ : std_logic;
SIGNAL \inst|BUS[6]~15_combout\ : std_logic;
SIGNAL \inst|BUS[6]~21_combout\ : std_logic;
SIGNAL \inst|PC|op_1~3\ : std_logic;
SIGNAL \inst|PC|op_1~5\ : std_logic;
SIGNAL \inst|PC|op_1~7\ : std_logic;
SIGNAL \inst|PC|op_1~9\ : std_logic;
SIGNAL \inst|PC|op_1~10_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~4_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~8_combout\ : std_logic;
SIGNAL \inst|PC|op_2~9\ : std_logic;
SIGNAL \inst|PC|op_2~11\ : std_logic;
SIGNAL \inst|PC|op_2~12_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~9_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~10_combout\ : std_logic;
SIGNAL \inst|PC|R[6]~11_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~12_combout\ : std_logic;
SIGNAL \inst|PC|op_1~8_combout\ : std_logic;
SIGNAL \inst|PC|op_2~10_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~13_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~14_combout\ : std_logic;
SIGNAL \inst|PC|R[5]~15_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~16_combout\ : std_logic;
SIGNAL \inst|PC|op_1~6_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~18_combout\ : std_logic;
SIGNAL \inst|PC|R[4]~19_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~20_combout\ : std_logic;
SIGNAL \inst|PC|op_1~4_combout\ : std_logic;
SIGNAL \inst|PC|op_2~6_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~21_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~22_combout\ : std_logic;
SIGNAL \inst|PC|R[3]~23_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~24_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~26_combout\ : std_logic;
SIGNAL \inst|PC|R[2]~27_combout\ : std_logic;
SIGNAL \inst|MAR|R[2]~6_combout\ : std_logic;
SIGNAL \inst|MDR|R[0]~8_combout\ : std_logic;
SIGNAL \inst|BUS[0]~76_combout\ : std_logic;
SIGNAL \Fx[0]~input_o\ : std_logic;
SIGNAL \inst|BUS[0]~74_combout\ : std_logic;
SIGNAL \inst|BUS[0]~73_combout\ : std_logic;
SIGNAL \inst|BUS[0]~75_combout\ : std_logic;
SIGNAL \inst|BUS[0]~77_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~0_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~145_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~0_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~148_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~146_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~147_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~149_combout\ : std_logic;
SIGNAL \inst|ALU|_~26_combout\ : std_logic;
SIGNAL \inst|ALU|_~24_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ : std_logic;
SIGNAL \inst|ALU|_~18_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \inst|ALU|_~19_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ : std_logic;
SIGNAL \inst|ALU|_~20_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \inst|ALU|_~21_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ : std_logic;
SIGNAL \inst|ALU|_~22_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \inst|ALU|_~23_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
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
SIGNAL \inst|ALU|_~25_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \inst|ALU|_~27_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[0]~8_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[0]~9_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~16_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~102_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst|ALU|op_2~13\ : std_logic;
SIGNAL \inst|ALU|op_2~15\ : std_logic;
SIGNAL \inst|ALU|op_2~16_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~101_combout\ : std_logic;
SIGNAL \inst|ALU|Result[8]~103_combout\ : std_logic;
SIGNAL \inst|alu_rh|R[0]~7_combout\ : std_logic;
SIGNAL \inst|BUS[0]~70_combout\ : std_logic;
SIGNAL \inst|BUS[0]~71_combout\ : std_logic;
SIGNAL \inst|BUS[0]~72_combout\ : std_logic;
SIGNAL \inst|BUS[0]~78_combout\ : std_logic;
SIGNAL \inst|_~17_combout\ : std_logic;
SIGNAL \inst|IR|R[0]~0_combout\ : std_logic;
SIGNAL \inst|BUS[3]~48_combout\ : std_logic;
SIGNAL \inst|BUS[3]~49_combout\ : std_logic;
SIGNAL \inst|BUS[3]~47_combout\ : std_logic;
SIGNAL \Fx[3]~input_o\ : std_logic;
SIGNAL \inst|BUS[3]~46_combout\ : std_logic;
SIGNAL \inst|BUS[3]~43_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst|alu_rh|R[3]~4_combout\ : std_logic;
SIGNAL \inst|BUS[3]~41_combout\ : std_logic;
SIGNAL \inst|BUS[3]~42_combout\ : std_logic;
SIGNAL \inst|BUS[3]~44_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~153_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst|ALU|Result[3]~131_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~6_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~6_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~130_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~132_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~129_combout\ : std_logic;
SIGNAL \inst|ALU|Result[3]~133_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[3]~5_combout\ : std_logic;
SIGNAL \inst|BUS[3]~45_combout\ : std_logic;
SIGNAL \inst|BUS[3]~50_combout\ : std_logic;
SIGNAL \DST_UC[3]~input_o\ : std_logic;
SIGNAL \inst|SelMUX[3]~1_combout\ : std_logic;
SIGNAL \inst|DST|R[0]~0_combout\ : std_logic;
SIGNAL \inst|DST|R[0]~1_combout\ : std_logic;
SIGNAL \inst|SelMUX[4]~3_combout\ : std_logic;
SIGNAL \inst|_~24_combout\ : std_logic;
SIGNAL \inst|PC|op_1~0_combout\ : std_logic;
SIGNAL \inst|PC|op_2~2_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~29_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~28_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~30_combout\ : std_logic;
SIGNAL \inst|PC|R[1]~31_combout\ : std_logic;
SIGNAL \Fx[1]~input_o\ : std_logic;
SIGNAL \inst|BUS[1]~65_combout\ : std_logic;
SIGNAL \inst|BUS[1]~67_combout\ : std_logic;
SIGNAL \inst|BUS[1]~68_combout\ : std_logic;
SIGNAL \inst|BUS[1]~66_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst|alu_rh|R[1]~6_combout\ : std_logic;
SIGNAL \inst|BUS[1]~60_combout\ : std_logic;
SIGNAL \inst|BUS[1]~61_combout\ : std_logic;
SIGNAL \inst|BUS[1]~62_combout\ : std_logic;
SIGNAL \inst|BUS[1]~63_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst|ALU|Result[1]~140_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~141_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~139_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~142_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~2_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~2_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~143_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~155_combout\ : std_logic;
SIGNAL \inst|ALU|Result[1]~144_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[1]~7_combout\ : std_logic;
SIGNAL \inst|BUS[1]~64_combout\ : std_logic;
SIGNAL \inst|BUS[1]~69_combout\ : std_logic;
SIGNAL \inst|SelBus[1]~3_combout\ : std_logic;
SIGNAL \inst|_~10_combout\ : std_logic;
SIGNAL \inst|BUS[2]~57_combout\ : std_logic;
SIGNAL \inst|BUS[2]~58_combout\ : std_logic;
SIGNAL \Fx[2]~input_o\ : std_logic;
SIGNAL \inst|BUS[2]~54_combout\ : std_logic;
SIGNAL \inst|BUS[2]~55_combout\ : std_logic;
SIGNAL \inst|BUS[2]~56_combout\ : std_logic;
SIGNAL \inst|BUS[2]~52_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~4_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst|ALU|Result[2]~136_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~4_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~135_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~137_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~134_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~154_combout\ : std_logic;
SIGNAL \inst|ALU|Result[2]~138_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[2]~6_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst|alu_rh|R[2]~5_combout\ : std_logic;
SIGNAL \inst|BUS[2]~51_combout\ : std_logic;
SIGNAL \inst|BUS[2]~53_combout\ : std_logic;
SIGNAL \inst|BUS[2]~59_combout\ : std_logic;
SIGNAL \inst|SelMUX[2]~2_combout\ : std_logic;
SIGNAL \inst|_~25_combout\ : std_logic;
SIGNAL \inst|SI|op_2~8_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~17_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~16_combout\ : std_logic;
SIGNAL \inst|SI|op_1~6_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~18_combout\ : std_logic;
SIGNAL \inst|SI|R[4]~19_combout\ : std_logic;
SIGNAL \inst|BUS[4]~39_combout\ : std_logic;
SIGNAL \Fx[4]~input_o\ : std_logic;
SIGNAL \inst|BUS[4]~36_combout\ : std_logic;
SIGNAL \inst|BUS[4]~35_combout\ : std_logic;
SIGNAL \inst|BUS[4]~37_combout\ : std_logic;
SIGNAL \inst|BUS[4]~38_combout\ : std_logic;
SIGNAL \inst|BUS[4]~33_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~8_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~8_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~126_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~124_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~123_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst|ALU|Result[4]~125_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~127_combout\ : std_logic;
SIGNAL \inst|ALU|Result[4]~128_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[4]~4_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst|alu_rh|R[4]~3_combout\ : std_logic;
SIGNAL \inst|BUS[4]~32_combout\ : std_logic;
SIGNAL \inst|BUS[4]~34_combout\ : std_logic;
SIGNAL \inst|BUS[4]~40_combout\ : std_logic;
SIGNAL \inst|SelBus[4]~4_combout\ : std_logic;
SIGNAL \inst|_~7_combout\ : std_logic;
SIGNAL \inst|_~14_combout\ : std_logic;
SIGNAL \inst|BUS[7]~10_combout\ : std_logic;
SIGNAL \inst|BUS[7]~11_combout\ : std_logic;
SIGNAL \Fx[7]~input_o\ : std_logic;
SIGNAL \inst|BUS[7]~8_combout\ : std_logic;
SIGNAL \inst|BUS[7]~9_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~104_combout\ : std_logic;
SIGNAL \inst|ALU|op_3~14_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~108_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~106_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst|ALU|Result[7]~105_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~107_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~109_combout\ : std_logic;
SIGNAL \inst|ALU|op_2~14_combout\ : std_logic;
SIGNAL \inst|ALU|Result[7]~110_combout\ : std_logic;
SIGNAL \inst|alu_rl|R[7]~1_combout\ : std_logic;
SIGNAL \inst|BUS[7]~2_combout\ : std_logic;
SIGNAL \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst|alu_rh|R[7]~0_combout\ : std_logic;
SIGNAL \inst|BUS[7]~0_combout\ : std_logic;
SIGNAL \inst|BUS[7]~1_combout\ : std_logic;
SIGNAL \inst|BUS[7]~3_combout\ : std_logic;
SIGNAL \inst|BUS[7]~7_combout\ : std_logic;
SIGNAL \inst|BUS[7]~12_combout\ : std_logic;
SIGNAL \inst|PC|_~1_combout\ : std_logic;
SIGNAL \inst|PC|op_1~11\ : std_logic;
SIGNAL \inst|PC|op_1~12_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~2_combout\ : std_logic;
SIGNAL \inst|PC|op_2~13\ : std_logic;
SIGNAL \inst|PC|op_2~14_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~3_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~5_combout\ : std_logic;
SIGNAL \inst|PC|R[7]~6_combout\ : std_logic;
SIGNAL \inst|MAR|R[7]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Result[0]~150_combout\ : std_logic;
SIGNAL \inst|_~26_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~4_combout\ : std_logic;
SIGNAL \inst|Dx|_~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~7_combout\ : std_logic;
SIGNAL \inst|Dx|_~0_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~36_combout\ : std_logic;
SIGNAL \inst|Dx|_~3_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Dx|R[0]~35_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~1_cout\ : std_logic;
SIGNAL \inst|Dx|op_2~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~0_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Dx|R[1]~31_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~3\ : std_logic;
SIGNAL \inst|Dx|op_2~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~1\ : std_logic;
SIGNAL \inst|Dx|op_1~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Dx|R[2]~27_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~5\ : std_logic;
SIGNAL \inst|Dx|op_2~6_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~3\ : std_logic;
SIGNAL \inst|Dx|op_1~4_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Dx|R[3]~23_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~7\ : std_logic;
SIGNAL \inst|Dx|op_2~8_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~5\ : std_logic;
SIGNAL \inst|Dx|op_1~6_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~19_combout\ : std_logic;
SIGNAL \inst|Dx|R[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~9\ : std_logic;
SIGNAL \inst|Dx|op_2~10_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~7\ : std_logic;
SIGNAL \inst|Dx|op_1~8_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Dx|R[5]~15_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~11\ : std_logic;
SIGNAL \inst|Dx|op_2~12_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~9\ : std_logic;
SIGNAL \inst|Dx|op_1~10_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Dx|R[6]~11_combout\ : std_logic;
SIGNAL \inst|Dx|op_2~13\ : std_logic;
SIGNAL \inst|Dx|op_2~14_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~3_combout\ : std_logic;
SIGNAL \inst|Dx|op_1~11\ : std_logic;
SIGNAL \inst|Dx|op_1~12_combout\ : std_logic;
SIGNAL \inst|Dx|_~1_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Dx|R[7]~6_combout\ : std_logic;
SIGNAL \inst|_~27_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~4_combout\ : std_logic;
SIGNAL \inst|Ex|_~0_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~36_combout\ : std_logic;
SIGNAL \inst|Ex|_~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~32_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~7_combout\ : std_logic;
SIGNAL \inst|Ex|_~3_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~33_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~34_combout\ : std_logic;
SIGNAL \inst|Ex|R[0]~35_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~1_cout\ : std_logic;
SIGNAL \inst|Ex|op_2~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~29_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~28_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~0_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~30_combout\ : std_logic;
SIGNAL \inst|Ex|R[1]~31_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~24_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~1\ : std_logic;
SIGNAL \inst|Ex|op_1~2_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~3\ : std_logic;
SIGNAL \inst|Ex|op_2~4_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~25_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~26_combout\ : std_logic;
SIGNAL \inst|Ex|R[2]~27_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~3\ : std_logic;
SIGNAL \inst|Ex|op_1~4_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~5\ : std_logic;
SIGNAL \inst|Ex|op_2~6_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~21_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~20_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~22_combout\ : std_logic;
SIGNAL \inst|Ex|R[3]~23_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~5\ : std_logic;
SIGNAL \inst|Ex|op_1~6_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~7\ : std_logic;
SIGNAL \inst|Ex|op_2~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~17_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~16_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~18_combout\ : std_logic;
SIGNAL \inst|Ex|R[4]~19_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~7\ : std_logic;
SIGNAL \inst|Ex|op_1~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~12_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~9\ : std_logic;
SIGNAL \inst|Ex|op_2~10_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~13_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~14_combout\ : std_logic;
SIGNAL \inst|Ex|R[5]~15_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~9\ : std_logic;
SIGNAL \inst|Ex|op_1~10_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~11\ : std_logic;
SIGNAL \inst|Ex|op_2~12_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~9_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~8_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~10_combout\ : std_logic;
SIGNAL \inst|Ex|R[6]~11_combout\ : std_logic;
SIGNAL \inst|Ex|op_2~13\ : std_logic;
SIGNAL \inst|Ex|op_2~14_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~3_combout\ : std_logic;
SIGNAL \inst|Ex|_~1_combout\ : std_logic;
SIGNAL \inst|Ex|op_1~11\ : std_logic;
SIGNAL \inst|Ex|op_1~12_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~2_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~5_combout\ : std_logic;
SIGNAL \inst|Ex|R[7]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[7]~1_combout\ : std_logic;
SIGNAL \Enable_flag~input_o\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~5_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~4_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~2_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[6]~6_combout\ : std_logic;
SIGNAL \inst|ALU|op_1~1_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~3_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~5_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~7_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~9_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~11_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~13_cout\ : std_logic;
SIGNAL \inst|ALU|op_1~14_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[5]~7_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[4]~8_combout\ : std_logic;
SIGNAL \inst|ALU|op_4~1_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~3_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~5_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~7_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~9_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~11_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~13_cout\ : std_logic;
SIGNAL \inst|ALU|op_4~14_combout\ : std_logic;
SIGNAL \inst|ALU|_~28_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[3]~9_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[3]~10_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~18_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~19_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~13_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~14_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~15_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~16_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~11_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~17_combout\ : std_logic;
SIGNAL \inst|ALU|Flags[2]~20_combout\ : std_logic;
SIGNAL \inst|DI|_~1_combout\ : std_logic;
SIGNAL \inst|alu_r|R[16]~0_combout\ : std_logic;
SIGNAL \inst|alu_res|_~0_combout\ : std_logic;
SIGNAL \inst|alu_res|R[7]~0_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \inst|alu_res|R[7]~1_combout\ : std_logic;
SIGNAL \inst|alu_res|R[7]~2_combout\ : std_logic;
SIGNAL \inst|alu_res|R[6]~3_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \inst|alu_res|R[6]~4_combout\ : std_logic;
SIGNAL \inst|alu_res|R[6]~5_combout\ : std_logic;
SIGNAL \inst|alu_res|R[5]~6_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|alu_res|R[5]~7_combout\ : std_logic;
SIGNAL \inst|alu_res|R[5]~8_combout\ : std_logic;
SIGNAL \inst|alu_res|R[4]~9_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|alu_res|R[4]~10_combout\ : std_logic;
SIGNAL \inst|alu_res|R[4]~11_combout\ : std_logic;
SIGNAL \inst|alu_res|R[3]~12_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|alu_res|R[3]~13_combout\ : std_logic;
SIGNAL \inst|alu_res|R[3]~14_combout\ : std_logic;
SIGNAL \inst|alu_res|R[2]~15_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|alu_res|R[2]~16_combout\ : std_logic;
SIGNAL \inst|alu_res|R[2]~17_combout\ : std_logic;
SIGNAL \inst|alu_res|R[1]~18_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|alu_res|R[1]~19_combout\ : std_logic;
SIGNAL \inst|alu_res|R[1]~20_combout\ : std_logic;
SIGNAL \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|alu_res|R[0]~21_combout\ : std_logic;
SIGNAL \inst|alu_res|R[0]~22_combout\ : std_logic;
SIGNAL \inst|SRC|R[7]~feeder_combout\ : std_logic;
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MAR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SRC_t\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ax|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_y|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DST_t\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|Result\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|SRC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_rh|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Cx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_res|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Bx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_rl|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PC|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|MDR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BP|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|SI|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|IR|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DATA_BUS_IN_t\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|DST|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|alu_r|R\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|Dx|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ex|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|Flags\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALU|ALT_INV_Result[16]~100_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADDR_BUS_t <= ww_ADDR_BUS_t;
ww_Reloj <= Reloj;
ww_Reset <= Reset;
ww_Enable_flag <= Enable_flag;
ww_SelRHL <= SelRHL;
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
ALU_t <= ww_ALU_t;
Ax_t <= ww_Ax_t;
Bus_t <= ww_Bus_t;
Bx_t <= ww_Bx_t;
Cx_t <= ww_Cx_t;
DATA_BUS_IN_t <= ww_DATA_BUS_IN_t;
DATA_BUS_OUT_t <= ww_DATA_BUS_OUT_t;
DST_t <= ww_DST_t;
Dx_t <= ww_Dx_t;
Ex_t <= ww_Ex_t;
Flags_t <= ww_Flags_t;
IR_t <= ww_IR_t;
MAR_t <= ww_MAR_t;
MDR_t <= ww_MDR_t;
PC_t <= ww_PC_t;
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

\inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|BUS[7]~12_combout\ & \inst|BUS[6]~21_combout\ & \inst|BUS[5]~31_combout\ & \inst|BUS[4]~40_combout\ & \inst|BUS[3]~50_combout\ & \inst|BUS[2]~59_combout\ & \inst|BUS[1]~69_combout\ & 
\inst|BUS[0]~78_combout\ & gnd);

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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\inst|ALU|ALT_INV_Result[16]~100_combout\ <= NOT \inst|ALU|Result[16]~100_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X78_Y21_N2
\ADDR_BUS_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(7),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[7]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\ADDR_BUS_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(6),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\ADDR_BUS_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(5),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[5]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\ADDR_BUS_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(4),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\ADDR_BUS_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(3),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ADDR_BUS_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(2),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\ADDR_BUS_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(1),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\ADDR_BUS_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(0),
	devoe => ww_devoe,
	o => \ADDR_BUS_t[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\ALU_t[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|ALT_INV_Result[16]~100_combout\,
	devoe => ww_devoe,
	o => \ALU_t[16]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X0_Y25_N2
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X78_Y25_N2
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X78_Y25_N9
\ALU_t[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[8]~103_combout\,
	devoe => ww_devoe,
	o => \ALU_t[8]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\ALU_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[7]~110_combout\,
	devoe => ww_devoe,
	o => \ALU_t[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\ALU_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[6]~116_combout\,
	devoe => ww_devoe,
	o => \ALU_t[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\ALU_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[5]~122_combout\,
	devoe => ww_devoe,
	o => \ALU_t[5]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\ALU_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[4]~128_combout\,
	devoe => ww_devoe,
	o => \ALU_t[4]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\ALU_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[3]~133_combout\,
	devoe => ww_devoe,
	o => \ALU_t[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\ALU_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[2]~138_combout\,
	devoe => ww_devoe,
	o => \ALU_t[2]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\ALU_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[1]~144_combout\,
	devoe => ww_devoe,
	o => \ALU_t[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\ALU_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Result[0]~150_combout\,
	devoe => ww_devoe,
	o => \ALU_t[0]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X78_Y24_N16
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X78_Y23_N23
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

-- Location: IOOBUF_X78_Y18_N9
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X26_Y0_N9
\Bus_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[7]~12_combout\,
	devoe => ww_devoe,
	o => \Bus_t[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\Bus_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[6]~21_combout\,
	devoe => ww_devoe,
	o => \Bus_t[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\Bus_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[5]~31_combout\,
	devoe => ww_devoe,
	o => \Bus_t[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\Bus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[4]~40_combout\,
	devoe => ww_devoe,
	o => \Bus_t[4]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\Bus_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[3]~50_combout\,
	devoe => ww_devoe,
	o => \Bus_t[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\Bus_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[2]~59_combout\,
	devoe => ww_devoe,
	o => \Bus_t[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\Bus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[1]~69_combout\,
	devoe => ww_devoe,
	o => \Bus_t[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\Bus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BUS[0]~78_combout\,
	devoe => ww_devoe,
	o => \Bus_t[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X78_Y17_N16
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X0_Y9_N9
\DATA_BUS_IN_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(7),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\DATA_BUS_IN_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(6),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\DATA_BUS_IN_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(5),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\DATA_BUS_IN_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(4),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\DATA_BUS_IN_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(3),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\DATA_BUS_IN_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(2),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\DATA_BUS_IN_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(1),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\DATA_BUS_IN_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DATA_BUS_IN_t\(0),
	devoe => ww_devoe,
	o => \DATA_BUS_IN_t[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\DATA_BUS_OUT_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(7),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\DATA_BUS_OUT_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(6),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\DATA_BUS_OUT_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(5),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\DATA_BUS_OUT_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(4),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\DATA_BUS_OUT_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(3),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[3]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\DATA_BUS_OUT_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(2),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\DATA_BUS_OUT_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(1),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\DATA_BUS_OUT_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(0),
	devoe => ww_devoe,
	o => \DATA_BUS_OUT_t[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X78_Y21_N16
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

-- Location: IOOBUF_X78_Y3_N16
\DST_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST_t\(4),
	devoe => ww_devoe,
	o => \DST_t[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\DST_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST_t\(3),
	devoe => ww_devoe,
	o => \DST_t[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\DST_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST_t\(2),
	devoe => ww_devoe,
	o => \DST_t[2]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\DST_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST_t\(1),
	devoe => ww_devoe,
	o => \DST_t[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\DST_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DST_t\(0),
	devoe => ww_devoe,
	o => \DST_t[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X51_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X0_Y9_N16
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X26_Y39_N23
\Flags_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(7),
	devoe => ww_devoe,
	o => \Flags_t[7]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Flags_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(6),
	devoe => ww_devoe,
	o => \Flags_t[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Flags_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(5),
	devoe => ww_devoe,
	o => \Flags_t[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Flags_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(4),
	devoe => ww_devoe,
	o => \Flags_t[4]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Flags_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(3),
	devoe => ww_devoe,
	o => \Flags_t[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\Flags_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(2),
	devoe => ww_devoe,
	o => \Flags_t[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\Flags_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags_t[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\Flags_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU|Flags\(0),
	devoe => ww_devoe,
	o => \Flags_t[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\IR_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(7),
	devoe => ww_devoe,
	o => \IR_t[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\IR_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(6),
	devoe => ww_devoe,
	o => \IR_t[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\IR_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(5),
	devoe => ww_devoe,
	o => \IR_t[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\IR_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(4),
	devoe => ww_devoe,
	o => \IR_t[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\IR_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(3),
	devoe => ww_devoe,
	o => \IR_t[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\IR_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(2),
	devoe => ww_devoe,
	o => \IR_t[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\IR_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(1),
	devoe => ww_devoe,
	o => \IR_t[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\IR_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|IR|R\(0),
	devoe => ww_devoe,
	o => \IR_t[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\MAR_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(7),
	devoe => ww_devoe,
	o => \MAR_t[7]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\MAR_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(6),
	devoe => ww_devoe,
	o => \MAR_t[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\MAR_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(5),
	devoe => ww_devoe,
	o => \MAR_t[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\MAR_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(4),
	devoe => ww_devoe,
	o => \MAR_t[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\MAR_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(3),
	devoe => ww_devoe,
	o => \MAR_t[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\MAR_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(2),
	devoe => ww_devoe,
	o => \MAR_t[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\MAR_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(1),
	devoe => ww_devoe,
	o => \MAR_t[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\MAR_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR|R\(0),
	devoe => ww_devoe,
	o => \MAR_t[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\MDR_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(7),
	devoe => ww_devoe,
	o => \MDR_t[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\MDR_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(6),
	devoe => ww_devoe,
	o => \MDR_t[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\MDR_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(5),
	devoe => ww_devoe,
	o => \MDR_t[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\MDR_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(4),
	devoe => ww_devoe,
	o => \MDR_t[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\MDR_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(3),
	devoe => ww_devoe,
	o => \MDR_t[3]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\MDR_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(2),
	devoe => ww_devoe,
	o => \MDR_t[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\MDR_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(1),
	devoe => ww_devoe,
	o => \MDR_t[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\MDR_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MDR|R\(0),
	devoe => ww_devoe,
	o => \MDR_t[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\PC_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(7),
	devoe => ww_devoe,
	o => \PC_t[7]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\PC_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(6),
	devoe => ww_devoe,
	o => \PC_t[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\PC_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(5),
	devoe => ww_devoe,
	o => \PC_t[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\PC_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(4),
	devoe => ww_devoe,
	o => \PC_t[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\PC_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(3),
	devoe => ww_devoe,
	o => \PC_t[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\PC_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(2),
	devoe => ww_devoe,
	o => \PC_t[2]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\PC_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(1),
	devoe => ww_devoe,
	o => \PC_t[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\PC_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC|R\(0),
	devoe => ww_devoe,
	o => \PC_t[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N2
\r_t[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(7),
	devoe => ww_devoe,
	o => \r_t[15]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\r_t[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(6),
	devoe => ww_devoe,
	o => \r_t[14]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\r_t[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(5),
	devoe => ww_devoe,
	o => \r_t[13]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\r_t[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(4),
	devoe => ww_devoe,
	o => \r_t[12]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\r_t[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(3),
	devoe => ww_devoe,
	o => \r_t[11]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\r_t[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(2),
	devoe => ww_devoe,
	o => \r_t[10]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\r_t[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(1),
	devoe => ww_devoe,
	o => \r_t[9]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\r_t[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rh|R\(0),
	devoe => ww_devoe,
	o => \r_t[8]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\r_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(7),
	devoe => ww_devoe,
	o => \r_t[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\r_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(6),
	devoe => ww_devoe,
	o => \r_t[6]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\r_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(5),
	devoe => ww_devoe,
	o => \r_t[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\r_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(4),
	devoe => ww_devoe,
	o => \r_t[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\r_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(3),
	devoe => ww_devoe,
	o => \r_t[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\r_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(2),
	devoe => ww_devoe,
	o => \r_t[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\r_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(1),
	devoe => ww_devoe,
	o => \r_t[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\r_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_rl|R\(0),
	devoe => ww_devoe,
	o => \r_t[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X51_Y54_N23
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

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X46_Y54_N9
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X54_Y54_N23
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

-- Location: IOOBUF_X51_Y54_N30
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

-- Location: IOOBUF_X78_Y16_N2
\SelBus_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[4]~4_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X78_Y17_N9
\SelBus_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[1]~3_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[1]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\SelBus_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SelBus[0]~2_combout\,
	devoe => ww_devoe,
	o => \SelBus_t[0]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X69_Y0_N23
\SRC_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC_t\(4),
	devoe => ww_devoe,
	o => \SRC_t[4]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\SRC_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC_t\(3),
	devoe => ww_devoe,
	o => \SRC_t[3]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\SRC_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC_t\(2),
	devoe => ww_devoe,
	o => \SRC_t[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\SRC_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC_t\(1),
	devoe => ww_devoe,
	o => \SRC_t[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\SRC_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SRC_t\(0),
	devoe => ww_devoe,
	o => \SRC_t[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X24_Y39_N9
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X24_Y39_N23
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N9
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

-- Location: IOOBUF_X22_Y39_N23
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

-- Location: IOOBUF_X22_Y39_N30
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

-- Location: IOOBUF_X24_Y39_N2
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X26_Y39_N30
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOIBUF_X34_Y0_N22
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

-- Location: IOIBUF_X46_Y0_N8
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

-- Location: IOIBUF_X46_Y0_N1
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

-- Location: IOIBUF_X49_Y0_N15
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

-- Location: LCCOMB_X40_Y12_N2
\inst|DI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~0_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|DI|_~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
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

-- Location: IOIBUF_X18_Y0_N29
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

-- Location: IOIBUF_X78_Y15_N1
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

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: IOIBUF_X0_Y10_N15
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

-- Location: LCCOMB_X38_Y11_N12
\inst|BP|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BP|R[0]~0_combout\ = (!\inst|SelMUX[4]~3_combout\ & (\inst|DI|_~0_combout\ & (\inst|SelMUX[3]~1_combout\ & \inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~3_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|SelMUX[3]~1_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|BP|R[0]~0_combout\);

-- Location: IOIBUF_X78_Y23_N1
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

-- Location: FF_X41_Y11_N11
\inst|DST|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(1));

-- Location: LCCOMB_X41_Y11_N14
\inst|SelMUX[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[1]~0_combout\ = (\SelDST~input_o\ & (\DST_UC[1]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DST_UC[1]~input_o\,
	datac => \SelDST~input_o\,
	datad => \inst|DST|R\(1),
	combout => \inst|SelMUX[1]~0_combout\);

-- Location: IOIBUF_X78_Y15_N15
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

-- Location: FF_X39_Y11_N29
\inst|IR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(0));

-- Location: IOIBUF_X20_Y0_N22
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

-- Location: IOIBUF_X18_Y0_N15
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

-- Location: LCCOMB_X43_Y7_N2
\inst|PC|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|_~3_combout\);

-- Location: LCCOMB_X43_Y7_N26
\inst|PC|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|R[7]~36_combout\);

-- Location: LCCOMB_X42_Y7_N2
\inst|PC|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~33_combout\ = (\inst|PC|_~3_combout\ & ((\inst|PC|R\(7)) # ((\inst|PC|R[7]~36_combout\ & \inst|PC|R\(0))))) # (!\inst|PC|_~3_combout\ & (\inst|PC|R[7]~36_combout\ & (\inst|PC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~3_combout\,
	datab => \inst|PC|R[7]~36_combout\,
	datac => \inst|PC|R\(0),
	datad => \inst|PC|R\(7),
	combout => \inst|PC|R[0]~33_combout\);

-- Location: LCCOMB_X43_Y7_N12
\inst|PC|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|R[5]~7_combout\);

-- Location: LCCOMB_X43_Y7_N0
\inst|PC|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|_~0_combout\);

-- Location: LCCOMB_X43_Y7_N4
\inst|PC|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|_~2_combout\);

-- Location: LCCOMB_X41_Y7_N12
\inst|PC|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~32_combout\ = (!\inst|PC|R\(0) & ((\inst|PC|_~0_combout\) # (\inst|PC|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datac => \inst|PC|_~2_combout\,
	datad => \inst|PC|R\(0),
	combout => \inst|PC|R[0]~32_combout\);

-- Location: LCCOMB_X41_Y7_N14
\inst|PC|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~34_combout\ = (\inst|PC|R[0]~33_combout\) # ((\inst|PC|R[0]~32_combout\) # ((\inst|PC|R\(1) & \inst|PC|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[0]~33_combout\,
	datab => \inst|PC|R\(1),
	datac => \inst|PC|R[5]~7_combout\,
	datad => \inst|PC|R[0]~32_combout\,
	combout => \inst|PC|R[0]~34_combout\);

-- Location: LCCOMB_X41_Y7_N6
\inst|PC|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[0]~35_combout\ = (\inst|PC|R[0]~34_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[0]~78_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|BUS[0]~78_combout\,
	datac => \inst|PC|R[0]~34_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[0]~35_combout\);

-- Location: FF_X41_Y7_N7
\inst|PC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(0));

-- Location: LCCOMB_X39_Y7_N6
\inst|MAR|R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[0]~8_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[0]~78_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|PC|R\(0),
	datad => \inst|BUS[0]~78_combout\,
	combout => \inst|MAR|R[0]~8_combout\);

-- Location: LCCOMB_X41_Y11_N24
\inst|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~15_combout\ = (!\inst|SelMUX[1]~0_combout\ & ((\SelDST~input_o\ & (!\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((!\inst|DST|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \inst|SelMUX[1]~0_combout\,
	datac => \DST_UC[0]~input_o\,
	datad => \inst|DST|R\(0),
	combout => \inst|_~15_combout\);

-- Location: LCCOMB_X38_Y11_N26
\inst|MAR|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[0]~1_combout\ = (\inst|BP|R[0]~0_combout\ & \inst|_~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP|R[0]~0_combout\,
	datad => \inst|_~15_combout\,
	combout => \inst|MAR|R[0]~1_combout\);

-- Location: FF_X39_Y7_N7
\inst|MAR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(0));

-- Location: LCCOMB_X39_Y7_N0
\inst|MAR|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[1]~7_combout\ = (\SelMAR~input_o\ & (\inst|BUS[1]~69_combout\)) # (!\SelMAR~input_o\ & ((\inst|PC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \inst|PC|R\(1),
	combout => \inst|MAR|R[1]~7_combout\);

-- Location: FF_X39_Y7_N1
\inst|MAR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[1]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(1));

-- Location: LCCOMB_X42_Y7_N4
\inst|PC|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~1_cout\ = CARRY(\inst|PC|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(0),
	datad => VCC,
	cout => \inst|PC|op_2~1_cout\);

-- Location: LCCOMB_X42_Y7_N6
\inst|PC|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~2_combout\ = (\inst|PC|R\(1) & (\inst|PC|op_2~1_cout\ & VCC)) # (!\inst|PC|R\(1) & (!\inst|PC|op_2~1_cout\))
-- \inst|PC|op_2~3\ = CARRY((!\inst|PC|R\(1) & !\inst|PC|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(1),
	datad => VCC,
	cin => \inst|PC|op_2~1_cout\,
	combout => \inst|PC|op_2~2_combout\,
	cout => \inst|PC|op_2~3\);

-- Location: LCCOMB_X42_Y7_N8
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

-- Location: LCCOMB_X42_Y7_N30
\inst|PC|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~25_combout\ = (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~4_combout\) # ((\inst|PC|R\(2) & \inst|PC|R[7]~36_combout\)))) # (!\inst|PC|_~2_combout\ & (\inst|PC|R\(2) & ((\inst|PC|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~2_combout\,
	datab => \inst|PC|R\(2),
	datac => \inst|PC|op_2~4_combout\,
	datad => \inst|PC|R[7]~36_combout\,
	combout => \inst|PC|R[2]~25_combout\);

-- Location: LCCOMB_X40_Y7_N18
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

-- Location: LCCOMB_X40_Y7_N20
\inst|PC|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~2_combout\ = (\inst|PC|R\(2) & (!\inst|PC|op_1~1\)) # (!\inst|PC|R\(2) & ((\inst|PC|op_1~1\) # (GND)))
-- \inst|PC|op_1~3\ = CARRY((!\inst|PC|op_1~1\) # (!\inst|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(2),
	datad => VCC,
	cin => \inst|PC|op_1~1\,
	combout => \inst|PC|op_1~2_combout\,
	cout => \inst|PC|op_1~3\);

-- Location: LCCOMB_X42_Y7_N10
\inst|PC|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~6_combout\ = (\inst|PC|R\(3) & (\inst|PC|op_2~5\ & VCC)) # (!\inst|PC|R\(3) & (!\inst|PC|op_2~5\))
-- \inst|PC|op_2~7\ = CARRY((!\inst|PC|R\(3) & !\inst|PC|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(3),
	datad => VCC,
	cin => \inst|PC|op_2~5\,
	combout => \inst|PC|op_2~6_combout\,
	cout => \inst|PC|op_2~7\);

-- Location: LCCOMB_X42_Y7_N12
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

-- Location: LCCOMB_X42_Y7_N22
\inst|PC|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~17_combout\ = (\inst|PC|R\(4) & ((\inst|PC|R[7]~36_combout\) # ((\inst|PC|op_2~8_combout\ & \inst|PC|_~2_combout\)))) # (!\inst|PC|R\(4) & (((\inst|PC|op_2~8_combout\ & \inst|PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datab => \inst|PC|R[7]~36_combout\,
	datac => \inst|PC|op_2~8_combout\,
	datad => \inst|PC|_~2_combout\,
	combout => \inst|PC|R[4]~17_combout\);

-- Location: FF_X39_Y11_N15
\inst|IR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(6));

-- Location: LCCOMB_X39_Y7_N8
\inst|MAR|R[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[3]~5_combout\ = (\SelMAR~input_o\ & (\inst|BUS[3]~50_combout\)) # (!\SelMAR~input_o\ & ((\inst|PC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|BUS[3]~50_combout\,
	datad => \inst|PC|R\(3),
	combout => \inst|MAR|R[3]~5_combout\);

-- Location: FF_X39_Y7_N9
\inst|MAR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[3]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(3));

-- Location: LCCOMB_X39_Y7_N10
\inst|MAR|R[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[4]~4_combout\ = (\SelMAR~input_o\ & (\inst|BUS[4]~40_combout\)) # (!\SelMAR~input_o\ & ((\inst|PC|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|BUS[4]~40_combout\,
	datad => \inst|PC|R\(4),
	combout => \inst|MAR|R[4]~4_combout\);

-- Location: FF_X39_Y7_N11
\inst|MAR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[4]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(4));

-- Location: LCCOMB_X42_Y23_N16
\inst|alu_rl|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[7]~0_combout\ = ((\Cmd[2]~input_o\) # (\Cmd[1]~input_o\)) # (!\Cmd[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|alu_rl|R[7]~0_combout\);

-- Location: LCCOMB_X38_Y11_N16
\inst|alu_x|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_x|R[7]~0_combout\ = (!\inst|SelMUX[4]~3_combout\ & (\inst|DI|_~0_combout\ & (!\inst|SelMUX[3]~1_combout\ & \inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~3_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|SelMUX[3]~1_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|alu_x|R[7]~0_combout\);

-- Location: LCCOMB_X41_Y11_N26
\inst|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~16_combout\ = (\inst|SelMUX[1]~0_combout\ & ((\SelDST~input_o\ & (\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \inst|SelMUX[1]~0_combout\,
	datac => \DST_UC[0]~input_o\,
	datad => \inst|DST|R\(0),
	combout => \inst|_~16_combout\);

-- Location: LCCOMB_X38_Y11_N22
\inst|alu_y|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_y|R[7]~0_combout\ = (\inst|alu_x|R[7]~0_combout\ & \inst|_~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_x|R[7]~0_combout\,
	datad => \inst|_~16_combout\,
	combout => \inst|alu_y|R[7]~0_combout\);

-- Location: FF_X35_Y26_N11
\inst|alu_y|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(5));

-- Location: LCCOMB_X38_Y11_N8
\inst|alu_x|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_x|R[7]~1_combout\ = (\inst|alu_x|R[7]~0_combout\ & \inst|_~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_x|R[7]~0_combout\,
	datac => \inst|_~17_combout\,
	combout => \inst|alu_x|R[7]~1_combout\);

-- Location: FF_X36_Y26_N13
\inst|alu_x|R[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[5]~_Duplicate_1_q\);

-- Location: FF_X36_Y26_N3
\inst|alu_x|R[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[4]~_Duplicate_1_q\);

-- Location: FF_X35_Y26_N23
\inst|alu_y|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(4));

-- Location: LCCOMB_X36_Y26_N16
\inst|alu_x|R[3]~_Duplicate_1feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_x|R[3]~_Duplicate_1feeder_combout\ = \inst|BUS[3]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BUS[3]~50_combout\,
	combout => \inst|alu_x|R[3]~_Duplicate_1feeder_combout\);

-- Location: FF_X36_Y26_N17
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
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[3]~_Duplicate_1_q\);

-- Location: FF_X35_Y26_N29
\inst|alu_y|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(3));

-- Location: FF_X36_Y26_N11
\inst|alu_x|R[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[2]~_Duplicate_1_q\);

-- Location: FF_X35_Y26_N31
\inst|alu_y|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(2));

-- Location: FF_X36_Y26_N5
\inst|alu_y|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(1));

-- Location: FF_X36_Y26_N19
\inst|alu_x|R[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[1]~_Duplicate_1_q\);

-- Location: FF_X36_Y26_N31
\inst|alu_x|R[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[0]~_Duplicate_1_q\);

-- Location: FF_X36_Y26_N1
\inst|alu_y|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(0));

-- Location: LCCOMB_X35_Y26_N0
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

-- Location: LCCOMB_X35_Y26_N2
\inst|ALU|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~2_combout\ = (\inst|alu_y|R\(1) & ((\inst|alu_x|R[1]~_Duplicate_1_q\ & (\inst|ALU|op_2~1\ & VCC)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & (!\inst|ALU|op_2~1\)))) # (!\inst|alu_y|R\(1) & ((\inst|alu_x|R[1]~_Duplicate_1_q\ & 
-- (!\inst|ALU|op_2~1\)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|ALU|op_2~1\) # (GND)))))
-- \inst|ALU|op_2~3\ = CARRY((\inst|alu_y|R\(1) & (!\inst|alu_x|R[1]~_Duplicate_1_q\ & !\inst|ALU|op_2~1\)) # (!\inst|alu_y|R\(1) & ((!\inst|ALU|op_2~1\) # (!\inst|alu_x|R[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_2~1\,
	combout => \inst|ALU|op_2~2_combout\,
	cout => \inst|ALU|op_2~3\);

-- Location: LCCOMB_X35_Y26_N4
\inst|ALU|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~4_combout\ = ((\inst|alu_x|R[2]~_Duplicate_1_q\ $ (\inst|alu_y|R\(2) $ (!\inst|ALU|op_2~3\)))) # (GND)
-- \inst|ALU|op_2~5\ = CARRY((\inst|alu_x|R[2]~_Duplicate_1_q\ & ((\inst|alu_y|R\(2)) # (!\inst|ALU|op_2~3\))) # (!\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|alu_y|R\(2) & !\inst|ALU|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(2),
	datad => VCC,
	cin => \inst|ALU|op_2~3\,
	combout => \inst|ALU|op_2~4_combout\,
	cout => \inst|ALU|op_2~5\);

-- Location: LCCOMB_X35_Y26_N6
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

-- Location: LCCOMB_X35_Y26_N8
\inst|ALU|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~8_combout\ = ((\inst|alu_x|R[4]~_Duplicate_1_q\ $ (\inst|alu_y|R\(4) $ (!\inst|ALU|op_2~7\)))) # (GND)
-- \inst|ALU|op_2~9\ = CARRY((\inst|alu_x|R[4]~_Duplicate_1_q\ & ((\inst|alu_y|R\(4)) # (!\inst|ALU|op_2~7\))) # (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (\inst|alu_y|R\(4) & !\inst|ALU|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(4),
	datad => VCC,
	cin => \inst|ALU|op_2~7\,
	combout => \inst|ALU|op_2~8_combout\,
	cout => \inst|ALU|op_2~9\);

-- Location: LCCOMB_X35_Y26_N10
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

-- Location: IOIBUF_X0_Y25_N22
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

-- Location: IOIBUF_X29_Y39_N8
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

-- Location: IOIBUF_X29_Y39_N15
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

-- Location: LCCOMB_X35_Y25_N2
\inst|ALU|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~16_combout\ = (\SelOp[2]~input_o\ & (\SelOp[0]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~16_combout\);

-- Location: LCCOMB_X35_Y25_N16
\inst|ALU|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~17_combout\ = (\SelOp[2]~input_o\ & (!\SelOp[0]~input_o\ & !\SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~17_combout\);

-- Location: LCCOMB_X36_Y27_N28
\inst|ALU|Result[5]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~117_combout\ = (\inst|ALU|_~16_combout\ & (((\inst|alu_y|R\(5)) # (\inst|alu_x|R[5]~_Duplicate_1_q\)))) # (!\inst|ALU|_~16_combout\ & (\inst|ALU|_~17_combout\ & (\inst|alu_y|R\(5) & \inst|alu_x|R[5]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|_~17_combout\,
	datac => \inst|alu_y|R\(5),
	datad => \inst|alu_x|R[5]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[5]~117_combout\);

-- Location: LCCOMB_X34_Y26_N6
\inst|ALU|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~0_combout\ = (\inst|alu_x|R[0]~_Duplicate_1_q\ & ((GND) # (!\inst|alu_y|R\(0)))) # (!\inst|alu_x|R[0]~_Duplicate_1_q\ & (\inst|alu_y|R\(0) $ (GND)))
-- \inst|ALU|op_3~1\ = CARRY((\inst|alu_x|R[0]~_Duplicate_1_q\) # (!\inst|alu_y|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datad => VCC,
	combout => \inst|ALU|op_3~0_combout\,
	cout => \inst|ALU|op_3~1\);

-- Location: LCCOMB_X34_Y26_N8
\inst|ALU|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~2_combout\ = (\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1) & (!\inst|ALU|op_3~1\)) # (!\inst|alu_y|R\(1) & (\inst|ALU|op_3~1\ & VCC)))) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1) & ((\inst|ALU|op_3~1\) # (GND))) # 
-- (!\inst|alu_y|R\(1) & (!\inst|ALU|op_3~1\))))
-- \inst|ALU|op_3~3\ = CARRY((\inst|alu_x|R[1]~_Duplicate_1_q\ & (\inst|alu_y|R\(1) & !\inst|ALU|op_3~1\)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1)) # (!\inst|ALU|op_3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(1),
	datad => VCC,
	cin => \inst|ALU|op_3~1\,
	combout => \inst|ALU|op_3~2_combout\,
	cout => \inst|ALU|op_3~3\);

-- Location: LCCOMB_X34_Y26_N10
\inst|ALU|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~4_combout\ = ((\inst|alu_x|R[2]~_Duplicate_1_q\ $ (\inst|alu_y|R\(2) $ (\inst|ALU|op_3~3\)))) # (GND)
-- \inst|ALU|op_3~5\ = CARRY((\inst|alu_x|R[2]~_Duplicate_1_q\ & ((!\inst|ALU|op_3~3\) # (!\inst|alu_y|R\(2)))) # (!\inst|alu_x|R[2]~_Duplicate_1_q\ & (!\inst|alu_y|R\(2) & !\inst|ALU|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(2),
	datad => VCC,
	cin => \inst|ALU|op_3~3\,
	combout => \inst|ALU|op_3~4_combout\,
	cout => \inst|ALU|op_3~5\);

-- Location: LCCOMB_X34_Y26_N12
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

-- Location: LCCOMB_X34_Y26_N14
\inst|ALU|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~8_combout\ = ((\inst|alu_y|R\(4) $ (\inst|alu_x|R[4]~_Duplicate_1_q\ $ (\inst|ALU|op_3~7\)))) # (GND)
-- \inst|ALU|op_3~9\ = CARRY((\inst|alu_y|R\(4) & (\inst|alu_x|R[4]~_Duplicate_1_q\ & !\inst|ALU|op_3~7\)) # (!\inst|alu_y|R\(4) & ((\inst|alu_x|R[4]~_Duplicate_1_q\) # (!\inst|ALU|op_3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(4),
	datab => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~7\,
	combout => \inst|ALU|op_3~8_combout\,
	cout => \inst|ALU|op_3~9\);

-- Location: LCCOMB_X34_Y26_N16
\inst|ALU|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~10_combout\ = (\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|alu_y|R\(5) & (!\inst|ALU|op_3~9\)) # (!\inst|alu_y|R\(5) & (\inst|ALU|op_3~9\ & VCC)))) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|alu_y|R\(5) & ((\inst|ALU|op_3~9\) # (GND))) # 
-- (!\inst|alu_y|R\(5) & (!\inst|ALU|op_3~9\))))
-- \inst|ALU|op_3~11\ = CARRY((\inst|alu_x|R[5]~_Duplicate_1_q\ & (\inst|alu_y|R\(5) & !\inst|ALU|op_3~9\)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|alu_y|R\(5)) # (!\inst|ALU|op_3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(5),
	datad => VCC,
	cin => \inst|ALU|op_3~9\,
	combout => \inst|ALU|op_3~10_combout\,
	cout => \inst|ALU|op_3~11\);

-- Location: LCCOMB_X37_Y25_N30
\inst|ALU|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~10_combout\ = (!\SelOp[1]~input_o\ & (\SelOp[0]~input_o\ & !\SelOp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	combout => \inst|ALU|_~10_combout\);

-- Location: LCCOMB_X35_Y25_N22
\inst|ALU|Result[7]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~119_combout\ = (\SelOp[2]~input_o\ & \SelOp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datac => \SelOp[1]~input_o\,
	combout => \inst|ALU|Result[7]~119_combout\);

-- Location: LCCOMB_X36_Y27_N0
\inst|ALU|Result[5]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~120_combout\ = (\inst|ALU|op_3~10_combout\ & ((\inst|ALU|_~10_combout\) # ((!\inst|alu_x|R[5]~_Duplicate_1_q\ & \inst|ALU|Result[7]~119_combout\)))) # (!\inst|ALU|op_3~10_combout\ & (!\inst|alu_x|R[5]~_Duplicate_1_q\ & 
-- ((\inst|ALU|Result[7]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~10_combout\,
	datab => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datac => \inst|ALU|_~10_combout\,
	datad => \inst|ALU|Result[7]~119_combout\,
	combout => \inst|ALU|Result[5]~120_combout\);

-- Location: FF_X35_Y26_N25
\inst|alu_y|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(6));

-- Location: FF_X35_Y26_N19
\inst|alu_y|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_y|R[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_y|R\(7));

-- Location: LCCOMB_X35_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ = (!\inst|alu_y|R\(4) & (!\inst|alu_y|R\(6) & (!\inst|alu_y|R\(7) & !\inst|alu_y|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(4),
	datab => \inst|alu_y|R\(6),
	datac => \inst|alu_y|R\(7),
	datad => \inst|alu_y|R\(5),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\);

-- Location: LCCOMB_X35_Y25_N20
\inst|ALU|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~8_combout\ = (!\SelOp[2]~input_o\ & \SelOp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datac => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~8_combout\);

-- Location: FF_X36_Y26_N27
\inst|alu_x|R[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[6]~_Duplicate_1_q\);

-- Location: FF_X36_Y26_N9
\inst|alu_x|R[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|alu_x|R[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_x|R[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X36_Y26_N26
\inst|ALU|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~4_combout\ = (!\inst|alu_x|R[5]~_Duplicate_1_q\ & (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (!\inst|alu_x|R[6]~_Duplicate_1_q\ & !\inst|alu_x|R[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datab => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datac => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	combout => \inst|ALU|_~4_combout\);

-- Location: LCCOMB_X36_Y26_N10
\inst|ALU|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~5_combout\ = (!\inst|alu_x|R[0]~_Duplicate_1_q\ & (!\inst|alu_x|R[1]~_Duplicate_1_q\ & (!\inst|alu_x|R[2]~_Duplicate_1_q\ & !\inst|alu_x|R[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datac => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => \inst|alu_x|R[3]~_Duplicate_1_q\,
	combout => \inst|ALU|_~5_combout\);

-- Location: LCCOMB_X36_Y26_N24
\inst|ALU|Flags[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[7]~0_combout\ = (\SelOp[0]~input_o\ & (\inst|ALU|_~8_combout\ & ((!\inst|ALU|_~5_combout\) # (!\inst|ALU|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[0]~input_o\,
	datab => \inst|ALU|_~8_combout\,
	datac => \inst|ALU|_~4_combout\,
	datad => \inst|ALU|_~5_combout\,
	combout => \inst|ALU|Flags[7]~0_combout\);

-- Location: LCCOMB_X35_Y26_N20
\inst|ALU|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~3_combout\ = (!\inst|alu_y|R\(1) & (!\inst|alu_y|R\(3) & (!\inst|alu_y|R\(2) & \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\)))

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
	combout => \inst|ALU|_~3_combout\);

-- Location: LCCOMB_X36_Y26_N6
\inst|ALU|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~11_combout\ = (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|Flags[7]~0_combout\,
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~11_combout\);

-- Location: LCCOMB_X35_Y25_N10
\inst|ALU|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~29_combout\ = (!\SelOp[2]~input_o\ & (\SelOp[0]~input_o\ & \SelOp[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	combout => \inst|ALU|_~29_combout\);

-- Location: LCCOMB_X36_Y26_N22
\inst|ALU|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~12_combout\ = (\inst|ALU|_~29_combout\ & (\inst|alu_y|R\(1) & ((!\inst|ALU|_~5_combout\) # (!\inst|ALU|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~29_combout\,
	datab => \inst|alu_y|R\(1),
	datac => \inst|ALU|_~4_combout\,
	datad => \inst|ALU|_~5_combout\,
	combout => \inst|ALU|_~12_combout\);

-- Location: LCCOMB_X36_Y26_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ = (!\inst|ALU|_~3_combout\ & (\inst|alu_x|R[7]~_Duplicate_1_q\ & \inst|ALU|Flags[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~3_combout\,
	datac => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X36_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ = ((\inst|alu_x|R[6]~_Duplicate_1_q\) # (!\inst|ALU|Flags[7]~0_combout\)) # (!\inst|alu_y|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\);

-- Location: LCCOMB_X35_Y26_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ = (!\inst|alu_y|R\(2) & (!\inst|alu_y|R\(3) & \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_y|R\(3),
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\);

-- Location: LCCOMB_X36_Y26_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # 
-- (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~1_combout\,
	datac => \inst|ALU|Flags[7]~0_combout\,
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\);

-- Location: LCCOMB_X36_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\) # (\inst|ALU|_~12_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X37_Y26_N12
\inst|ALU|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~13_combout\ = (\inst|alu_y|R\(2) & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~3_combout\,
	datac => \inst|alu_y|R\(2),
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|_~13_combout\);

-- Location: LCCOMB_X36_Y26_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\) # ((\inst|ALU|_~12_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\))) # (!\inst|ALU|_~12_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_1|carry_eqn[0]~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~2_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\);

-- Location: LCCOMB_X37_Y26_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst|ALU|_~11_combout\ & (\inst|alu_x|R[6]~_Duplicate_1_q\ $ (((\inst|alu_y|R\(0) & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X36_Y26_N12
\inst|ALU|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~15_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~15_combout\);

-- Location: LCCOMB_X36_Y26_N18
\inst|ALU|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~14_combout\ = (\inst|alu_y|R\(0) & \inst|ALU|Flags[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_y|R\(0),
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|_~14_combout\);

-- Location: LCCOMB_X37_Y26_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\inst|ALU|_~15_combout\ & ((GND) # (!\inst|ALU|_~14_combout\))) # (!\inst|ALU|_~15_combout\ & (\inst|ALU|_~14_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst|ALU|_~15_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~15_combout\,
	datab => \inst|ALU|_~14_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X37_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\inst|ALU|_~12_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst|ALU|_~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\inst|ALU|_~12_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\inst|ALU|_~12_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \inst|ALU|_~12_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X37_Y26_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\inst|ALU|_~13_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\inst|ALU|_~13_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\ & 
-- (!\inst|ALU|_~13_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \inst|ALU|_~13_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X37_Y26_N8
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

-- Location: LCCOMB_X38_Y26_N26
\inst|ALU|Result[5]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~152_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ & (!\inst|alu_y|R\(3) & (\inst|ALU|_~11_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	datab => \inst|alu_y|R\(3),
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Result[5]~152_combout\);

-- Location: LCCOMB_X37_Y25_N0
\inst|ALU|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~9_combout\ = (\SelOp[1]~input_o\ & (\SelOp[0]~input_o\ & \SelOp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	combout => \inst|ALU|_~9_combout\);

-- Location: LCCOMB_X37_Y25_N24
\inst|ALU|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~2_combout\ = (\SelOp[1]~input_o\ & (!\SelOp[0]~input_o\ & !\SelOp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	combout => \inst|ALU|_~2_combout\);

-- Location: DSPMULT_X28_Y25_N0
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
	ena => \inst|alu_x|R[7]~1_combout\,
	dataa => \inst|ALU|op_5|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|ALU|op_5|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|ALU|op_5|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y25_N2
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

-- Location: LCCOMB_X36_Y27_N2
\inst|ALU|Result[5]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~118_combout\ = (\inst|ALU|_~9_combout\ & (((\inst|ALU|_~2_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\)) # (!\inst|alu_y|R\(5)))) # (!\inst|ALU|_~9_combout\ & (\inst|ALU|_~2_combout\ & 
-- ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~9_combout\,
	datab => \inst|ALU|_~2_combout\,
	datac => \inst|alu_y|R\(5),
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT5\,
	combout => \inst|ALU|Result[5]~118_combout\);

-- Location: LCCOMB_X36_Y27_N10
\inst|ALU|Result[5]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~121_combout\ = (\inst|ALU|Result[5]~117_combout\) # ((\inst|ALU|Result[5]~120_combout\) # ((\inst|ALU|Result[5]~152_combout\) # (\inst|ALU|Result[5]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[5]~117_combout\,
	datab => \inst|ALU|Result[5]~120_combout\,
	datac => \inst|ALU|Result[5]~152_combout\,
	datad => \inst|ALU|Result[5]~118_combout\,
	combout => \inst|ALU|Result[5]~121_combout\);

-- Location: LCCOMB_X36_Y25_N12
\inst|ALU|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~6_combout\ = (\inst|ALU|_~3_combout\ & (!\inst|alu_y|R\(0) & (\inst|ALU|_~4_combout\ & \inst|ALU|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~3_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~4_combout\,
	datad => \inst|ALU|_~5_combout\,
	combout => \inst|ALU|_~6_combout\);

-- Location: LCCOMB_X37_Y25_N22
\inst|ALU|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~7_combout\ = (!\SelOp[1]~input_o\ & (!\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & !\inst|ALU|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|_~7_combout\);

-- Location: LCCOMB_X35_Y27_N16
\inst|ALU|Result[5]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[5]~122_combout\ = (\inst|ALU|Result[5]~121_combout\) # ((\inst|ALU|op_2~10_combout\ & \inst|ALU|_~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|op_2~10_combout\,
	datac => \inst|ALU|Result[5]~121_combout\,
	datad => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|Result[5]~122_combout\);

-- Location: LCCOMB_X41_Y25_N10
\inst|alu_rl|R[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[5]~3_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rl|R\(5)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result[5]~122_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result[5]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rl|R\(5),
	datad => \inst|ALU|Result[5]~122_combout\,
	combout => \inst|alu_rl|R[5]~3_combout\);

-- Location: FF_X41_Y25_N11
\inst|alu_rl|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[5]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(5));

-- Location: IOIBUF_X78_Y20_N1
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

-- Location: LCCOMB_X38_Y11_N0
\inst|SRC|R[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC|R[5]~0_combout\ = (\inst|_~17_combout\ & \inst|DST|R[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~17_combout\,
	datac => \inst|DST|R[0]~0_combout\,
	combout => \inst|SRC|R[5]~0_combout\);

-- Location: FF_X41_Y12_N9
\inst|SRC|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(0));

-- Location: IOIBUF_X69_Y0_N15
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

-- Location: LCCOMB_X41_Y12_N8
\inst|SelBus[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[0]~2_combout\ = (\SelSRC~input_o\ & (\SRC_UC[0]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC_UC[0]~input_o\,
	datac => \inst|SRC|R\(0),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[0]~2_combout\);

-- Location: IOIBUF_X78_Y17_N22
\SelRHL~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelRHL,
	o => \SelRHL~input_o\);

-- Location: FF_X41_Y12_N19
\inst|SRC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(2));

-- Location: IOIBUF_X0_Y16_N8
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

-- Location: LCCOMB_X41_Y12_N18
\inst|SelBus[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[2]~1_combout\ = (\SelSRC~input_o\ & ((\SRC_UC[2]~input_o\))) # (!\SelSRC~input_o\ & (\inst|SRC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelSRC~input_o\,
	datac => \inst|SRC|R\(2),
	datad => \SRC_UC[2]~input_o\,
	combout => \inst|SelBus[2]~1_combout\);

-- Location: IOIBUF_X49_Y54_N8
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

-- Location: FF_X41_Y12_N29
\inst|SRC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(3));

-- Location: LCCOMB_X41_Y12_N28
\inst|SelBus[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[3]~0_combout\ = (\SelSRC~input_o\ & (\SRC_UC[3]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[3]~input_o\,
	datac => \inst|SRC|R\(3),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[3]~0_combout\);

-- Location: LCCOMB_X41_Y12_N22
\inst|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~1_combout\ = (!\inst|SelBus[4]~4_combout\ & (!\inst|SelBus[2]~1_combout\ & \inst|SelBus[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|SelBus[2]~1_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~1_combout\);

-- Location: LCCOMB_X41_Y17_N24
\inst|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~6_combout\ = (!\inst|SelBus[0]~2_combout\ & (!\SelRHL~input_o\ & (\inst|_~1_combout\ & !\inst|SelBus[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~2_combout\,
	datab => \SelRHL~input_o\,
	datac => \inst|_~1_combout\,
	datad => \inst|SelBus[1]~3_combout\,
	combout => \inst|_~6_combout\);

-- Location: LCCOMB_X38_Y11_N30
\inst|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~21_combout\ = (!\inst|SelMUX[4]~3_combout\ & (\inst|_~17_combout\ & (!\inst|SelMUX[3]~1_combout\ & !\inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~3_combout\,
	datab => \inst|_~17_combout\,
	datac => \inst|SelMUX[3]~1_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|_~21_combout\);

-- Location: LCCOMB_X37_Y6_N0
\inst|Cx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|_~2_combout\);

-- Location: LCCOMB_X37_Y6_N4
\inst|Cx|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|R[7]~36_combout\);

-- Location: LCCOMB_X37_Y6_N16
\inst|Cx|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|R[5]~7_combout\);

-- Location: LCCOMB_X37_Y6_N2
\inst|Cx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|_~1_combout\);

-- Location: LCCOMB_X37_Y6_N12
\inst|Cx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|_~0_combout\);

-- Location: LCCOMB_X36_Y7_N16
\inst|Cx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~10_combout\ = (\inst|Cx|R\(5) & (\inst|Cx|op_2~9\ & VCC)) # (!\inst|Cx|R\(5) & (!\inst|Cx|op_2~9\))
-- \inst|Cx|op_2~11\ = CARRY((!\inst|Cx|R\(5) & !\inst|Cx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(5),
	datad => VCC,
	cin => \inst|Cx|op_2~9\,
	combout => \inst|Cx|op_2~10_combout\,
	cout => \inst|Cx|op_2~11\);

-- Location: LCCOMB_X36_Y7_N18
\inst|Cx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~12_combout\ = (\inst|Cx|R\(6) & ((GND) # (!\inst|Cx|op_2~11\))) # (!\inst|Cx|R\(6) & (\inst|Cx|op_2~11\ $ (GND)))
-- \inst|Cx|op_2~13\ = CARRY((\inst|Cx|R\(6)) # (!\inst|Cx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(6),
	datad => VCC,
	cin => \inst|Cx|op_2~11\,
	combout => \inst|Cx|op_2~12_combout\,
	cout => \inst|Cx|op_2~13\);

-- Location: LCCOMB_X36_Y7_N26
\inst|Cx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~9_combout\ = (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~12_combout\) # ((\inst|Cx|R\(6) & \inst|Cx|R[7]~36_combout\)))) # (!\inst|Cx|_~2_combout\ & (((\inst|Cx|R\(6) & \inst|Cx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~2_combout\,
	datab => \inst|Cx|op_2~12_combout\,
	datac => \inst|Cx|R\(6),
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[6]~9_combout\);

-- Location: LCCOMB_X37_Y6_N22
\inst|Cx|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|R[6]~4_combout\);

-- Location: LCCOMB_X37_Y7_N20
\inst|Cx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~8_combout\ = (\inst|Cx|R\(7) & ((\inst|Cx|R[5]~7_combout\) # ((\inst|Cx|R\(5) & \inst|Cx|R[6]~4_combout\)))) # (!\inst|Cx|R\(7) & (\inst|Cx|R\(5) & (\inst|Cx|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(7),
	datab => \inst|Cx|R\(5),
	datac => \inst|Cx|R[6]~4_combout\,
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[6]~8_combout\);

-- Location: LCCOMB_X38_Y7_N14
\inst|Cx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~0_combout\ = (\inst|Cx|R\(0) & (\inst|Cx|R\(1) $ (VCC))) # (!\inst|Cx|R\(0) & (\inst|Cx|R\(1) & VCC))
-- \inst|Cx|op_1~1\ = CARRY((\inst|Cx|R\(0) & \inst|Cx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|R\(1),
	datad => VCC,
	combout => \inst|Cx|op_1~0_combout\,
	cout => \inst|Cx|op_1~1\);

-- Location: LCCOMB_X38_Y7_N16
\inst|Cx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~2_combout\ = (\inst|Cx|R\(2) & (!\inst|Cx|op_1~1\)) # (!\inst|Cx|R\(2) & ((\inst|Cx|op_1~1\) # (GND)))
-- \inst|Cx|op_1~3\ = CARRY((!\inst|Cx|op_1~1\) # (!\inst|Cx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cx|R\(2),
	datad => VCC,
	cin => \inst|Cx|op_1~1\,
	combout => \inst|Cx|op_1~2_combout\,
	cout => \inst|Cx|op_1~3\);

-- Location: LCCOMB_X38_Y7_N18
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

-- Location: LCCOMB_X38_Y7_N20
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

-- Location: LCCOMB_X38_Y7_N22
\inst|Cx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_1~8_combout\ = (\inst|Cx|R\(5) & (\inst|Cx|op_1~7\ $ (GND))) # (!\inst|Cx|R\(5) & (!\inst|Cx|op_1~7\ & VCC))
-- \inst|Cx|op_1~9\ = CARRY((\inst|Cx|R\(5) & !\inst|Cx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(5),
	datad => VCC,
	cin => \inst|Cx|op_1~7\,
	combout => \inst|Cx|op_1~8_combout\,
	cout => \inst|Cx|op_1~9\);

-- Location: LCCOMB_X38_Y7_N24
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

-- Location: LCCOMB_X37_Y7_N22
\inst|Cx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~10_combout\ = (\inst|Cx|R[6]~9_combout\) # ((\inst|Cx|R[6]~8_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[6]~9_combout\,
	datab => \inst|Cx|R[6]~8_combout\,
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|op_1~10_combout\,
	combout => \inst|Cx|R[6]~10_combout\);

-- Location: LCCOMB_X37_Y7_N12
\inst|Cx|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[6]~11_combout\ = (\inst|Cx|R[6]~10_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Cx|R[6]~10_combout\,
	datad => \inst|BUS[6]~21_combout\,
	combout => \inst|Cx|R[6]~11_combout\);

-- Location: FF_X37_Y7_N13
\inst|Cx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(6));

-- Location: LCCOMB_X38_Y7_N26
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

-- Location: LCCOMB_X38_Y7_N30
\inst|Cx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~2_combout\ = (\inst|Cx|_~1_combout\ & ((\inst|Cx|R\(0)) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~12_combout\)))) # (!\inst|Cx|_~1_combout\ & (\inst|Cx|_~0_combout\ & (\inst|Cx|op_1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~1_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|op_1~12_combout\,
	datad => \inst|Cx|R\(0),
	combout => \inst|Cx|R[7]~2_combout\);

-- Location: LCCOMB_X36_Y7_N20
\inst|Cx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~14_combout\ = \inst|Cx|op_2~13\ $ (!\inst|Cx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Cx|R\(7),
	cin => \inst|Cx|op_2~13\,
	combout => \inst|Cx|op_2~14_combout\);

-- Location: LCCOMB_X36_Y7_N4
\inst|Cx|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~3_combout\ = (\inst|Cx|op_2~14_combout\ & ((\inst|Cx|_~2_combout\) # ((\inst|Cx|R\(7) & \inst|Cx|R[7]~36_combout\)))) # (!\inst|Cx|op_2~14_combout\ & (\inst|Cx|R\(7) & ((\inst|Cx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|op_2~14_combout\,
	datab => \inst|Cx|R\(7),
	datac => \inst|Cx|_~2_combout\,
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[7]~3_combout\);

-- Location: LCCOMB_X37_Y7_N10
\inst|Cx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~5_combout\ = (\inst|Cx|R[7]~2_combout\) # ((\inst|Cx|R[7]~3_combout\) # ((\inst|Cx|R[6]~4_combout\ & \inst|Cx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[7]~2_combout\,
	datab => \inst|Cx|R[6]~4_combout\,
	datac => \inst|Cx|R[7]~3_combout\,
	datad => \inst|Cx|R\(6),
	combout => \inst|Cx|R[7]~5_combout\);

-- Location: LCCOMB_X38_Y7_N28
\inst|Cx|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[7]~6_combout\ = (\inst|Cx|R[7]~5_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[7]~12_combout\,
	datad => \inst|Cx|R[7]~5_combout\,
	combout => \inst|Cx|R[7]~6_combout\);

-- Location: FF_X38_Y7_N29
\inst|Cx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(7));

-- Location: LCCOMB_X37_Y6_N10
\inst|Cx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|_~3_combout\);

-- Location: LCCOMB_X36_Y7_N22
\inst|Cx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~33_combout\ = (\inst|Cx|R\(0) & ((\inst|Cx|R[7]~36_combout\) # ((\inst|Cx|R\(7) & \inst|Cx|_~3_combout\)))) # (!\inst|Cx|R\(0) & (\inst|Cx|R\(7) & (\inst|Cx|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|R\(7),
	datac => \inst|Cx|_~3_combout\,
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[0]~33_combout\);

-- Location: LCCOMB_X37_Y7_N0
\inst|Cx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~32_combout\ = (!\inst|Cx|R\(0) & ((\inst|Cx|_~0_combout\) # (\inst|Cx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|_~2_combout\,
	combout => \inst|Cx|R[0]~32_combout\);

-- Location: LCCOMB_X37_Y7_N26
\inst|Cx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~34_combout\ = (\inst|Cx|R[0]~33_combout\) # ((\inst|Cx|R[0]~32_combout\) # ((\inst|Cx|R[5]~7_combout\ & \inst|Cx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~7_combout\,
	datab => \inst|Cx|R[0]~33_combout\,
	datac => \inst|Cx|R\(1),
	datad => \inst|Cx|R[0]~32_combout\,
	combout => \inst|Cx|R[0]~34_combout\);

-- Location: LCCOMB_X38_Y7_N4
\inst|Cx|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[0]~35_combout\ = (\inst|Cx|R[0]~34_combout\) # ((\inst|BUS[0]~78_combout\ & (\inst|DI|_~0_combout\ & \inst|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~78_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Cx|R[0]~34_combout\,
	datad => \inst|_~21_combout\,
	combout => \inst|Cx|R[0]~35_combout\);

-- Location: FF_X38_Y7_N5
\inst|Cx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(0));

-- Location: LCCOMB_X36_Y7_N6
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

-- Location: LCCOMB_X36_Y7_N8
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

-- Location: LCCOMB_X36_Y7_N0
\inst|Cx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~29_combout\ = (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~2_combout\) # ((\inst|Cx|R\(1) & \inst|Cx|R[7]~36_combout\)))) # (!\inst|Cx|_~2_combout\ & (\inst|Cx|R\(1) & ((\inst|Cx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~2_combout\,
	datab => \inst|Cx|R\(1),
	datac => \inst|Cx|op_2~2_combout\,
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[1]~29_combout\);

-- Location: LCCOMB_X37_Y7_N16
\inst|Cx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~28_combout\ = (\inst|Cx|R\(0) & ((\inst|Cx|R[6]~4_combout\) # ((\inst|Cx|R\(2) & \inst|Cx|R[5]~7_combout\)))) # (!\inst|Cx|R\(0) & (\inst|Cx|R\(2) & ((\inst|Cx|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(0),
	datab => \inst|Cx|R\(2),
	datac => \inst|Cx|R[6]~4_combout\,
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[1]~28_combout\);

-- Location: LCCOMB_X37_Y7_N14
\inst|Cx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~30_combout\ = (\inst|Cx|R[1]~29_combout\) # ((\inst|Cx|R[1]~28_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[1]~29_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|op_1~0_combout\,
	datad => \inst|Cx|R[1]~28_combout\,
	combout => \inst|Cx|R[1]~30_combout\);

-- Location: LCCOMB_X38_Y7_N2
\inst|Cx|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[1]~31_combout\ = (\inst|Cx|R[1]~30_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \inst|Cx|R[1]~30_combout\,
	combout => \inst|Cx|R[1]~31_combout\);

-- Location: FF_X38_Y7_N3
\inst|Cx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(1));

-- Location: LCCOMB_X36_Y7_N10
\inst|Cx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~4_combout\ = (\inst|Cx|R\(2) & ((GND) # (!\inst|Cx|op_2~3\))) # (!\inst|Cx|R\(2) & (\inst|Cx|op_2~3\ $ (GND)))
-- \inst|Cx|op_2~5\ = CARRY((\inst|Cx|R\(2)) # (!\inst|Cx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(2),
	datad => VCC,
	cin => \inst|Cx|op_2~3\,
	combout => \inst|Cx|op_2~4_combout\,
	cout => \inst|Cx|op_2~5\);

-- Location: LCCOMB_X36_Y7_N2
\inst|Cx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~25_combout\ = (\inst|Cx|R\(2) & ((\inst|Cx|R[7]~36_combout\) # ((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~4_combout\)))) # (!\inst|Cx|R\(2) & (((\inst|Cx|_~2_combout\ & \inst|Cx|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(2),
	datab => \inst|Cx|R[7]~36_combout\,
	datac => \inst|Cx|_~2_combout\,
	datad => \inst|Cx|op_2~4_combout\,
	combout => \inst|Cx|R[2]~25_combout\);

-- Location: LCCOMB_X37_Y7_N8
\inst|Cx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~24_combout\ = (\inst|Cx|R\(3) & ((\inst|Cx|R[5]~7_combout\) # ((\inst|Cx|R\(1) & \inst|Cx|R[6]~4_combout\)))) # (!\inst|Cx|R\(3) & (\inst|Cx|R\(1) & (\inst|Cx|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(3),
	datab => \inst|Cx|R\(1),
	datac => \inst|Cx|R[6]~4_combout\,
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[2]~24_combout\);

-- Location: LCCOMB_X37_Y7_N18
\inst|Cx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~26_combout\ = (\inst|Cx|R[2]~25_combout\) # ((\inst|Cx|R[2]~24_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[2]~25_combout\,
	datab => \inst|Cx|R[2]~24_combout\,
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|op_1~2_combout\,
	combout => \inst|Cx|R[2]~26_combout\);

-- Location: LCCOMB_X37_Y7_N4
\inst|Cx|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[2]~27_combout\ = (\inst|Cx|R[2]~26_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[2]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[2]~59_combout\,
	datad => \inst|Cx|R[2]~26_combout\,
	combout => \inst|Cx|R[2]~27_combout\);

-- Location: FF_X37_Y7_N5
\inst|Cx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(2));

-- Location: LCCOMB_X37_Y7_N2
\inst|Cx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~20_combout\ = (\inst|Cx|R\(4) & ((\inst|Cx|R[5]~7_combout\) # ((\inst|Cx|R\(2) & \inst|Cx|R[6]~4_combout\)))) # (!\inst|Cx|R\(4) & (\inst|Cx|R\(2) & (\inst|Cx|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(4),
	datab => \inst|Cx|R\(2),
	datac => \inst|Cx|R[6]~4_combout\,
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[3]~20_combout\);

-- Location: LCCOMB_X36_Y7_N12
\inst|Cx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~6_combout\ = (\inst|Cx|R\(3) & (\inst|Cx|op_2~5\ & VCC)) # (!\inst|Cx|R\(3) & (!\inst|Cx|op_2~5\))
-- \inst|Cx|op_2~7\ = CARRY((!\inst|Cx|R\(3) & !\inst|Cx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(3),
	datad => VCC,
	cin => \inst|Cx|op_2~5\,
	combout => \inst|Cx|op_2~6_combout\,
	cout => \inst|Cx|op_2~7\);

-- Location: LCCOMB_X36_Y7_N24
\inst|Cx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~21_combout\ = (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~6_combout\) # ((\inst|Cx|R[7]~36_combout\ & \inst|Cx|R\(3))))) # (!\inst|Cx|_~2_combout\ & (\inst|Cx|R[7]~36_combout\ & (\inst|Cx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~2_combout\,
	datab => \inst|Cx|R[7]~36_combout\,
	datac => \inst|Cx|R\(3),
	datad => \inst|Cx|op_2~6_combout\,
	combout => \inst|Cx|R[3]~21_combout\);

-- Location: LCCOMB_X38_Y7_N8
\inst|Cx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~22_combout\ = (\inst|Cx|R[3]~20_combout\) # ((\inst|Cx|R[3]~21_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[3]~20_combout\,
	datab => \inst|Cx|R[3]~21_combout\,
	datac => \inst|Cx|_~0_combout\,
	datad => \inst|Cx|op_1~4_combout\,
	combout => \inst|Cx|R[3]~22_combout\);

-- Location: LCCOMB_X38_Y7_N12
\inst|Cx|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[3]~23_combout\ = (\inst|Cx|R[3]~22_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Cx|R[3]~22_combout\,
	datad => \inst|BUS[3]~50_combout\,
	combout => \inst|Cx|R[3]~23_combout\);

-- Location: FF_X38_Y7_N13
\inst|Cx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(3));

-- Location: LCCOMB_X37_Y7_N6
\inst|Cx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~16_combout\ = (\inst|Cx|R\(3) & ((\inst|Cx|R[6]~4_combout\) # ((\inst|Cx|R\(5) & \inst|Cx|R[5]~7_combout\)))) # (!\inst|Cx|R\(3) & (\inst|Cx|R\(5) & ((\inst|Cx|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(3),
	datab => \inst|Cx|R\(5),
	datac => \inst|Cx|R[6]~4_combout\,
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[4]~16_combout\);

-- Location: LCCOMB_X36_Y7_N14
\inst|Cx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|op_2~8_combout\ = (\inst|Cx|R\(4) & ((GND) # (!\inst|Cx|op_2~7\))) # (!\inst|Cx|R\(4) & (\inst|Cx|op_2~7\ $ (GND)))
-- \inst|Cx|op_2~9\ = CARRY((\inst|Cx|R\(4)) # (!\inst|Cx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(4),
	datad => VCC,
	cin => \inst|Cx|op_2~7\,
	combout => \inst|Cx|op_2~8_combout\,
	cout => \inst|Cx|op_2~9\);

-- Location: LCCOMB_X36_Y7_N30
\inst|Cx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~17_combout\ = (\inst|Cx|R\(4) & ((\inst|Cx|R[7]~36_combout\) # ((\inst|Cx|op_2~8_combout\ & \inst|Cx|_~2_combout\)))) # (!\inst|Cx|R\(4) & (\inst|Cx|op_2~8_combout\ & (\inst|Cx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(4),
	datab => \inst|Cx|op_2~8_combout\,
	datac => \inst|Cx|_~2_combout\,
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[4]~17_combout\);

-- Location: LCCOMB_X37_Y7_N28
\inst|Cx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~18_combout\ = (\inst|Cx|R[4]~16_combout\) # ((\inst|Cx|R[4]~17_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[4]~16_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|op_1~6_combout\,
	datad => \inst|Cx|R[4]~17_combout\,
	combout => \inst|Cx|R[4]~18_combout\);

-- Location: LCCOMB_X37_Y7_N30
\inst|Cx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[4]~19_combout\ = (\inst|Cx|R[4]~18_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[4]~40_combout\,
	datad => \inst|Cx|R[4]~18_combout\,
	combout => \inst|Cx|R[4]~19_combout\);

-- Location: FF_X37_Y7_N31
\inst|Cx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(4));

-- Location: LCCOMB_X36_Y7_N28
\inst|Cx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~13_combout\ = (\inst|Cx|_~2_combout\ & ((\inst|Cx|op_2~10_combout\) # ((\inst|Cx|R\(5) & \inst|Cx|R[7]~36_combout\)))) # (!\inst|Cx|_~2_combout\ & (((\inst|Cx|R\(5) & \inst|Cx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|_~2_combout\,
	datab => \inst|Cx|op_2~10_combout\,
	datac => \inst|Cx|R\(5),
	datad => \inst|Cx|R[7]~36_combout\,
	combout => \inst|Cx|R[5]~13_combout\);

-- Location: LCCOMB_X37_Y7_N24
\inst|Cx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~12_combout\ = (\inst|Cx|R\(6) & ((\inst|Cx|R[5]~7_combout\) # ((\inst|Cx|R[6]~4_combout\ & \inst|Cx|R\(4))))) # (!\inst|Cx|R\(6) & (\inst|Cx|R[6]~4_combout\ & (\inst|Cx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(6),
	datab => \inst|Cx|R[6]~4_combout\,
	datac => \inst|Cx|R\(4),
	datad => \inst|Cx|R[5]~7_combout\,
	combout => \inst|Cx|R[5]~12_combout\);

-- Location: LCCOMB_X38_Y7_N0
\inst|Cx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~14_combout\ = (\inst|Cx|R[5]~13_combout\) # ((\inst|Cx|R[5]~12_combout\) # ((\inst|Cx|_~0_combout\ & \inst|Cx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R[5]~13_combout\,
	datab => \inst|Cx|_~0_combout\,
	datac => \inst|Cx|op_1~8_combout\,
	datad => \inst|Cx|R[5]~12_combout\,
	combout => \inst|Cx|R[5]~14_combout\);

-- Location: LCCOMB_X38_Y7_N10
\inst|Cx|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Cx|R[5]~15_combout\ = (\inst|Cx|R[5]~14_combout\) # ((\inst|_~21_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~21_combout\,
	datab => \inst|Cx|R[5]~14_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|Cx|R[5]~15_combout\);

-- Location: FF_X38_Y7_N11
\inst|Cx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Cx|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Cx|R\(5));

-- Location: LCCOMB_X41_Y12_N24
\inst|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~3_combout\ = (!\inst|SelBus[2]~1_combout\ & (!\inst|SelBus[0]~2_combout\ & (\inst|SelBus[1]~3_combout\ & !\inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[2]~1_combout\,
	datab => \inst|SelBus[0]~2_combout\,
	datac => \inst|SelBus[1]~3_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~3_combout\);

-- Location: LCCOMB_X38_Y11_N24
\inst|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~20_combout\ = (\inst|SelMUX[4]~3_combout\ & (\inst|_~17_combout\ & (!\inst|SelMUX[3]~1_combout\ & !\inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~3_combout\,
	datab => \inst|_~17_combout\,
	datac => \inst|SelMUX[3]~1_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|_~20_combout\);

-- Location: LCCOMB_X41_Y10_N14
\inst|DI|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~7_combout\ = (\inst|_~20_combout\ & (\Cmd[0]~input_o\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~20_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	combout => \inst|DI|R[5]~7_combout\);

-- Location: LCCOMB_X38_Y10_N20
\inst|DI|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[6]~4_combout\);

-- Location: LCCOMB_X40_Y12_N12
\inst|DI|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~36_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[7]~36_combout\);

-- Location: LCCOMB_X40_Y12_N26
\inst|DI|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~5_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|_~5_combout\);

-- Location: LCCOMB_X38_Y10_N14
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

-- Location: LCCOMB_X38_Y10_N16
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

-- Location: LCCOMB_X40_Y12_N20
\inst|DI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|_~2_combout\);

-- Location: LCCOMB_X39_Y10_N4
\inst|DI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~8_combout\ = (\inst|DI|R[6]~4_combout\ & ((\inst|DI|R\(5)) # ((\inst|DI|R\(7) & \inst|DI|R[5]~7_combout\)))) # (!\inst|DI|R[6]~4_combout\ & (\inst|DI|R\(7) & (\inst|DI|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[6]~4_combout\,
	datab => \inst|DI|R\(7),
	datac => \inst|DI|R[5]~7_combout\,
	datad => \inst|DI|R\(5),
	combout => \inst|DI|R[6]~8_combout\);

-- Location: LCCOMB_X41_Y10_N20
\inst|DI|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~4_combout\ = (\inst|_~20_combout\ & (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & \Cmd[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~20_combout\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|DI|_~4_combout\);

-- Location: LCCOMB_X40_Y10_N12
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

-- Location: LCCOMB_X40_Y10_N14
\inst|DI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~2_combout\ = (\inst|DI|R\(1) & (\inst|DI|op_2~1_cout\ & VCC)) # (!\inst|DI|R\(1) & (!\inst|DI|op_2~1_cout\))
-- \inst|DI|op_2~3\ = CARRY((!\inst|DI|R\(1) & !\inst|DI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(1),
	datad => VCC,
	cin => \inst|DI|op_2~1_cout\,
	combout => \inst|DI|op_2~2_combout\,
	cout => \inst|DI|op_2~3\);

-- Location: LCCOMB_X40_Y10_N16
\inst|DI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~4_combout\ = (\inst|DI|R\(2) & ((GND) # (!\inst|DI|op_2~3\))) # (!\inst|DI|R\(2) & (\inst|DI|op_2~3\ $ (GND)))
-- \inst|DI|op_2~5\ = CARRY((\inst|DI|R\(2)) # (!\inst|DI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(2),
	datad => VCC,
	cin => \inst|DI|op_2~3\,
	combout => \inst|DI|op_2~4_combout\,
	cout => \inst|DI|op_2~5\);

-- Location: LCCOMB_X40_Y10_N18
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

-- Location: LCCOMB_X40_Y10_N20
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

-- Location: LCCOMB_X40_Y10_N22
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

-- Location: LCCOMB_X40_Y10_N24
\inst|DI|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_2~12_combout\ = (\inst|DI|R\(6) & ((GND) # (!\inst|DI|op_2~11\))) # (!\inst|DI|R\(6) & (\inst|DI|op_2~11\ $ (GND)))
-- \inst|DI|op_2~13\ = CARRY((\inst|DI|R\(6)) # (!\inst|DI|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(6),
	datad => VCC,
	cin => \inst|DI|op_2~11\,
	combout => \inst|DI|op_2~12_combout\,
	cout => \inst|DI|op_2~13\);

-- Location: LCCOMB_X40_Y10_N6
\inst|DI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~9_combout\ = (\inst|DI|R\(6) & ((\inst|DI|R[7]~36_combout\) # ((\inst|DI|_~4_combout\ & \inst|DI|op_2~12_combout\)))) # (!\inst|DI|R\(6) & (((\inst|DI|_~4_combout\ & \inst|DI|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(6),
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|_~4_combout\,
	datad => \inst|DI|op_2~12_combout\,
	combout => \inst|DI|R[6]~9_combout\);

-- Location: LCCOMB_X39_Y10_N10
\inst|DI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~10_combout\ = (\inst|DI|R[6]~8_combout\) # ((\inst|DI|R[6]~9_combout\) # ((\inst|DI|op_1~10_combout\ & \inst|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_1~10_combout\,
	datab => \inst|DI|_~2_combout\,
	datac => \inst|DI|R[6]~8_combout\,
	datad => \inst|DI|R[6]~9_combout\,
	combout => \inst|DI|R[6]~10_combout\);

-- Location: LCCOMB_X39_Y10_N14
\inst|DI|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[6]~11_combout\ = (\inst|DI|R[6]~10_combout\) # ((\inst|_~20_combout\ & (\inst|BUS[6]~21_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[6]~10_combout\,
	datab => \inst|_~20_combout\,
	datac => \inst|BUS[6]~21_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|DI|R[6]~11_combout\);

-- Location: FF_X39_Y10_N15
\inst|DI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(6));

-- Location: LCCOMB_X38_Y10_N18
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

-- Location: LCCOMB_X40_Y12_N10
\inst|DI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~3_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|_~3_combout\);

-- Location: LCCOMB_X39_Y10_N2
\inst|DI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~2_combout\ = (\inst|DI|R\(0) & ((\inst|DI|_~3_combout\) # ((\inst|DI|op_1~12_combout\ & \inst|DI|_~2_combout\)))) # (!\inst|DI|R\(0) & (\inst|DI|op_1~12_combout\ & (\inst|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|op_1~12_combout\,
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|_~3_combout\,
	combout => \inst|DI|R[7]~2_combout\);

-- Location: LCCOMB_X40_Y10_N26
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

-- Location: LCCOMB_X40_Y10_N0
\inst|DI|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~3_combout\ = (\inst|DI|op_2~14_combout\ & ((\inst|DI|_~4_combout\) # ((\inst|DI|R\(7) & \inst|DI|R[7]~36_combout\)))) # (!\inst|DI|op_2~14_combout\ & (\inst|DI|R\(7) & ((\inst|DI|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_2~14_combout\,
	datab => \inst|DI|R\(7),
	datac => \inst|DI|_~4_combout\,
	datad => \inst|DI|R[7]~36_combout\,
	combout => \inst|DI|R[7]~3_combout\);

-- Location: LCCOMB_X38_Y10_N26
\inst|DI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~5_combout\ = (\inst|DI|R[7]~2_combout\) # ((\inst|DI|R[7]~3_combout\) # ((\inst|DI|R[6]~4_combout\ & \inst|DI|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[7]~2_combout\,
	datab => \inst|DI|R[6]~4_combout\,
	datac => \inst|DI|R\(6),
	datad => \inst|DI|R[7]~3_combout\,
	combout => \inst|DI|R[7]~5_combout\);

-- Location: LCCOMB_X39_Y10_N28
\inst|DI|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[7]~6_combout\ = (\inst|DI|R[7]~5_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[7]~12_combout\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[7]~5_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[7]~12_combout\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[7]~6_combout\);

-- Location: FF_X39_Y10_N29
\inst|DI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(7));

-- Location: LCCOMB_X40_Y10_N30
\inst|DI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~33_combout\ = (\inst|DI|R\(0) & ((\inst|DI|R[7]~36_combout\) # ((\inst|DI|_~5_combout\ & \inst|DI|R\(7))))) # (!\inst|DI|R\(0) & (((\inst|DI|_~5_combout\ & \inst|DI|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|_~5_combout\,
	datad => \inst|DI|R\(7),
	combout => \inst|DI|R[0]~33_combout\);

-- Location: LCCOMB_X39_Y10_N16
\inst|DI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~32_combout\ = (!\inst|DI|R\(0) & ((\inst|DI|_~2_combout\) # (\inst|DI|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|_~2_combout\,
	datad => \inst|DI|_~4_combout\,
	combout => \inst|DI|R[0]~32_combout\);

-- Location: LCCOMB_X39_Y10_N22
\inst|DI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~34_combout\ = (\inst|DI|R[0]~33_combout\) # ((\inst|DI|R[0]~32_combout\) # ((\inst|DI|R[5]~7_combout\ & \inst|DI|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[0]~33_combout\,
	datab => \inst|DI|R[0]~32_combout\,
	datac => \inst|DI|R[5]~7_combout\,
	datad => \inst|DI|R\(1),
	combout => \inst|DI|R[0]~34_combout\);

-- Location: LCCOMB_X39_Y10_N12
\inst|DI|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[0]~35_combout\ = (\inst|DI|R[0]~34_combout\) # ((\inst|BUS[0]~78_combout\ & (\inst|DI|_~0_combout\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~78_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|DI|R[0]~34_combout\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[0]~35_combout\);

-- Location: FF_X39_Y10_N13
\inst|DI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(0));

-- Location: LCCOMB_X38_Y10_N2
\inst|DI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~28_combout\ = (\inst|DI|R\(0) & ((\inst|DI|R[6]~4_combout\) # ((\inst|DI|R\(2) & \inst|DI|R[5]~7_combout\)))) # (!\inst|DI|R\(0) & (\inst|DI|R\(2) & (\inst|DI|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|R\(2),
	datac => \inst|DI|R[5]~7_combout\,
	datad => \inst|DI|R[6]~4_combout\,
	combout => \inst|DI|R[1]~28_combout\);

-- Location: LCCOMB_X38_Y10_N6
\inst|DI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~0_combout\ = (\inst|DI|R\(0) & (\inst|DI|R\(1) $ (VCC))) # (!\inst|DI|R\(0) & (\inst|DI|R\(1) & VCC))
-- \inst|DI|op_1~1\ = CARRY((\inst|DI|R\(0) & \inst|DI|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|DI|R\(1),
	datad => VCC,
	combout => \inst|DI|op_1~0_combout\,
	cout => \inst|DI|op_1~1\);

-- Location: LCCOMB_X40_Y10_N28
\inst|DI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~29_combout\ = (\inst|DI|_~4_combout\ & ((\inst|DI|op_2~2_combout\) # ((\inst|DI|R\(1) & \inst|DI|R[7]~36_combout\)))) # (!\inst|DI|_~4_combout\ & (\inst|DI|R\(1) & ((\inst|DI|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~4_combout\,
	datab => \inst|DI|R\(1),
	datac => \inst|DI|op_2~2_combout\,
	datad => \inst|DI|R[7]~36_combout\,
	combout => \inst|DI|R[1]~29_combout\);

-- Location: LCCOMB_X39_Y10_N26
\inst|DI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~30_combout\ = (\inst|DI|R[1]~28_combout\) # ((\inst|DI|R[1]~29_combout\) # ((\inst|DI|_~2_combout\ & \inst|DI|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[1]~28_combout\,
	datab => \inst|DI|_~2_combout\,
	datac => \inst|DI|op_1~0_combout\,
	datad => \inst|DI|R[1]~29_combout\,
	combout => \inst|DI|R[1]~30_combout\);

-- Location: LCCOMB_X39_Y10_N18
\inst|DI|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[1]~31_combout\ = (\inst|DI|R[1]~30_combout\) # ((\inst|_~20_combout\ & (\inst|BUS[1]~69_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[1]~30_combout\,
	datab => \inst|_~20_combout\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|DI|R[1]~31_combout\);

-- Location: FF_X39_Y10_N19
\inst|DI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(1));

-- Location: LCCOMB_X38_Y10_N0
\inst|DI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~24_combout\ = (\inst|DI|R[5]~7_combout\ & ((\inst|DI|R\(3)) # ((\inst|DI|R[6]~4_combout\ & \inst|DI|R\(1))))) # (!\inst|DI|R[5]~7_combout\ & (\inst|DI|R[6]~4_combout\ & ((\inst|DI|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~7_combout\,
	datab => \inst|DI|R[6]~4_combout\,
	datac => \inst|DI|R\(3),
	datad => \inst|DI|R\(1),
	combout => \inst|DI|R[2]~24_combout\);

-- Location: LCCOMB_X40_Y10_N10
\inst|DI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~25_combout\ = (\inst|DI|R\(2) & ((\inst|DI|R[7]~36_combout\) # ((\inst|DI|_~4_combout\ & \inst|DI|op_2~4_combout\)))) # (!\inst|DI|R\(2) & (((\inst|DI|_~4_combout\ & \inst|DI|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(2),
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|_~4_combout\,
	datad => \inst|DI|op_2~4_combout\,
	combout => \inst|DI|R[2]~25_combout\);

-- Location: LCCOMB_X38_Y10_N8
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

-- Location: LCCOMB_X39_Y10_N20
\inst|DI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~26_combout\ = (\inst|DI|R[2]~24_combout\) # ((\inst|DI|R[2]~25_combout\) # ((\inst|DI|_~2_combout\ & \inst|DI|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[2]~24_combout\,
	datab => \inst|DI|R[2]~25_combout\,
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|op_1~2_combout\,
	combout => \inst|DI|R[2]~26_combout\);

-- Location: LCCOMB_X38_Y10_N4
\inst|DI|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[2]~27_combout\ = (\inst|DI|R[2]~26_combout\) # ((\inst|BUS[2]~59_combout\ & (\inst|DI|_~0_combout\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[2]~26_combout\,
	datab => \inst|BUS[2]~59_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[2]~27_combout\);

-- Location: FF_X38_Y10_N5
\inst|DI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(2));

-- Location: LCCOMB_X38_Y10_N10
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

-- Location: LCCOMB_X38_Y10_N30
\inst|DI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~20_combout\ = (\inst|DI|R[5]~7_combout\ & ((\inst|DI|R\(4)) # ((\inst|DI|R\(2) & \inst|DI|R[6]~4_combout\)))) # (!\inst|DI|R[5]~7_combout\ & (((\inst|DI|R\(2) & \inst|DI|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~7_combout\,
	datab => \inst|DI|R\(4),
	datac => \inst|DI|R\(2),
	datad => \inst|DI|R[6]~4_combout\,
	combout => \inst|DI|R[3]~20_combout\);

-- Location: LCCOMB_X40_Y10_N4
\inst|DI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~21_combout\ = (\inst|DI|op_2~6_combout\ & ((\inst|DI|_~4_combout\) # ((\inst|DI|R[7]~36_combout\ & \inst|DI|R\(3))))) # (!\inst|DI|op_2~6_combout\ & (\inst|DI|R[7]~36_combout\ & ((\inst|DI|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_2~6_combout\,
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|_~4_combout\,
	datad => \inst|DI|R\(3),
	combout => \inst|DI|R[3]~21_combout\);

-- Location: LCCOMB_X39_Y10_N6
\inst|DI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~22_combout\ = (\inst|DI|R[3]~20_combout\) # ((\inst|DI|R[3]~21_combout\) # ((\inst|DI|op_1~4_combout\ & \inst|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_1~4_combout\,
	datab => \inst|DI|R[3]~20_combout\,
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|R[3]~21_combout\,
	combout => \inst|DI|R[3]~22_combout\);

-- Location: LCCOMB_X38_Y10_N22
\inst|DI|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[3]~23_combout\ = (\inst|DI|R[3]~22_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~20_combout\ & \inst|BUS[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|_~20_combout\,
	datac => \inst|BUS[3]~50_combout\,
	datad => \inst|DI|R[3]~22_combout\,
	combout => \inst|DI|R[3]~23_combout\);

-- Location: FF_X38_Y10_N23
\inst|DI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(3));

-- Location: LCCOMB_X38_Y10_N12
\inst|DI|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|op_1~6_combout\ = (\inst|DI|R\(4) & (!\inst|DI|op_1~5\)) # (!\inst|DI|R\(4) & ((\inst|DI|op_1~5\) # (GND)))
-- \inst|DI|op_1~7\ = CARRY((!\inst|DI|op_1~5\) # (!\inst|DI|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DI|R\(4),
	datad => VCC,
	cin => \inst|DI|op_1~5\,
	combout => \inst|DI|op_1~6_combout\,
	cout => \inst|DI|op_1~7\);

-- Location: LCCOMB_X38_Y10_N24
\inst|DI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~16_combout\ = (\inst|DI|R[5]~7_combout\ & ((\inst|DI|R\(5)) # ((\inst|DI|R\(3) & \inst|DI|R[6]~4_combout\)))) # (!\inst|DI|R[5]~7_combout\ & (((\inst|DI|R\(3) & \inst|DI|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~7_combout\,
	datab => \inst|DI|R\(5),
	datac => \inst|DI|R\(3),
	datad => \inst|DI|R[6]~4_combout\,
	combout => \inst|DI|R[4]~16_combout\);

-- Location: LCCOMB_X40_Y10_N2
\inst|DI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~17_combout\ = (\inst|DI|_~4_combout\ & ((\inst|DI|op_2~8_combout\) # ((\inst|DI|R[7]~36_combout\ & \inst|DI|R\(4))))) # (!\inst|DI|_~4_combout\ & (\inst|DI|R[7]~36_combout\ & (\inst|DI|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~4_combout\,
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|R\(4),
	datad => \inst|DI|op_2~8_combout\,
	combout => \inst|DI|R[4]~17_combout\);

-- Location: LCCOMB_X39_Y10_N24
\inst|DI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~18_combout\ = (\inst|DI|R[4]~16_combout\) # ((\inst|DI|R[4]~17_combout\) # ((\inst|DI|op_1~6_combout\ & \inst|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_1~6_combout\,
	datab => \inst|DI|R[4]~16_combout\,
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|R[4]~17_combout\,
	combout => \inst|DI|R[4]~18_combout\);

-- Location: LCCOMB_X38_Y10_N28
\inst|DI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[4]~19_combout\ = (\inst|DI|R[4]~18_combout\) # ((\inst|BUS[4]~40_combout\ & (\inst|_~20_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~40_combout\,
	datab => \inst|_~20_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|DI|R[4]~18_combout\,
	combout => \inst|DI|R[4]~19_combout\);

-- Location: FF_X38_Y10_N29
\inst|DI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(4));

-- Location: LCCOMB_X40_Y10_N8
\inst|DI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~13_combout\ = (\inst|DI|op_2~10_combout\ & ((\inst|DI|_~4_combout\) # ((\inst|DI|R[7]~36_combout\ & \inst|DI|R\(5))))) # (!\inst|DI|op_2~10_combout\ & (\inst|DI|R[7]~36_combout\ & ((\inst|DI|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_2~10_combout\,
	datab => \inst|DI|R[7]~36_combout\,
	datac => \inst|DI|_~4_combout\,
	datad => \inst|DI|R\(5),
	combout => \inst|DI|R[5]~13_combout\);

-- Location: LCCOMB_X39_Y10_N0
\inst|DI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~12_combout\ = (\inst|DI|R[5]~7_combout\ & ((\inst|DI|R\(6)) # ((\inst|DI|R\(4) & \inst|DI|R[6]~4_combout\)))) # (!\inst|DI|R[5]~7_combout\ & (\inst|DI|R\(4) & ((\inst|DI|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~7_combout\,
	datab => \inst|DI|R\(4),
	datac => \inst|DI|R\(6),
	datad => \inst|DI|R[6]~4_combout\,
	combout => \inst|DI|R[5]~12_combout\);

-- Location: LCCOMB_X39_Y10_N30
\inst|DI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~14_combout\ = (\inst|DI|R[5]~13_combout\) # ((\inst|DI|R[5]~12_combout\) # ((\inst|DI|op_1~8_combout\ & \inst|DI|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|op_1~8_combout\,
	datab => \inst|DI|R[5]~13_combout\,
	datac => \inst|DI|_~2_combout\,
	datad => \inst|DI|R[5]~12_combout\,
	combout => \inst|DI|R[5]~14_combout\);

-- Location: LCCOMB_X39_Y10_N8
\inst|DI|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|R[5]~15_combout\ = (\inst|DI|R[5]~14_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[5]~31_combout\ & \inst|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R[5]~14_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[5]~31_combout\,
	datad => \inst|_~20_combout\,
	combout => \inst|DI|R[5]~15_combout\);

-- Location: FF_X39_Y10_N9
\inst|DI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|DI|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DI|R\(5));

-- Location: LCCOMB_X41_Y10_N28
\inst|BUS[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~24_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|DI|R\(5)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Cx|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(5),
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|_~3_combout\,
	datad => \inst|DI|R\(5),
	combout => \inst|BUS[5]~24_combout\);

-- Location: LCCOMB_X41_Y11_N6
\inst|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~22_combout\ = (!\inst|SelMUX[1]~0_combout\ & ((\SelDST~input_o\ & (\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \inst|SelMUX[1]~0_combout\,
	datac => \DST_UC[0]~input_o\,
	datad => \inst|DST|R\(0),
	combout => \inst|_~22_combout\);

-- Location: LCCOMB_X42_Y11_N30
\inst|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~23_combout\ = (!\inst|SelMUX[2]~2_combout\ & (!\inst|SelMUX[3]~1_combout\ & (\inst|_~22_combout\ & !\inst|SelMUX[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[2]~2_combout\,
	datab => \inst|SelMUX[3]~1_combout\,
	datac => \inst|_~22_combout\,
	datad => \inst|SelMUX[4]~3_combout\,
	combout => \inst|_~23_combout\);

-- Location: LCCOMB_X45_Y10_N28
\inst|Bx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|_~2_combout\);

-- Location: LCCOMB_X45_Y10_N26
\inst|Bx|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|R[7]~36_combout\);

-- Location: LCCOMB_X45_Y10_N8
\inst|Bx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|_~3_combout\);

-- Location: LCCOMB_X45_Y10_N14
\inst|Bx|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|R[6]~4_combout\);

-- Location: LCCOMB_X45_Y10_N10
\inst|Bx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|_~1_combout\);

-- Location: LCCOMB_X42_Y10_N12
\inst|Bx|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~8_combout\ = (\inst|Bx|R\(5) & (\inst|Bx|op_1~7\ $ (GND))) # (!\inst|Bx|R\(5) & (!\inst|Bx|op_1~7\ & VCC))
-- \inst|Bx|op_1~9\ = CARRY((\inst|Bx|R\(5) & !\inst|Bx|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(5),
	datad => VCC,
	cin => \inst|Bx|op_1~7\,
	combout => \inst|Bx|op_1~8_combout\,
	cout => \inst|Bx|op_1~9\);

-- Location: LCCOMB_X42_Y10_N14
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

-- Location: LCCOMB_X42_Y10_N22
\inst|Bx|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~7_combout\ = (\inst|_~23_combout\ & (\Cmd[0]~input_o\ & \Cmd[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Bx|R[5]~7_combout\);

-- Location: LCCOMB_X42_Y10_N24
\inst|Bx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~8_combout\ = (\inst|Bx|R[6]~4_combout\ & ((\inst|Bx|R\(5)) # ((\inst|Bx|R[5]~7_combout\ & \inst|Bx|R\(7))))) # (!\inst|Bx|R[6]~4_combout\ & (((\inst|Bx|R[5]~7_combout\ & \inst|Bx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[6]~4_combout\,
	datab => \inst|Bx|R\(5),
	datac => \inst|Bx|R[5]~7_combout\,
	datad => \inst|Bx|R\(7),
	combout => \inst|Bx|R[6]~8_combout\);

-- Location: LCCOMB_X44_Y10_N4
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

-- Location: LCCOMB_X44_Y10_N6
\inst|Bx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~6_combout\ = (\inst|Bx|R\(3) & (\inst|Bx|op_2~5\ & VCC)) # (!\inst|Bx|R\(3) & (!\inst|Bx|op_2~5\))
-- \inst|Bx|op_2~7\ = CARRY((!\inst|Bx|R\(3) & !\inst|Bx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(3),
	datad => VCC,
	cin => \inst|Bx|op_2~5\,
	combout => \inst|Bx|op_2~6_combout\,
	cout => \inst|Bx|op_2~7\);

-- Location: LCCOMB_X44_Y10_N8
\inst|Bx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~8_combout\ = (\inst|Bx|R\(4) & ((GND) # (!\inst|Bx|op_2~7\))) # (!\inst|Bx|R\(4) & (\inst|Bx|op_2~7\ $ (GND)))
-- \inst|Bx|op_2~9\ = CARRY((\inst|Bx|R\(4)) # (!\inst|Bx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Bx|R\(4),
	datad => VCC,
	cin => \inst|Bx|op_2~7\,
	combout => \inst|Bx|op_2~8_combout\,
	cout => \inst|Bx|op_2~9\);

-- Location: LCCOMB_X44_Y10_N10
\inst|Bx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~10_combout\ = (\inst|Bx|R\(5) & (\inst|Bx|op_2~9\ & VCC)) # (!\inst|Bx|R\(5) & (!\inst|Bx|op_2~9\))
-- \inst|Bx|op_2~11\ = CARRY((!\inst|Bx|R\(5) & !\inst|Bx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(5),
	datad => VCC,
	cin => \inst|Bx|op_2~9\,
	combout => \inst|Bx|op_2~10_combout\,
	cout => \inst|Bx|op_2~11\);

-- Location: LCCOMB_X44_Y10_N12
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

-- Location: LCCOMB_X44_Y10_N26
\inst|Bx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~9_combout\ = (\inst|Bx|op_2~12_combout\ & ((\inst|Bx|_~2_combout\) # ((\inst|Bx|R\(6) & \inst|Bx|R[7]~36_combout\)))) # (!\inst|Bx|op_2~12_combout\ & (((\inst|Bx|R\(6) & \inst|Bx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_2~12_combout\,
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[6]~9_combout\);

-- Location: LCCOMB_X45_Y10_N12
\inst|Bx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~23_combout\,
	combout => \inst|Bx|_~0_combout\);

-- Location: LCCOMB_X43_Y10_N24
\inst|Bx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~10_combout\ = (\inst|Bx|R[6]~8_combout\) # ((\inst|Bx|R[6]~9_combout\) # ((\inst|Bx|op_1~10_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_1~10_combout\,
	datab => \inst|Bx|R[6]~8_combout\,
	datac => \inst|Bx|R[6]~9_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[6]~10_combout\);

-- Location: LCCOMB_X42_Y10_N26
\inst|Bx|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[6]~11_combout\ = (\inst|Bx|R[6]~10_combout\) # ((\inst|BUS[6]~21_combout\ & (\inst|DI|_~0_combout\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~21_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~23_combout\,
	datad => \inst|Bx|R[6]~10_combout\,
	combout => \inst|Bx|R[6]~11_combout\);

-- Location: FF_X42_Y10_N27
\inst|Bx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(6));

-- Location: LCCOMB_X42_Y10_N16
\inst|Bx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~12_combout\ = \inst|Bx|op_1~11\ $ (!\inst|Bx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Bx|R\(7),
	cin => \inst|Bx|op_1~11\,
	combout => \inst|Bx|op_1~12_combout\);

-- Location: LCCOMB_X43_Y10_N28
\inst|Bx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~2_combout\ = (\inst|Bx|R\(0) & ((\inst|Bx|_~1_combout\) # ((\inst|Bx|op_1~12_combout\ & \inst|Bx|_~0_combout\)))) # (!\inst|Bx|R\(0) & (((\inst|Bx|op_1~12_combout\ & \inst|Bx|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|_~1_combout\,
	datac => \inst|Bx|op_1~12_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[7]~2_combout\);

-- Location: LCCOMB_X44_Y10_N14
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

-- Location: LCCOMB_X44_Y10_N28
\inst|Bx|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~3_combout\ = (\inst|Bx|R\(7) & ((\inst|Bx|R[7]~36_combout\) # ((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~14_combout\)))) # (!\inst|Bx|R\(7) & (\inst|Bx|_~2_combout\ & (\inst|Bx|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(7),
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|op_2~14_combout\,
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[7]~3_combout\);

-- Location: LCCOMB_X43_Y10_N18
\inst|Bx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~5_combout\ = (\inst|Bx|R[7]~2_combout\) # ((\inst|Bx|R[7]~3_combout\) # ((\inst|Bx|R[6]~4_combout\ & \inst|Bx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[6]~4_combout\,
	datab => \inst|Bx|R[7]~2_combout\,
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|R[7]~3_combout\,
	combout => \inst|Bx|R[7]~5_combout\);

-- Location: LCCOMB_X42_Y10_N20
\inst|Bx|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[7]~6_combout\ = (\inst|Bx|R[7]~5_combout\) # ((\inst|_~23_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[7]~12_combout\,
	datad => \inst|Bx|R[7]~5_combout\,
	combout => \inst|Bx|R[7]~6_combout\);

-- Location: FF_X42_Y10_N21
\inst|Bx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(7));

-- Location: LCCOMB_X44_Y10_N18
\inst|Bx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~33_combout\ = (\inst|Bx|R\(0) & ((\inst|Bx|R[7]~36_combout\) # ((\inst|Bx|_~3_combout\ & \inst|Bx|R\(7))))) # (!\inst|Bx|R\(0) & (((\inst|Bx|_~3_combout\ & \inst|Bx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|R[7]~36_combout\,
	datac => \inst|Bx|_~3_combout\,
	datad => \inst|Bx|R\(7),
	combout => \inst|Bx|R[0]~33_combout\);

-- Location: LCCOMB_X43_Y10_N8
\inst|Bx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~32_combout\ = (!\inst|Bx|R\(0) & ((\inst|Bx|_~0_combout\) # (\inst|Bx|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|_~0_combout\,
	datad => \inst|Bx|_~2_combout\,
	combout => \inst|Bx|R[0]~32_combout\);

-- Location: LCCOMB_X43_Y10_N26
\inst|Bx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~34_combout\ = (\inst|Bx|R[0]~33_combout\) # ((\inst|Bx|R[0]~32_combout\) # ((\inst|Bx|R[5]~7_combout\ & \inst|Bx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[0]~33_combout\,
	datab => \inst|Bx|R[5]~7_combout\,
	datac => \inst|Bx|R[0]~32_combout\,
	datad => \inst|Bx|R\(1),
	combout => \inst|Bx|R[0]~34_combout\);

-- Location: LCCOMB_X43_Y10_N10
\inst|Bx|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[0]~35_combout\ = (\inst|Bx|R[0]~34_combout\) # ((\inst|_~23_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[0]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Bx|R[0]~34_combout\,
	datad => \inst|BUS[0]~78_combout\,
	combout => \inst|Bx|R[0]~35_combout\);

-- Location: FF_X43_Y10_N11
\inst|Bx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(0));

-- Location: LCCOMB_X44_Y10_N0
\inst|Bx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_2~1_cout\ = CARRY(\inst|Bx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datad => VCC,
	cout => \inst|Bx|op_2~1_cout\);

-- Location: LCCOMB_X44_Y10_N2
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

-- Location: LCCOMB_X44_Y10_N20
\inst|Bx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~29_combout\ = (\inst|Bx|op_2~2_combout\ & ((\inst|Bx|_~2_combout\) # ((\inst|Bx|R\(1) & \inst|Bx|R[7]~36_combout\)))) # (!\inst|Bx|op_2~2_combout\ & (((\inst|Bx|R\(1) & \inst|Bx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_2~2_combout\,
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|R\(1),
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[1]~29_combout\);

-- Location: LCCOMB_X43_Y10_N20
\inst|Bx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~28_combout\ = (\inst|Bx|R\(0) & ((\inst|Bx|R[6]~4_combout\) # ((\inst|Bx|R[5]~7_combout\ & \inst|Bx|R\(2))))) # (!\inst|Bx|R\(0) & (\inst|Bx|R[5]~7_combout\ & (\inst|Bx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(0),
	datab => \inst|Bx|R[5]~7_combout\,
	datac => \inst|Bx|R\(2),
	datad => \inst|Bx|R[6]~4_combout\,
	combout => \inst|Bx|R[1]~28_combout\);

-- Location: LCCOMB_X42_Y10_N4
\inst|Bx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|op_1~0_combout\ = (\inst|Bx|R\(1) & (\inst|Bx|R\(0) $ (VCC))) # (!\inst|Bx|R\(1) & (\inst|Bx|R\(0) & VCC))
-- \inst|Bx|op_1~1\ = CARRY((\inst|Bx|R\(1) & \inst|Bx|R\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(1),
	datab => \inst|Bx|R\(0),
	datad => VCC,
	combout => \inst|Bx|op_1~0_combout\,
	cout => \inst|Bx|op_1~1\);

-- Location: LCCOMB_X43_Y10_N14
\inst|Bx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~30_combout\ = (\inst|Bx|R[1]~29_combout\) # ((\inst|Bx|R[1]~28_combout\) # ((\inst|Bx|op_1~0_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[1]~29_combout\,
	datab => \inst|Bx|R[1]~28_combout\,
	datac => \inst|Bx|op_1~0_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[1]~30_combout\);

-- Location: LCCOMB_X43_Y10_N16
\inst|Bx|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[1]~31_combout\ = (\inst|Bx|R[1]~30_combout\) # ((\inst|_~23_combout\ & (\inst|BUS[1]~69_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datab => \inst|BUS[1]~69_combout\,
	datac => \inst|Bx|R[1]~30_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|Bx|R[1]~31_combout\);

-- Location: FF_X43_Y10_N17
\inst|Bx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(1));

-- Location: LCCOMB_X44_Y10_N30
\inst|Bx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~25_combout\ = (\inst|Bx|_~2_combout\ & ((\inst|Bx|op_2~4_combout\) # ((\inst|Bx|R\(2) & \inst|Bx|R[7]~36_combout\)))) # (!\inst|Bx|_~2_combout\ & (\inst|Bx|R\(2) & ((\inst|Bx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|_~2_combout\,
	datab => \inst|Bx|R\(2),
	datac => \inst|Bx|op_2~4_combout\,
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[2]~25_combout\);

-- Location: LCCOMB_X43_Y10_N0
\inst|Bx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~24_combout\ = (\inst|Bx|R[6]~4_combout\ & ((\inst|Bx|R\(1)) # ((\inst|Bx|R\(3) & \inst|Bx|R[5]~7_combout\)))) # (!\inst|Bx|R[6]~4_combout\ & (((\inst|Bx|R\(3) & \inst|Bx|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[6]~4_combout\,
	datab => \inst|Bx|R\(1),
	datac => \inst|Bx|R\(3),
	datad => \inst|Bx|R[5]~7_combout\,
	combout => \inst|Bx|R[2]~24_combout\);

-- Location: LCCOMB_X42_Y10_N6
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

-- Location: LCCOMB_X43_Y10_N22
\inst|Bx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~26_combout\ = (\inst|Bx|R[2]~25_combout\) # ((\inst|Bx|R[2]~24_combout\) # ((\inst|Bx|op_1~2_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[2]~25_combout\,
	datab => \inst|Bx|R[2]~24_combout\,
	datac => \inst|Bx|op_1~2_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[2]~26_combout\);

-- Location: LCCOMB_X43_Y10_N30
\inst|Bx|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[2]~27_combout\ = (\inst|Bx|R[2]~26_combout\) # ((\inst|_~23_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[2]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Bx|R[2]~26_combout\,
	datad => \inst|BUS[2]~59_combout\,
	combout => \inst|Bx|R[2]~27_combout\);

-- Location: FF_X43_Y10_N31
\inst|Bx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(2));

-- Location: LCCOMB_X42_Y10_N2
\inst|Bx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~20_combout\ = (\inst|Bx|R\(2) & ((\inst|Bx|R[6]~4_combout\) # ((\inst|Bx|R\(4) & \inst|Bx|R[5]~7_combout\)))) # (!\inst|Bx|R\(2) & (\inst|Bx|R\(4) & (\inst|Bx|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(2),
	datab => \inst|Bx|R\(4),
	datac => \inst|Bx|R[5]~7_combout\,
	datad => \inst|Bx|R[6]~4_combout\,
	combout => \inst|Bx|R[3]~20_combout\);

-- Location: LCCOMB_X44_Y10_N16
\inst|Bx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~21_combout\ = (\inst|Bx|op_2~6_combout\ & ((\inst|Bx|_~2_combout\) # ((\inst|Bx|R[7]~36_combout\ & \inst|Bx|R\(3))))) # (!\inst|Bx|op_2~6_combout\ & (\inst|Bx|R[7]~36_combout\ & (\inst|Bx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_2~6_combout\,
	datab => \inst|Bx|R[7]~36_combout\,
	datac => \inst|Bx|R\(3),
	datad => \inst|Bx|_~2_combout\,
	combout => \inst|Bx|R[3]~21_combout\);

-- Location: LCCOMB_X42_Y10_N8
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

-- Location: LCCOMB_X43_Y10_N6
\inst|Bx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~22_combout\ = (\inst|Bx|R[3]~20_combout\) # ((\inst|Bx|R[3]~21_combout\) # ((\inst|Bx|op_1~4_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[3]~20_combout\,
	datab => \inst|Bx|R[3]~21_combout\,
	datac => \inst|Bx|op_1~4_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[3]~22_combout\);

-- Location: LCCOMB_X43_Y10_N12
\inst|Bx|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[3]~23_combout\ = (\inst|Bx|R[3]~22_combout\) # ((\inst|_~23_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~23_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[3]~50_combout\,
	datad => \inst|Bx|R[3]~22_combout\,
	combout => \inst|Bx|R[3]~23_combout\);

-- Location: FF_X43_Y10_N13
\inst|Bx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(3));

-- Location: LCCOMB_X42_Y10_N10
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

-- Location: LCCOMB_X44_Y10_N22
\inst|Bx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~17_combout\ = (\inst|Bx|R\(4) & ((\inst|Bx|R[7]~36_combout\) # ((\inst|Bx|_~2_combout\ & \inst|Bx|op_2~8_combout\)))) # (!\inst|Bx|R\(4) & (\inst|Bx|_~2_combout\ & (\inst|Bx|op_2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(4),
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|op_2~8_combout\,
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[4]~17_combout\);

-- Location: LCCOMB_X42_Y10_N0
\inst|Bx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~16_combout\ = (\inst|Bx|R[5]~7_combout\ & ((\inst|Bx|R\(5)) # ((\inst|Bx|R\(3) & \inst|Bx|R[6]~4_combout\)))) # (!\inst|Bx|R[5]~7_combout\ & (((\inst|Bx|R\(3) & \inst|Bx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~7_combout\,
	datab => \inst|Bx|R\(5),
	datac => \inst|Bx|R\(3),
	datad => \inst|Bx|R[6]~4_combout\,
	combout => \inst|Bx|R[4]~16_combout\);

-- Location: LCCOMB_X43_Y10_N4
\inst|Bx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~18_combout\ = (\inst|Bx|R[4]~17_combout\) # ((\inst|Bx|R[4]~16_combout\) # ((\inst|Bx|op_1~6_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_1~6_combout\,
	datab => \inst|Bx|R[4]~17_combout\,
	datac => \inst|Bx|R[4]~16_combout\,
	datad => \inst|Bx|_~0_combout\,
	combout => \inst|Bx|R[4]~18_combout\);

-- Location: LCCOMB_X42_Y10_N28
\inst|Bx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[4]~19_combout\ = (\inst|Bx|R[4]~18_combout\) # ((\inst|BUS[4]~40_combout\ & (\inst|DI|_~0_combout\ & \inst|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~40_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~23_combout\,
	datad => \inst|Bx|R[4]~18_combout\,
	combout => \inst|Bx|R[4]~19_combout\);

-- Location: FF_X42_Y10_N29
\inst|Bx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(4));

-- Location: LCCOMB_X44_Y10_N24
\inst|Bx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~13_combout\ = (\inst|Bx|op_2~10_combout\ & ((\inst|Bx|_~2_combout\) # ((\inst|Bx|R\(5) & \inst|Bx|R[7]~36_combout\)))) # (!\inst|Bx|op_2~10_combout\ & (((\inst|Bx|R\(5) & \inst|Bx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_2~10_combout\,
	datab => \inst|Bx|_~2_combout\,
	datac => \inst|Bx|R\(5),
	datad => \inst|Bx|R[7]~36_combout\,
	combout => \inst|Bx|R[5]~13_combout\);

-- Location: LCCOMB_X42_Y10_N30
\inst|Bx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~12_combout\ = (\inst|Bx|R[5]~7_combout\ & ((\inst|Bx|R\(6)) # ((\inst|Bx|R\(4) & \inst|Bx|R[6]~4_combout\)))) # (!\inst|Bx|R[5]~7_combout\ & (\inst|Bx|R\(4) & ((\inst|Bx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~7_combout\,
	datab => \inst|Bx|R\(4),
	datac => \inst|Bx|R\(6),
	datad => \inst|Bx|R[6]~4_combout\,
	combout => \inst|Bx|R[5]~12_combout\);

-- Location: LCCOMB_X43_Y10_N2
\inst|Bx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~14_combout\ = (\inst|Bx|R[5]~13_combout\) # ((\inst|Bx|R[5]~12_combout\) # ((\inst|Bx|op_1~8_combout\ & \inst|Bx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|op_1~8_combout\,
	datab => \inst|Bx|_~0_combout\,
	datac => \inst|Bx|R[5]~13_combout\,
	datad => \inst|Bx|R[5]~12_combout\,
	combout => \inst|Bx|R[5]~14_combout\);

-- Location: LCCOMB_X42_Y10_N18
\inst|Bx|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Bx|R[5]~15_combout\ = (\inst|Bx|R[5]~14_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~23_combout\ & \inst|BUS[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R[5]~14_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~23_combout\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|Bx|R[5]~15_combout\);

-- Location: FF_X42_Y10_N19
\inst|Bx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Bx|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Bx|R\(5));

-- Location: LCCOMB_X41_Y12_N26
\inst|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~4_combout\ = (!\inst|SelBus[1]~3_combout\ & (\inst|SelBus[0]~2_combout\ & !\inst|SelBus[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[1]~3_combout\,
	datac => \inst|SelBus[0]~2_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~4_combout\);

-- Location: LCCOMB_X40_Y11_N2
\inst|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~5_combout\ = (!\inst|SelBus[2]~1_combout\ & (\inst|_~4_combout\ & !\inst|SelBus[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~4_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|_~5_combout\);

-- Location: LCCOMB_X41_Y17_N20
\inst|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~2_combout\ = (!\inst|SelBus[0]~2_combout\ & (\SelRHL~input_o\ & (\inst|_~1_combout\ & !\inst|SelBus[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~2_combout\,
	datab => \SelRHL~input_o\,
	datac => \inst|_~1_combout\,
	datad => \inst|SelBus[1]~3_combout\,
	combout => \inst|_~2_combout\);

-- Location: LCCOMB_X34_Y26_N18
\inst|ALU|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_3~12_combout\ = ((\inst|alu_y|R\(6) $ (\inst|alu_x|R[6]~_Duplicate_1_q\ $ (\inst|ALU|op_3~11\)))) # (GND)
-- \inst|ALU|op_3~13\ = CARRY((\inst|alu_y|R\(6) & (\inst|alu_x|R[6]~_Duplicate_1_q\ & !\inst|ALU|op_3~11\)) # (!\inst|alu_y|R\(6) & ((\inst|alu_x|R[6]~_Duplicate_1_q\) # (!\inst|ALU|op_3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(6),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_3~11\,
	combout => \inst|ALU|op_3~12_combout\,
	cout => \inst|ALU|op_3~13\);

-- Location: LCCOMB_X34_Y26_N20
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

-- Location: LCCOMB_X34_Y26_N22
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

-- Location: LCCOMB_X34_Y26_N24
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

-- Location: LCCOMB_X35_Y25_N4
\inst|ALU|Result[16]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[16]~100_combout\ = (\SelOp[1]~input_o\ & (((!\SelOp[2]~input_o\)))) # (!\SelOp[1]~input_o\ & (((\SelOp[2]~input_o\) # (!\inst|ALU|op_3~18_combout\)) # (!\SelOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \inst|ALU|op_3~18_combout\,
	datad => \SelOp[2]~input_o\,
	combout => \inst|ALU|Result[16]~100_combout\);

-- Location: LCCOMB_X40_Y25_N12
\inst|ALU|Result[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(13) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\ & \inst|ALU|_~2_combout\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~100_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT13\,
	datad => \inst|ALU|_~2_combout\,
	combout => \inst|ALU|Result\(13));

-- Location: LCCOMB_X40_Y25_N18
\inst|alu_rh|R[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[5]~2_combout\ = (\inst|ALU|Result\(13) & ((\inst|DI|_~0_combout\) # ((\inst|alu_rl|R[7]~0_combout\ & \inst|alu_rh|R\(5))))) # (!\inst|ALU|Result\(13) & (\inst|alu_rl|R[7]~0_combout\ & (\inst|alu_rh|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(13),
	datab => \inst|alu_rl|R[7]~0_combout\,
	datac => \inst|alu_rh|R\(5),
	datad => \inst|DI|_~0_combout\,
	combout => \inst|alu_rh|R[5]~2_combout\);

-- Location: FF_X40_Y25_N19
\inst|alu_rh|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[5]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(5));

-- Location: LCCOMB_X41_Y12_N16
\inst|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~0_combout\ = (!\inst|SelBus[2]~1_combout\ & (!\inst|SelBus[0]~2_combout\ & (!\inst|SelBus[1]~3_combout\ & !\inst|SelBus[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[2]~1_combout\,
	datab => \inst|SelBus[0]~2_combout\,
	datac => \inst|SelBus[1]~3_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~0_combout\);

-- Location: LCCOMB_X38_Y11_N18
\inst|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~19_combout\ = (!\inst|SelMUX[3]~1_combout\ & (\inst|_~15_combout\ & (\inst|SelMUX[4]~3_combout\ & !\inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[3]~1_combout\,
	datab => \inst|_~15_combout\,
	datac => \inst|SelMUX[4]~3_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|_~19_combout\);

-- Location: LCCOMB_X39_Y15_N24
\inst|SP|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|_~0_combout\);

-- Location: LCCOMB_X39_Y15_N20
\inst|SP|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|R[5]~7_combout\);

-- Location: LCCOMB_X39_Y15_N6
\inst|SP|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|R[6]~4_combout\);

-- Location: LCCOMB_X39_Y15_N12
\inst|SP|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|_~2_combout\);

-- Location: LCCOMB_X41_Y15_N12
\inst|SP|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~32_combout\ = (!\inst|SP|R\(0) & ((\inst|SP|_~2_combout\) # (\inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datac => \inst|SP|_~0_combout\,
	datad => \inst|SP|R\(0),
	combout => \inst|SP|R[0]~32_combout\);

-- Location: LCCOMB_X39_Y15_N28
\inst|SP|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|R[7]~36_combout\);

-- Location: LCCOMB_X40_Y15_N18
\inst|SP|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~10_combout\ = (\inst|SP|R\(5) & (\inst|SP|op_2~9\ & VCC)) # (!\inst|SP|R\(5) & (!\inst|SP|op_2~9\))
-- \inst|SP|op_2~11\ = CARRY((!\inst|SP|R\(5) & !\inst|SP|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(5),
	datad => VCC,
	cin => \inst|SP|op_2~9\,
	combout => \inst|SP|op_2~10_combout\,
	cout => \inst|SP|op_2~11\);

-- Location: LCCOMB_X40_Y15_N20
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

-- Location: LCCOMB_X40_Y15_N2
\inst|SP|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~9_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~12_combout\) # ((\inst|SP|R\(6) & \inst|SP|R[7]~36_combout\)))) # (!\inst|SP|_~2_combout\ & (((\inst|SP|R\(6) & \inst|SP|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|op_2~12_combout\,
	datac => \inst|SP|R\(6),
	datad => \inst|SP|R[7]~36_combout\,
	combout => \inst|SP|R[6]~9_combout\);

-- Location: LCCOMB_X42_Y15_N6
\inst|SP|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~6_combout\ = (\inst|SP|R\(4) & (!\inst|SP|op_1~5\)) # (!\inst|SP|R\(4) & ((\inst|SP|op_1~5\) # (GND)))
-- \inst|SP|op_1~7\ = CARRY((!\inst|SP|op_1~5\) # (!\inst|SP|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(4),
	datad => VCC,
	cin => \inst|SP|op_1~5\,
	combout => \inst|SP|op_1~6_combout\,
	cout => \inst|SP|op_1~7\);

-- Location: LCCOMB_X42_Y15_N8
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

-- Location: LCCOMB_X42_Y15_N10
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

-- Location: LCCOMB_X42_Y15_N24
\inst|SP|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~8_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(7)) # ((\inst|SP|R\(5) & \inst|SP|R[6]~4_combout\)))) # (!\inst|SP|R[5]~7_combout\ & (\inst|SP|R\(5) & (\inst|SP|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R\(5),
	datac => \inst|SP|R[6]~4_combout\,
	datad => \inst|SP|R\(7),
	combout => \inst|SP|R[6]~8_combout\);

-- Location: LCCOMB_X41_Y15_N28
\inst|SP|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~10_combout\ = (\inst|SP|R[6]~9_combout\) # ((\inst|SP|R[6]~8_combout\) # ((\inst|SP|op_1~10_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[6]~9_combout\,
	datab => \inst|SP|op_1~10_combout\,
	datac => \inst|SP|_~0_combout\,
	datad => \inst|SP|R[6]~8_combout\,
	combout => \inst|SP|R[6]~10_combout\);

-- Location: LCCOMB_X41_Y15_N26
\inst|SP|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[6]~11_combout\ = (\inst|SP|R[6]~10_combout\) # ((\inst|_~19_combout\ & (\inst|BUS[6]~21_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|BUS[6]~21_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|SP|R[6]~10_combout\,
	combout => \inst|SP|R[6]~11_combout\);

-- Location: FF_X41_Y15_N27
\inst|SP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(6));

-- Location: LCCOMB_X40_Y15_N22
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

-- Location: LCCOMB_X40_Y15_N0
\inst|SP|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~3_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~14_combout\) # ((\inst|SP|R[7]~36_combout\ & \inst|SP|R\(7))))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R[7]~36_combout\ & ((\inst|SP|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R[7]~36_combout\,
	datac => \inst|SP|op_2~14_combout\,
	datad => \inst|SP|R\(7),
	combout => \inst|SP|R[7]~3_combout\);

-- Location: LCCOMB_X39_Y15_N10
\inst|SP|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|_~1_combout\);

-- Location: LCCOMB_X42_Y15_N12
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

-- Location: LCCOMB_X43_Y15_N24
\inst|SP|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~2_combout\ = (\inst|SP|_~0_combout\ & ((\inst|SP|op_1~12_combout\) # ((\inst|SP|R\(0) & \inst|SP|_~1_combout\)))) # (!\inst|SP|_~0_combout\ & (\inst|SP|R\(0) & (\inst|SP|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~0_combout\,
	datab => \inst|SP|R\(0),
	datac => \inst|SP|_~1_combout\,
	datad => \inst|SP|op_1~12_combout\,
	combout => \inst|SP|R[7]~2_combout\);

-- Location: LCCOMB_X42_Y15_N18
\inst|SP|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~5_combout\ = (\inst|SP|R[7]~3_combout\) # ((\inst|SP|R[7]~2_combout\) # ((\inst|SP|R\(6) & \inst|SP|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[7]~3_combout\,
	datab => \inst|SP|R[7]~2_combout\,
	datac => \inst|SP|R\(6),
	datad => \inst|SP|R[6]~4_combout\,
	combout => \inst|SP|R[7]~5_combout\);

-- Location: LCCOMB_X41_Y15_N8
\inst|SP|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[7]~6_combout\ = (\inst|SP|R[7]~5_combout\) # ((\inst|_~19_combout\ & (\inst|BUS[7]~12_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|BUS[7]~12_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|SP|R[7]~5_combout\,
	combout => \inst|SP|R[7]~6_combout\);

-- Location: FF_X41_Y15_N9
\inst|SP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(7));

-- Location: LCCOMB_X39_Y15_N26
\inst|SP|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|_~3_combout\);

-- Location: LCCOMB_X40_Y15_N30
\inst|SP|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~33_combout\ = (\inst|SP|R\(7) & ((\inst|SP|_~3_combout\) # ((\inst|SP|R\(0) & \inst|SP|R[7]~36_combout\)))) # (!\inst|SP|R\(7) & (\inst|SP|R\(0) & ((\inst|SP|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(7),
	datab => \inst|SP|R\(0),
	datac => \inst|SP|_~3_combout\,
	datad => \inst|SP|R[7]~36_combout\,
	combout => \inst|SP|R[0]~33_combout\);

-- Location: LCCOMB_X41_Y15_N2
\inst|SP|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~34_combout\ = (\inst|SP|R[0]~32_combout\) # ((\inst|SP|R[0]~33_combout\) # ((\inst|SP|R[5]~7_combout\ & \inst|SP|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[0]~32_combout\,
	datab => \inst|SP|R[0]~33_combout\,
	datac => \inst|SP|R[5]~7_combout\,
	datad => \inst|SP|R\(1),
	combout => \inst|SP|R[0]~34_combout\);

-- Location: LCCOMB_X41_Y15_N22
\inst|SP|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[0]~35_combout\ = (\inst|SP|R[0]~34_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[0]~78_combout\ & \inst|_~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|SP|R[0]~34_combout\,
	datac => \inst|BUS[0]~78_combout\,
	datad => \inst|_~19_combout\,
	combout => \inst|SP|R[0]~35_combout\);

-- Location: FF_X41_Y15_N23
\inst|SP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(0));

-- Location: LCCOMB_X42_Y15_N30
\inst|SP|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~28_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(2)) # ((\inst|SP|R[6]~4_combout\ & \inst|SP|R\(0))))) # (!\inst|SP|R[5]~7_combout\ & (((\inst|SP|R[6]~4_combout\ & \inst|SP|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R\(2),
	datac => \inst|SP|R[6]~4_combout\,
	datad => \inst|SP|R\(0),
	combout => \inst|SP|R[1]~28_combout\);

-- Location: LCCOMB_X42_Y15_N0
\inst|SP|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~0_combout\ = (\inst|SP|R\(0) & (\inst|SP|R\(1) $ (VCC))) # (!\inst|SP|R\(0) & (\inst|SP|R\(1) & VCC))
-- \inst|SP|op_1~1\ = CARRY((\inst|SP|R\(0) & \inst|SP|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(0),
	datab => \inst|SP|R\(1),
	datad => VCC,
	combout => \inst|SP|op_1~0_combout\,
	cout => \inst|SP|op_1~1\);

-- Location: LCCOMB_X40_Y15_N8
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

-- Location: LCCOMB_X40_Y15_N10
\inst|SP|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_2~2_combout\ = (\inst|SP|R\(1) & (\inst|SP|op_2~1_cout\ & VCC)) # (!\inst|SP|R\(1) & (!\inst|SP|op_2~1_cout\))
-- \inst|SP|op_2~3\ = CARRY((!\inst|SP|R\(1) & !\inst|SP|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(1),
	datad => VCC,
	cin => \inst|SP|op_2~1_cout\,
	combout => \inst|SP|op_2~2_combout\,
	cout => \inst|SP|op_2~3\);

-- Location: LCCOMB_X40_Y15_N24
\inst|SP|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~29_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~2_combout\) # ((\inst|SP|R[7]~36_combout\ & \inst|SP|R\(1))))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R[7]~36_combout\ & (\inst|SP|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R[7]~36_combout\,
	datac => \inst|SP|R\(1),
	datad => \inst|SP|op_2~2_combout\,
	combout => \inst|SP|R[1]~29_combout\);

-- Location: LCCOMB_X41_Y15_N18
\inst|SP|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~30_combout\ = (\inst|SP|R[1]~28_combout\) # ((\inst|SP|R[1]~29_combout\) # ((\inst|SP|op_1~0_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[1]~28_combout\,
	datab => \inst|SP|op_1~0_combout\,
	datac => \inst|SP|_~0_combout\,
	datad => \inst|SP|R[1]~29_combout\,
	combout => \inst|SP|R[1]~30_combout\);

-- Location: LCCOMB_X41_Y15_N20
\inst|SP|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[1]~31_combout\ = (\inst|SP|R[1]~30_combout\) # ((\inst|_~19_combout\ & (\inst|BUS[1]~69_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|BUS[1]~69_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|SP|R[1]~30_combout\,
	combout => \inst|SP|R[1]~31_combout\);

-- Location: FF_X41_Y15_N21
\inst|SP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(1));

-- Location: LCCOMB_X42_Y15_N28
\inst|SP|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~24_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(3)) # ((\inst|SP|R[6]~4_combout\ & \inst|SP|R\(1))))) # (!\inst|SP|R[5]~7_combout\ & (\inst|SP|R[6]~4_combout\ & ((\inst|SP|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R[6]~4_combout\,
	datac => \inst|SP|R\(3),
	datad => \inst|SP|R\(1),
	combout => \inst|SP|R[2]~24_combout\);

-- Location: LCCOMB_X40_Y15_N12
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

-- Location: LCCOMB_X40_Y15_N26
\inst|SP|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~25_combout\ = (\inst|SP|op_2~4_combout\ & ((\inst|SP|_~2_combout\) # ((\inst|SP|R[7]~36_combout\ & \inst|SP|R\(2))))) # (!\inst|SP|op_2~4_combout\ & (\inst|SP|R[7]~36_combout\ & ((\inst|SP|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|op_2~4_combout\,
	datab => \inst|SP|R[7]~36_combout\,
	datac => \inst|SP|_~2_combout\,
	datad => \inst|SP|R\(2),
	combout => \inst|SP|R[2]~25_combout\);

-- Location: LCCOMB_X42_Y15_N2
\inst|SP|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|op_1~2_combout\ = (\inst|SP|R\(2) & (!\inst|SP|op_1~1\)) # (!\inst|SP|R\(2) & ((\inst|SP|op_1~1\) # (GND)))
-- \inst|SP|op_1~3\ = CARRY((!\inst|SP|op_1~1\) # (!\inst|SP|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SP|R\(2),
	datad => VCC,
	cin => \inst|SP|op_1~1\,
	combout => \inst|SP|op_1~2_combout\,
	cout => \inst|SP|op_1~3\);

-- Location: LCCOMB_X41_Y15_N0
\inst|SP|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~26_combout\ = (\inst|SP|R[2]~24_combout\) # ((\inst|SP|R[2]~25_combout\) # ((\inst|SP|_~0_combout\ & \inst|SP|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~0_combout\,
	datab => \inst|SP|R[2]~24_combout\,
	datac => \inst|SP|R[2]~25_combout\,
	datad => \inst|SP|op_1~2_combout\,
	combout => \inst|SP|R[2]~26_combout\);

-- Location: LCCOMB_X41_Y15_N6
\inst|SP|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[2]~27_combout\ = (\inst|SP|R[2]~26_combout\) # ((\inst|_~19_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[2]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|SP|R[2]~26_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[2]~59_combout\,
	combout => \inst|SP|R[2]~27_combout\);

-- Location: FF_X41_Y15_N7
\inst|SP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(2));

-- Location: LCCOMB_X42_Y15_N4
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

-- Location: LCCOMB_X40_Y15_N14
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

-- Location: LCCOMB_X40_Y15_N4
\inst|SP|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~21_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~6_combout\) # ((\inst|SP|R[7]~36_combout\ & \inst|SP|R\(3))))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R[7]~36_combout\ & ((\inst|SP|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R[7]~36_combout\,
	datac => \inst|SP|op_2~6_combout\,
	datad => \inst|SP|R\(3),
	combout => \inst|SP|R[3]~21_combout\);

-- Location: LCCOMB_X43_Y15_N16
\inst|SP|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~20_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(4)) # ((\inst|SP|R\(2) & \inst|SP|R[6]~4_combout\)))) # (!\inst|SP|R[5]~7_combout\ & (\inst|SP|R\(2) & (\inst|SP|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R\(2),
	datac => \inst|SP|R[6]~4_combout\,
	datad => \inst|SP|R\(4),
	combout => \inst|SP|R[3]~20_combout\);

-- Location: LCCOMB_X41_Y15_N14
\inst|SP|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~22_combout\ = (\inst|SP|R[3]~21_combout\) # ((\inst|SP|R[3]~20_combout\) # ((\inst|SP|op_1~4_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|op_1~4_combout\,
	datab => \inst|SP|R[3]~21_combout\,
	datac => \inst|SP|_~0_combout\,
	datad => \inst|SP|R[3]~20_combout\,
	combout => \inst|SP|R[3]~22_combout\);

-- Location: LCCOMB_X41_Y15_N24
\inst|SP|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[3]~23_combout\ = (\inst|SP|R[3]~22_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~19_combout\ & \inst|BUS[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|SP|R[3]~22_combout\,
	datac => \inst|_~19_combout\,
	datad => \inst|BUS[3]~50_combout\,
	combout => \inst|SP|R[3]~23_combout\);

-- Location: FF_X41_Y15_N25
\inst|SP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(3));

-- Location: LCCOMB_X40_Y15_N16
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

-- Location: LCCOMB_X40_Y15_N6
\inst|SP|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~17_combout\ = (\inst|SP|_~2_combout\ & ((\inst|SP|op_2~8_combout\) # ((\inst|SP|R[7]~36_combout\ & \inst|SP|R\(4))))) # (!\inst|SP|_~2_combout\ & (\inst|SP|R[7]~36_combout\ & (\inst|SP|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~2_combout\,
	datab => \inst|SP|R[7]~36_combout\,
	datac => \inst|SP|R\(4),
	datad => \inst|SP|op_2~8_combout\,
	combout => \inst|SP|R[4]~17_combout\);

-- Location: LCCOMB_X42_Y15_N22
\inst|SP|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~16_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(5)) # ((\inst|SP|R\(3) & \inst|SP|R[6]~4_combout\)))) # (!\inst|SP|R[5]~7_combout\ & (((\inst|SP|R\(3) & \inst|SP|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R\(5),
	datac => \inst|SP|R\(3),
	datad => \inst|SP|R[6]~4_combout\,
	combout => \inst|SP|R[4]~16_combout\);

-- Location: LCCOMB_X41_Y15_N16
\inst|SP|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~18_combout\ = (\inst|SP|R[4]~17_combout\) # ((\inst|SP|R[4]~16_combout\) # ((\inst|SP|op_1~6_combout\ & \inst|SP|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|op_1~6_combout\,
	datab => \inst|SP|R[4]~17_combout\,
	datac => \inst|SP|_~0_combout\,
	datad => \inst|SP|R[4]~16_combout\,
	combout => \inst|SP|R[4]~18_combout\);

-- Location: LCCOMB_X41_Y15_N30
\inst|SP|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[4]~19_combout\ = (\inst|SP|R[4]~18_combout\) # ((\inst|_~19_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|SP|R[4]~18_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[4]~40_combout\,
	combout => \inst|SP|R[4]~19_combout\);

-- Location: FF_X41_Y15_N31
\inst|SP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(4));

-- Location: LCCOMB_X40_Y15_N28
\inst|SP|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~13_combout\ = (\inst|SP|R\(5) & ((\inst|SP|R[7]~36_combout\) # ((\inst|SP|op_2~10_combout\ & \inst|SP|_~2_combout\)))) # (!\inst|SP|R\(5) & (\inst|SP|op_2~10_combout\ & (\inst|SP|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(5),
	datab => \inst|SP|op_2~10_combout\,
	datac => \inst|SP|_~2_combout\,
	datad => \inst|SP|R[7]~36_combout\,
	combout => \inst|SP|R[5]~13_combout\);

-- Location: LCCOMB_X43_Y15_N22
\inst|SP|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~12_combout\ = (\inst|SP|R[5]~7_combout\ & ((\inst|SP|R\(6)) # ((\inst|SP|R[6]~4_combout\ & \inst|SP|R\(4))))) # (!\inst|SP|R[5]~7_combout\ & (\inst|SP|R[6]~4_combout\ & ((\inst|SP|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R[5]~7_combout\,
	datab => \inst|SP|R[6]~4_combout\,
	datac => \inst|SP|R\(6),
	datad => \inst|SP|R\(4),
	combout => \inst|SP|R[5]~12_combout\);

-- Location: LCCOMB_X41_Y15_N10
\inst|SP|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~14_combout\ = (\inst|SP|R[5]~13_combout\) # ((\inst|SP|R[5]~12_combout\) # ((\inst|SP|_~0_combout\ & \inst|SP|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|_~0_combout\,
	datab => \inst|SP|R[5]~13_combout\,
	datac => \inst|SP|op_1~8_combout\,
	datad => \inst|SP|R[5]~12_combout\,
	combout => \inst|SP|R[5]~14_combout\);

-- Location: LCCOMB_X41_Y15_N4
\inst|SP|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SP|R[5]~15_combout\ = (\inst|SP|R[5]~14_combout\) # ((\inst|_~19_combout\ & (\inst|BUS[5]~31_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~19_combout\,
	datab => \inst|BUS[5]~31_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|SP|R[5]~14_combout\,
	combout => \inst|SP|R[5]~15_combout\);

-- Location: FF_X41_Y15_N5
\inst|SP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SP|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SP|R\(5));

-- Location: LCCOMB_X42_Y11_N8
\inst|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~18_combout\ = (!\inst|SelMUX[2]~2_combout\ & (!\inst|SelMUX[3]~1_combout\ & (\inst|_~15_combout\ & !\inst|SelMUX[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[2]~2_combout\,
	datab => \inst|SelMUX[3]~1_combout\,
	datac => \inst|_~15_combout\,
	datad => \inst|SelMUX[4]~3_combout\,
	combout => \inst|_~18_combout\);

-- Location: LCCOMB_X43_Y13_N10
\inst|Ax|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|R[6]~4_combout\);

-- Location: LCCOMB_X43_Y13_N8
\inst|Ax|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|R[5]~7_combout\);

-- Location: LCCOMB_X43_Y13_N12
\inst|Ax|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|_~3_combout\);

-- Location: LCCOMB_X43_Y13_N18
\inst|Ax|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|R[7]~36_combout\);

-- Location: LCCOMB_X40_Y13_N24
\inst|Ax|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~8_combout\ = (\inst|Ax|R[6]~4_combout\ & ((\inst|Ax|R\(5)) # ((\inst|Ax|R\(7) & \inst|Ax|R[5]~7_combout\)))) # (!\inst|Ax|R[6]~4_combout\ & (\inst|Ax|R\(7) & (\inst|Ax|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~4_combout\,
	datab => \inst|Ax|R\(7),
	datac => \inst|Ax|R[5]~7_combout\,
	datad => \inst|Ax|R\(5),
	combout => \inst|Ax|R[6]~8_combout\);

-- Location: LCCOMB_X41_Y13_N24
\inst|Ax|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~8_combout\ = (\inst|Ax|R\(5) & (\inst|Ax|op_1~7\ $ (GND))) # (!\inst|Ax|R\(5) & (!\inst|Ax|op_1~7\ & VCC))
-- \inst|Ax|op_1~9\ = CARRY((\inst|Ax|R\(5) & !\inst|Ax|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(5),
	datad => VCC,
	cin => \inst|Ax|op_1~7\,
	combout => \inst|Ax|op_1~8_combout\,
	cout => \inst|Ax|op_1~9\);

-- Location: LCCOMB_X41_Y13_N26
\inst|Ax|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~10_combout\ = (\inst|Ax|R\(6) & (!\inst|Ax|op_1~9\)) # (!\inst|Ax|R\(6) & ((\inst|Ax|op_1~9\) # (GND)))
-- \inst|Ax|op_1~11\ = CARRY((!\inst|Ax|op_1~9\) # (!\inst|Ax|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(6),
	datad => VCC,
	cin => \inst|Ax|op_1~9\,
	combout => \inst|Ax|op_1~10_combout\,
	cout => \inst|Ax|op_1~11\);

-- Location: LCCOMB_X41_Y13_N0
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

-- Location: LCCOMB_X41_Y13_N2
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

-- Location: LCCOMB_X41_Y13_N4
\inst|Ax|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~4_combout\ = (\inst|Ax|R\(2) & ((GND) # (!\inst|Ax|op_2~3\))) # (!\inst|Ax|R\(2) & (\inst|Ax|op_2~3\ $ (GND)))
-- \inst|Ax|op_2~5\ = CARRY((\inst|Ax|R\(2)) # (!\inst|Ax|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(2),
	datad => VCC,
	cin => \inst|Ax|op_2~3\,
	combout => \inst|Ax|op_2~4_combout\,
	cout => \inst|Ax|op_2~5\);

-- Location: LCCOMB_X41_Y13_N6
\inst|Ax|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~6_combout\ = (\inst|Ax|R\(3) & (\inst|Ax|op_2~5\ & VCC)) # (!\inst|Ax|R\(3) & (!\inst|Ax|op_2~5\))
-- \inst|Ax|op_2~7\ = CARRY((!\inst|Ax|R\(3) & !\inst|Ax|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(3),
	datad => VCC,
	cin => \inst|Ax|op_2~5\,
	combout => \inst|Ax|op_2~6_combout\,
	cout => \inst|Ax|op_2~7\);

-- Location: LCCOMB_X41_Y13_N8
\inst|Ax|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~8_combout\ = (\inst|Ax|R\(4) & ((GND) # (!\inst|Ax|op_2~7\))) # (!\inst|Ax|R\(4) & (\inst|Ax|op_2~7\ $ (GND)))
-- \inst|Ax|op_2~9\ = CARRY((\inst|Ax|R\(4)) # (!\inst|Ax|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(4),
	datad => VCC,
	cin => \inst|Ax|op_2~7\,
	combout => \inst|Ax|op_2~8_combout\,
	cout => \inst|Ax|op_2~9\);

-- Location: LCCOMB_X41_Y13_N10
\inst|Ax|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~10_combout\ = (\inst|Ax|R\(5) & (\inst|Ax|op_2~9\ & VCC)) # (!\inst|Ax|R\(5) & (!\inst|Ax|op_2~9\))
-- \inst|Ax|op_2~11\ = CARRY((!\inst|Ax|R\(5) & !\inst|Ax|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(5),
	datad => VCC,
	cin => \inst|Ax|op_2~9\,
	combout => \inst|Ax|op_2~10_combout\,
	cout => \inst|Ax|op_2~11\);

-- Location: LCCOMB_X41_Y13_N12
\inst|Ax|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~12_combout\ = (\inst|Ax|R\(6) & ((GND) # (!\inst|Ax|op_2~11\))) # (!\inst|Ax|R\(6) & (\inst|Ax|op_2~11\ $ (GND)))
-- \inst|Ax|op_2~13\ = CARRY((\inst|Ax|R\(6)) # (!\inst|Ax|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|R\(6),
	datad => VCC,
	cin => \inst|Ax|op_2~11\,
	combout => \inst|Ax|op_2~12_combout\,
	cout => \inst|Ax|op_2~13\);

-- Location: LCCOMB_X43_Y13_N28
\inst|Ax|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|_~2_combout\);

-- Location: LCCOMB_X40_Y13_N22
\inst|Ax|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~9_combout\ = (\inst|Ax|R\(6) & ((\inst|Ax|R[7]~36_combout\) # ((\inst|Ax|op_2~12_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R\(6) & (\inst|Ax|op_2~12_combout\ & ((\inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|Ax|op_2~12_combout\,
	datac => \inst|Ax|R[7]~36_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[6]~9_combout\);

-- Location: LCCOMB_X43_Y13_N26
\inst|Ax|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|_~0_combout\);

-- Location: LCCOMB_X40_Y13_N8
\inst|Ax|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~10_combout\ = (\inst|Ax|R[6]~8_combout\) # ((\inst|Ax|R[6]~9_combout\) # ((\inst|Ax|op_1~10_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~8_combout\,
	datab => \inst|Ax|op_1~10_combout\,
	datac => \inst|Ax|R[6]~9_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[6]~10_combout\);

-- Location: LCCOMB_X40_Y13_N6
\inst|Ax|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[6]~11_combout\ = (\inst|Ax|R[6]~10_combout\) # ((\inst|_~18_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|Ax|R[6]~10_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[6]~21_combout\,
	combout => \inst|Ax|R[6]~11_combout\);

-- Location: FF_X40_Y13_N7
\inst|Ax|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(6));

-- Location: LCCOMB_X41_Y13_N14
\inst|Ax|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_2~14_combout\ = \inst|Ax|R\(7) $ (!\inst|Ax|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(7),
	cin => \inst|Ax|op_2~13\,
	combout => \inst|Ax|op_2~14_combout\);

-- Location: LCCOMB_X40_Y13_N0
\inst|Ax|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~3_combout\ = (\inst|Ax|R[7]~36_combout\ & ((\inst|Ax|R\(7)) # ((\inst|Ax|op_2~14_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R[7]~36_combout\ & (((\inst|Ax|op_2~14_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[7]~36_combout\,
	datab => \inst|Ax|R\(7),
	datac => \inst|Ax|op_2~14_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[7]~3_combout\);

-- Location: LCCOMB_X41_Y13_N28
\inst|Ax|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|op_1~12_combout\ = \inst|Ax|R\(7) $ (!\inst|Ax|op_1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(7),
	cin => \inst|Ax|op_1~11\,
	combout => \inst|Ax|op_1~12_combout\);

-- Location: LCCOMB_X40_Y12_N0
\inst|Ax|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~18_combout\,
	combout => \inst|Ax|_~1_combout\);

-- Location: LCCOMB_X41_Y13_N30
\inst|Ax|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~2_combout\ = (\inst|Ax|R\(0) & ((\inst|Ax|_~1_combout\) # ((\inst|Ax|op_1~12_combout\ & \inst|Ax|_~0_combout\)))) # (!\inst|Ax|R\(0) & (\inst|Ax|op_1~12_combout\ & (\inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(0),
	datab => \inst|Ax|op_1~12_combout\,
	datac => \inst|Ax|_~0_combout\,
	datad => \inst|Ax|_~1_combout\,
	combout => \inst|Ax|R[7]~2_combout\);

-- Location: LCCOMB_X40_Y13_N18
\inst|Ax|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~5_combout\ = (\inst|Ax|R[7]~3_combout\) # ((\inst|Ax|R[7]~2_combout\) # ((\inst|Ax|R\(6) & \inst|Ax|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|Ax|R[7]~3_combout\,
	datac => \inst|Ax|R[7]~2_combout\,
	datad => \inst|Ax|R[6]~4_combout\,
	combout => \inst|Ax|R[7]~5_combout\);

-- Location: LCCOMB_X40_Y13_N16
\inst|Ax|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[7]~6_combout\ = (\inst|Ax|R[7]~5_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[7]~12_combout\ & \inst|_~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|BUS[7]~12_combout\,
	datac => \inst|_~18_combout\,
	datad => \inst|Ax|R[7]~5_combout\,
	combout => \inst|Ax|R[7]~6_combout\);

-- Location: FF_X40_Y13_N17
\inst|Ax|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(7));

-- Location: LCCOMB_X43_Y13_N30
\inst|Ax|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~33_combout\ = (\inst|Ax|_~3_combout\ & ((\inst|Ax|R\(7)) # ((\inst|Ax|R[7]~36_combout\ & \inst|Ax|R\(0))))) # (!\inst|Ax|_~3_combout\ & (\inst|Ax|R[7]~36_combout\ & ((\inst|Ax|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|_~3_combout\,
	datab => \inst|Ax|R[7]~36_combout\,
	datac => \inst|Ax|R\(7),
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[0]~33_combout\);

-- Location: LCCOMB_X43_Y13_N2
\inst|Ax|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~32_combout\ = (!\inst|Ax|R\(0) & ((\inst|Ax|_~2_combout\) # (\inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ax|_~2_combout\,
	datac => \inst|Ax|_~0_combout\,
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[0]~32_combout\);

-- Location: LCCOMB_X43_Y13_N16
\inst|Ax|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~34_combout\ = (\inst|Ax|R[0]~33_combout\) # ((\inst|Ax|R[0]~32_combout\) # ((\inst|Ax|R\(1) & \inst|Ax|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[0]~33_combout\,
	datab => \inst|Ax|R[0]~32_combout\,
	datac => \inst|Ax|R\(1),
	datad => \inst|Ax|R[5]~7_combout\,
	combout => \inst|Ax|R[0]~34_combout\);

-- Location: LCCOMB_X43_Y13_N24
\inst|Ax|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[0]~35_combout\ = (\inst|Ax|R[0]~34_combout\) # ((\inst|_~18_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[0]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[0]~78_combout\,
	datad => \inst|Ax|R[0]~34_combout\,
	combout => \inst|Ax|R[0]~35_combout\);

-- Location: FF_X43_Y13_N25
\inst|Ax|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(0));

-- Location: LCCOMB_X41_Y13_N16
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

-- Location: LCCOMB_X42_Y13_N16
\inst|Ax|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~29_combout\ = (\inst|Ax|op_2~2_combout\ & ((\inst|Ax|_~2_combout\) # ((\inst|Ax|R[7]~36_combout\ & \inst|Ax|R\(1))))) # (!\inst|Ax|op_2~2_combout\ & (((\inst|Ax|R[7]~36_combout\ & \inst|Ax|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_2~2_combout\,
	datab => \inst|Ax|_~2_combout\,
	datac => \inst|Ax|R[7]~36_combout\,
	datad => \inst|Ax|R\(1),
	combout => \inst|Ax|R[1]~29_combout\);

-- Location: LCCOMB_X42_Y13_N26
\inst|Ax|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~28_combout\ = (\inst|Ax|R[6]~4_combout\ & ((\inst|Ax|R\(0)) # ((\inst|Ax|R[5]~7_combout\ & \inst|Ax|R\(2))))) # (!\inst|Ax|R[6]~4_combout\ & (\inst|Ax|R[5]~7_combout\ & (\inst|Ax|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~4_combout\,
	datab => \inst|Ax|R[5]~7_combout\,
	datac => \inst|Ax|R\(2),
	datad => \inst|Ax|R\(0),
	combout => \inst|Ax|R[1]~28_combout\);

-- Location: LCCOMB_X42_Y13_N18
\inst|Ax|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~30_combout\ = (\inst|Ax|R[1]~29_combout\) # ((\inst|Ax|R[1]~28_combout\) # ((\inst|Ax|op_1~0_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_1~0_combout\,
	datab => \inst|Ax|R[1]~29_combout\,
	datac => \inst|Ax|R[1]~28_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[1]~30_combout\);

-- Location: LCCOMB_X43_Y13_N22
\inst|Ax|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[1]~31_combout\ = (\inst|Ax|R[1]~30_combout\) # ((\inst|_~18_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[1]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \inst|Ax|R[1]~30_combout\,
	combout => \inst|Ax|R[1]~31_combout\);

-- Location: FF_X43_Y13_N23
\inst|Ax|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(1));

-- Location: LCCOMB_X42_Y13_N12
\inst|Ax|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~24_combout\ = (\inst|Ax|R\(3) & ((\inst|Ax|R[5]~7_combout\) # ((\inst|Ax|R\(1) & \inst|Ax|R[6]~4_combout\)))) # (!\inst|Ax|R\(3) & (\inst|Ax|R\(1) & ((\inst|Ax|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(3),
	datab => \inst|Ax|R\(1),
	datac => \inst|Ax|R[5]~7_combout\,
	datad => \inst|Ax|R[6]~4_combout\,
	combout => \inst|Ax|R[2]~24_combout\);

-- Location: LCCOMB_X41_Y13_N18
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

-- Location: LCCOMB_X42_Y13_N22
\inst|Ax|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~25_combout\ = (\inst|Ax|R\(2) & ((\inst|Ax|R[7]~36_combout\) # ((\inst|Ax|op_2~4_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R\(2) & (((\inst|Ax|op_2~4_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(2),
	datab => \inst|Ax|R[7]~36_combout\,
	datac => \inst|Ax|op_2~4_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[2]~25_combout\);

-- Location: LCCOMB_X42_Y13_N0
\inst|Ax|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~26_combout\ = (\inst|Ax|R[2]~24_combout\) # ((\inst|Ax|R[2]~25_combout\) # ((\inst|Ax|op_1~2_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[2]~24_combout\,
	datab => \inst|Ax|op_1~2_combout\,
	datac => \inst|Ax|R[2]~25_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[2]~26_combout\);

-- Location: LCCOMB_X42_Y13_N8
\inst|Ax|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[2]~27_combout\ = (\inst|Ax|R[2]~26_combout\) # ((\inst|BUS[2]~59_combout\ & (\inst|_~18_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~59_combout\,
	datab => \inst|_~18_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ax|R[2]~26_combout\,
	combout => \inst|Ax|R[2]~27_combout\);

-- Location: FF_X42_Y13_N9
\inst|Ax|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(2));

-- Location: LCCOMB_X42_Y13_N30
\inst|Ax|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~20_combout\ = (\inst|Ax|R\(4) & ((\inst|Ax|R[5]~7_combout\) # ((\inst|Ax|R\(2) & \inst|Ax|R[6]~4_combout\)))) # (!\inst|Ax|R\(4) & (\inst|Ax|R\(2) & ((\inst|Ax|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(4),
	datab => \inst|Ax|R\(2),
	datac => \inst|Ax|R[5]~7_combout\,
	datad => \inst|Ax|R[6]~4_combout\,
	combout => \inst|Ax|R[3]~20_combout\);

-- Location: LCCOMB_X41_Y13_N20
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

-- Location: LCCOMB_X42_Y13_N4
\inst|Ax|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~21_combout\ = (\inst|Ax|R\(3) & ((\inst|Ax|R[7]~36_combout\) # ((\inst|Ax|op_2~6_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R\(3) & (((\inst|Ax|op_2~6_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(3),
	datab => \inst|Ax|R[7]~36_combout\,
	datac => \inst|Ax|op_2~6_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[3]~21_combout\);

-- Location: LCCOMB_X42_Y13_N6
\inst|Ax|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~22_combout\ = (\inst|Ax|R[3]~20_combout\) # ((\inst|Ax|R[3]~21_combout\) # ((\inst|Ax|op_1~4_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[3]~20_combout\,
	datab => \inst|Ax|op_1~4_combout\,
	datac => \inst|Ax|R[3]~21_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[3]~22_combout\);

-- Location: LCCOMB_X40_Y13_N14
\inst|Ax|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[3]~23_combout\ = (\inst|Ax|R[3]~22_combout\) # ((\inst|_~18_combout\ & (\inst|BUS[3]~50_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|BUS[3]~50_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ax|R[3]~22_combout\,
	combout => \inst|Ax|R[3]~23_combout\);

-- Location: FF_X40_Y13_N15
\inst|Ax|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(3));

-- Location: LCCOMB_X40_Y13_N12
\inst|Ax|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~16_combout\ = (\inst|Ax|R[6]~4_combout\ & ((\inst|Ax|R\(3)) # ((\inst|Ax|R[5]~7_combout\ & \inst|Ax|R\(5))))) # (!\inst|Ax|R[6]~4_combout\ & (\inst|Ax|R[5]~7_combout\ & ((\inst|Ax|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[6]~4_combout\,
	datab => \inst|Ax|R[5]~7_combout\,
	datac => \inst|Ax|R\(3),
	datad => \inst|Ax|R\(5),
	combout => \inst|Ax|R[4]~16_combout\);

-- Location: LCCOMB_X41_Y13_N22
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

-- Location: LCCOMB_X40_Y13_N30
\inst|Ax|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~17_combout\ = (\inst|Ax|R[7]~36_combout\ & ((\inst|Ax|R\(4)) # ((\inst|Ax|op_2~8_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R[7]~36_combout\ & (((\inst|Ax|op_2~8_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[7]~36_combout\,
	datab => \inst|Ax|R\(4),
	datac => \inst|Ax|op_2~8_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[4]~17_combout\);

-- Location: LCCOMB_X40_Y13_N28
\inst|Ax|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~18_combout\ = (\inst|Ax|R[4]~16_combout\) # ((\inst|Ax|R[4]~17_combout\) # ((\inst|Ax|op_1~6_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R[4]~16_combout\,
	datab => \inst|Ax|op_1~6_combout\,
	datac => \inst|Ax|R[4]~17_combout\,
	datad => \inst|Ax|_~0_combout\,
	combout => \inst|Ax|R[4]~18_combout\);

-- Location: LCCOMB_X40_Y13_N20
\inst|Ax|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[4]~19_combout\ = (\inst|Ax|R[4]~18_combout\) # ((\inst|_~18_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[4]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|Ax|R[4]~18_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[4]~40_combout\,
	combout => \inst|Ax|R[4]~19_combout\);

-- Location: FF_X40_Y13_N21
\inst|Ax|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(4));

-- Location: LCCOMB_X43_Y13_N14
\inst|Ax|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~13_combout\ = (\inst|Ax|R\(5) & ((\inst|Ax|R[7]~36_combout\) # ((\inst|Ax|op_2~10_combout\ & \inst|Ax|_~2_combout\)))) # (!\inst|Ax|R\(5) & (((\inst|Ax|op_2~10_combout\ & \inst|Ax|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(5),
	datab => \inst|Ax|R[7]~36_combout\,
	datac => \inst|Ax|op_2~10_combout\,
	datad => \inst|Ax|_~2_combout\,
	combout => \inst|Ax|R[5]~13_combout\);

-- Location: LCCOMB_X40_Y13_N10
\inst|Ax|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~12_combout\ = (\inst|Ax|R\(6) & ((\inst|Ax|R[5]~7_combout\) # ((\inst|Ax|R\(4) & \inst|Ax|R[6]~4_combout\)))) # (!\inst|Ax|R\(6) & (\inst|Ax|R\(4) & ((\inst|Ax|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|Ax|R\(4),
	datac => \inst|Ax|R[5]~7_combout\,
	datad => \inst|Ax|R[6]~4_combout\,
	combout => \inst|Ax|R[5]~12_combout\);

-- Location: LCCOMB_X43_Y13_N20
\inst|Ax|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~14_combout\ = (\inst|Ax|R[5]~13_combout\) # ((\inst|Ax|R[5]~12_combout\) # ((\inst|Ax|op_1~8_combout\ & \inst|Ax|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|op_1~8_combout\,
	datab => \inst|Ax|R[5]~13_combout\,
	datac => \inst|Ax|_~0_combout\,
	datad => \inst|Ax|R[5]~12_combout\,
	combout => \inst|Ax|R[5]~14_combout\);

-- Location: LCCOMB_X43_Y13_N0
\inst|Ax|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ax|R[5]~15_combout\ = (\inst|Ax|R[5]~14_combout\) # ((\inst|_~18_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~18_combout\,
	datab => \inst|Ax|R[5]~14_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|Ax|R[5]~15_combout\);

-- Location: FF_X43_Y13_N1
\inst|Ax|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ax|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ax|R\(5));

-- Location: LCCOMB_X42_Y15_N16
\inst|BUS[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~22_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|SP|R\(5))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Ax|R\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[4]~4_combout\,
	datab => \inst|_~0_combout\,
	datac => \inst|SP|R\(5),
	datad => \inst|Ax|R\(5),
	combout => \inst|BUS[5]~22_combout\);

-- Location: LCCOMB_X41_Y17_N18
\inst|BUS[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~23_combout\ = (\inst|BUS[5]~22_combout\) # ((\inst|_~2_combout\ & \inst|alu_rh|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~2_combout\,
	datac => \inst|alu_rh|R\(5),
	datad => \inst|BUS[5]~22_combout\,
	combout => \inst|BUS[5]~23_combout\);

-- Location: LCCOMB_X41_Y17_N4
\inst|BUS[5]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~25_combout\ = (\inst|BUS[5]~24_combout\) # ((\inst|BUS[5]~23_combout\) # ((\inst|Bx|R\(5) & \inst|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[5]~24_combout\,
	datab => \inst|Bx|R\(5),
	datac => \inst|_~5_combout\,
	datad => \inst|BUS[5]~23_combout\,
	combout => \inst|BUS[5]~25_combout\);

-- Location: LCCOMB_X41_Y12_N14
\inst|BUS[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~4_combout\ = (\inst|_~0_combout\) # ((\inst|_~4_combout\ & ((!\inst|SelBus[4]~4_combout\) # (!\inst|SelBus[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[2]~1_combout\,
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|_~4_combout\,
	datad => \inst|_~0_combout\,
	combout => \inst|BUS[7]~4_combout\);

-- Location: LCCOMB_X41_Y17_N26
\inst|BUS[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~5_combout\ = (\inst|_~1_combout\ & (\inst|SelBus[0]~2_combout\ $ (!\inst|SelBus[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~2_combout\,
	datac => \inst|_~1_combout\,
	datad => \inst|SelBus[1]~3_combout\,
	combout => \inst|BUS[7]~5_combout\);

-- Location: LCCOMB_X41_Y14_N16
\inst|BUS[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~6_combout\ = (\inst|BUS[7]~4_combout\) # ((\inst|_~3_combout\) # ((\inst|_~7_combout\) # (\inst|BUS[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~4_combout\,
	datab => \inst|_~3_combout\,
	datac => \inst|_~7_combout\,
	datad => \inst|BUS[7]~5_combout\,
	combout => \inst|BUS[7]~6_combout\);

-- Location: LCCOMB_X41_Y17_N6
\inst|BUS[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~26_combout\ = (\inst|BUS[5]~25_combout\) # (((\inst|alu_rl|R\(5) & \inst|_~6_combout\)) # (!\inst|BUS[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(5),
	datab => \inst|_~6_combout\,
	datac => \inst|BUS[5]~25_combout\,
	datad => \inst|BUS[7]~6_combout\,
	combout => \inst|BUS[5]~26_combout\);

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: LCCOMB_X41_Y10_N26
\inst|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~8_combout\ = (\inst|SelBus[2]~1_combout\ & (\inst|_~4_combout\ & !\inst|SelBus[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~4_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|_~8_combout\);

-- Location: LCCOMB_X41_Y12_N12
\inst|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~9_combout\ = (\inst|SelBus[0]~2_combout\ & (\inst|SelBus[1]~3_combout\ & \inst|_~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[0]~2_combout\,
	datab => \inst|SelBus[1]~3_combout\,
	datac => \inst|_~1_combout\,
	combout => \inst|_~9_combout\);

-- Location: LCCOMB_X41_Y10_N30
\inst|BUS[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~27_combout\ = (\inst|PC|R\(5) & ((\inst|_~9_combout\) # ((\Fx[5]~input_o\ & \inst|_~8_combout\)))) # (!\inst|PC|R\(5) & (\Fx[5]~input_o\ & (\inst|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(5),
	datab => \Fx[5]~input_o\,
	datac => \inst|_~8_combout\,
	datad => \inst|_~9_combout\,
	combout => \inst|BUS[5]~27_combout\);

-- Location: LCCOMB_X39_Y11_N10
\inst|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~11_combout\ = (\inst|_~7_combout\ & (!\inst|SelBus[1]~3_combout\ & !\inst|SelBus[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~7_combout\,
	datac => \inst|SelBus[1]~3_combout\,
	datad => \inst|SelBus[0]~2_combout\,
	combout => \inst|_~11_combout\);

-- Location: LCCOMB_X39_Y7_N18
\inst|MAR|R[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[6]~2_combout\ = (\SelMAR~input_o\ & (\inst|BUS[6]~21_combout\)) # (!\SelMAR~input_o\ & ((\inst|PC|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|BUS[6]~21_combout\,
	datad => \inst|PC|R\(6),
	combout => \inst|MAR|R[6]~2_combout\);

-- Location: FF_X39_Y7_N19
\inst|MAR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[6]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(6));

-- Location: M9K_X33_Y6_N0
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000040000800010000200004000080001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Memoria.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM_8bit:RAM|altsyncram:altsyncram_component|altsyncram_9oq3:auto_generated|ALTSYNCRAM",
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

-- Location: LCCOMB_X32_Y6_N0
\inst|MDR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[7]~0_combout\ = (\SelMDR~input_o\ & ((\inst|BUS[7]~12_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|BUS[7]~12_combout\,
	combout => \inst|MDR|R[7]~0_combout\);

-- Location: LCCOMB_X38_Y11_N28
\inst|MDR|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[0]~1_combout\ = (\inst|BP|R[0]~0_combout\ & \inst|_~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP|R[0]~0_combout\,
	datad => \inst|_~22_combout\,
	combout => \inst|MDR|R[0]~1_combout\);

-- Location: FF_X32_Y6_N1
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
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(7));

-- Location: LCCOMB_X32_Y6_N2
\inst|MDR|R[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[4]~4_combout\ = (\SelMDR~input_o\ & (\inst|BUS[4]~40_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \inst|BUS[4]~40_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|MDR|R[4]~4_combout\);

-- Location: FF_X32_Y6_N3
\inst|MDR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[4]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(4));

-- Location: LCCOMB_X32_Y6_N16
\inst|MDR|R[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[3]~5_combout\ = (\SelMDR~input_o\ & (\inst|BUS[3]~50_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \inst|BUS[3]~50_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|MDR|R[3]~5_combout\);

-- Location: FF_X32_Y6_N17
\inst|MDR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[3]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(3));

-- Location: LCCOMB_X32_Y6_N14
\inst|MDR|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[2]~6_combout\ = (\SelMDR~input_o\ & ((\inst|BUS[2]~59_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|BUS[2]~59_combout\,
	combout => \inst|MDR|R[2]~6_combout\);

-- Location: FF_X32_Y6_N15
\inst|MDR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[2]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(2));

-- Location: LCCOMB_X32_Y6_N12
\inst|MDR|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[1]~7_combout\ = (\SelMDR~input_o\ & (\inst|BUS[1]~69_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|MDR|R[1]~7_combout\);

-- Location: FF_X32_Y6_N13
\inst|MDR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[1]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(1));

-- Location: LCCOMB_X32_Y6_N8
\inst|MDR|R[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[5]~3_combout\ = (\SelMDR~input_o\ & ((\inst|BUS[5]~31_combout\))) # (!\SelMDR~input_o\ & (\RAM|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \RAM|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|MDR|R[5]~3_combout\);

-- Location: FF_X32_Y6_N9
\inst|MDR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[5]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(5));

-- Location: LCCOMB_X39_Y11_N4
\inst|BUS[5]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~28_combout\ = (\inst|_~11_combout\ & ((\inst|MAR|R\(5)) # ((\inst|_~10_combout\ & \inst|MDR|R\(5))))) # (!\inst|_~11_combout\ & (\inst|_~10_combout\ & (\inst|MDR|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~11_combout\,
	datab => \inst|_~10_combout\,
	datac => \inst|MDR|R\(5),
	datad => \inst|MAR|R\(5),
	combout => \inst|BUS[5]~28_combout\);

-- Location: FF_X39_Y11_N19
\inst|IR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(5));

-- Location: LCCOMB_X37_Y12_N10
\inst|SI|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|R[5]~7_combout\);

-- Location: LCCOMB_X40_Y12_N16
\inst|SI|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~4_combout\ = (\Cmd[2]~input_o\ & (\inst|_~25_combout\ & !\Cmd[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \inst|_~25_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|SI|R[6]~4_combout\);

-- Location: LCCOMB_X39_Y12_N26
\inst|SI|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~28_combout\ = (\inst|SI|R\(0) & ((\inst|SI|R[6]~4_combout\) # ((\inst|SI|R[5]~7_combout\ & \inst|SI|R\(2))))) # (!\inst|SI|R\(0) & (\inst|SI|R[5]~7_combout\ & (\inst|SI|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(0),
	datab => \inst|SI|R[5]~7_combout\,
	datac => \inst|SI|R\(2),
	datad => \inst|SI|R[6]~4_combout\,
	combout => \inst|SI|R[1]~28_combout\);

-- Location: LCCOMB_X37_Y12_N26
\inst|SI|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~36_combout\ = ((!\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[0]~input_o\))) # (!\inst|_~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|R[7]~36_combout\);

-- Location: LCCOMB_X40_Y12_N22
\inst|SI|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~2_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\inst|_~25_combout\ & \Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \inst|_~25_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|SI|_~2_combout\);

-- Location: LCCOMB_X38_Y12_N14
\inst|SI|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~1_cout\ = CARRY(\inst|SI|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(0),
	datad => VCC,
	cout => \inst|SI|op_2~1_cout\);

-- Location: LCCOMB_X38_Y12_N16
\inst|SI|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~2_combout\ = (\inst|SI|R\(1) & (\inst|SI|op_2~1_cout\ & VCC)) # (!\inst|SI|R\(1) & (!\inst|SI|op_2~1_cout\))
-- \inst|SI|op_2~3\ = CARRY((!\inst|SI|R\(1) & !\inst|SI|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(1),
	datad => VCC,
	cin => \inst|SI|op_2~1_cout\,
	combout => \inst|SI|op_2~2_combout\,
	cout => \inst|SI|op_2~3\);

-- Location: LCCOMB_X39_Y12_N8
\inst|SI|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~29_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(1)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~2_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (\inst|SI|_~2_combout\ & (\inst|SI|op_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|op_2~2_combout\,
	datad => \inst|SI|R\(1),
	combout => \inst|SI|R[1]~29_combout\);

-- Location: LCCOMB_X38_Y12_N0
\inst|SI|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~0_combout\ = (\inst|SI|R\(0) & (\inst|SI|R\(1) $ (VCC))) # (!\inst|SI|R\(0) & (\inst|SI|R\(1) & VCC))
-- \inst|SI|op_1~1\ = CARRY((\inst|SI|R\(0) & \inst|SI|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(0),
	datab => \inst|SI|R\(1),
	datad => VCC,
	combout => \inst|SI|op_1~0_combout\,
	cout => \inst|SI|op_1~1\);

-- Location: LCCOMB_X40_Y12_N4
\inst|SI|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~0_combout\ = (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & (\inst|_~25_combout\ & !\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \inst|_~25_combout\,
	datad => \Cmd[0]~input_o\,
	combout => \inst|SI|_~0_combout\);

-- Location: LCCOMB_X39_Y12_N14
\inst|SI|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~30_combout\ = (\inst|SI|R[1]~28_combout\) # ((\inst|SI|R[1]~29_combout\) # ((\inst|SI|op_1~0_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[1]~28_combout\,
	datab => \inst|SI|R[1]~29_combout\,
	datac => \inst|SI|op_1~0_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[1]~30_combout\);

-- Location: LCCOMB_X40_Y12_N30
\inst|SI|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[1]~31_combout\ = (\inst|SI|R[1]~30_combout\) # ((\inst|BUS[1]~69_combout\ & (\inst|_~25_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[1]~30_combout\,
	datab => \inst|BUS[1]~69_combout\,
	datac => \inst|_~25_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|SI|R[1]~31_combout\);

-- Location: FF_X40_Y12_N31
\inst|SI|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(1));

-- Location: LCCOMB_X37_Y12_N6
\inst|SI|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~32_combout\ = (!\inst|SI|R\(0) & ((\inst|SI|_~2_combout\) # (\inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SI|R\(0),
	datac => \inst|SI|_~2_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[0]~32_combout\);

-- Location: LCCOMB_X38_Y12_N18
\inst|SI|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~4_combout\ = (\inst|SI|R\(2) & ((GND) # (!\inst|SI|op_2~3\))) # (!\inst|SI|R\(2) & (\inst|SI|op_2~3\ $ (GND)))
-- \inst|SI|op_2~5\ = CARRY((\inst|SI|R\(2)) # (!\inst|SI|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(2),
	datad => VCC,
	cin => \inst|SI|op_2~3\,
	combout => \inst|SI|op_2~4_combout\,
	cout => \inst|SI|op_2~5\);

-- Location: LCCOMB_X38_Y12_N20
\inst|SI|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~6_combout\ = (\inst|SI|R\(3) & (\inst|SI|op_2~5\ & VCC)) # (!\inst|SI|R\(3) & (!\inst|SI|op_2~5\))
-- \inst|SI|op_2~7\ = CARRY((!\inst|SI|R\(3) & !\inst|SI|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datad => VCC,
	cin => \inst|SI|op_2~5\,
	combout => \inst|SI|op_2~6_combout\,
	cout => \inst|SI|op_2~7\);

-- Location: LCCOMB_X38_Y12_N22
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

-- Location: LCCOMB_X38_Y12_N24
\inst|SI|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_2~10_combout\ = (\inst|SI|R\(5) & (\inst|SI|op_2~9\ & VCC)) # (!\inst|SI|R\(5) & (!\inst|SI|op_2~9\))
-- \inst|SI|op_2~11\ = CARRY((!\inst|SI|R\(5) & !\inst|SI|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(5),
	datad => VCC,
	cin => \inst|SI|op_2~9\,
	combout => \inst|SI|op_2~10_combout\,
	cout => \inst|SI|op_2~11\);

-- Location: LCCOMB_X38_Y12_N26
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

-- Location: LCCOMB_X37_Y12_N22
\inst|SI|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~9_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(6)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~12_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (((\inst|SI|_~2_combout\ & \inst|SI|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|R\(6),
	datac => \inst|SI|_~2_combout\,
	datad => \inst|SI|op_2~12_combout\,
	combout => \inst|SI|R[6]~9_combout\);

-- Location: LCCOMB_X37_Y12_N28
\inst|SI|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~8_combout\ = (\inst|SI|R\(5) & ((\inst|SI|R[6]~4_combout\) # ((\inst|SI|R\(7) & \inst|SI|R[5]~7_combout\)))) # (!\inst|SI|R\(5) & (((\inst|SI|R\(7) & \inst|SI|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(5),
	datab => \inst|SI|R[6]~4_combout\,
	datac => \inst|SI|R\(7),
	datad => \inst|SI|R[5]~7_combout\,
	combout => \inst|SI|R[6]~8_combout\);

-- Location: LCCOMB_X38_Y12_N8
\inst|SI|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~8_combout\ = (\inst|SI|R\(5) & (\inst|SI|op_1~7\ $ (GND))) # (!\inst|SI|R\(5) & (!\inst|SI|op_1~7\ & VCC))
-- \inst|SI|op_1~9\ = CARRY((\inst|SI|R\(5) & !\inst|SI|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(5),
	datad => VCC,
	cin => \inst|SI|op_1~7\,
	combout => \inst|SI|op_1~8_combout\,
	cout => \inst|SI|op_1~9\);

-- Location: LCCOMB_X38_Y12_N10
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

-- Location: LCCOMB_X37_Y12_N24
\inst|SI|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~10_combout\ = (\inst|SI|R[6]~9_combout\) # ((\inst|SI|R[6]~8_combout\) # ((\inst|SI|op_1~10_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[6]~9_combout\,
	datab => \inst|SI|R[6]~8_combout\,
	datac => \inst|SI|op_1~10_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[6]~10_combout\);

-- Location: LCCOMB_X37_Y12_N30
\inst|SI|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[6]~11_combout\ = (\inst|SI|R[6]~10_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[6]~21_combout\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|SI|R[6]~10_combout\,
	datac => \inst|BUS[6]~21_combout\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|R[6]~11_combout\);

-- Location: FF_X37_Y12_N31
\inst|SI|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(6));

-- Location: LCCOMB_X37_Y12_N14
\inst|SI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~1_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|_~1_combout\);

-- Location: LCCOMB_X38_Y12_N12
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

-- Location: LCCOMB_X37_Y12_N4
\inst|SI|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~2_combout\ = (\inst|SI|_~0_combout\ & ((\inst|SI|op_1~12_combout\) # ((\inst|SI|_~1_combout\ & \inst|SI|R\(0))))) # (!\inst|SI|_~0_combout\ & (\inst|SI|_~1_combout\ & ((\inst|SI|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|_~0_combout\,
	datab => \inst|SI|_~1_combout\,
	datac => \inst|SI|op_1~12_combout\,
	datad => \inst|SI|R\(0),
	combout => \inst|SI|R[7]~2_combout\);

-- Location: LCCOMB_X38_Y12_N28
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

-- Location: LCCOMB_X37_Y12_N2
\inst|SI|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~3_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(7)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~14_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (((\inst|SI|_~2_combout\ & \inst|SI|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|R\(7),
	datac => \inst|SI|_~2_combout\,
	datad => \inst|SI|op_2~14_combout\,
	combout => \inst|SI|R[7]~3_combout\);

-- Location: LCCOMB_X37_Y12_N0
\inst|SI|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~5_combout\ = (\inst|SI|R[7]~2_combout\) # ((\inst|SI|R[7]~3_combout\) # ((\inst|SI|R\(6) & \inst|SI|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(6),
	datab => \inst|SI|R[7]~2_combout\,
	datac => \inst|SI|R[6]~4_combout\,
	datad => \inst|SI|R[7]~3_combout\,
	combout => \inst|SI|R[7]~5_combout\);

-- Location: LCCOMB_X37_Y12_N8
\inst|SI|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[7]~6_combout\ = (\inst|SI|R[7]~5_combout\) # ((\inst|_~25_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|SI|R[7]~5_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|BUS[7]~12_combout\,
	combout => \inst|SI|R[7]~6_combout\);

-- Location: FF_X37_Y12_N9
\inst|SI|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(7));

-- Location: LCCOMB_X37_Y12_N20
\inst|SI|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|_~3_combout\ = (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[1]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|_~3_combout\);

-- Location: LCCOMB_X37_Y12_N18
\inst|SI|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~33_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(0)) # ((\inst|SI|R\(7) & \inst|SI|_~3_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (((\inst|SI|R\(7) & \inst|SI|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|R\(0),
	datac => \inst|SI|R\(7),
	datad => \inst|SI|_~3_combout\,
	combout => \inst|SI|R[0]~33_combout\);

-- Location: LCCOMB_X37_Y12_N12
\inst|SI|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~34_combout\ = (\inst|SI|R[0]~32_combout\) # ((\inst|SI|R[0]~33_combout\) # ((\inst|SI|R[5]~7_combout\ & \inst|SI|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[5]~7_combout\,
	datab => \inst|SI|R\(1),
	datac => \inst|SI|R[0]~32_combout\,
	datad => \inst|SI|R[0]~33_combout\,
	combout => \inst|SI|R[0]~34_combout\);

-- Location: LCCOMB_X37_Y12_N16
\inst|SI|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[0]~35_combout\ = (\inst|SI|R[0]~34_combout\) # ((\inst|BUS[0]~78_combout\ & (\inst|DI|_~0_combout\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[0]~34_combout\,
	datab => \inst|BUS[0]~78_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|_~25_combout\,
	combout => \inst|SI|R[0]~35_combout\);

-- Location: FF_X37_Y12_N17
\inst|SI|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(0));

-- Location: LCCOMB_X38_Y12_N2
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

-- Location: LCCOMB_X39_Y12_N24
\inst|SI|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~24_combout\ = (\inst|SI|R\(3) & ((\inst|SI|R[5]~7_combout\) # ((\inst|SI|R\(1) & \inst|SI|R[6]~4_combout\)))) # (!\inst|SI|R\(3) & (\inst|SI|R\(1) & ((\inst|SI|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datab => \inst|SI|R\(1),
	datac => \inst|SI|R[5]~7_combout\,
	datad => \inst|SI|R[6]~4_combout\,
	combout => \inst|SI|R[2]~24_combout\);

-- Location: LCCOMB_X39_Y12_N22
\inst|SI|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~25_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(2)) # ((\inst|SI|op_2~4_combout\ & \inst|SI|_~2_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (((\inst|SI|op_2~4_combout\ & \inst|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|R\(2),
	datac => \inst|SI|op_2~4_combout\,
	datad => \inst|SI|_~2_combout\,
	combout => \inst|SI|R[2]~25_combout\);

-- Location: LCCOMB_X39_Y12_N20
\inst|SI|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~26_combout\ = (\inst|SI|R[2]~24_combout\) # ((\inst|SI|R[2]~25_combout\) # ((\inst|SI|op_1~2_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|op_1~2_combout\,
	datab => \inst|SI|R[2]~24_combout\,
	datac => \inst|SI|R[2]~25_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[2]~26_combout\);

-- Location: LCCOMB_X39_Y12_N4
\inst|SI|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[2]~27_combout\ = (\inst|SI|R[2]~26_combout\) # ((\inst|BUS[2]~59_combout\ & (\inst|DI|_~0_combout\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~59_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~25_combout\,
	datad => \inst|SI|R[2]~26_combout\,
	combout => \inst|SI|R[2]~27_combout\);

-- Location: FF_X39_Y12_N5
\inst|SI|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(2));

-- Location: LCCOMB_X39_Y12_N6
\inst|SI|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~20_combout\ = (\inst|SI|R\(4) & ((\inst|SI|R[5]~7_combout\) # ((\inst|SI|R\(2) & \inst|SI|R[6]~4_combout\)))) # (!\inst|SI|R\(4) & (((\inst|SI|R\(2) & \inst|SI|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datab => \inst|SI|R[5]~7_combout\,
	datac => \inst|SI|R\(2),
	datad => \inst|SI|R[6]~4_combout\,
	combout => \inst|SI|R[3]~20_combout\);

-- Location: LCCOMB_X39_Y12_N16
\inst|SI|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~21_combout\ = (\inst|SI|R\(3) & ((\inst|SI|R[7]~36_combout\) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~6_combout\)))) # (!\inst|SI|R\(3) & (\inst|SI|_~2_combout\ & ((\inst|SI|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datab => \inst|SI|_~2_combout\,
	datac => \inst|SI|R[7]~36_combout\,
	datad => \inst|SI|op_2~6_combout\,
	combout => \inst|SI|R[3]~21_combout\);

-- Location: LCCOMB_X38_Y12_N4
\inst|SI|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|op_1~4_combout\ = (\inst|SI|R\(3) & (\inst|SI|op_1~3\ $ (GND))) # (!\inst|SI|R\(3) & (!\inst|SI|op_1~3\ & VCC))
-- \inst|SI|op_1~5\ = CARRY((\inst|SI|R\(3) & !\inst|SI|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datad => VCC,
	cin => \inst|SI|op_1~3\,
	combout => \inst|SI|op_1~4_combout\,
	cout => \inst|SI|op_1~5\);

-- Location: LCCOMB_X39_Y12_N2
\inst|SI|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~22_combout\ = (\inst|SI|R[3]~20_combout\) # ((\inst|SI|R[3]~21_combout\) # ((\inst|SI|op_1~4_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[3]~20_combout\,
	datab => \inst|SI|R[3]~21_combout\,
	datac => \inst|SI|op_1~4_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[3]~22_combout\);

-- Location: LCCOMB_X39_Y12_N30
\inst|SI|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[3]~23_combout\ = (\inst|SI|R[3]~22_combout\) # ((\inst|_~25_combout\ & (\inst|BUS[3]~50_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|BUS[3]~50_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|SI|R[3]~22_combout\,
	combout => \inst|SI|R[3]~23_combout\);

-- Location: FF_X39_Y12_N31
\inst|SI|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(3));

-- Location: LCCOMB_X38_Y12_N6
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

-- Location: LCCOMB_X39_Y12_N18
\inst|SI|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~12_combout\ = (\inst|SI|R\(4) & ((\inst|SI|R[6]~4_combout\) # ((\inst|SI|R\(6) & \inst|SI|R[5]~7_combout\)))) # (!\inst|SI|R\(4) & (\inst|SI|R\(6) & (\inst|SI|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datab => \inst|SI|R\(6),
	datac => \inst|SI|R[5]~7_combout\,
	datad => \inst|SI|R[6]~4_combout\,
	combout => \inst|SI|R[5]~12_combout\);

-- Location: LCCOMB_X40_Y12_N18
\inst|SI|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~13_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(5)) # ((\inst|SI|_~2_combout\ & \inst|SI|op_2~10_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (((\inst|SI|_~2_combout\ & \inst|SI|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|R\(5),
	datac => \inst|SI|_~2_combout\,
	datad => \inst|SI|op_2~10_combout\,
	combout => \inst|SI|R[5]~13_combout\);

-- Location: LCCOMB_X40_Y12_N8
\inst|SI|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~14_combout\ = (\inst|SI|R[5]~12_combout\) # ((\inst|SI|R[5]~13_combout\) # ((\inst|SI|op_1~8_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|op_1~8_combout\,
	datab => \inst|SI|R[5]~12_combout\,
	datac => \inst|SI|_~0_combout\,
	datad => \inst|SI|R[5]~13_combout\,
	combout => \inst|SI|R[5]~14_combout\);

-- Location: LCCOMB_X40_Y12_N24
\inst|SI|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[5]~15_combout\ = (\inst|SI|R[5]~14_combout\) # ((\inst|_~25_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~25_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|SI|R[5]~14_combout\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|SI|R[5]~15_combout\);

-- Location: FF_X40_Y12_N25
\inst|SI|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(5));

-- Location: LCCOMB_X39_Y11_N24
\inst|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~13_combout\ = (\inst|SelBus[1]~3_combout\ & (\inst|_~7_combout\ & \inst|SelBus[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[1]~3_combout\,
	datab => \inst|_~7_combout\,
	datad => \inst|SelBus[0]~2_combout\,
	combout => \inst|_~13_combout\);

-- Location: LCCOMB_X38_Y11_N6
\inst|BP|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BP|R[0]~1_combout\ = (\inst|BP|R[0]~0_combout\ & \inst|_~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP|R[0]~0_combout\,
	datad => \inst|_~16_combout\,
	combout => \inst|BP|R[0]~1_combout\);

-- Location: FF_X40_Y11_N7
\inst|BP|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(5));

-- Location: LCCOMB_X40_Y11_N20
\inst|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~12_combout\ = (!\inst|SelBus[2]~1_combout\ & (\inst|_~4_combout\ & \inst|SelBus[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[2]~1_combout\,
	datac => \inst|_~4_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|_~12_combout\);

-- Location: LCCOMB_X40_Y11_N6
\inst|BUS[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~29_combout\ = (\inst|SI|R\(5) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(5))))) # (!\inst|SI|R\(5) & (\inst|_~13_combout\ & (\inst|BP|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(5),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(5),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[5]~29_combout\);

-- Location: LCCOMB_X39_Y11_N18
\inst|BUS[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~30_combout\ = (\inst|BUS[5]~29_combout\) # ((\inst|_~14_combout\ & \inst|IR|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datac => \inst|IR|R\(5),
	datad => \inst|BUS[5]~29_combout\,
	combout => \inst|BUS[5]~30_combout\);

-- Location: LCCOMB_X40_Y11_N8
\inst|BUS[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[5]~31_combout\ = (\inst|BUS[5]~26_combout\) # ((\inst|BUS[5]~27_combout\) # ((\inst|BUS[5]~28_combout\) # (\inst|BUS[5]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[5]~26_combout\,
	datab => \inst|BUS[5]~27_combout\,
	datac => \inst|BUS[5]~28_combout\,
	datad => \inst|BUS[5]~30_combout\,
	combout => \inst|BUS[5]~31_combout\);

-- Location: LCCOMB_X39_Y7_N28
\inst|MAR|R[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[5]~3_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[5]~31_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(5),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|MAR|R[5]~3_combout\);

-- Location: FF_X39_Y7_N29
\inst|MAR|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[5]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(5));

-- Location: LCCOMB_X32_Y6_N26
\inst|MDR|R[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[6]~2_combout\ = (\SelMDR~input_o\ & (\inst|BUS[6]~21_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \inst|BUS[6]~21_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst|MDR|R[6]~2_combout\);

-- Location: FF_X32_Y6_N27
\inst|MDR|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[6]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(6));

-- Location: LCCOMB_X39_Y11_N14
\inst|BUS[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~19_combout\ = (\inst|_~14_combout\ & ((\inst|IR|R\(6)) # ((\inst|_~10_combout\ & \inst|MDR|R\(6))))) # (!\inst|_~14_combout\ & (\inst|_~10_combout\ & ((\inst|MDR|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datab => \inst|_~10_combout\,
	datac => \inst|IR|R\(6),
	datad => \inst|MDR|R\(6),
	combout => \inst|BUS[6]~19_combout\);

-- Location: LCCOMB_X41_Y10_N8
\inst|BUS[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~16_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|DI|R\(6))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Cx|R\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(6),
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|_~3_combout\,
	datad => \inst|Cx|R\(6),
	combout => \inst|BUS[6]~16_combout\);

-- Location: IOIBUF_X78_Y21_N22
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

-- Location: LCCOMB_X39_Y7_N20
\inst|BUS[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~17_combout\ = (\inst|_~9_combout\ & ((\inst|PC|R\(6)) # ((\inst|MAR|R\(6) & \inst|_~11_combout\)))) # (!\inst|_~9_combout\ & (\inst|MAR|R\(6) & (\inst|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~9_combout\,
	datab => \inst|MAR|R\(6),
	datac => \inst|_~11_combout\,
	datad => \inst|PC|R\(6),
	combout => \inst|BUS[6]~17_combout\);

-- Location: LCCOMB_X41_Y10_N10
\inst|BUS[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~18_combout\ = (\inst|BUS[6]~16_combout\) # ((\inst|BUS[6]~17_combout\) # ((\inst|_~8_combout\ & \Fx[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~8_combout\,
	datab => \inst|BUS[6]~16_combout\,
	datac => \Fx[6]~input_o\,
	datad => \inst|BUS[6]~17_combout\,
	combout => \inst|BUS[6]~18_combout\);

-- Location: FF_X40_Y11_N23
\inst|BP|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(6));

-- Location: LCCOMB_X40_Y11_N22
\inst|BUS[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~20_combout\ = (\inst|SI|R\(6) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(6))))) # (!\inst|SI|R\(6) & (\inst|_~13_combout\ & (\inst|BP|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(6),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(6),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[6]~20_combout\);

-- Location: LCCOMB_X40_Y13_N26
\inst|BUS[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~14_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|SP|R\(6)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Ax|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(6),
	datab => \inst|SP|R\(6),
	datac => \inst|_~0_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|BUS[6]~14_combout\);

-- Location: LCCOMB_X39_Y26_N4
\inst|ALU|Result[6]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~151_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[9]~3_combout\,
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|Result[6]~151_combout\);

-- Location: LCCOMB_X35_Y26_N12
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

-- Location: LCCOMB_X37_Y25_N12
\inst|ALU|Result[6]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~114_combout\ = (\SelOp[2]~input_o\ & ((\inst|alu_x|R[6]~_Duplicate_1_q\ & (!\SelOp[1]~input_o\ & \SelOp[0]~input_o\)) # (!\inst|alu_x|R[6]~_Duplicate_1_q\ & (\SelOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \SelOp[2]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[6]~114_combout\);

-- Location: LCCOMB_X37_Y25_N4
\inst|ALU|Result[6]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~112_combout\ = (\SelOp[2]~input_o\ & (!\SelOp[1]~input_o\ & ((\inst|alu_x|R[6]~_Duplicate_1_q\) # (\SelOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datab => \SelOp[2]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[6]~112_combout\);

-- Location: LCCOMB_X37_Y25_N10
\inst|ALU|Result[6]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~111_combout\ = (\SelOp[1]~input_o\ & (!\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT6\,
	combout => \inst|ALU|Result[6]~111_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst|ALU|Result[6]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~113_combout\ = (\inst|ALU|Result[6]~111_combout\) # ((\inst|alu_y|R\(6) & (\inst|ALU|Result[6]~112_combout\)) # (!\inst|alu_y|R\(6) & ((\inst|ALU|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(6),
	datab => \inst|ALU|Result[6]~112_combout\,
	datac => \inst|ALU|_~9_combout\,
	datad => \inst|ALU|Result[6]~111_combout\,
	combout => \inst|ALU|Result[6]~113_combout\);

-- Location: LCCOMB_X37_Y25_N14
\inst|ALU|Result[6]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~115_combout\ = (\inst|ALU|Result[6]~114_combout\) # ((\inst|ALU|Result[6]~113_combout\) # ((\inst|ALU|_~10_combout\ & \inst|ALU|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[6]~114_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|Result[6]~113_combout\,
	datad => \inst|ALU|op_3~12_combout\,
	combout => \inst|ALU|Result[6]~115_combout\);

-- Location: LCCOMB_X39_Y26_N8
\inst|ALU|Result[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[6]~116_combout\ = (\inst|ALU|Result[6]~151_combout\) # ((\inst|ALU|Result[6]~115_combout\) # ((\inst|ALU|_~7_combout\ & \inst|ALU|op_2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~7_combout\,
	datab => \inst|ALU|Result[6]~151_combout\,
	datac => \inst|ALU|op_2~12_combout\,
	datad => \inst|ALU|Result[6]~115_combout\,
	combout => \inst|ALU|Result[6]~116_combout\);

-- Location: LCCOMB_X41_Y25_N22
\inst|alu_rl|R[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[6]~2_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rl|R\(6)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result[6]~116_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result[6]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rl|R\(6),
	datad => \inst|ALU|Result[6]~116_combout\,
	combout => \inst|alu_rl|R[6]~2_combout\);

-- Location: FF_X41_Y25_N23
\inst|alu_rl|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[6]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(6));

-- Location: LCCOMB_X40_Y25_N22
\inst|ALU|Result[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(14) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\ & \inst|ALU|_~2_combout\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~100_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT14\,
	datad => \inst|ALU|_~2_combout\,
	combout => \inst|ALU|Result\(14));

-- Location: LCCOMB_X41_Y25_N28
\inst|alu_rh|R[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[6]~1_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rh|R\(6)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result\(14))))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rh|R\(6),
	datad => \inst|ALU|Result\(14),
	combout => \inst|alu_rh|R[6]~1_combout\);

-- Location: FF_X41_Y25_N29
\inst|alu_rh|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[6]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(6));

-- Location: LCCOMB_X41_Y25_N12
\inst|BUS[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~13_combout\ = (\inst|alu_rl|R\(6) & ((\inst|_~6_combout\) # ((\inst|alu_rh|R\(6) & \inst|_~2_combout\)))) # (!\inst|alu_rl|R\(6) & (\inst|alu_rh|R\(6) & (\inst|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(6),
	datab => \inst|alu_rh|R\(6),
	datac => \inst|_~2_combout\,
	datad => \inst|_~6_combout\,
	combout => \inst|BUS[6]~13_combout\);

-- Location: LCCOMB_X40_Y11_N0
\inst|BUS[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~15_combout\ = (\inst|BUS[6]~14_combout\) # ((\inst|BUS[6]~13_combout\) # ((\inst|Bx|R\(6) & \inst|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~14_combout\,
	datab => \inst|BUS[6]~13_combout\,
	datac => \inst|Bx|R\(6),
	datad => \inst|_~5_combout\,
	combout => \inst|BUS[6]~15_combout\);

-- Location: LCCOMB_X40_Y11_N12
\inst|BUS[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[6]~21_combout\ = (\inst|BUS[6]~19_combout\) # ((\inst|BUS[6]~18_combout\) # ((\inst|BUS[6]~20_combout\) # (\inst|BUS[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[6]~19_combout\,
	datab => \inst|BUS[6]~18_combout\,
	datac => \inst|BUS[6]~20_combout\,
	datad => \inst|BUS[6]~15_combout\,
	combout => \inst|BUS[6]~21_combout\);

-- Location: LCCOMB_X40_Y7_N22
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

-- Location: LCCOMB_X40_Y7_N24
\inst|PC|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~6_combout\ = (\inst|PC|R\(4) & (!\inst|PC|op_1~5\)) # (!\inst|PC|R\(4) & ((\inst|PC|op_1~5\) # (GND)))
-- \inst|PC|op_1~7\ = CARRY((!\inst|PC|op_1~5\) # (!\inst|PC|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(4),
	datad => VCC,
	cin => \inst|PC|op_1~5\,
	combout => \inst|PC|op_1~6_combout\,
	cout => \inst|PC|op_1~7\);

-- Location: LCCOMB_X40_Y7_N26
\inst|PC|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~8_combout\ = (\inst|PC|R\(5) & (\inst|PC|op_1~7\ $ (GND))) # (!\inst|PC|R\(5) & (!\inst|PC|op_1~7\ & VCC))
-- \inst|PC|op_1~9\ = CARRY((\inst|PC|R\(5) & !\inst|PC|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(5),
	datad => VCC,
	cin => \inst|PC|op_1~7\,
	combout => \inst|PC|op_1~8_combout\,
	cout => \inst|PC|op_1~9\);

-- Location: LCCOMB_X40_Y7_N28
\inst|PC|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_1~10_combout\ = (\inst|PC|R\(6) & (!\inst|PC|op_1~9\)) # (!\inst|PC|R\(6) & ((\inst|PC|op_1~9\) # (GND)))
-- \inst|PC|op_1~11\ = CARRY((!\inst|PC|op_1~9\) # (!\inst|PC|R\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(6),
	datad => VCC,
	cin => \inst|PC|op_1~9\,
	combout => \inst|PC|op_1~10_combout\,
	cout => \inst|PC|op_1~11\);

-- Location: LCCOMB_X43_Y7_N22
\inst|PC|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|R[6]~4_combout\);

-- Location: LCCOMB_X40_Y7_N16
\inst|PC|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~8_combout\ = (\inst|PC|R\(7) & ((\inst|PC|R[5]~7_combout\) # ((\inst|PC|R\(5) & \inst|PC|R[6]~4_combout\)))) # (!\inst|PC|R\(7) & (\inst|PC|R\(5) & ((\inst|PC|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(7),
	datab => \inst|PC|R\(5),
	datac => \inst|PC|R[5]~7_combout\,
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[6]~8_combout\);

-- Location: LCCOMB_X42_Y7_N14
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

-- Location: LCCOMB_X42_Y7_N16
\inst|PC|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|op_2~12_combout\ = (\inst|PC|R\(6) & ((GND) # (!\inst|PC|op_2~11\))) # (!\inst|PC|R\(6) & (\inst|PC|op_2~11\ $ (GND)))
-- \inst|PC|op_2~13\ = CARRY((\inst|PC|R\(6)) # (!\inst|PC|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(6),
	datad => VCC,
	cin => \inst|PC|op_2~11\,
	combout => \inst|PC|op_2~12_combout\,
	cout => \inst|PC|op_2~13\);

-- Location: LCCOMB_X42_Y7_N26
\inst|PC|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~9_combout\ = (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~12_combout\) # ((\inst|PC|R[7]~36_combout\ & \inst|PC|R\(6))))) # (!\inst|PC|_~2_combout\ & (((\inst|PC|R[7]~36_combout\ & \inst|PC|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~2_combout\,
	datab => \inst|PC|op_2~12_combout\,
	datac => \inst|PC|R[7]~36_combout\,
	datad => \inst|PC|R\(6),
	combout => \inst|PC|R[6]~9_combout\);

-- Location: LCCOMB_X41_Y7_N26
\inst|PC|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~10_combout\ = (\inst|PC|R[6]~8_combout\) # ((\inst|PC|R[6]~9_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|op_1~10_combout\,
	datac => \inst|PC|R[6]~8_combout\,
	datad => \inst|PC|R[6]~9_combout\,
	combout => \inst|PC|R[6]~10_combout\);

-- Location: LCCOMB_X41_Y7_N22
\inst|PC|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[6]~11_combout\ = (\inst|PC|R[6]~10_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[6]~21_combout\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|BUS[6]~21_combout\,
	datac => \inst|PC|R[6]~10_combout\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|R[6]~11_combout\);

-- Location: FF_X41_Y7_N23
\inst|PC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(6));

-- Location: LCCOMB_X40_Y7_N14
\inst|PC|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~12_combout\ = (\inst|PC|R\(4) & ((\inst|PC|R[6]~4_combout\) # ((\inst|PC|R\(6) & \inst|PC|R[5]~7_combout\)))) # (!\inst|PC|R\(4) & (\inst|PC|R\(6) & (\inst|PC|R[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(4),
	datab => \inst|PC|R\(6),
	datac => \inst|PC|R[5]~7_combout\,
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[5]~12_combout\);

-- Location: LCCOMB_X42_Y7_N20
\inst|PC|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~13_combout\ = (\inst|PC|R\(5) & ((\inst|PC|R[7]~36_combout\) # ((\inst|PC|op_2~10_combout\ & \inst|PC|_~2_combout\)))) # (!\inst|PC|R\(5) & (((\inst|PC|op_2~10_combout\ & \inst|PC|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(5),
	datab => \inst|PC|R[7]~36_combout\,
	datac => \inst|PC|op_2~10_combout\,
	datad => \inst|PC|_~2_combout\,
	combout => \inst|PC|R[5]~13_combout\);

-- Location: LCCOMB_X41_Y7_N16
\inst|PC|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~14_combout\ = (\inst|PC|R[5]~12_combout\) # ((\inst|PC|R[5]~13_combout\) # ((\inst|PC|op_1~8_combout\ & \inst|PC|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[5]~12_combout\,
	datab => \inst|PC|op_1~8_combout\,
	datac => \inst|PC|R[5]~13_combout\,
	datad => \inst|PC|_~0_combout\,
	combout => \inst|PC|R[5]~14_combout\);

-- Location: LCCOMB_X41_Y7_N0
\inst|PC|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[5]~15_combout\ = (\inst|PC|R[5]~14_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[5]~31_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|PC|R[5]~14_combout\,
	datac => \inst|BUS[5]~31_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[5]~15_combout\);

-- Location: FF_X41_Y7_N1
\inst|PC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(5));

-- Location: LCCOMB_X40_Y7_N0
\inst|PC|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~16_combout\ = (\inst|PC|R\(3) & ((\inst|PC|R[6]~4_combout\) # ((\inst|PC|R[5]~7_combout\ & \inst|PC|R\(5))))) # (!\inst|PC|R\(3) & (\inst|PC|R[5]~7_combout\ & (\inst|PC|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(3),
	datab => \inst|PC|R[5]~7_combout\,
	datac => \inst|PC|R\(5),
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[4]~16_combout\);

-- Location: LCCOMB_X41_Y7_N18
\inst|PC|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~18_combout\ = (\inst|PC|R[4]~17_combout\) # ((\inst|PC|R[4]~16_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|R[4]~17_combout\,
	datac => \inst|PC|R[4]~16_combout\,
	datad => \inst|PC|op_1~6_combout\,
	combout => \inst|PC|R[4]~18_combout\);

-- Location: LCCOMB_X41_Y7_N10
\inst|PC|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[4]~19_combout\ = (\inst|PC|R[4]~18_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[4]~40_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|PC|R[4]~18_combout\,
	datac => \inst|BUS[4]~40_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[4]~19_combout\);

-- Location: FF_X41_Y7_N11
\inst|PC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(4));

-- Location: LCCOMB_X40_Y7_N6
\inst|PC|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~20_combout\ = (\inst|PC|R\(2) & ((\inst|PC|R[6]~4_combout\) # ((\inst|PC|R[5]~7_combout\ & \inst|PC|R\(4))))) # (!\inst|PC|R\(2) & (\inst|PC|R[5]~7_combout\ & (\inst|PC|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(2),
	datab => \inst|PC|R[5]~7_combout\,
	datac => \inst|PC|R\(4),
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[3]~20_combout\);

-- Location: LCCOMB_X42_Y7_N28
\inst|PC|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~21_combout\ = (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~6_combout\) # ((\inst|PC|R[7]~36_combout\ & \inst|PC|R\(3))))) # (!\inst|PC|_~2_combout\ & (\inst|PC|R[7]~36_combout\ & ((\inst|PC|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~2_combout\,
	datab => \inst|PC|R[7]~36_combout\,
	datac => \inst|PC|op_2~6_combout\,
	datad => \inst|PC|R\(3),
	combout => \inst|PC|R[3]~21_combout\);

-- Location: LCCOMB_X41_Y7_N28
\inst|PC|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~22_combout\ = (\inst|PC|R[3]~20_combout\) # ((\inst|PC|R[3]~21_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|R[3]~20_combout\,
	datac => \inst|PC|op_1~4_combout\,
	datad => \inst|PC|R[3]~21_combout\,
	combout => \inst|PC|R[3]~22_combout\);

-- Location: LCCOMB_X41_Y7_N20
\inst|PC|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[3]~23_combout\ = (\inst|PC|R[3]~22_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[3]~50_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|PC|R[3]~22_combout\,
	datac => \inst|BUS[3]~50_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[3]~23_combout\);

-- Location: FF_X41_Y7_N21
\inst|PC|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(3));

-- Location: LCCOMB_X40_Y7_N4
\inst|PC|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~24_combout\ = (\inst|PC|R\(3) & ((\inst|PC|R[5]~7_combout\) # ((\inst|PC|R\(1) & \inst|PC|R[6]~4_combout\)))) # (!\inst|PC|R\(3) & (((\inst|PC|R\(1) & \inst|PC|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(3),
	datab => \inst|PC|R[5]~7_combout\,
	datac => \inst|PC|R\(1),
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[2]~24_combout\);

-- Location: LCCOMB_X41_Y7_N2
\inst|PC|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~26_combout\ = (\inst|PC|R[2]~25_combout\) # ((\inst|PC|R[2]~24_combout\) # ((\inst|PC|op_1~2_combout\ & \inst|PC|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[2]~25_combout\,
	datab => \inst|PC|op_1~2_combout\,
	datac => \inst|PC|R[2]~24_combout\,
	datad => \inst|PC|_~0_combout\,
	combout => \inst|PC|R[2]~26_combout\);

-- Location: LCCOMB_X41_Y7_N30
\inst|PC|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[2]~27_combout\ = (\inst|PC|R[2]~26_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[2]~59_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|PC|R[2]~26_combout\,
	datac => \inst|BUS[2]~59_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[2]~27_combout\);

-- Location: FF_X41_Y7_N31
\inst|PC|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(2));

-- Location: LCCOMB_X39_Y7_N2
\inst|MAR|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[2]~6_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[2]~59_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC|R\(2),
	datac => \SelMAR~input_o\,
	datad => \inst|BUS[2]~59_combout\,
	combout => \inst|MAR|R[2]~6_combout\);

-- Location: FF_X39_Y7_N3
\inst|MAR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MAR|R[2]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(2));

-- Location: LCCOMB_X32_Y6_N10
\inst|MDR|R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MDR|R[0]~8_combout\ = (\SelMDR~input_o\ & (\inst|BUS[0]~78_combout\)) # (!\SelMDR~input_o\ & ((\RAM|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datab => \inst|BUS[0]~78_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|MDR|R[0]~8_combout\);

-- Location: FF_X32_Y6_N11
\inst|MDR|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|MDR|R[0]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|MDR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MDR|R\(0));

-- Location: LCCOMB_X39_Y11_N28
\inst|BUS[0]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~76_combout\ = (\inst|_~14_combout\ & ((\inst|IR|R\(0)) # ((\inst|_~10_combout\ & \inst|MDR|R\(0))))) # (!\inst|_~14_combout\ & (\inst|_~10_combout\ & ((\inst|MDR|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datab => \inst|_~10_combout\,
	datac => \inst|IR|R\(0),
	datad => \inst|MDR|R\(0),
	combout => \inst|BUS[0]~76_combout\);

-- Location: IOIBUF_X49_Y0_N8
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

-- Location: LCCOMB_X39_Y7_N26
\inst|BUS[0]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~74_combout\ = (\inst|_~9_combout\ & ((\inst|PC|R\(0)) # ((\inst|_~11_combout\ & \inst|MAR|R\(0))))) # (!\inst|_~9_combout\ & (((\inst|_~11_combout\ & \inst|MAR|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~9_combout\,
	datab => \inst|PC|R\(0),
	datac => \inst|_~11_combout\,
	datad => \inst|MAR|R\(0),
	combout => \inst|BUS[0]~74_combout\);

-- Location: LCCOMB_X41_Y10_N12
\inst|BUS[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~73_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|DI|R\(0))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Cx|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|R\(0),
	datab => \inst|Cx|R\(0),
	datac => \inst|_~3_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|BUS[0]~73_combout\);

-- Location: LCCOMB_X41_Y10_N6
\inst|BUS[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~75_combout\ = (\inst|BUS[0]~74_combout\) # ((\inst|BUS[0]~73_combout\) # ((\inst|_~8_combout\ & \Fx[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~8_combout\,
	datab => \Fx[0]~input_o\,
	datac => \inst|BUS[0]~74_combout\,
	datad => \inst|BUS[0]~73_combout\,
	combout => \inst|BUS[0]~75_combout\);

-- Location: FF_X40_Y11_N17
\inst|BP|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(0));

-- Location: LCCOMB_X40_Y11_N16
\inst|BUS[0]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~77_combout\ = (\inst|SI|R\(0) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(0))))) # (!\inst|SI|R\(0) & (\inst|_~13_combout\ & (\inst|BP|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(0),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(0),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[0]~77_combout\);

-- Location: LCCOMB_X39_Y25_N2
\inst|ALU|Result[0]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~145_combout\ = (\inst|ALU|op_2~0_combout\ & \inst|ALU|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~0_combout\,
	datad => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|Result[0]~145_combout\);

-- Location: LCCOMB_X35_Y25_N12
\inst|ALU|Result[0]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~148_combout\ = (\inst|ALU|Result[7]~119_combout\ & (((\inst|ALU|_~10_combout\ & \inst|ALU|op_3~0_combout\)) # (!\inst|alu_x|R[0]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~119_combout\ & (\inst|ALU|_~10_combout\ & 
-- (\inst|ALU|op_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~119_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|op_3~0_combout\,
	datad => \inst|alu_x|R[0]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[0]~148_combout\);

-- Location: LCCOMB_X36_Y26_N30
\inst|ALU|Result[0]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~146_combout\ = (\inst|ALU|_~16_combout\ & (((\inst|alu_x|R[0]~_Duplicate_1_q\) # (\inst|alu_y|R\(0))))) # (!\inst|ALU|_~16_combout\ & (\inst|ALU|_~17_combout\ & (\inst|alu_x|R[0]~_Duplicate_1_q\ & \inst|alu_y|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~17_combout\,
	datab => \inst|ALU|_~16_combout\,
	datac => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|Result[0]~146_combout\);

-- Location: LCCOMB_X36_Y25_N6
\inst|ALU|Result[0]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~147_combout\ = (\inst|ALU|_~2_combout\ & ((\inst|ALU|op_5|auto_generated|mac_out2~dataout\) # ((!\inst|alu_y|R\(0) & \inst|ALU|_~9_combout\)))) # (!\inst|ALU|_~2_combout\ & (!\inst|alu_y|R\(0) & (\inst|ALU|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~2_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~9_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~dataout\,
	combout => \inst|ALU|Result[0]~147_combout\);

-- Location: LCCOMB_X36_Y25_N8
\inst|ALU|Result[0]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~149_combout\ = (\inst|ALU|Result[0]~148_combout\) # ((\inst|ALU|Result[0]~146_combout\) # (\inst|ALU|Result[0]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[0]~148_combout\,
	datac => \inst|ALU|Result[0]~146_combout\,
	datad => \inst|ALU|Result[0]~147_combout\,
	combout => \inst|ALU|Result[0]~149_combout\);

-- Location: LCCOMB_X39_Y26_N2
\inst|ALU|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~26_combout\ = (\inst|alu_y|R\(7) & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~3_combout\,
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|Flags[7]~0_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|_~26_combout\);

-- Location: LCCOMB_X41_Y26_N22
\inst|ALU|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~24_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_y|R\(6) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_y|R\(6),
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~24_combout\);

-- Location: LCCOMB_X38_Y26_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\ & ((\inst|alu_y|R\(0)) # 
-- (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|_~3_combout\,
	datac => \inst|ALU|Flags[7]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\);

-- Location: LCCOMB_X38_Y26_N10
\inst|ALU|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~18_combout\ = (\inst|alu_y|R\(3) & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_y|R\(3),
	datac => \inst|ALU|Flags[7]~0_combout\,
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~18_combout\);

-- Location: LCCOMB_X37_Y26_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ = (\inst|ALU|_~11_combout\ & ((\inst|alu_y|R\(3)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~0_combout\,
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|alu_y|R\(3),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\);

-- Location: LCCOMB_X38_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X37_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X38_Y26_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & (((\inst|ALU|_~15_combout\)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|ALU|_~15_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|ALU|_~15_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[18]~4_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X36_Y26_N2
\inst|ALU|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~19_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_x|R[4]~_Duplicate_1_q\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~19_combout\);

-- Location: LCCOMB_X38_Y26_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\inst|ALU|_~19_combout\ & ((GND) # (!\inst|ALU|_~14_combout\))) # (!\inst|ALU|_~19_combout\ & (\inst|ALU|_~14_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst|ALU|_~19_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~19_combout\,
	datab => \inst|ALU|_~14_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X38_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|ALU|_~12_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\))) # (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X38_Y26_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ $ (\inst|ALU|_~13_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\inst|ALU|_~13_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\ & 
-- (!\inst|ALU|_~13_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \inst|ALU|_~13_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X38_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|ALU|_~18_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\))) # (!\inst|ALU|_~18_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~18_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X38_Y26_N20
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

-- Location: LCCOMB_X38_Y26_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X39_Y26_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ = (\inst|ALU|_~11_combout\ & ((\inst|alu_y|R\(5)) # ((\inst|alu_y|R\(7)) # (\inst|alu_y|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(5),
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|alu_y|R\(6),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\);

-- Location: LCCOMB_X36_Y26_N0
\inst|ALU|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~20_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_y|R\(4) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|ALU|_~3_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|alu_y|R\(4),
	combout => \inst|ALU|_~20_combout\);

-- Location: LCCOMB_X38_Y26_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X38_Y26_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X38_Y26_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & (((\inst|ALU|_~19_combout\)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|ALU|_~19_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \inst|ALU|_~19_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X39_Y26_N10
\inst|ALU|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~21_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~21_combout\);

-- Location: LCCOMB_X39_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\inst|ALU|_~21_combout\ & ((GND) # (!\inst|ALU|_~14_combout\))) # (!\inst|ALU|_~21_combout\ & (\inst|ALU|_~14_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\inst|ALU|_~21_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~21_combout\,
	datab => \inst|ALU|_~14_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X39_Y26_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # (!\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst|ALU|_~12_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\))) # (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X39_Y26_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\inst|ALU|_~13_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\inst|ALU|_~13_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\ & 
-- (!\inst|ALU|_~13_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \inst|ALU|_~13_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X39_Y26_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # (!\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst|ALU|_~18_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\))) # (!\inst|ALU|_~18_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~18_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X39_Y26_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\inst|ALU|_~20_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\inst|ALU|_~20_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & 
-- (!\inst|ALU|_~20_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \inst|ALU|_~20_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X39_Y26_N28
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

-- Location: LCCOMB_X39_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X41_Y26_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ = (\inst|ALU|_~11_combout\ & ((\inst|alu_y|R\(7)) # (\inst|alu_y|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~11_combout\,
	datab => \inst|alu_y|R\(7),
	datad => \inst|alu_y|R\(6),
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\);

-- Location: LCCOMB_X39_Y26_N12
\inst|ALU|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~22_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_y|R\(5) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|ALU|_~3_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|alu_y|R\(5),
	combout => \inst|ALU|_~22_combout\);

-- Location: LCCOMB_X40_Y26_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X40_Y26_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X39_Y26_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\)))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X39_Y26_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & (\inst|ALU|_~21_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\inst|ALU|_~21_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~21_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X34_Y26_N4
\inst|ALU|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~23_combout\ = (\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|_~23_combout\);

-- Location: LCCOMB_X40_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\inst|ALU|_~23_combout\ & ((GND) # (!\inst|ALU|_~14_combout\))) # (!\inst|ALU|_~23_combout\ & (\inst|ALU|_~14_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\inst|ALU|_~23_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~23_combout\,
	datab => \inst|ALU|_~14_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X40_Y26_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~12_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\inst|ALU|_~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))) # 
-- (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\inst|ALU|_~12_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\inst|ALU|_~12_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datab => \inst|ALU|_~12_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X40_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\inst|ALU|_~13_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\inst|ALU|_~13_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)) # (!\inst|ALU|_~13_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X40_Y26_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~18_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\inst|ALU|_~18_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~18_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\inst|ALU|_~18_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\inst|ALU|_~18_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X40_Y26_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ $ (\inst|ALU|_~20_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\) # (!\inst|ALU|_~20_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- (!\inst|ALU|_~20_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datab => \inst|ALU|_~20_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X40_Y26_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\inst|ALU|_~22_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\inst|ALU|_~22_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))) # 
-- (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\inst|ALU|_~22_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\inst|ALU|_~22_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \inst|ALU|_~22_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X40_Y26_N26
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

-- Location: LCCOMB_X40_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X40_Y26_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X40_Y26_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X40_Y26_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X40_Y26_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X40_Y26_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\inst|ALU|_~23_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & (\inst|ALU|_~23_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~23_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X34_Y26_N26
\inst|ALU|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~25_combout\ = (\inst|alu_x|R[1]~_Duplicate_1_q\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|_~25_combout\);

-- Location: LCCOMB_X41_Y26_N6
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\inst|ALU|_~14_combout\ & (\inst|ALU|_~25_combout\ $ (VCC))) # (!\inst|ALU|_~14_combout\ & ((\inst|ALU|_~25_combout\) # (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\inst|ALU|_~25_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~14_combout\,
	datab => \inst|ALU|_~25_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X41_Y26_N8
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\inst|ALU|_~12_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\inst|ALU|_~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\inst|ALU|_~12_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\inst|ALU|_~12_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \inst|ALU|_~12_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X41_Y26_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\inst|ALU|_~13_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # (!\inst|ALU|_~13_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\ & 
-- (!\inst|ALU|_~13_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \inst|ALU|_~13_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X41_Y26_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~18_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\inst|ALU|_~18_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~18_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\inst|ALU|_~18_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\inst|ALU|_~18_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X41_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\inst|ALU|_~20_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\inst|ALU|_~20_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\inst|ALU|_~20_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~20_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X41_Y26_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))))) # (!\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\inst|ALU|_~22_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\))) # (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~22_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X41_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\inst|ALU|_~24_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\inst|ALU|_~24_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # (!\inst|ALU|_~24_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~24_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X41_Y26_N20
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

-- Location: LCCOMB_X41_Y26_N28
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\)))) # 
-- (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LCCOMB_X41_Y26_N26
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\)))) # 
-- (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\);

-- Location: LCCOMB_X41_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\inst|ALU|_~26_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\)) # (!\inst|ALU|_~26_combout\ 
-- & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\);

-- Location: LCCOMB_X41_Y26_N30
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\)))) # 
-- (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datab => \inst|ALU|_~26_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\);

-- Location: LCCOMB_X41_Y26_N0
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\)))) # 
-- (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datab => \inst|ALU|_~26_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X42_Y26_N4
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\)))) # 
-- (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datab => \inst|ALU|_~26_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X41_Y26_N2
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\inst|ALU|_~26_combout\ & (((\inst|ALU|_~25_combout\)))) # (!\inst|ALU|_~26_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\inst|ALU|_~25_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ 
-- & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datab => \inst|ALU|_~25_combout\,
	datac => \inst|ALU|_~26_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: LCCOMB_X43_Y26_N20
\inst|ALU|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~27_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_x|R[0]~_Duplicate_1_q\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|alu_x|R[0]~_Duplicate_1_q\,
	combout => \inst|ALU|_~27_combout\);

-- Location: LCCOMB_X42_Y26_N10
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\inst|ALU|_~27_combout\ & ((GND) # (!\inst|ALU|_~14_combout\))) # (!\inst|ALU|_~27_combout\ & (\inst|ALU|_~14_combout\ $ (GND)))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\inst|ALU|_~27_combout\) # (!\inst|ALU|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~27_combout\,
	datab => \inst|ALU|_~14_combout\,
	datad => VCC,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

-- Location: LCCOMB_X42_Y26_N12
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\inst|ALU|_~12_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\inst|ALU|_~12_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\inst|ALU|_~12_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND))) # 
-- (!\inst|ALU|_~12_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ & (\inst|ALU|_~12_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\ & ((\inst|ALU|_~12_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datab => \inst|ALU|_~12_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

-- Location: LCCOMB_X42_Y26_N14
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\inst|ALU|_~13_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\inst|ALU|_~13_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)) # (!\inst|ALU|_~13_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~13_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

-- Location: LCCOMB_X42_Y26_N16
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\inst|ALU|_~18_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\inst|ALU|_~18_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\inst|ALU|_~18_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND))) # 
-- (!\inst|ALU|_~18_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ & (\inst|ALU|_~18_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\ & ((\inst|ALU|_~18_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datab => \inst|ALU|_~18_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

-- Location: LCCOMB_X42_Y26_N18
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\inst|ALU|_~20_combout\ $ (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\inst|ALU|_~20_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)) # (!\inst|ALU|_~20_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~20_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

-- Location: LCCOMB_X42_Y26_N20
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND))))) # (!\inst|ALU|_~22_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\inst|ALU|_~22_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\))) # (!\inst|ALU|_~22_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~22_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

-- Location: LCCOMB_X42_Y26_N22
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ $ (\inst|ALU|_~24_combout\ $ 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # (GND)
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ & 
-- ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\) # (!\inst|ALU|_~24_combout\))) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ & 
-- (!\inst|ALU|_~24_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \inst|ALU|_~24_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

-- Location: LCCOMB_X42_Y26_N24
\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND))))) # (!\inst|ALU|_~26_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\))))
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\inst|ALU|_~26_combout\ & ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\))) # (!\inst|ALU|_~26_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~26_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datad => VCC,
	cin => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

-- Location: LCCOMB_X42_Y26_N26
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

-- Location: LCCOMB_X42_Y25_N18
\inst|alu_rl|R[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[0]~8_combout\ = (\inst|ALU|Result[0]~145_combout\) # ((\inst|ALU|Result[0]~149_combout\) # ((\inst|ALU|_~11_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[0]~145_combout\,
	datab => \inst|ALU|Result[0]~149_combout\,
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|alu_rl|R[0]~8_combout\);

-- Location: LCCOMB_X42_Y25_N10
\inst|alu_rl|R[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[0]~9_combout\ = (\inst|DI|_~0_combout\ & ((\inst|alu_rl|R[0]~8_combout\) # ((\inst|alu_rl|R[7]~0_combout\ & \inst|alu_rl|R\(0))))) # (!\inst|DI|_~0_combout\ & (\inst|alu_rl|R[7]~0_combout\ & (\inst|alu_rl|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|alu_rl|R[7]~0_combout\,
	datac => \inst|alu_rl|R\(0),
	datad => \inst|alu_rl|R[0]~8_combout\,
	combout => \inst|alu_rl|R[0]~9_combout\);

-- Location: FF_X42_Y25_N11
\inst|alu_rl|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[0]~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(0));

-- Location: LCCOMB_X35_Y25_N6
\inst|ALU|Result[8]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~102_combout\ = (\SelOp[2]~input_o\ & (((\SelOp[1]~input_o\)))) # (!\SelOp[2]~input_o\ & (\SelOp[0]~input_o\ & (!\SelOp[1]~input_o\ & \inst|ALU|op_3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \inst|ALU|op_3~16_combout\,
	combout => \inst|ALU|Result[8]~102_combout\);

-- Location: LCCOMB_X35_Y26_N14
\inst|ALU|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_2~14_combout\ = (\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|alu_y|R\(7) & (\inst|ALU|op_2~13\ & VCC)) # (!\inst|alu_y|R\(7) & (!\inst|ALU|op_2~13\)))) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & ((\inst|alu_y|R\(7) & (!\inst|ALU|op_2~13\)) # 
-- (!\inst|alu_y|R\(7) & ((\inst|ALU|op_2~13\) # (GND)))))
-- \inst|ALU|op_2~15\ = CARRY((\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|alu_y|R\(7) & !\inst|ALU|op_2~13\)) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & ((!\inst|ALU|op_2~13\) # (!\inst|alu_y|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(7),
	datad => VCC,
	cin => \inst|ALU|op_2~13\,
	combout => \inst|ALU|op_2~14_combout\,
	cout => \inst|ALU|op_2~15\);

-- Location: LCCOMB_X35_Y26_N16
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

-- Location: LCCOMB_X36_Y25_N18
\inst|ALU|Result[8]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~101_combout\ = (\inst|ALU|_~7_combout\ & ((\inst|ALU|op_2~16_combout\) # ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\ & \inst|ALU|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~16_combout\,
	datab => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\,
	datac => \inst|ALU|_~2_combout\,
	datad => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|Result[8]~101_combout\);

-- Location: LCCOMB_X36_Y25_N0
\inst|ALU|Result[8]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[8]~103_combout\ = (\inst|ALU|Result[8]~102_combout\) # ((\inst|ALU|Result[8]~101_combout\) # ((\inst|ALU|_~2_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~2_combout\,
	datab => \inst|ALU|Result[8]~102_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT8\,
	datad => \inst|ALU|Result[8]~101_combout\,
	combout => \inst|ALU|Result[8]~103_combout\);

-- Location: LCCOMB_X42_Y25_N16
\inst|alu_rh|R[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[0]~7_combout\ = (\inst|ALU|Result[8]~103_combout\ & ((\inst|DI|_~0_combout\) # ((\inst|alu_rh|R\(0) & \inst|alu_rl|R[7]~0_combout\)))) # (!\inst|ALU|Result[8]~103_combout\ & (((\inst|alu_rh|R\(0) & \inst|alu_rl|R[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[8]~103_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rh|R\(0),
	datad => \inst|alu_rl|R[7]~0_combout\,
	combout => \inst|alu_rh|R[0]~7_combout\);

-- Location: FF_X42_Y25_N17
\inst|alu_rh|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[0]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(0));

-- Location: LCCOMB_X42_Y25_N20
\inst|BUS[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~70_combout\ = (\inst|alu_rl|R\(0) & ((\inst|_~6_combout\) # ((\inst|_~2_combout\ & \inst|alu_rh|R\(0))))) # (!\inst|alu_rl|R\(0) & (((\inst|_~2_combout\ & \inst|alu_rh|R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(0),
	datab => \inst|_~6_combout\,
	datac => \inst|_~2_combout\,
	datad => \inst|alu_rh|R\(0),
	combout => \inst|BUS[0]~70_combout\);

-- Location: LCCOMB_X42_Y13_N10
\inst|BUS[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~71_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|SP|R\(0))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Ax|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(0),
	datab => \inst|Ax|R\(0),
	datac => \inst|SelBus[4]~4_combout\,
	datad => \inst|_~0_combout\,
	combout => \inst|BUS[0]~71_combout\);

-- Location: LCCOMB_X42_Y13_N28
\inst|BUS[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~72_combout\ = (\inst|BUS[0]~70_combout\) # ((\inst|BUS[0]~71_combout\) # ((\inst|_~5_combout\ & \inst|Bx|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~70_combout\,
	datab => \inst|_~5_combout\,
	datac => \inst|Bx|R\(0),
	datad => \inst|BUS[0]~71_combout\,
	combout => \inst|BUS[0]~72_combout\);

-- Location: LCCOMB_X41_Y11_N0
\inst|BUS[0]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[0]~78_combout\ = (\inst|BUS[0]~76_combout\) # ((\inst|BUS[0]~75_combout\) # ((\inst|BUS[0]~77_combout\) # (\inst|BUS[0]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~76_combout\,
	datab => \inst|BUS[0]~75_combout\,
	datac => \inst|BUS[0]~77_combout\,
	datad => \inst|BUS[0]~72_combout\,
	combout => \inst|BUS[0]~78_combout\);

-- Location: FF_X41_Y11_N1
\inst|DST|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|BUS[0]~78_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(0));

-- Location: LCCOMB_X41_Y11_N8
\inst|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~17_combout\ = (\inst|SelMUX[1]~0_combout\ & ((\SelDST~input_o\ & (!\DST_UC[0]~input_o\)) # (!\SelDST~input_o\ & ((!\inst|DST|R\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \inst|SelMUX[1]~0_combout\,
	datac => \DST_UC[0]~input_o\,
	datad => \inst|DST|R\(0),
	combout => \inst|_~17_combout\);

-- Location: LCCOMB_X38_Y11_N10
\inst|IR|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR|R[0]~0_combout\ = (\inst|BP|R[0]~0_combout\ & \inst|_~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BP|R[0]~0_combout\,
	datac => \inst|_~17_combout\,
	combout => \inst|IR|R[0]~0_combout\);

-- Location: FF_X39_Y11_N13
\inst|IR|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(3));

-- Location: FF_X40_Y11_N5
\inst|BP|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(3));

-- Location: LCCOMB_X40_Y11_N4
\inst|BUS[3]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~48_combout\ = (\inst|SI|R\(3) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(3))))) # (!\inst|SI|R\(3) & (\inst|_~13_combout\ & (\inst|BP|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(3),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[3]~48_combout\);

-- Location: LCCOMB_X39_Y11_N12
\inst|BUS[3]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~49_combout\ = (\inst|BUS[3]~48_combout\) # ((\inst|_~14_combout\ & \inst|IR|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datac => \inst|IR|R\(3),
	datad => \inst|BUS[3]~48_combout\,
	combout => \inst|BUS[3]~49_combout\);

-- Location: LCCOMB_X39_Y11_N6
\inst|BUS[3]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~47_combout\ = (\inst|_~11_combout\ & ((\inst|MAR|R\(3)) # ((\inst|_~10_combout\ & \inst|MDR|R\(3))))) # (!\inst|_~11_combout\ & (((\inst|_~10_combout\ & \inst|MDR|R\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~11_combout\,
	datab => \inst|MAR|R\(3),
	datac => \inst|_~10_combout\,
	datad => \inst|MDR|R\(3),
	combout => \inst|BUS[3]~47_combout\);

-- Location: IOIBUF_X58_Y0_N1
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

-- Location: LCCOMB_X39_Y7_N24
\inst|BUS[3]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~46_combout\ = (\Fx[3]~input_o\ & ((\inst|_~8_combout\) # ((\inst|PC|R\(3) & \inst|_~9_combout\)))) # (!\Fx[3]~input_o\ & (\inst|PC|R\(3) & (\inst|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fx[3]~input_o\,
	datab => \inst|PC|R\(3),
	datac => \inst|_~9_combout\,
	datad => \inst|_~8_combout\,
	combout => \inst|BUS[3]~46_combout\);

-- Location: LCCOMB_X41_Y10_N4
\inst|BUS[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~43_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|DI|R\(3))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Cx|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~3_combout\,
	datab => \inst|DI|R\(3),
	datac => \inst|Cx|R\(3),
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|BUS[3]~43_combout\);

-- Location: LCCOMB_X40_Y25_N30
\inst|ALU|Result[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(11) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\ & \inst|ALU|_~2_combout\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Result[16]~100_combout\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT11\,
	datad => \inst|ALU|_~2_combout\,
	combout => \inst|ALU|Result\(11));

-- Location: LCCOMB_X40_Y25_N28
\inst|alu_rh|R[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[3]~4_combout\ = (\inst|ALU|Result\(11) & ((\inst|DI|_~0_combout\) # ((\inst|alu_rl|R[7]~0_combout\ & \inst|alu_rh|R\(3))))) # (!\inst|ALU|Result\(11) & (\inst|alu_rl|R[7]~0_combout\ & (\inst|alu_rh|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(11),
	datab => \inst|alu_rl|R[7]~0_combout\,
	datac => \inst|alu_rh|R\(3),
	datad => \inst|DI|_~0_combout\,
	combout => \inst|alu_rh|R[3]~4_combout\);

-- Location: FF_X40_Y25_N29
\inst|alu_rh|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[3]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(3));

-- Location: LCCOMB_X42_Y15_N14
\inst|BUS[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~41_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|SP|R\(3))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Ax|R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(3),
	datab => \inst|Ax|R\(3),
	datac => \inst|SelBus[4]~4_combout\,
	datad => \inst|_~0_combout\,
	combout => \inst|BUS[3]~41_combout\);

-- Location: LCCOMB_X41_Y17_N0
\inst|BUS[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~42_combout\ = (\inst|BUS[3]~41_combout\) # ((\inst|_~2_combout\ & \inst|alu_rh|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~2_combout\,
	datac => \inst|alu_rh|R\(3),
	datad => \inst|BUS[3]~41_combout\,
	combout => \inst|BUS[3]~42_combout\);

-- Location: LCCOMB_X41_Y17_N30
\inst|BUS[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~44_combout\ = (\inst|BUS[3]~43_combout\) # ((\inst|BUS[3]~42_combout\) # ((\inst|_~5_combout\ & \inst|Bx|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~5_combout\,
	datab => \inst|BUS[3]~43_combout\,
	datac => \inst|Bx|R\(3),
	datad => \inst|BUS[3]~42_combout\,
	combout => \inst|BUS[3]~44_combout\);

-- Location: LCCOMB_X39_Y26_N30
\inst|ALU|Result[3]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~153_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[36]~6_combout\,
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|Result[3]~153_combout\);

-- Location: LCCOMB_X36_Y25_N10
\inst|ALU|Result[3]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~131_combout\ = (\inst|ALU|_~2_combout\ & ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\) # ((!\inst|alu_y|R\(3) & \inst|ALU|_~9_combout\)))) # (!\inst|ALU|_~2_combout\ & (!\inst|alu_y|R\(3) & (\inst|ALU|_~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~2_combout\,
	datab => \inst|alu_y|R\(3),
	datac => \inst|ALU|_~9_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT3\,
	combout => \inst|ALU|Result[3]~131_combout\);

-- Location: LCCOMB_X36_Y25_N28
\inst|ALU|Result[3]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~130_combout\ = (\inst|ALU|op_3~6_combout\ & ((\inst|ALU|_~10_combout\) # ((\inst|ALU|Result[7]~119_combout\ & !\inst|alu_x|R[3]~_Duplicate_1_q\)))) # (!\inst|ALU|op_3~6_combout\ & (\inst|ALU|Result[7]~119_combout\ & 
-- ((!\inst|alu_x|R[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~6_combout\,
	datab => \inst|ALU|Result[7]~119_combout\,
	datac => \inst|ALU|_~10_combout\,
	datad => \inst|alu_x|R[3]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[3]~130_combout\);

-- Location: LCCOMB_X36_Y25_N24
\inst|ALU|Result[3]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~132_combout\ = (\inst|ALU|Result[3]~131_combout\) # ((\inst|ALU|Result[3]~130_combout\) # ((\inst|ALU|_~7_combout\ & \inst|ALU|op_2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[3]~131_combout\,
	datab => \inst|ALU|_~7_combout\,
	datac => \inst|ALU|op_2~6_combout\,
	datad => \inst|ALU|Result[3]~130_combout\,
	combout => \inst|ALU|Result[3]~132_combout\);

-- Location: LCCOMB_X36_Y25_N2
\inst|ALU|Result[3]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~129_combout\ = (\inst|ALU|_~16_combout\ & ((\inst|alu_y|R\(3)) # ((\inst|alu_x|R[3]~_Duplicate_1_q\)))) # (!\inst|ALU|_~16_combout\ & (\inst|alu_y|R\(3) & (\inst|ALU|_~17_combout\ & \inst|alu_x|R[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|alu_y|R\(3),
	datac => \inst|ALU|_~17_combout\,
	datad => \inst|alu_x|R[3]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[3]~129_combout\);

-- Location: LCCOMB_X40_Y25_N0
\inst|ALU|Result[3]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[3]~133_combout\ = (\inst|ALU|Result[3]~132_combout\) # ((\inst|ALU|Result[3]~129_combout\) # ((\inst|ALU|Result[3]~153_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[3]~153_combout\,
	datab => \inst|ALU|Result[3]~132_combout\,
	datac => \inst|ALU|Result[3]~129_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|ALU|Result[3]~133_combout\);

-- Location: LCCOMB_X40_Y25_N10
\inst|alu_rl|R[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[3]~5_combout\ = (\inst|DI|_~0_combout\ & ((\inst|ALU|Result[3]~133_combout\) # ((\inst|alu_rl|R[7]~0_combout\ & \inst|alu_rl|R\(3))))) # (!\inst|DI|_~0_combout\ & (\inst|alu_rl|R[7]~0_combout\ & (\inst|alu_rl|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|alu_rl|R[7]~0_combout\,
	datac => \inst|alu_rl|R\(3),
	datad => \inst|ALU|Result[3]~133_combout\,
	combout => \inst|alu_rl|R[3]~5_combout\);

-- Location: FF_X40_Y25_N11
\inst|alu_rl|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[3]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(3));

-- Location: LCCOMB_X41_Y17_N8
\inst|BUS[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~45_combout\ = (\inst|BUS[3]~44_combout\) # (((\inst|_~6_combout\ & \inst|alu_rl|R\(3))) # (!\inst|BUS[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~44_combout\,
	datab => \inst|_~6_combout\,
	datac => \inst|alu_rl|R\(3),
	datad => \inst|BUS[7]~6_combout\,
	combout => \inst|BUS[3]~45_combout\);

-- Location: LCCOMB_X40_Y11_N14
\inst|BUS[3]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[3]~50_combout\ = (\inst|BUS[3]~49_combout\) # ((\inst|BUS[3]~47_combout\) # ((\inst|BUS[3]~46_combout\) # (\inst|BUS[3]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~49_combout\,
	datab => \inst|BUS[3]~47_combout\,
	datac => \inst|BUS[3]~46_combout\,
	datad => \inst|BUS[3]~45_combout\,
	combout => \inst|BUS[3]~50_combout\);

-- Location: FF_X41_Y11_N19
\inst|DST|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[3]~50_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(3));

-- Location: IOIBUF_X78_Y18_N15
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

-- Location: LCCOMB_X41_Y11_N22
\inst|SelMUX[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[3]~1_combout\ = (\SelDST~input_o\ & ((\DST_UC[3]~input_o\))) # (!\SelDST~input_o\ & (\inst|DST|R\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DST|R\(3),
	datac => \SelDST~input_o\,
	datad => \DST_UC[3]~input_o\,
	combout => \inst|SelMUX[3]~1_combout\);

-- Location: LCCOMB_X38_Y11_N14
\inst|DST|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[0]~0_combout\ = (!\inst|SelMUX[4]~3_combout\ & (\inst|DI|_~0_combout\ & (\inst|SelMUX[3]~1_combout\ & !\inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[4]~3_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|SelMUX[3]~1_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|DST|R[0]~0_combout\);

-- Location: LCCOMB_X39_Y11_N26
\inst|DST|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST|R[0]~1_combout\ = (\inst|DST|R[0]~0_combout\ & \inst|_~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DST|R[0]~0_combout\,
	datad => \inst|_~22_combout\,
	combout => \inst|DST|R[0]~1_combout\);

-- Location: FF_X41_Y11_N21
\inst|DST|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(4));

-- Location: LCCOMB_X41_Y11_N28
\inst|SelMUX[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[4]~3_combout\ = (\SelDST~input_o\ & (\DST_UC[4]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DST_UC[4]~input_o\,
	datac => \SelDST~input_o\,
	datad => \inst|DST|R\(4),
	combout => \inst|SelMUX[4]~3_combout\);

-- Location: LCCOMB_X42_Y11_N16
\inst|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~24_combout\ = (!\inst|SelMUX[2]~2_combout\ & (!\inst|SelMUX[4]~3_combout\ & (\inst|_~16_combout\ & \inst|SelMUX[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[2]~2_combout\,
	datab => \inst|SelMUX[4]~3_combout\,
	datac => \inst|_~16_combout\,
	datad => \inst|SelMUX[3]~1_combout\,
	combout => \inst|_~24_combout\);

-- Location: LCCOMB_X42_Y7_N0
\inst|PC|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~29_combout\ = (\inst|PC|op_2~2_combout\ & ((\inst|PC|_~2_combout\) # ((\inst|PC|R[7]~36_combout\ & \inst|PC|R\(1))))) # (!\inst|PC|op_2~2_combout\ & (\inst|PC|R[7]~36_combout\ & (\inst|PC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|op_2~2_combout\,
	datab => \inst|PC|R[7]~36_combout\,
	datac => \inst|PC|R\(1),
	datad => \inst|PC|_~2_combout\,
	combout => \inst|PC|R[1]~29_combout\);

-- Location: LCCOMB_X40_Y7_N2
\inst|PC|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~28_combout\ = (\inst|PC|R\(0) & ((\inst|PC|R[6]~4_combout\) # ((\inst|PC|R[5]~7_combout\ & \inst|PC|R\(2))))) # (!\inst|PC|R\(0) & (\inst|PC|R[5]~7_combout\ & (\inst|PC|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(0),
	datab => \inst|PC|R[5]~7_combout\,
	datac => \inst|PC|R\(2),
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[1]~28_combout\);

-- Location: LCCOMB_X40_Y7_N12
\inst|PC|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~30_combout\ = (\inst|PC|R[1]~29_combout\) # ((\inst|PC|R[1]~28_combout\) # ((\inst|PC|_~0_combout\ & \inst|PC|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~0_combout\,
	datab => \inst|PC|op_1~0_combout\,
	datac => \inst|PC|R[1]~29_combout\,
	datad => \inst|PC|R[1]~28_combout\,
	combout => \inst|PC|R[1]~30_combout\);

-- Location: LCCOMB_X41_Y7_N4
\inst|PC|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[1]~31_combout\ = (\inst|PC|R[1]~30_combout\) # ((\inst|_~24_combout\ & (\inst|BUS[1]~69_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~24_combout\,
	datab => \inst|PC|R[1]~30_combout\,
	datac => \inst|BUS[1]~69_combout\,
	datad => \inst|DI|_~0_combout\,
	combout => \inst|PC|R[1]~31_combout\);

-- Location: FF_X41_Y7_N5
\inst|PC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(1));

-- Location: IOIBUF_X78_Y17_N1
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

-- Location: LCCOMB_X41_Y10_N18
\inst|BUS[1]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~65_combout\ = (\inst|PC|R\(1) & ((\inst|_~9_combout\) # ((\Fx[1]~input_o\ & \inst|_~8_combout\)))) # (!\inst|PC|R\(1) & (\Fx[1]~input_o\ & (\inst|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(1),
	datab => \Fx[1]~input_o\,
	datac => \inst|_~8_combout\,
	datad => \inst|_~9_combout\,
	combout => \inst|BUS[1]~65_combout\);

-- Location: FF_X39_Y11_N17
\inst|IR|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(1));

-- Location: FF_X40_Y11_N19
\inst|BP|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(1));

-- Location: LCCOMB_X40_Y11_N18
\inst|BUS[1]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~67_combout\ = (\inst|SI|R\(1) & ((\inst|_~12_combout\) # ((\inst|BP|R\(1) & \inst|_~13_combout\)))) # (!\inst|SI|R\(1) & (((\inst|BP|R\(1) & \inst|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(1),
	datab => \inst|_~12_combout\,
	datac => \inst|BP|R\(1),
	datad => \inst|_~13_combout\,
	combout => \inst|BUS[1]~67_combout\);

-- Location: LCCOMB_X39_Y11_N16
\inst|BUS[1]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~68_combout\ = (\inst|BUS[1]~67_combout\) # ((\inst|_~14_combout\ & \inst|IR|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datac => \inst|IR|R\(1),
	datad => \inst|BUS[1]~67_combout\,
	combout => \inst|BUS[1]~68_combout\);

-- Location: LCCOMB_X39_Y7_N16
\inst|BUS[1]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~66_combout\ = (\inst|MDR|R\(1) & ((\inst|_~10_combout\) # ((\inst|MAR|R\(1) & \inst|_~11_combout\)))) # (!\inst|MDR|R\(1) & (\inst|MAR|R\(1) & (\inst|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(1),
	datab => \inst|MAR|R\(1),
	datac => \inst|_~11_combout\,
	datad => \inst|_~10_combout\,
	combout => \inst|BUS[1]~66_combout\);

-- Location: LCCOMB_X36_Y25_N30
\inst|ALU|Result[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(9) = ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\ & \inst|ALU|_~2_combout\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT9\,
	datab => \inst|ALU|Result[16]~100_combout\,
	datac => \inst|ALU|_~2_combout\,
	combout => \inst|ALU|Result\(9));

-- Location: LCCOMB_X40_Y25_N6
\inst|alu_rh|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[1]~6_combout\ = (\inst|DI|_~0_combout\ & ((\inst|ALU|Result\(9)) # ((\inst|alu_rh|R\(1) & \inst|alu_rl|R[7]~0_combout\)))) # (!\inst|DI|_~0_combout\ & (((\inst|alu_rh|R\(1) & \inst|alu_rl|R[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|ALU|Result\(9),
	datac => \inst|alu_rh|R\(1),
	datad => \inst|alu_rl|R[7]~0_combout\,
	combout => \inst|alu_rh|R[1]~6_combout\);

-- Location: FF_X40_Y25_N7
\inst|alu_rh|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[1]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(1));

-- Location: LCCOMB_X42_Y15_N20
\inst|BUS[1]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~60_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|SP|R\(1)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Ax|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelBus[4]~4_combout\,
	datab => \inst|_~0_combout\,
	datac => \inst|Ax|R\(1),
	datad => \inst|SP|R\(1),
	combout => \inst|BUS[1]~60_combout\);

-- Location: LCCOMB_X42_Y17_N10
\inst|BUS[1]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~61_combout\ = (\inst|BUS[1]~60_combout\) # ((\inst|_~2_combout\ & \inst|alu_rh|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~2_combout\,
	datac => \inst|alu_rh|R\(1),
	datad => \inst|BUS[1]~60_combout\,
	combout => \inst|BUS[1]~61_combout\);

-- Location: LCCOMB_X41_Y10_N24
\inst|BUS[1]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~62_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|DI|R\(1)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Cx|R\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(1),
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|_~3_combout\,
	datad => \inst|DI|R\(1),
	combout => \inst|BUS[1]~62_combout\);

-- Location: LCCOMB_X41_Y17_N10
\inst|BUS[1]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~63_combout\ = (\inst|BUS[1]~61_combout\) # ((\inst|BUS[1]~62_combout\) # ((\inst|_~5_combout\ & \inst|Bx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~5_combout\,
	datab => \inst|Bx|R\(1),
	datac => \inst|BUS[1]~61_combout\,
	datad => \inst|BUS[1]~62_combout\,
	combout => \inst|BUS[1]~63_combout\);

-- Location: LCCOMB_X35_Y25_N18
\inst|ALU|Result[1]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~140_combout\ = (\SelOp[2]~input_o\ & ((\SelOp[1]~input_o\ & ((!\inst|alu_x|R[1]~_Duplicate_1_q\))) # (!\SelOp[1]~input_o\ & ((\SelOp[0]~input_o\) # (\inst|alu_x|R[1]~_Duplicate_1_q\))))) # (!\SelOp[2]~input_o\ & (!\SelOp[0]~input_o\ & 
-- (\SelOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \inst|alu_x|R[1]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[1]~140_combout\);

-- Location: LCCOMB_X35_Y25_N28
\inst|ALU|Result[1]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~141_combout\ = (\inst|ALU|Result[1]~140_combout\ & ((\SelOp[2]~input_o\) # (\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[2]~input_o\,
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT1\,
	datad => \inst|ALU|Result[1]~140_combout\,
	combout => \inst|ALU|Result[1]~141_combout\);

-- Location: LCCOMB_X35_Y25_N8
\inst|ALU|Result[1]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~139_combout\ = (\inst|alu_y|R\(1)) # ((\SelOp[1]~input_o\) # ((\SelOp[0]~input_o\ & \inst|alu_x|R[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \inst|alu_x|R[1]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[1]~139_combout\);

-- Location: LCCOMB_X35_Y25_N26
\inst|ALU|Result[1]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~142_combout\ = (\inst|ALU|Result[1]~141_combout\ & (((\inst|ALU|Result[1]~139_combout\) # (\inst|ALU|_~9_combout\)))) # (!\inst|ALU|Result[1]~141_combout\ & (!\inst|alu_y|R\(1) & ((\inst|ALU|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|ALU|Result[1]~141_combout\,
	datac => \inst|ALU|Result[1]~139_combout\,
	datad => \inst|ALU|_~9_combout\,
	combout => \inst|ALU|Result[1]~142_combout\);

-- Location: LCCOMB_X38_Y26_N24
\inst|ALU|Result[1]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~143_combout\ = (\inst|ALU|op_3~2_combout\ & ((\inst|ALU|_~10_combout\) # ((\inst|ALU|op_2~2_combout\ & \inst|ALU|_~7_combout\)))) # (!\inst|ALU|op_3~2_combout\ & (((\inst|ALU|op_2~2_combout\ & \inst|ALU|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~2_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|op_2~2_combout\,
	datad => \inst|ALU|_~7_combout\,
	combout => \inst|ALU|Result[1]~143_combout\);

-- Location: LCCOMB_X40_Y25_N4
\inst|ALU|Result[1]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~155_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (!\inst|alu_y|R\(7) & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_y|R\(7),
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|Result[1]~155_combout\);

-- Location: LCCOMB_X41_Y25_N6
\inst|ALU|Result[1]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[1]~144_combout\ = (\inst|ALU|Result[1]~142_combout\) # ((\inst|ALU|Result[1]~143_combout\) # ((\inst|ALU|Result[1]~155_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[1]~142_combout\,
	datab => \inst|ALU|Result[1]~143_combout\,
	datac => \inst|ALU|Result[1]~155_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \inst|ALU|Result[1]~144_combout\);

-- Location: LCCOMB_X41_Y25_N18
\inst|alu_rl|R[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[1]~7_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rl|R\(1)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result[1]~144_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result[1]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rl|R\(1),
	datad => \inst|ALU|Result[1]~144_combout\,
	combout => \inst|alu_rl|R[1]~7_combout\);

-- Location: FF_X41_Y25_N19
\inst|alu_rl|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[1]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(1));

-- Location: LCCOMB_X41_Y17_N28
\inst|BUS[1]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~64_combout\ = (\inst|BUS[1]~63_combout\) # (((\inst|_~6_combout\ & \inst|alu_rl|R\(1))) # (!\inst|BUS[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[1]~63_combout\,
	datab => \inst|_~6_combout\,
	datac => \inst|alu_rl|R\(1),
	datad => \inst|BUS[7]~6_combout\,
	combout => \inst|BUS[1]~64_combout\);

-- Location: LCCOMB_X39_Y11_N2
\inst|BUS[1]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[1]~69_combout\ = (\inst|BUS[1]~65_combout\) # ((\inst|BUS[1]~68_combout\) # ((\inst|BUS[1]~66_combout\) # (\inst|BUS[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[1]~65_combout\,
	datab => \inst|BUS[1]~68_combout\,
	datac => \inst|BUS[1]~66_combout\,
	datad => \inst|BUS[1]~64_combout\,
	combout => \inst|BUS[1]~69_combout\);

-- Location: FF_X41_Y12_N11
\inst|SRC|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[1]~69_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(1));

-- Location: LCCOMB_X41_Y12_N10
\inst|SelBus[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[1]~3_combout\ = (\SelSRC~input_o\ & (\SRC_UC[1]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[1]~input_o\,
	datac => \inst|SRC|R\(1),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[1]~3_combout\);

-- Location: LCCOMB_X39_Y11_N8
\inst|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~10_combout\ = (\inst|_~7_combout\ & (!\inst|SelBus[1]~3_combout\ & \inst|SelBus[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~7_combout\,
	datac => \inst|SelBus[1]~3_combout\,
	datad => \inst|SelBus[0]~2_combout\,
	combout => \inst|_~10_combout\);

-- Location: FF_X39_Y11_N23
\inst|IR|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(2));

-- Location: LCCOMB_X39_Y11_N22
\inst|BUS[2]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~57_combout\ = (\inst|_~14_combout\ & ((\inst|IR|R\(2)) # ((\inst|_~10_combout\ & \inst|MDR|R\(2))))) # (!\inst|_~14_combout\ & (\inst|_~10_combout\ & ((\inst|MDR|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datab => \inst|_~10_combout\,
	datac => \inst|IR|R\(2),
	datad => \inst|MDR|R\(2),
	combout => \inst|BUS[2]~57_combout\);

-- Location: FF_X40_Y11_N25
\inst|BP|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(2));

-- Location: LCCOMB_X40_Y11_N24
\inst|BUS[2]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~58_combout\ = (\inst|SI|R\(2) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(2))))) # (!\inst|SI|R\(2) & (\inst|_~13_combout\ & (\inst|BP|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(2),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(2),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[2]~58_combout\);

-- Location: IOIBUF_X51_Y0_N15
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

-- Location: LCCOMB_X41_Y10_N22
\inst|BUS[2]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~54_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|DI|R\(2)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Cx|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(2),
	datab => \inst|DI|R\(2),
	datac => \inst|_~3_combout\,
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|BUS[2]~54_combout\);

-- Location: LCCOMB_X39_Y7_N14
\inst|BUS[2]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~55_combout\ = (\inst|_~9_combout\ & ((\inst|PC|R\(2)) # ((\inst|MAR|R\(2) & \inst|_~11_combout\)))) # (!\inst|_~9_combout\ & (\inst|MAR|R\(2) & (\inst|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~9_combout\,
	datab => \inst|MAR|R\(2),
	datac => \inst|_~11_combout\,
	datad => \inst|PC|R\(2),
	combout => \inst|BUS[2]~55_combout\);

-- Location: LCCOMB_X40_Y7_N8
\inst|BUS[2]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~56_combout\ = (\inst|BUS[2]~54_combout\) # ((\inst|BUS[2]~55_combout\) # ((\inst|_~8_combout\ & \Fx[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~8_combout\,
	datab => \Fx[2]~input_o\,
	datac => \inst|BUS[2]~54_combout\,
	datad => \inst|BUS[2]~55_combout\,
	combout => \inst|BUS[2]~56_combout\);

-- Location: LCCOMB_X42_Y13_N14
\inst|BUS[2]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~52_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|SP|R\(2)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Ax|R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~0_combout\,
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|Ax|R\(2),
	datad => \inst|SP|R\(2),
	combout => \inst|BUS[2]~52_combout\);

-- Location: LCCOMB_X36_Y27_N4
\inst|ALU|Result[2]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~136_combout\ = (\inst|ALU|_~9_combout\ & (((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ & \inst|ALU|_~2_combout\)) # (!\inst|alu_y|R\(2)))) # (!\inst|ALU|_~9_combout\ & (\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\ & 
-- (\inst|ALU|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~9_combout\,
	datab => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT2\,
	datac => \inst|ALU|_~2_combout\,
	datad => \inst|alu_y|R\(2),
	combout => \inst|ALU|Result[2]~136_combout\);

-- Location: LCCOMB_X36_Y27_N6
\inst|ALU|Result[2]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~135_combout\ = (\inst|ALU|Result[7]~119_combout\ & (((\inst|ALU|_~10_combout\ & \inst|ALU|op_3~4_combout\)) # (!\inst|alu_x|R[2]~_Duplicate_1_q\))) # (!\inst|ALU|Result[7]~119_combout\ & (\inst|ALU|_~10_combout\ & 
-- ((\inst|ALU|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~119_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => \inst|ALU|op_3~4_combout\,
	combout => \inst|ALU|Result[2]~135_combout\);

-- Location: LCCOMB_X36_Y27_N30
\inst|ALU|Result[2]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~137_combout\ = (\inst|ALU|Result[2]~136_combout\) # ((\inst|ALU|Result[2]~135_combout\) # ((\inst|ALU|op_2~4_combout\ & \inst|ALU|_~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_2~4_combout\,
	datab => \inst|ALU|_~7_combout\,
	datac => \inst|ALU|Result[2]~136_combout\,
	datad => \inst|ALU|Result[2]~135_combout\,
	combout => \inst|ALU|Result[2]~137_combout\);

-- Location: LCCOMB_X36_Y27_N8
\inst|ALU|Result[2]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~134_combout\ = (\inst|alu_x|R[2]~_Duplicate_1_q\ & ((\inst|ALU|_~16_combout\) # ((\inst|alu_y|R\(2) & \inst|ALU|_~17_combout\)))) # (!\inst|alu_x|R[2]~_Duplicate_1_q\ & (\inst|ALU|_~16_combout\ & (\inst|alu_y|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datab => \inst|ALU|_~16_combout\,
	datac => \inst|alu_y|R\(2),
	datad => \inst|ALU|_~17_combout\,
	combout => \inst|ALU|Result[2]~134_combout\);

-- Location: LCCOMB_X40_Y26_N2
\inst|ALU|Result[2]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~154_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_y|R\(0),
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[45]~7_combout\,
	combout => \inst|ALU|Result[2]~154_combout\);

-- Location: LCCOMB_X41_Y25_N20
\inst|ALU|Result[2]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[2]~138_combout\ = (\inst|ALU|Result[2]~137_combout\) # ((\inst|ALU|Result[2]~134_combout\) # ((!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- \inst|ALU|Result[2]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[2]~137_combout\,
	datab => \inst|ALU|Result[2]~134_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datad => \inst|ALU|Result[2]~154_combout\,
	combout => \inst|ALU|Result[2]~138_combout\);

-- Location: LCCOMB_X41_Y25_N26
\inst|alu_rl|R[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[2]~6_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rl|R\(2)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result[2]~138_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result[2]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rl|R\(2),
	datad => \inst|ALU|Result[2]~138_combout\,
	combout => \inst|alu_rl|R[2]~6_combout\);

-- Location: FF_X41_Y25_N27
\inst|alu_rl|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[2]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(2));

-- Location: LCCOMB_X40_Y25_N24
\inst|ALU|Result[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(10) = ((\inst|ALU|_~2_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~2_combout\,
	datac => \inst|ALU|Result[16]~100_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT10\,
	combout => \inst|ALU|Result\(10));

-- Location: LCCOMB_X40_Y25_N20
\inst|alu_rh|R[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[2]~5_combout\ = (\inst|DI|_~0_combout\ & ((\inst|ALU|Result\(10)) # ((\inst|alu_rh|R\(2) & \inst|alu_rl|R[7]~0_combout\)))) # (!\inst|DI|_~0_combout\ & (((\inst|alu_rh|R\(2) & \inst|alu_rl|R[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|ALU|Result\(10),
	datac => \inst|alu_rh|R\(2),
	datad => \inst|alu_rl|R[7]~0_combout\,
	combout => \inst|alu_rh|R[2]~5_combout\);

-- Location: FF_X40_Y25_N21
\inst|alu_rh|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[2]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(2));

-- Location: LCCOMB_X41_Y25_N24
\inst|BUS[2]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~51_combout\ = (\inst|alu_rl|R\(2) & ((\inst|_~6_combout\) # ((\inst|alu_rh|R\(2) & \inst|_~2_combout\)))) # (!\inst|alu_rl|R\(2) & (\inst|alu_rh|R\(2) & (\inst|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(2),
	datab => \inst|alu_rh|R\(2),
	datac => \inst|_~2_combout\,
	datad => \inst|_~6_combout\,
	combout => \inst|BUS[2]~51_combout\);

-- Location: LCCOMB_X42_Y13_N24
\inst|BUS[2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~53_combout\ = (\inst|BUS[2]~52_combout\) # ((\inst|BUS[2]~51_combout\) # ((\inst|Bx|R\(2) & \inst|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(2),
	datab => \inst|_~5_combout\,
	datac => \inst|BUS[2]~52_combout\,
	datad => \inst|BUS[2]~51_combout\,
	combout => \inst|BUS[2]~53_combout\);

-- Location: LCCOMB_X41_Y11_N30
\inst|BUS[2]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[2]~59_combout\ = (\inst|BUS[2]~57_combout\) # ((\inst|BUS[2]~58_combout\) # ((\inst|BUS[2]~56_combout\) # (\inst|BUS[2]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[2]~57_combout\,
	datab => \inst|BUS[2]~58_combout\,
	datac => \inst|BUS[2]~56_combout\,
	datad => \inst|BUS[2]~53_combout\,
	combout => \inst|BUS[2]~59_combout\);

-- Location: FF_X41_Y11_N13
\inst|DST|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[2]~59_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(2));

-- Location: LCCOMB_X41_Y11_N2
\inst|SelMUX[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelMUX[2]~2_combout\ = (\SelDST~input_o\ & (\DST_UC[2]~input_o\)) # (!\SelDST~input_o\ & ((\inst|DST|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datab => \DST_UC[2]~input_o\,
	datad => \inst|DST|R\(2),
	combout => \inst|SelMUX[2]~2_combout\);

-- Location: LCCOMB_X38_Y11_N4
\inst|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~25_combout\ = (!\inst|SelMUX[2]~2_combout\ & (!\inst|SelMUX[3]~1_combout\ & (\inst|SelMUX[4]~3_combout\ & \inst|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[2]~2_combout\,
	datab => \inst|SelMUX[3]~1_combout\,
	datac => \inst|SelMUX[4]~3_combout\,
	datad => \inst|_~22_combout\,
	combout => \inst|_~25_combout\);

-- Location: LCCOMB_X39_Y12_N10
\inst|SI|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~17_combout\ = (\inst|SI|R[7]~36_combout\ & ((\inst|SI|R\(4)) # ((\inst|SI|op_2~8_combout\ & \inst|SI|_~2_combout\)))) # (!\inst|SI|R[7]~36_combout\ & (\inst|SI|op_2~8_combout\ & ((\inst|SI|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[7]~36_combout\,
	datab => \inst|SI|op_2~8_combout\,
	datac => \inst|SI|R\(4),
	datad => \inst|SI|_~2_combout\,
	combout => \inst|SI|R[4]~17_combout\);

-- Location: LCCOMB_X39_Y12_N0
\inst|SI|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~16_combout\ = (\inst|SI|R\(3) & ((\inst|SI|R[6]~4_combout\) # ((\inst|SI|R[5]~7_combout\ & \inst|SI|R\(5))))) # (!\inst|SI|R\(3) & (\inst|SI|R[5]~7_combout\ & (\inst|SI|R\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(3),
	datab => \inst|SI|R[5]~7_combout\,
	datac => \inst|SI|R\(5),
	datad => \inst|SI|R[6]~4_combout\,
	combout => \inst|SI|R[4]~16_combout\);

-- Location: LCCOMB_X39_Y12_N28
\inst|SI|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~18_combout\ = (\inst|SI|R[4]~17_combout\) # ((\inst|SI|R[4]~16_combout\) # ((\inst|SI|op_1~6_combout\ & \inst|SI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R[4]~17_combout\,
	datab => \inst|SI|R[4]~16_combout\,
	datac => \inst|SI|op_1~6_combout\,
	datad => \inst|SI|_~0_combout\,
	combout => \inst|SI|R[4]~18_combout\);

-- Location: LCCOMB_X39_Y12_N12
\inst|SI|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SI|R[4]~19_combout\ = (\inst|SI|R[4]~18_combout\) # ((\inst|BUS[4]~40_combout\ & (\inst|DI|_~0_combout\ & \inst|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~40_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~25_combout\,
	datad => \inst|SI|R[4]~18_combout\,
	combout => \inst|SI|R[4]~19_combout\);

-- Location: FF_X39_Y12_N13
\inst|SI|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|SI|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SI|R\(4));

-- Location: FF_X40_Y11_N11
\inst|BP|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(4));

-- Location: LCCOMB_X40_Y11_N10
\inst|BUS[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~39_combout\ = (\inst|SI|R\(4) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(4))))) # (!\inst|SI|R\(4) & (\inst|_~13_combout\ & (\inst|BP|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(4),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(4),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[4]~39_combout\);

-- Location: IOIBUF_X0_Y10_N8
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

-- Location: LCCOMB_X39_Y7_N22
\inst|BUS[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~36_combout\ = (\inst|MAR|R\(4) & ((\inst|_~11_combout\) # ((\inst|_~9_combout\ & \inst|PC|R\(4))))) # (!\inst|MAR|R\(4) & (((\inst|_~9_combout\ & \inst|PC|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR|R\(4),
	datab => \inst|_~11_combout\,
	datac => \inst|_~9_combout\,
	datad => \inst|PC|R\(4),
	combout => \inst|BUS[4]~36_combout\);

-- Location: LCCOMB_X41_Y10_N16
\inst|BUS[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~35_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|DI|R\(4))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Cx|R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~3_combout\,
	datab => \inst|DI|R\(4),
	datac => \inst|Cx|R\(4),
	datad => \inst|SelBus[4]~4_combout\,
	combout => \inst|BUS[4]~35_combout\);

-- Location: LCCOMB_X41_Y10_N2
\inst|BUS[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~37_combout\ = (\inst|BUS[4]~36_combout\) # ((\inst|BUS[4]~35_combout\) # ((\inst|_~8_combout\ & \Fx[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~8_combout\,
	datab => \Fx[4]~input_o\,
	datac => \inst|BUS[4]~36_combout\,
	datad => \inst|BUS[4]~35_combout\,
	combout => \inst|BUS[4]~37_combout\);

-- Location: FF_X39_Y11_N1
\inst|IR|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(4));

-- Location: LCCOMB_X39_Y11_N0
\inst|BUS[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~38_combout\ = (\inst|_~14_combout\ & ((\inst|IR|R\(4)) # ((\inst|_~10_combout\ & \inst|MDR|R\(4))))) # (!\inst|_~14_combout\ & (\inst|_~10_combout\ & ((\inst|MDR|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datab => \inst|_~10_combout\,
	datac => \inst|IR|R\(4),
	datad => \inst|MDR|R\(4),
	combout => \inst|BUS[4]~38_combout\);

-- Location: LCCOMB_X42_Y13_N2
\inst|BUS[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~33_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|SP|R\(4)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Ax|R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ax|R\(4),
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|SP|R\(4),
	datad => \inst|_~0_combout\,
	combout => \inst|BUS[4]~33_combout\);

-- Location: LCCOMB_X35_Y27_N30
\inst|ALU|Result[4]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~126_combout\ = (\inst|ALU|op_3~8_combout\ & ((\inst|ALU|_~10_combout\) # ((\inst|ALU|Result[7]~119_combout\ & !\inst|alu_x|R[4]~_Duplicate_1_q\)))) # (!\inst|ALU|op_3~8_combout\ & (\inst|ALU|Result[7]~119_combout\ & 
-- ((!\inst|alu_x|R[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~8_combout\,
	datab => \inst|ALU|Result[7]~119_combout\,
	datac => \inst|ALU|_~10_combout\,
	datad => \inst|alu_x|R[4]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[4]~126_combout\);

-- Location: LCCOMB_X35_Y27_N18
\inst|ALU|Result[4]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~124_combout\ = (\inst|ALU|_~16_combout\ & (((\inst|alu_y|R\(4)) # (\inst|alu_x|R[4]~_Duplicate_1_q\)))) # (!\inst|ALU|_~16_combout\ & (\inst|ALU|_~17_combout\ & (\inst|alu_y|R\(4) & \inst|alu_x|R[4]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|_~17_combout\,
	datac => \inst|alu_y|R\(4),
	datad => \inst|alu_x|R[4]~_Duplicate_1_q\,
	combout => \inst|ALU|Result[4]~124_combout\);

-- Location: LCCOMB_X38_Y26_N0
\inst|ALU|Result[4]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~123_combout\ = (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\ & (\inst|ALU|_~11_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[27]~5_combout\,
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|ALU|Result[4]~123_combout\);

-- Location: LCCOMB_X35_Y27_N28
\inst|ALU|Result[4]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~125_combout\ = (\inst|ALU|_~2_combout\ & ((\inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\) # ((!\inst|alu_y|R\(4) & \inst|ALU|_~9_combout\)))) # (!\inst|ALU|_~2_combout\ & (!\inst|alu_y|R\(4) & ((\inst|ALU|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~2_combout\,
	datab => \inst|alu_y|R\(4),
	datac => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT4\,
	datad => \inst|ALU|_~9_combout\,
	combout => \inst|ALU|Result[4]~125_combout\);

-- Location: LCCOMB_X35_Y27_N12
\inst|ALU|Result[4]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~127_combout\ = (\inst|ALU|Result[4]~126_combout\) # ((\inst|ALU|Result[4]~124_combout\) # ((\inst|ALU|Result[4]~123_combout\) # (\inst|ALU|Result[4]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[4]~126_combout\,
	datab => \inst|ALU|Result[4]~124_combout\,
	datac => \inst|ALU|Result[4]~123_combout\,
	datad => \inst|ALU|Result[4]~125_combout\,
	combout => \inst|ALU|Result[4]~127_combout\);

-- Location: LCCOMB_X35_Y27_N26
\inst|ALU|Result[4]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[4]~128_combout\ = (\inst|ALU|Result[4]~127_combout\) # ((\inst|ALU|_~7_combout\ & \inst|ALU|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~7_combout\,
	datac => \inst|ALU|op_2~8_combout\,
	datad => \inst|ALU|Result[4]~127_combout\,
	combout => \inst|ALU|Result[4]~128_combout\);

-- Location: LCCOMB_X41_Y25_N30
\inst|alu_rl|R[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[4]~4_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rl|R\(4)) # ((\inst|ALU|Result[4]~128_combout\ & \inst|DI|_~0_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|ALU|Result[4]~128_combout\ & ((\inst|DI|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|ALU|Result[4]~128_combout\,
	datac => \inst|alu_rl|R\(4),
	datad => \inst|DI|_~0_combout\,
	combout => \inst|alu_rl|R[4]~4_combout\);

-- Location: FF_X41_Y25_N31
\inst|alu_rl|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[4]~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(4));

-- Location: LCCOMB_X36_Y25_N4
\inst|ALU|Result[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(12) = ((\inst|ALU|_~2_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~2_combout\,
	datac => \inst|ALU|Result[16]~100_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT12\,
	combout => \inst|ALU|Result\(12));

-- Location: LCCOMB_X41_Y25_N16
\inst|alu_rh|R[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[4]~3_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rh|R\(4)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result\(12))))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rh|R\(4),
	datad => \inst|ALU|Result\(12),
	combout => \inst|alu_rh|R[4]~3_combout\);

-- Location: FF_X41_Y25_N17
\inst|alu_rh|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[4]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(4));

-- Location: LCCOMB_X41_Y25_N8
\inst|BUS[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~32_combout\ = (\inst|alu_rl|R\(4) & ((\inst|_~6_combout\) # ((\inst|alu_rh|R\(4) & \inst|_~2_combout\)))) # (!\inst|alu_rl|R\(4) & (\inst|alu_rh|R\(4) & (\inst|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(4),
	datab => \inst|alu_rh|R\(4),
	datac => \inst|_~2_combout\,
	datad => \inst|_~6_combout\,
	combout => \inst|BUS[4]~32_combout\);

-- Location: LCCOMB_X42_Y13_N20
\inst|BUS[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~34_combout\ = (\inst|BUS[4]~33_combout\) # ((\inst|BUS[4]~32_combout\) # ((\inst|Bx|R\(4) & \inst|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Bx|R\(4),
	datab => \inst|_~5_combout\,
	datac => \inst|BUS[4]~33_combout\,
	datad => \inst|BUS[4]~32_combout\,
	combout => \inst|BUS[4]~34_combout\);

-- Location: LCCOMB_X41_Y11_N4
\inst|BUS[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[4]~40_combout\ = (\inst|BUS[4]~39_combout\) # ((\inst|BUS[4]~37_combout\) # ((\inst|BUS[4]~38_combout\) # (\inst|BUS[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~39_combout\,
	datab => \inst|BUS[4]~37_combout\,
	datac => \inst|BUS[4]~38_combout\,
	datad => \inst|BUS[4]~34_combout\,
	combout => \inst|BUS[4]~40_combout\);

-- Location: FF_X40_Y11_N29
\inst|SRC|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[4]~40_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(4));

-- Location: LCCOMB_X40_Y11_N28
\inst|SelBus[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SelBus[4]~4_combout\ = (\SelSRC~input_o\ & (\SRC_UC[4]~input_o\)) # (!\SelSRC~input_o\ & ((\inst|SRC|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC_UC[4]~input_o\,
	datac => \inst|SRC|R\(4),
	datad => \SelSRC~input_o\,
	combout => \inst|SelBus[4]~4_combout\);

-- Location: LCCOMB_X41_Y12_N4
\inst|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~7_combout\ = (!\inst|SelBus[4]~4_combout\ & (\inst|SelBus[2]~1_combout\ & \inst|SelBus[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|SelBus[2]~1_combout\,
	datad => \inst|SelBus[3]~0_combout\,
	combout => \inst|_~7_combout\);

-- Location: LCCOMB_X39_Y11_N30
\inst|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~14_combout\ = (\inst|_~7_combout\ & (\inst|SelBus[1]~3_combout\ & !\inst|SelBus[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~7_combout\,
	datac => \inst|SelBus[1]~3_combout\,
	datad => \inst|SelBus[0]~2_combout\,
	combout => \inst|_~14_combout\);

-- Location: FF_X39_Y11_N21
\inst|IR|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|IR|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR|R\(7));

-- Location: FF_X40_Y11_N27
\inst|BP|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|BP|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BP|R\(7));

-- Location: LCCOMB_X40_Y11_N26
\inst|BUS[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~10_combout\ = (\inst|SI|R\(7) & ((\inst|_~12_combout\) # ((\inst|_~13_combout\ & \inst|BP|R\(7))))) # (!\inst|SI|R\(7) & (\inst|_~13_combout\ & (\inst|BP|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SI|R\(7),
	datab => \inst|_~13_combout\,
	datac => \inst|BP|R\(7),
	datad => \inst|_~12_combout\,
	combout => \inst|BUS[7]~10_combout\);

-- Location: LCCOMB_X39_Y11_N20
\inst|BUS[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~11_combout\ = (\inst|BUS[7]~10_combout\) # ((\inst|_~14_combout\ & \inst|IR|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~14_combout\,
	datac => \inst|IR|R\(7),
	datad => \inst|BUS[7]~10_combout\,
	combout => \inst|BUS[7]~11_combout\);

-- Location: IOIBUF_X58_Y0_N15
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

-- Location: LCCOMB_X39_Y7_N12
\inst|BUS[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~8_combout\ = (\inst|PC|R\(7) & ((\inst|_~9_combout\) # ((\inst|_~8_combout\ & \Fx[7]~input_o\)))) # (!\inst|PC|R\(7) & (\inst|_~8_combout\ & ((\Fx[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(7),
	datab => \inst|_~8_combout\,
	datac => \inst|_~9_combout\,
	datad => \Fx[7]~input_o\,
	combout => \inst|BUS[7]~8_combout\);

-- Location: LCCOMB_X39_Y7_N30
\inst|BUS[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~9_combout\ = (\inst|MDR|R\(7) & ((\inst|_~10_combout\) # ((\inst|MAR|R\(7) & \inst|_~11_combout\)))) # (!\inst|MDR|R\(7) & (\inst|MAR|R\(7) & (\inst|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MDR|R\(7),
	datab => \inst|MAR|R\(7),
	datac => \inst|_~11_combout\,
	datad => \inst|_~10_combout\,
	combout => \inst|BUS[7]~9_combout\);

-- Location: LCCOMB_X40_Y25_N2
\inst|ALU|Result[7]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~104_combout\ = (\inst|ALU|Flags[7]~0_combout\ & (\inst|alu_x|R[7]~_Duplicate_1_q\ & (\inst|ALU|_~3_combout\ & \inst|alu_y|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[7]~0_combout\,
	datab => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|ALU|Result[7]~104_combout\);

-- Location: LCCOMB_X37_Y25_N8
\inst|ALU|Result[7]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~108_combout\ = (\SelOp[2]~input_o\ & ((\SelOp[1]~input_o\ & (!\inst|alu_x|R[7]~_Duplicate_1_q\)) # (!\SelOp[1]~input_o\ & (\inst|alu_x|R[7]~_Duplicate_1_q\ & \SelOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[2]~input_o\,
	datac => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[7]~108_combout\);

-- Location: LCCOMB_X37_Y25_N6
\inst|ALU|Result[7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~106_combout\ = (!\SelOp[1]~input_o\ & (\SelOp[2]~input_o\ & ((\inst|alu_x|R[7]~_Duplicate_1_q\) # (\SelOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[2]~input_o\,
	datac => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datad => \SelOp[0]~input_o\,
	combout => \inst|ALU|Result[7]~106_combout\);

-- Location: LCCOMB_X37_Y25_N28
\inst|ALU|Result[7]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~105_combout\ = (\SelOp[1]~input_o\ & (!\SelOp[0]~input_o\ & (!\SelOp[2]~input_o\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelOp[1]~input_o\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[2]~input_o\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT7\,
	combout => \inst|ALU|Result[7]~105_combout\);

-- Location: LCCOMB_X37_Y25_N18
\inst|ALU|Result[7]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~107_combout\ = (\inst|ALU|Result[7]~105_combout\) # ((\inst|alu_y|R\(7) & (\inst|ALU|Result[7]~106_combout\)) # (!\inst|alu_y|R\(7) & ((\inst|ALU|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~106_combout\,
	datab => \inst|ALU|_~9_combout\,
	datac => \inst|alu_y|R\(7),
	datad => \inst|ALU|Result[7]~105_combout\,
	combout => \inst|ALU|Result[7]~107_combout\);

-- Location: LCCOMB_X37_Y25_N20
\inst|ALU|Result[7]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~109_combout\ = (\inst|ALU|Result[7]~108_combout\) # ((\inst|ALU|Result[7]~107_combout\) # ((\inst|ALU|op_3~14_combout\ & \inst|ALU|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_3~14_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|Result[7]~108_combout\,
	datad => \inst|ALU|Result[7]~107_combout\,
	combout => \inst|ALU|Result[7]~109_combout\);

-- Location: LCCOMB_X39_Y25_N24
\inst|ALU|Result[7]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[7]~110_combout\ = (\inst|ALU|Result[7]~104_combout\) # ((\inst|ALU|Result[7]~109_combout\) # ((\inst|ALU|_~7_combout\ & \inst|ALU|op_2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~104_combout\,
	datab => \inst|ALU|_~7_combout\,
	datac => \inst|ALU|Result[7]~109_combout\,
	datad => \inst|ALU|op_2~14_combout\,
	combout => \inst|ALU|Result[7]~110_combout\);

-- Location: LCCOMB_X42_Y25_N22
\inst|alu_rl|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rl|R[7]~1_combout\ = (\inst|ALU|Result[7]~110_combout\ & ((\inst|DI|_~0_combout\) # ((\inst|alu_rl|R\(7) & \inst|alu_rl|R[7]~0_combout\)))) # (!\inst|ALU|Result[7]~110_combout\ & (((\inst|alu_rl|R\(7) & \inst|alu_rl|R[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[7]~110_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rl|R\(7),
	datad => \inst|alu_rl|R[7]~0_combout\,
	combout => \inst|alu_rl|R[7]~1_combout\);

-- Location: FF_X42_Y25_N23
\inst|alu_rl|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rl|R[7]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rl|R\(7));

-- Location: LCCOMB_X41_Y10_N0
\inst|BUS[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~2_combout\ = (\inst|_~3_combout\ & ((\inst|SelBus[4]~4_combout\ & ((\inst|DI|R\(7)))) # (!\inst|SelBus[4]~4_combout\ & (\inst|Cx|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cx|R\(7),
	datab => \inst|SelBus[4]~4_combout\,
	datac => \inst|_~3_combout\,
	datad => \inst|DI|R\(7),
	combout => \inst|BUS[7]~2_combout\);

-- Location: LCCOMB_X40_Y25_N8
\inst|ALU|Result[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result\(15) = ((\inst|ALU|_~2_combout\ & \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\)) # (!\inst|ALU|Result[16]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|_~2_combout\,
	datac => \inst|ALU|Result[16]~100_combout\,
	datad => \inst|ALU|op_5|auto_generated|mac_out2~DATAOUT15\,
	combout => \inst|ALU|Result\(15));

-- Location: LCCOMB_X43_Y26_N10
\inst|alu_rh|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_rh|R[7]~0_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_rh|R\(7)) # ((\inst|DI|_~0_combout\ & \inst|ALU|Result\(15))))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|DI|_~0_combout\ & ((\inst|ALU|Result\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_rh|R\(7),
	datad => \inst|ALU|Result\(15),
	combout => \inst|alu_rh|R[7]~0_combout\);

-- Location: FF_X43_Y26_N11
\inst|alu_rh|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_rh|R[7]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_rh|R\(7));

-- Location: LCCOMB_X42_Y15_N26
\inst|BUS[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~0_combout\ = (\inst|_~0_combout\ & ((\inst|SelBus[4]~4_combout\ & (\inst|SP|R\(7))) # (!\inst|SelBus[4]~4_combout\ & ((\inst|Ax|R\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SP|R\(7),
	datab => \inst|Ax|R\(7),
	datac => \inst|SelBus[4]~4_combout\,
	datad => \inst|_~0_combout\,
	combout => \inst|BUS[7]~0_combout\);

-- Location: LCCOMB_X42_Y17_N4
\inst|BUS[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~1_combout\ = (\inst|BUS[7]~0_combout\) # ((\inst|_~2_combout\ & \inst|alu_rh|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|_~2_combout\,
	datac => \inst|alu_rh|R\(7),
	datad => \inst|BUS[7]~0_combout\,
	combout => \inst|BUS[7]~1_combout\);

-- Location: LCCOMB_X41_Y17_N22
\inst|BUS[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~3_combout\ = (\inst|BUS[7]~2_combout\) # ((\inst|BUS[7]~1_combout\) # ((\inst|_~5_combout\ & \inst|Bx|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~5_combout\,
	datab => \inst|Bx|R\(7),
	datac => \inst|BUS[7]~2_combout\,
	datad => \inst|BUS[7]~1_combout\,
	combout => \inst|BUS[7]~3_combout\);

-- Location: LCCOMB_X41_Y17_N16
\inst|BUS[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~7_combout\ = (\inst|BUS[7]~3_combout\) # (((\inst|alu_rl|R\(7) & \inst|_~6_combout\)) # (!\inst|BUS[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R\(7),
	datab => \inst|_~6_combout\,
	datac => \inst|BUS[7]~3_combout\,
	datad => \inst|BUS[7]~6_combout\,
	combout => \inst|BUS[7]~7_combout\);

-- Location: LCCOMB_X40_Y13_N4
\inst|BUS[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|BUS[7]~12_combout\ = (\inst|BUS[7]~11_combout\) # ((\inst|BUS[7]~8_combout\) # ((\inst|BUS[7]~9_combout\) # (\inst|BUS[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~11_combout\,
	datab => \inst|BUS[7]~8_combout\,
	datac => \inst|BUS[7]~9_combout\,
	datad => \inst|BUS[7]~7_combout\,
	combout => \inst|BUS[7]~12_combout\);

-- Location: LCCOMB_X43_Y7_N10
\inst|PC|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|_~1_combout\);

-- Location: LCCOMB_X40_Y7_N30
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

-- Location: LCCOMB_X40_Y7_N10
\inst|PC|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~2_combout\ = (\inst|PC|R\(0) & ((\inst|PC|_~1_combout\) # ((\inst|PC|op_1~12_combout\ & \inst|PC|_~0_combout\)))) # (!\inst|PC|R\(0) & (((\inst|PC|op_1~12_combout\ & \inst|PC|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R\(0),
	datab => \inst|PC|_~1_combout\,
	datac => \inst|PC|op_1~12_combout\,
	datad => \inst|PC|_~0_combout\,
	combout => \inst|PC|R[7]~2_combout\);

-- Location: LCCOMB_X42_Y7_N18
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

-- Location: LCCOMB_X42_Y7_N24
\inst|PC|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~3_combout\ = (\inst|PC|_~2_combout\ & ((\inst|PC|op_2~14_combout\) # ((\inst|PC|R\(7) & \inst|PC|R[7]~36_combout\)))) # (!\inst|PC|_~2_combout\ & (\inst|PC|R\(7) & ((\inst|PC|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|_~2_combout\,
	datab => \inst|PC|R\(7),
	datac => \inst|PC|op_2~14_combout\,
	datad => \inst|PC|R[7]~36_combout\,
	combout => \inst|PC|R[7]~3_combout\);

-- Location: LCCOMB_X41_Y7_N8
\inst|PC|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~5_combout\ = (\inst|PC|R[7]~2_combout\) # ((\inst|PC|R[7]~3_combout\) # ((\inst|PC|R\(6) & \inst|PC|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC|R[7]~2_combout\,
	datab => \inst|PC|R[7]~3_combout\,
	datac => \inst|PC|R\(6),
	datad => \inst|PC|R[6]~4_combout\,
	combout => \inst|PC|R[7]~5_combout\);

-- Location: LCCOMB_X41_Y7_N24
\inst|PC|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC|R[7]~6_combout\ = (\inst|PC|R[7]~5_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[7]~12_combout\ & \inst|_~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|BUS[7]~12_combout\,
	datac => \inst|PC|R[7]~5_combout\,
	datad => \inst|_~24_combout\,
	combout => \inst|PC|R[7]~6_combout\);

-- Location: FF_X41_Y7_N25
\inst|PC|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|PC|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC|R\(7));

-- Location: LCCOMB_X39_Y7_N4
\inst|MAR|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MAR|R[7]~0_combout\ = (\SelMAR~input_o\ & ((\inst|BUS[7]~12_combout\))) # (!\SelMAR~input_o\ & (\inst|PC|R\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMAR~input_o\,
	datac => \inst|PC|R\(7),
	datad => \inst|BUS[7]~12_combout\,
	combout => \inst|MAR|R[7]~0_combout\);

-- Location: FF_X39_Y7_N5
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
	ena => \inst|MAR|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR|R\(7));

-- Location: LCCOMB_X42_Y25_N28
\inst|ALU|Result[0]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Result[0]~150_combout\ = (\inst|ALU|Result[0]~145_combout\) # ((\inst|ALU|Result[0]~149_combout\) # ((\inst|ALU|_~11_combout\ & !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[0]~145_combout\,
	datab => \inst|ALU|Result[0]~149_combout\,
	datac => \inst|ALU|_~11_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|ALU|Result[0]~150_combout\);

-- Location: LCCOMB_X32_Y6_N28
\inst|DATA_BUS_IN_t[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(7) = (\RAM|altsyncram_component|auto_generated|q_a\(7) & !\SelMDR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|altsyncram_component|auto_generated|q_a\(7),
	datad => \SelMDR~input_o\,
	combout => \inst|DATA_BUS_IN_t\(7));

-- Location: LCCOMB_X32_Y6_N18
\inst|DATA_BUS_IN_t[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(6) = (\RAM|altsyncram_component|auto_generated|q_a\(6) & !\SelMDR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|altsyncram_component|auto_generated|q_a\(6),
	datad => \SelMDR~input_o\,
	combout => \inst|DATA_BUS_IN_t\(6));

-- Location: LCCOMB_X32_Y6_N24
\inst|DATA_BUS_IN_t[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(5) = (!\SelMDR~input_o\ & \RAM|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|DATA_BUS_IN_t\(5));

-- Location: LCCOMB_X32_Y6_N6
\inst|DATA_BUS_IN_t[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(4) = (!\SelMDR~input_o\ & \RAM|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|DATA_BUS_IN_t\(4));

-- Location: LCCOMB_X32_Y6_N20
\inst|DATA_BUS_IN_t[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(3) = (!\SelMDR~input_o\ & \RAM|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|DATA_BUS_IN_t\(3));

-- Location: LCCOMB_X32_Y6_N22
\inst|DATA_BUS_IN_t[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(2) = (\RAM|altsyncram_component|auto_generated|q_a\(2) & !\SelMDR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \SelMDR~input_o\,
	combout => \inst|DATA_BUS_IN_t\(2));

-- Location: LCCOMB_X32_Y6_N4
\inst|DATA_BUS_IN_t[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(1) = (!\SelMDR~input_o\ & \RAM|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|DATA_BUS_IN_t\(1));

-- Location: LCCOMB_X32_Y6_N30
\inst|DATA_BUS_IN_t[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DATA_BUS_IN_t\(0) = (!\SelMDR~input_o\ & \RAM|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelMDR~input_o\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|DATA_BUS_IN_t\(0));

-- Location: FF_X41_Y12_N7
\inst|DST|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[7]~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(7));

-- Location: FF_X39_Y11_N25
\inst|DST|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(6));

-- Location: FF_X41_Y11_N3
\inst|DST|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|DST|R[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DST|R\(5));

-- Location: LCCOMB_X41_Y11_N20
\inst|DST_t[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST_t\(4) = (\inst|DST|R\(4)) # ((\SelDST~input_o\ & \DST_UC[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \inst|DST|R\(4),
	datad => \DST_UC[4]~input_o\,
	combout => \inst|DST_t\(4));

-- Location: LCCOMB_X41_Y11_N18
\inst|DST_t[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST_t\(3) = (\inst|DST|R\(3)) # ((\SelDST~input_o\ & \DST_UC[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \inst|DST|R\(3),
	datad => \DST_UC[3]~input_o\,
	combout => \inst|DST_t\(3));

-- Location: LCCOMB_X41_Y11_N12
\inst|DST_t[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST_t\(2) = (\inst|DST|R\(2)) # ((\SelDST~input_o\ & \DST_UC[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \inst|DST|R\(2),
	datad => \DST_UC[2]~input_o\,
	combout => \inst|DST_t\(2));

-- Location: LCCOMB_X41_Y11_N10
\inst|DST_t[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST_t\(1) = (\inst|DST|R\(1)) # ((\SelDST~input_o\ & \DST_UC[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \inst|DST|R\(1),
	datad => \DST_UC[1]~input_o\,
	combout => \inst|DST_t\(1));

-- Location: LCCOMB_X41_Y11_N16
\inst|DST_t[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DST_t\(0) = (\inst|DST|R\(0)) # ((\SelDST~input_o\ & \DST_UC[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelDST~input_o\,
	datac => \DST_UC[0]~input_o\,
	datad => \inst|DST|R\(0),
	combout => \inst|DST_t\(0));

-- Location: LCCOMB_X42_Y11_N6
\inst|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~26_combout\ = (!\inst|SelMUX[2]~2_combout\ & (!\inst|SelMUX[4]~3_combout\ & (\inst|_~16_combout\ & !\inst|SelMUX[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[2]~2_combout\,
	datab => \inst|SelMUX[4]~3_combout\,
	datac => \inst|_~16_combout\,
	datad => \inst|SelMUX[3]~1_combout\,
	combout => \inst|_~26_combout\);

-- Location: LCCOMB_X40_Y6_N12
\inst|Dx|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~4_combout\ = (\Cmd[2]~input_o\ & (!\Cmd[0]~input_o\ & \inst|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|R[6]~4_combout\);

-- Location: LCCOMB_X40_Y6_N26
\inst|Dx|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~2_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|_~2_combout\);

-- Location: LCCOMB_X40_Y6_N10
\inst|Dx|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~7_combout\ = (\Cmd[2]~input_o\ & (\Cmd[0]~input_o\ & \inst|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|R[5]~7_combout\);

-- Location: LCCOMB_X40_Y6_N4
\inst|Dx|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~0_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (!\Cmd[2]~input_o\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|_~0_combout\);

-- Location: LCCOMB_X40_Y6_N14
\inst|Dx|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[1]~input_o\ & !\Cmd[2]~input_o\))) # (!\inst|_~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|R[7]~36_combout\);

-- Location: LCCOMB_X40_Y6_N24
\inst|Dx|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~26_combout\,
	combout => \inst|Dx|_~3_combout\);

-- Location: LCCOMB_X41_Y6_N6
\inst|Dx|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~33_combout\ = (\inst|Dx|R[7]~36_combout\ & ((\inst|Dx|R\(0)) # ((\inst|Dx|_~3_combout\ & \inst|Dx|R\(7))))) # (!\inst|Dx|R[7]~36_combout\ & (\inst|Dx|_~3_combout\ & (\inst|Dx|R\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[7]~36_combout\,
	datab => \inst|Dx|_~3_combout\,
	datac => \inst|Dx|R\(7),
	datad => \inst|Dx|R\(0),
	combout => \inst|Dx|R[0]~33_combout\);

-- Location: LCCOMB_X43_Y6_N18
\inst|Dx|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~32_combout\ = (!\inst|Dx|R\(0) & ((\inst|Dx|_~2_combout\) # (\inst|Dx|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datac => \inst|Dx|R\(0),
	datad => \inst|Dx|_~0_combout\,
	combout => \inst|Dx|R[0]~32_combout\);

-- Location: LCCOMB_X42_Y6_N6
\inst|Dx|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~34_combout\ = (\inst|Dx|R[0]~33_combout\) # ((\inst|Dx|R[0]~32_combout\) # ((\inst|Dx|R[5]~7_combout\ & \inst|Dx|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~7_combout\,
	datab => \inst|Dx|R\(1),
	datac => \inst|Dx|R[0]~33_combout\,
	datad => \inst|Dx|R[0]~32_combout\,
	combout => \inst|Dx|R[0]~34_combout\);

-- Location: LCCOMB_X42_Y6_N4
\inst|Dx|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[0]~35_combout\ = (\inst|Dx|R[0]~34_combout\) # ((\inst|BUS[0]~78_combout\ & (\inst|DI|_~0_combout\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~78_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|Dx|R[0]~34_combout\,
	combout => \inst|Dx|R[0]~35_combout\);

-- Location: FF_X42_Y6_N5
\inst|Dx|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(0));

-- Location: LCCOMB_X41_Y6_N8
\inst|Dx|op_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~1_cout\ = CARRY(\inst|Dx|R\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(0),
	datad => VCC,
	cout => \inst|Dx|op_2~1_cout\);

-- Location: LCCOMB_X41_Y6_N10
\inst|Dx|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~2_combout\ = (\inst|Dx|R\(1) & (\inst|Dx|op_2~1_cout\ & VCC)) # (!\inst|Dx|R\(1) & (!\inst|Dx|op_2~1_cout\))
-- \inst|Dx|op_2~3\ = CARRY((!\inst|Dx|R\(1) & !\inst|Dx|op_2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(1),
	datad => VCC,
	cin => \inst|Dx|op_2~1_cout\,
	combout => \inst|Dx|op_2~2_combout\,
	cout => \inst|Dx|op_2~3\);

-- Location: LCCOMB_X41_Y6_N24
\inst|Dx|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~29_combout\ = (\inst|Dx|op_2~2_combout\ & ((\inst|Dx|_~2_combout\) # ((\inst|Dx|R\(1) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|op_2~2_combout\ & (\inst|Dx|R\(1) & ((\inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|op_2~2_combout\,
	datab => \inst|Dx|R\(1),
	datac => \inst|Dx|_~2_combout\,
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[1]~29_combout\);

-- Location: LCCOMB_X43_Y6_N0
\inst|Dx|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~0_combout\ = (\inst|Dx|R\(0) & (\inst|Dx|R\(1) $ (VCC))) # (!\inst|Dx|R\(0) & (\inst|Dx|R\(1) & VCC))
-- \inst|Dx|op_1~1\ = CARRY((\inst|Dx|R\(0) & \inst|Dx|R\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(0),
	datab => \inst|Dx|R\(1),
	datad => VCC,
	combout => \inst|Dx|op_1~0_combout\,
	cout => \inst|Dx|op_1~1\);

-- Location: LCCOMB_X43_Y6_N28
\inst|Dx|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~28_combout\ = (\inst|Dx|R\(0) & ((\inst|Dx|R[6]~4_combout\) # ((\inst|Dx|R[5]~7_combout\ & \inst|Dx|R\(2))))) # (!\inst|Dx|R\(0) & (\inst|Dx|R[5]~7_combout\ & (\inst|Dx|R\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(0),
	datab => \inst|Dx|R[5]~7_combout\,
	datac => \inst|Dx|R\(2),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[1]~28_combout\);

-- Location: LCCOMB_X42_Y6_N24
\inst|Dx|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~30_combout\ = (\inst|Dx|R[1]~29_combout\) # ((\inst|Dx|R[1]~28_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[1]~29_combout\,
	datab => \inst|Dx|_~0_combout\,
	datac => \inst|Dx|op_1~0_combout\,
	datad => \inst|Dx|R[1]~28_combout\,
	combout => \inst|Dx|R[1]~30_combout\);

-- Location: LCCOMB_X42_Y6_N18
\inst|Dx|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[1]~31_combout\ = (\inst|Dx|R[1]~30_combout\) # ((\inst|BUS[1]~69_combout\ & (\inst|DI|_~0_combout\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[1]~69_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|Dx|R[1]~30_combout\,
	combout => \inst|Dx|R[1]~31_combout\);

-- Location: FF_X42_Y6_N19
\inst|Dx|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(1));

-- Location: LCCOMB_X41_Y6_N12
\inst|Dx|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~4_combout\ = (\inst|Dx|R\(2) & ((GND) # (!\inst|Dx|op_2~3\))) # (!\inst|Dx|R\(2) & (\inst|Dx|op_2~3\ $ (GND)))
-- \inst|Dx|op_2~5\ = CARRY((\inst|Dx|R\(2)) # (!\inst|Dx|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(2),
	datad => VCC,
	cin => \inst|Dx|op_2~3\,
	combout => \inst|Dx|op_2~4_combout\,
	cout => \inst|Dx|op_2~5\);

-- Location: LCCOMB_X41_Y6_N2
\inst|Dx|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~25_combout\ = (\inst|Dx|R[7]~36_combout\ & ((\inst|Dx|R\(2)) # ((\inst|Dx|_~2_combout\ & \inst|Dx|op_2~4_combout\)))) # (!\inst|Dx|R[7]~36_combout\ & (((\inst|Dx|_~2_combout\ & \inst|Dx|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[7]~36_combout\,
	datab => \inst|Dx|R\(2),
	datac => \inst|Dx|_~2_combout\,
	datad => \inst|Dx|op_2~4_combout\,
	combout => \inst|Dx|R[2]~25_combout\);

-- Location: LCCOMB_X42_Y6_N16
\inst|Dx|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~24_combout\ = (\inst|Dx|R[5]~7_combout\ & ((\inst|Dx|R\(3)) # ((\inst|Dx|R\(1) & \inst|Dx|R[6]~4_combout\)))) # (!\inst|Dx|R[5]~7_combout\ & (\inst|Dx|R\(1) & ((\inst|Dx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~7_combout\,
	datab => \inst|Dx|R\(1),
	datac => \inst|Dx|R\(3),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[2]~24_combout\);

-- Location: LCCOMB_X43_Y6_N2
\inst|Dx|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~2_combout\ = (\inst|Dx|R\(2) & (!\inst|Dx|op_1~1\)) # (!\inst|Dx|R\(2) & ((\inst|Dx|op_1~1\) # (GND)))
-- \inst|Dx|op_1~3\ = CARRY((!\inst|Dx|op_1~1\) # (!\inst|Dx|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(2),
	datad => VCC,
	cin => \inst|Dx|op_1~1\,
	combout => \inst|Dx|op_1~2_combout\,
	cout => \inst|Dx|op_1~3\);

-- Location: LCCOMB_X42_Y6_N30
\inst|Dx|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~26_combout\ = (\inst|Dx|R[2]~25_combout\) # ((\inst|Dx|R[2]~24_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[2]~25_combout\,
	datab => \inst|Dx|R[2]~24_combout\,
	datac => \inst|Dx|_~0_combout\,
	datad => \inst|Dx|op_1~2_combout\,
	combout => \inst|Dx|R[2]~26_combout\);

-- Location: LCCOMB_X43_Y6_N26
\inst|Dx|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[2]~27_combout\ = (\inst|Dx|R[2]~26_combout\) # ((\inst|_~26_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[2]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~26_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[2]~59_combout\,
	datad => \inst|Dx|R[2]~26_combout\,
	combout => \inst|Dx|R[2]~27_combout\);

-- Location: FF_X43_Y6_N27
\inst|Dx|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(2));

-- Location: LCCOMB_X41_Y6_N14
\inst|Dx|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~6_combout\ = (\inst|Dx|R\(3) & (\inst|Dx|op_2~5\ & VCC)) # (!\inst|Dx|R\(3) & (!\inst|Dx|op_2~5\))
-- \inst|Dx|op_2~7\ = CARRY((!\inst|Dx|R\(3) & !\inst|Dx|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(3),
	datad => VCC,
	cin => \inst|Dx|op_2~5\,
	combout => \inst|Dx|op_2~6_combout\,
	cout => \inst|Dx|op_2~7\);

-- Location: LCCOMB_X41_Y6_N28
\inst|Dx|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~21_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~6_combout\) # ((\inst|Dx|R\(3) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|_~2_combout\ & (((\inst|Dx|R\(3) & \inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|op_2~6_combout\,
	datac => \inst|Dx|R\(3),
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[3]~21_combout\);

-- Location: LCCOMB_X43_Y6_N4
\inst|Dx|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~4_combout\ = (\inst|Dx|R\(3) & (\inst|Dx|op_1~3\ $ (GND))) # (!\inst|Dx|R\(3) & (!\inst|Dx|op_1~3\ & VCC))
-- \inst|Dx|op_1~5\ = CARRY((\inst|Dx|R\(3) & !\inst|Dx|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(3),
	datad => VCC,
	cin => \inst|Dx|op_1~3\,
	combout => \inst|Dx|op_1~4_combout\,
	cout => \inst|Dx|op_1~5\);

-- Location: LCCOMB_X43_Y6_N24
\inst|Dx|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~20_combout\ = (\inst|Dx|R\(2) & ((\inst|Dx|R[6]~4_combout\) # ((\inst|Dx|R[5]~7_combout\ & \inst|Dx|R\(4))))) # (!\inst|Dx|R\(2) & (\inst|Dx|R[5]~7_combout\ & (\inst|Dx|R\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(2),
	datab => \inst|Dx|R[5]~7_combout\,
	datac => \inst|Dx|R\(4),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[3]~20_combout\);

-- Location: LCCOMB_X43_Y6_N14
\inst|Dx|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~22_combout\ = (\inst|Dx|R[3]~21_combout\) # ((\inst|Dx|R[3]~20_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~0_combout\,
	datab => \inst|Dx|R[3]~21_combout\,
	datac => \inst|Dx|op_1~4_combout\,
	datad => \inst|Dx|R[3]~20_combout\,
	combout => \inst|Dx|R[3]~22_combout\);

-- Location: LCCOMB_X43_Y6_N20
\inst|Dx|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[3]~23_combout\ = (\inst|Dx|R[3]~22_combout\) # ((\inst|_~26_combout\ & (\inst|DI|_~0_combout\ & \inst|BUS[3]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~26_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|Dx|R[3]~22_combout\,
	datad => \inst|BUS[3]~50_combout\,
	combout => \inst|Dx|R[3]~23_combout\);

-- Location: FF_X43_Y6_N21
\inst|Dx|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(3));

-- Location: LCCOMB_X42_Y6_N10
\inst|Dx|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~16_combout\ = (\inst|Dx|R[5]~7_combout\ & ((\inst|Dx|R\(5)) # ((\inst|Dx|R\(3) & \inst|Dx|R[6]~4_combout\)))) # (!\inst|Dx|R[5]~7_combout\ & (((\inst|Dx|R\(3) & \inst|Dx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~7_combout\,
	datab => \inst|Dx|R\(5),
	datac => \inst|Dx|R\(3),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[4]~16_combout\);

-- Location: LCCOMB_X41_Y6_N16
\inst|Dx|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~8_combout\ = (\inst|Dx|R\(4) & ((GND) # (!\inst|Dx|op_2~7\))) # (!\inst|Dx|R\(4) & (\inst|Dx|op_2~7\ $ (GND)))
-- \inst|Dx|op_2~9\ = CARRY((\inst|Dx|R\(4)) # (!\inst|Dx|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(4),
	datad => VCC,
	cin => \inst|Dx|op_2~7\,
	combout => \inst|Dx|op_2~8_combout\,
	cout => \inst|Dx|op_2~9\);

-- Location: LCCOMB_X41_Y6_N30
\inst|Dx|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~17_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~8_combout\) # ((\inst|Dx|R\(4) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|_~2_combout\ & (((\inst|Dx|R\(4) & \inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|op_2~8_combout\,
	datac => \inst|Dx|R\(4),
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[4]~17_combout\);

-- Location: LCCOMB_X43_Y6_N6
\inst|Dx|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~6_combout\ = (\inst|Dx|R\(4) & (!\inst|Dx|op_1~5\)) # (!\inst|Dx|R\(4) & ((\inst|Dx|op_1~5\) # (GND)))
-- \inst|Dx|op_1~7\ = CARRY((!\inst|Dx|op_1~5\) # (!\inst|Dx|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(4),
	datad => VCC,
	cin => \inst|Dx|op_1~5\,
	combout => \inst|Dx|op_1~6_combout\,
	cout => \inst|Dx|op_1~7\);

-- Location: LCCOMB_X42_Y6_N28
\inst|Dx|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~18_combout\ = (\inst|Dx|R[4]~16_combout\) # ((\inst|Dx|R[4]~17_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[4]~16_combout\,
	datab => \inst|Dx|R[4]~17_combout\,
	datac => \inst|Dx|_~0_combout\,
	datad => \inst|Dx|op_1~6_combout\,
	combout => \inst|Dx|R[4]~18_combout\);

-- Location: LCCOMB_X42_Y6_N2
\inst|Dx|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~19_combout\ = (\inst|Dx|R[4]~18_combout\) # ((\inst|BUS[4]~40_combout\ & (\inst|DI|_~0_combout\ & \inst|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~40_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|Dx|R[4]~18_combout\,
	combout => \inst|Dx|R[4]~19_combout\);

-- Location: LCCOMB_X43_Y6_N30
\inst|Dx|R[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[4]~feeder_combout\ = \inst|Dx|R[4]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Dx|R[4]~19_combout\,
	combout => \inst|Dx|R[4]~feeder_combout\);

-- Location: FF_X43_Y6_N31
\inst|Dx|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(4));

-- Location: LCCOMB_X41_Y6_N18
\inst|Dx|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~10_combout\ = (\inst|Dx|R\(5) & (\inst|Dx|op_2~9\ & VCC)) # (!\inst|Dx|R\(5) & (!\inst|Dx|op_2~9\))
-- \inst|Dx|op_2~11\ = CARRY((!\inst|Dx|R\(5) & !\inst|Dx|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(5),
	datad => VCC,
	cin => \inst|Dx|op_2~9\,
	combout => \inst|Dx|op_2~10_combout\,
	cout => \inst|Dx|op_2~11\);

-- Location: LCCOMB_X41_Y6_N0
\inst|Dx|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~13_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~10_combout\) # ((\inst|Dx|R\(5) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|_~2_combout\ & (((\inst|Dx|R\(5) & \inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|op_2~10_combout\,
	datac => \inst|Dx|R\(5),
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[5]~13_combout\);

-- Location: LCCOMB_X43_Y6_N22
\inst|Dx|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~12_combout\ = (\inst|Dx|R\(6) & ((\inst|Dx|R[5]~7_combout\) # ((\inst|Dx|R\(4) & \inst|Dx|R[6]~4_combout\)))) # (!\inst|Dx|R\(6) & (((\inst|Dx|R\(4) & \inst|Dx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R\(6),
	datab => \inst|Dx|R[5]~7_combout\,
	datac => \inst|Dx|R\(4),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[5]~12_combout\);

-- Location: LCCOMB_X43_Y6_N8
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

-- Location: LCCOMB_X42_Y6_N12
\inst|Dx|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~14_combout\ = (\inst|Dx|R[5]~13_combout\) # ((\inst|Dx|R[5]~12_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~13_combout\,
	datab => \inst|Dx|R[5]~12_combout\,
	datac => \inst|Dx|_~0_combout\,
	datad => \inst|Dx|op_1~8_combout\,
	combout => \inst|Dx|R[5]~14_combout\);

-- Location: LCCOMB_X42_Y6_N20
\inst|Dx|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[5]~15_combout\ = (\inst|Dx|R[5]~14_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~26_combout\ & \inst|BUS[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~14_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|BUS[5]~31_combout\,
	combout => \inst|Dx|R[5]~15_combout\);

-- Location: FF_X42_Y6_N21
\inst|Dx|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(5));

-- Location: LCCOMB_X41_Y6_N20
\inst|Dx|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~12_combout\ = (\inst|Dx|R\(6) & ((GND) # (!\inst|Dx|op_2~11\))) # (!\inst|Dx|R\(6) & (\inst|Dx|op_2~11\ $ (GND)))
-- \inst|Dx|op_2~13\ = CARRY((\inst|Dx|R\(6)) # (!\inst|Dx|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(6),
	datad => VCC,
	cin => \inst|Dx|op_2~11\,
	combout => \inst|Dx|op_2~12_combout\,
	cout => \inst|Dx|op_2~13\);

-- Location: LCCOMB_X41_Y6_N26
\inst|Dx|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~9_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~12_combout\) # ((\inst|Dx|R\(6) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|_~2_combout\ & (((\inst|Dx|R\(6) & \inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|op_2~12_combout\,
	datac => \inst|Dx|R\(6),
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[6]~9_combout\);

-- Location: LCCOMB_X43_Y6_N10
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

-- Location: LCCOMB_X42_Y6_N0
\inst|Dx|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~8_combout\ = (\inst|Dx|R[5]~7_combout\ & ((\inst|Dx|R\(7)) # ((\inst|Dx|R\(5) & \inst|Dx|R[6]~4_combout\)))) # (!\inst|Dx|R[5]~7_combout\ & (\inst|Dx|R\(5) & ((\inst|Dx|R[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[5]~7_combout\,
	datab => \inst|Dx|R\(5),
	datac => \inst|Dx|R\(7),
	datad => \inst|Dx|R[6]~4_combout\,
	combout => \inst|Dx|R[6]~8_combout\);

-- Location: LCCOMB_X42_Y6_N26
\inst|Dx|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~10_combout\ = (\inst|Dx|R[6]~9_combout\) # ((\inst|Dx|R[6]~8_combout\) # ((\inst|Dx|_~0_combout\ & \inst|Dx|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~9_combout\,
	datab => \inst|Dx|_~0_combout\,
	datac => \inst|Dx|op_1~10_combout\,
	datad => \inst|Dx|R[6]~8_combout\,
	combout => \inst|Dx|R[6]~10_combout\);

-- Location: LCCOMB_X42_Y6_N14
\inst|Dx|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[6]~11_combout\ = (\inst|Dx|R[6]~10_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~26_combout\ & \inst|BUS[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~10_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|BUS[6]~21_combout\,
	combout => \inst|Dx|R[6]~11_combout\);

-- Location: FF_X42_Y6_N15
\inst|Dx|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(6));

-- Location: LCCOMB_X41_Y6_N22
\inst|Dx|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_2~14_combout\ = \inst|Dx|R\(7) $ (!\inst|Dx|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Dx|R\(7),
	cin => \inst|Dx|op_2~13\,
	combout => \inst|Dx|op_2~14_combout\);

-- Location: LCCOMB_X41_Y6_N4
\inst|Dx|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~3_combout\ = (\inst|Dx|_~2_combout\ & ((\inst|Dx|op_2~14_combout\) # ((\inst|Dx|R\(7) & \inst|Dx|R[7]~36_combout\)))) # (!\inst|Dx|_~2_combout\ & (\inst|Dx|R\(7) & ((\inst|Dx|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|_~2_combout\,
	datab => \inst|Dx|R\(7),
	datac => \inst|Dx|op_2~14_combout\,
	datad => \inst|Dx|R[7]~36_combout\,
	combout => \inst|Dx|R[7]~3_combout\);

-- Location: LCCOMB_X43_Y6_N12
\inst|Dx|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|op_1~12_combout\ = \inst|Dx|op_1~11\ $ (!\inst|Dx|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Dx|R\(7),
	cin => \inst|Dx|op_1~11\,
	combout => \inst|Dx|op_1~12_combout\);

-- Location: LCCOMB_X43_Y7_N24
\inst|Dx|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[1]~input_o\ & (\inst|_~26_combout\ & \Cmd[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|_~26_combout\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|Dx|_~1_combout\);

-- Location: LCCOMB_X43_Y6_N16
\inst|Dx|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~2_combout\ = (\inst|Dx|op_1~12_combout\ & ((\inst|Dx|_~0_combout\) # ((\inst|Dx|_~1_combout\ & \inst|Dx|R\(0))))) # (!\inst|Dx|op_1~12_combout\ & (\inst|Dx|_~1_combout\ & (\inst|Dx|R\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|op_1~12_combout\,
	datab => \inst|Dx|_~1_combout\,
	datac => \inst|Dx|R\(0),
	datad => \inst|Dx|_~0_combout\,
	combout => \inst|Dx|R[7]~2_combout\);

-- Location: LCCOMB_X42_Y6_N22
\inst|Dx|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~5_combout\ = (\inst|Dx|R[7]~3_combout\) # ((\inst|Dx|R[7]~2_combout\) # ((\inst|Dx|R[6]~4_combout\ & \inst|Dx|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[6]~4_combout\,
	datab => \inst|Dx|R[7]~3_combout\,
	datac => \inst|Dx|R\(6),
	datad => \inst|Dx|R[7]~2_combout\,
	combout => \inst|Dx|R[7]~5_combout\);

-- Location: LCCOMB_X42_Y6_N8
\inst|Dx|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Dx|R[7]~6_combout\ = (\inst|Dx|R[7]~5_combout\) # ((\inst|DI|_~0_combout\ & (\inst|_~26_combout\ & \inst|BUS[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Dx|R[7]~5_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|_~26_combout\,
	datad => \inst|BUS[7]~12_combout\,
	combout => \inst|Dx|R[7]~6_combout\);

-- Location: FF_X42_Y6_N9
\inst|Dx|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Dx|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Dx|R\(7));

-- Location: LCCOMB_X38_Y11_N20
\inst|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|_~27_combout\ = (!\inst|SelMUX[3]~1_combout\ & (\inst|_~15_combout\ & (!\inst|SelMUX[4]~3_combout\ & \inst|SelMUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SelMUX[3]~1_combout\,
	datab => \inst|_~15_combout\,
	datac => \inst|SelMUX[4]~3_combout\,
	datad => \inst|SelMUX[2]~2_combout\,
	combout => \inst|_~27_combout\);

-- Location: LCCOMB_X35_Y7_N22
\inst|Ex|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~4_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[6]~4_combout\);

-- Location: LCCOMB_X35_Y7_N2
\inst|Ex|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~0_combout\ = (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|_~0_combout\);

-- Location: LCCOMB_X35_Y7_N18
\inst|Ex|R[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~36_combout\ = ((!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))) # (!\inst|_~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[7]~36_combout\);

-- Location: LCCOMB_X35_Y7_N4
\inst|Ex|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~2_combout\ = (\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|_~2_combout\);

-- Location: LCCOMB_X35_Y7_N10
\inst|Ex|R[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~32_combout\ = (!\inst|Ex|R\(0) & ((\inst|Ex|_~2_combout\) # (\inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(0),
	datac => \inst|Ex|_~2_combout\,
	datad => \inst|Ex|_~0_combout\,
	combout => \inst|Ex|R[0]~32_combout\);

-- Location: LCCOMB_X35_Y7_N28
\inst|Ex|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~7_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & \inst|_~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[5]~7_combout\);

-- Location: LCCOMB_X35_Y7_N24
\inst|Ex|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~3_combout\ = (!\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|_~3_combout\);

-- Location: LCCOMB_X35_Y7_N30
\inst|Ex|R[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~33_combout\ = (\inst|Ex|_~3_combout\ & ((\inst|Ex|R\(7)) # ((\inst|Ex|R\(0) & \inst|Ex|R[7]~36_combout\)))) # (!\inst|Ex|_~3_combout\ & (\inst|Ex|R\(0) & ((\inst|Ex|R[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~3_combout\,
	datab => \inst|Ex|R\(0),
	datac => \inst|Ex|R\(7),
	datad => \inst|Ex|R[7]~36_combout\,
	combout => \inst|Ex|R[0]~33_combout\);

-- Location: LCCOMB_X35_Y7_N16
\inst|Ex|R[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~34_combout\ = (\inst|Ex|R[0]~32_combout\) # ((\inst|Ex|R[0]~33_combout\) # ((\inst|Ex|R[5]~7_combout\ & \inst|Ex|R\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[0]~32_combout\,
	datab => \inst|Ex|R[5]~7_combout\,
	datac => \inst|Ex|R[0]~33_combout\,
	datad => \inst|Ex|R\(1),
	combout => \inst|Ex|R[0]~34_combout\);

-- Location: LCCOMB_X35_Y7_N20
\inst|Ex|R[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[0]~35_combout\ = (\inst|Ex|R[0]~34_combout\) # ((\inst|BUS[0]~78_combout\ & (\inst|_~27_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[0]~78_combout\,
	datab => \inst|_~27_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ex|R[0]~34_combout\,
	combout => \inst|Ex|R[0]~35_combout\);

-- Location: FF_X35_Y7_N21
\inst|Ex|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[0]~35_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(0));

-- Location: LCCOMB_X31_Y7_N0
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

-- Location: LCCOMB_X31_Y7_N2
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

-- Location: LCCOMB_X31_Y7_N24
\inst|Ex|R[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~29_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(1)) # ((\inst|Ex|op_2~2_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (\inst|Ex|op_2~2_combout\ & ((\inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|op_2~2_combout\,
	datac => \inst|Ex|R\(1),
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[1]~29_combout\);

-- Location: LCCOMB_X32_Y7_N30
\inst|Ex|R[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~28_combout\ = (\inst|Ex|R\(0) & ((\inst|Ex|R[6]~4_combout\) # ((\inst|Ex|R\(2) & \inst|Ex|R[5]~7_combout\)))) # (!\inst|Ex|R\(0) & (\inst|Ex|R\(2) & ((\inst|Ex|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(0),
	datab => \inst|Ex|R\(2),
	datac => \inst|Ex|R[6]~4_combout\,
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[1]~28_combout\);

-- Location: LCCOMB_X32_Y7_N0
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

-- Location: LCCOMB_X32_Y7_N28
\inst|Ex|R[1]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~30_combout\ = (\inst|Ex|R[1]~29_combout\) # ((\inst|Ex|R[1]~28_combout\) # ((\inst|Ex|_~0_combout\ & \inst|Ex|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~0_combout\,
	datab => \inst|Ex|R[1]~29_combout\,
	datac => \inst|Ex|R[1]~28_combout\,
	datad => \inst|Ex|op_1~0_combout\,
	combout => \inst|Ex|R[1]~30_combout\);

-- Location: LCCOMB_X35_Y7_N6
\inst|Ex|R[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[1]~31_combout\ = (\inst|Ex|R[1]~30_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[1]~69_combout\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|BUS[1]~69_combout\,
	datac => \inst|Ex|R[1]~30_combout\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[1]~31_combout\);

-- Location: FF_X35_Y7_N7
\inst|Ex|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[1]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(1));

-- Location: LCCOMB_X32_Y7_N26
\inst|Ex|R[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~24_combout\ = (\inst|Ex|R[6]~4_combout\ & ((\inst|Ex|R\(1)) # ((\inst|Ex|R\(3) & \inst|Ex|R[5]~7_combout\)))) # (!\inst|Ex|R[6]~4_combout\ & (((\inst|Ex|R\(3) & \inst|Ex|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~4_combout\,
	datab => \inst|Ex|R\(1),
	datac => \inst|Ex|R\(3),
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[2]~24_combout\);

-- Location: LCCOMB_X32_Y7_N2
\inst|Ex|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~2_combout\ = (\inst|Ex|R\(2) & (!\inst|Ex|op_1~1\)) # (!\inst|Ex|R\(2) & ((\inst|Ex|op_1~1\) # (GND)))
-- \inst|Ex|op_1~3\ = CARRY((!\inst|Ex|op_1~1\) # (!\inst|Ex|R\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(2),
	datad => VCC,
	cin => \inst|Ex|op_1~1\,
	combout => \inst|Ex|op_1~2_combout\,
	cout => \inst|Ex|op_1~3\);

-- Location: LCCOMB_X31_Y7_N4
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

-- Location: LCCOMB_X31_Y7_N26
\inst|Ex|R[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~25_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(2)) # ((\inst|Ex|op_2~4_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (((\inst|Ex|op_2~4_combout\ & \inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|R\(2),
	datac => \inst|Ex|op_2~4_combout\,
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[2]~25_combout\);

-- Location: LCCOMB_X32_Y7_N16
\inst|Ex|R[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~26_combout\ = (\inst|Ex|R[2]~24_combout\) # ((\inst|Ex|R[2]~25_combout\) # ((\inst|Ex|op_1~2_combout\ & \inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[2]~24_combout\,
	datab => \inst|Ex|op_1~2_combout\,
	datac => \inst|Ex|R[2]~25_combout\,
	datad => \inst|Ex|_~0_combout\,
	combout => \inst|Ex|R[2]~26_combout\);

-- Location: LCCOMB_X34_Y7_N24
\inst|Ex|R[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[2]~27_combout\ = (\inst|Ex|R[2]~26_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[2]~59_combout\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[2]~26_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[2]~59_combout\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[2]~27_combout\);

-- Location: FF_X34_Y7_N25
\inst|Ex|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[2]~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(2));

-- Location: LCCOMB_X32_Y7_N4
\inst|Ex|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~4_combout\ = (\inst|Ex|R\(3) & (\inst|Ex|op_1~3\ $ (GND))) # (!\inst|Ex|R\(3) & (!\inst|Ex|op_1~3\ & VCC))
-- \inst|Ex|op_1~5\ = CARRY((\inst|Ex|R\(3) & !\inst|Ex|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(3),
	datad => VCC,
	cin => \inst|Ex|op_1~3\,
	combout => \inst|Ex|op_1~4_combout\,
	cout => \inst|Ex|op_1~5\);

-- Location: LCCOMB_X31_Y7_N6
\inst|Ex|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~6_combout\ = (\inst|Ex|R\(3) & (\inst|Ex|op_2~5\ & VCC)) # (!\inst|Ex|R\(3) & (!\inst|Ex|op_2~5\))
-- \inst|Ex|op_2~7\ = CARRY((!\inst|Ex|R\(3) & !\inst|Ex|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(3),
	datad => VCC,
	cin => \inst|Ex|op_2~5\,
	combout => \inst|Ex|op_2~6_combout\,
	cout => \inst|Ex|op_2~7\);

-- Location: LCCOMB_X31_Y7_N20
\inst|Ex|R[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~21_combout\ = (\inst|Ex|op_2~6_combout\ & ((\inst|Ex|_~2_combout\) # ((\inst|Ex|R[7]~36_combout\ & \inst|Ex|R\(3))))) # (!\inst|Ex|op_2~6_combout\ & (\inst|Ex|R[7]~36_combout\ & (\inst|Ex|R\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_2~6_combout\,
	datab => \inst|Ex|R[7]~36_combout\,
	datac => \inst|Ex|R\(3),
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[3]~21_combout\);

-- Location: LCCOMB_X34_Y7_N28
\inst|Ex|R[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~20_combout\ = (\inst|Ex|R[6]~4_combout\ & ((\inst|Ex|R\(2)) # ((\inst|Ex|R\(4) & \inst|Ex|R[5]~7_combout\)))) # (!\inst|Ex|R[6]~4_combout\ & (((\inst|Ex|R\(4) & \inst|Ex|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~4_combout\,
	datab => \inst|Ex|R\(2),
	datac => \inst|Ex|R\(4),
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[3]~20_combout\);

-- Location: LCCOMB_X34_Y7_N18
\inst|Ex|R[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~22_combout\ = (\inst|Ex|R[3]~21_combout\) # ((\inst|Ex|R[3]~20_combout\) # ((\inst|Ex|op_1~4_combout\ & \inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_1~4_combout\,
	datab => \inst|Ex|R[3]~21_combout\,
	datac => \inst|Ex|_~0_combout\,
	datad => \inst|Ex|R[3]~20_combout\,
	combout => \inst|Ex|R[3]~22_combout\);

-- Location: LCCOMB_X34_Y7_N22
\inst|Ex|R[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[3]~23_combout\ = (\inst|Ex|R[3]~22_combout\) # ((\inst|BUS[3]~50_combout\ & (\inst|_~27_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[3]~50_combout\,
	datab => \inst|_~27_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ex|R[3]~22_combout\,
	combout => \inst|Ex|R[3]~23_combout\);

-- Location: FF_X34_Y7_N23
\inst|Ex|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[3]~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(3));

-- Location: LCCOMB_X32_Y7_N6
\inst|Ex|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_1~6_combout\ = (\inst|Ex|R\(4) & (!\inst|Ex|op_1~5\)) # (!\inst|Ex|R\(4) & ((\inst|Ex|op_1~5\) # (GND)))
-- \inst|Ex|op_1~7\ = CARRY((!\inst|Ex|op_1~5\) # (!\inst|Ex|R\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(4),
	datad => VCC,
	cin => \inst|Ex|op_1~5\,
	combout => \inst|Ex|op_1~6_combout\,
	cout => \inst|Ex|op_1~7\);

-- Location: LCCOMB_X31_Y7_N8
\inst|Ex|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~8_combout\ = (\inst|Ex|R\(4) & ((GND) # (!\inst|Ex|op_2~7\))) # (!\inst|Ex|R\(4) & (\inst|Ex|op_2~7\ $ (GND)))
-- \inst|Ex|op_2~9\ = CARRY((\inst|Ex|R\(4)) # (!\inst|Ex|op_2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(4),
	datad => VCC,
	cin => \inst|Ex|op_2~7\,
	combout => \inst|Ex|op_2~8_combout\,
	cout => \inst|Ex|op_2~9\);

-- Location: LCCOMB_X31_Y7_N22
\inst|Ex|R[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~17_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(4)) # ((\inst|Ex|op_2~8_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (((\inst|Ex|op_2~8_combout\ & \inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|R\(4),
	datac => \inst|Ex|op_2~8_combout\,
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[4]~17_combout\);

-- Location: LCCOMB_X32_Y7_N14
\inst|Ex|R[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~16_combout\ = (\inst|Ex|R[6]~4_combout\ & ((\inst|Ex|R\(3)) # ((\inst|Ex|R\(5) & \inst|Ex|R[5]~7_combout\)))) # (!\inst|Ex|R[6]~4_combout\ & (\inst|Ex|R\(5) & ((\inst|Ex|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~4_combout\,
	datab => \inst|Ex|R\(5),
	datac => \inst|Ex|R\(3),
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[4]~16_combout\);

-- Location: LCCOMB_X32_Y7_N20
\inst|Ex|R[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~18_combout\ = (\inst|Ex|R[4]~17_combout\) # ((\inst|Ex|R[4]~16_combout\) # ((\inst|Ex|op_1~6_combout\ & \inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_1~6_combout\,
	datab => \inst|Ex|R[4]~17_combout\,
	datac => \inst|Ex|R[4]~16_combout\,
	datad => \inst|Ex|_~0_combout\,
	combout => \inst|Ex|R[4]~18_combout\);

-- Location: LCCOMB_X34_Y7_N12
\inst|Ex|R[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[4]~19_combout\ = (\inst|Ex|R[4]~18_combout\) # ((\inst|BUS[4]~40_combout\ & (\inst|_~27_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[4]~40_combout\,
	datab => \inst|_~27_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ex|R[4]~18_combout\,
	combout => \inst|Ex|R[4]~19_combout\);

-- Location: FF_X34_Y7_N13
\inst|Ex|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[4]~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(4));

-- Location: LCCOMB_X32_Y7_N8
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

-- Location: LCCOMB_X34_Y7_N0
\inst|Ex|R[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~12_combout\ = (\inst|Ex|R[6]~4_combout\ & ((\inst|Ex|R\(4)) # ((\inst|Ex|R\(6) & \inst|Ex|R[5]~7_combout\)))) # (!\inst|Ex|R[6]~4_combout\ & (\inst|Ex|R\(6) & ((\inst|Ex|R[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~4_combout\,
	datab => \inst|Ex|R\(6),
	datac => \inst|Ex|R\(4),
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[5]~12_combout\);

-- Location: LCCOMB_X31_Y7_N10
\inst|Ex|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~10_combout\ = (\inst|Ex|R\(5) & (\inst|Ex|op_2~9\ & VCC)) # (!\inst|Ex|R\(5) & (!\inst|Ex|op_2~9\))
-- \inst|Ex|op_2~11\ = CARRY((!\inst|Ex|R\(5) & !\inst|Ex|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(5),
	datad => VCC,
	cin => \inst|Ex|op_2~9\,
	combout => \inst|Ex|op_2~10_combout\,
	cout => \inst|Ex|op_2~11\);

-- Location: LCCOMB_X31_Y7_N16
\inst|Ex|R[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~13_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(5)) # ((\inst|Ex|op_2~10_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (\inst|Ex|op_2~10_combout\ & ((\inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|op_2~10_combout\,
	datac => \inst|Ex|R\(5),
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[5]~13_combout\);

-- Location: LCCOMB_X34_Y7_N10
\inst|Ex|R[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~14_combout\ = (\inst|Ex|R[5]~12_combout\) # ((\inst|Ex|R[5]~13_combout\) # ((\inst|Ex|op_1~8_combout\ & \inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_1~8_combout\,
	datab => \inst|Ex|R[5]~12_combout\,
	datac => \inst|Ex|_~0_combout\,
	datad => \inst|Ex|R[5]~13_combout\,
	combout => \inst|Ex|R[5]~14_combout\);

-- Location: LCCOMB_X34_Y7_N26
\inst|Ex|R[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[5]~15_combout\ = (\inst|Ex|R[5]~14_combout\) # ((\inst|BUS[5]~31_combout\ & (\inst|DI|_~0_combout\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[5]~14_combout\,
	datab => \inst|BUS[5]~31_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[5]~15_combout\);

-- Location: FF_X34_Y7_N27
\inst|Ex|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[5]~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(5));

-- Location: LCCOMB_X32_Y7_N10
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

-- Location: LCCOMB_X31_Y7_N12
\inst|Ex|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~12_combout\ = (\inst|Ex|R\(6) & ((GND) # (!\inst|Ex|op_2~11\))) # (!\inst|Ex|R\(6) & (\inst|Ex|op_2~11\ $ (GND)))
-- \inst|Ex|op_2~13\ = CARRY((\inst|Ex|R\(6)) # (!\inst|Ex|op_2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(6),
	datad => VCC,
	cin => \inst|Ex|op_2~11\,
	combout => \inst|Ex|op_2~12_combout\,
	cout => \inst|Ex|op_2~13\);

-- Location: LCCOMB_X31_Y7_N18
\inst|Ex|R[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~9_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(6)) # ((\inst|Ex|op_2~12_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (\inst|Ex|op_2~12_combout\ & ((\inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|op_2~12_combout\,
	datac => \inst|Ex|R\(6),
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[6]~9_combout\);

-- Location: LCCOMB_X32_Y7_N22
\inst|Ex|R[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~8_combout\ = (\inst|Ex|R\(7) & ((\inst|Ex|R[5]~7_combout\) # ((\inst|Ex|R\(5) & \inst|Ex|R[6]~4_combout\)))) # (!\inst|Ex|R\(7) & (\inst|Ex|R\(5) & (\inst|Ex|R[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R\(7),
	datab => \inst|Ex|R\(5),
	datac => \inst|Ex|R[6]~4_combout\,
	datad => \inst|Ex|R[5]~7_combout\,
	combout => \inst|Ex|R[6]~8_combout\);

-- Location: LCCOMB_X32_Y7_N24
\inst|Ex|R[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~10_combout\ = (\inst|Ex|R[6]~9_combout\) # ((\inst|Ex|R[6]~8_combout\) # ((\inst|Ex|op_1~10_combout\ & \inst|Ex|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|op_1~10_combout\,
	datab => \inst|Ex|R[6]~9_combout\,
	datac => \inst|Ex|R[6]~8_combout\,
	datad => \inst|Ex|_~0_combout\,
	combout => \inst|Ex|R[6]~10_combout\);

-- Location: LCCOMB_X34_Y7_N16
\inst|Ex|R[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[6]~11_combout\ = (\inst|Ex|R[6]~10_combout\) # ((\inst|DI|_~0_combout\ & (\inst|BUS[6]~21_combout\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~10_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|BUS[6]~21_combout\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|R[6]~11_combout\);

-- Location: FF_X34_Y7_N17
\inst|Ex|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[6]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(6));

-- Location: LCCOMB_X31_Y7_N14
\inst|Ex|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|op_2~14_combout\ = \inst|Ex|R\(7) $ (!\inst|Ex|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ex|R\(7),
	cin => \inst|Ex|op_2~13\,
	combout => \inst|Ex|op_2~14_combout\);

-- Location: LCCOMB_X31_Y7_N28
\inst|Ex|R[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~3_combout\ = (\inst|Ex|R[7]~36_combout\ & ((\inst|Ex|R\(7)) # ((\inst|Ex|op_2~14_combout\ & \inst|Ex|_~2_combout\)))) # (!\inst|Ex|R[7]~36_combout\ & (((\inst|Ex|op_2~14_combout\ & \inst|Ex|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[7]~36_combout\,
	datab => \inst|Ex|R\(7),
	datac => \inst|Ex|op_2~14_combout\,
	datad => \inst|Ex|_~2_combout\,
	combout => \inst|Ex|R[7]~3_combout\);

-- Location: LCCOMB_X35_Y7_N12
\inst|Ex|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|_~1_combout\ = (\Cmd[0]~input_o\ & (\Cmd[2]~input_o\ & (\Cmd[1]~input_o\ & \inst|_~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[2]~input_o\,
	datac => \Cmd[1]~input_o\,
	datad => \inst|_~27_combout\,
	combout => \inst|Ex|_~1_combout\);

-- Location: LCCOMB_X32_Y7_N12
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

-- Location: LCCOMB_X35_Y7_N26
\inst|Ex|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~2_combout\ = (\inst|Ex|_~1_combout\ & ((\inst|Ex|R\(0)) # ((\inst|Ex|op_1~12_combout\ & \inst|Ex|_~0_combout\)))) # (!\inst|Ex|_~1_combout\ & (((\inst|Ex|op_1~12_combout\ & \inst|Ex|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|_~1_combout\,
	datab => \inst|Ex|R\(0),
	datac => \inst|Ex|op_1~12_combout\,
	datad => \inst|Ex|_~0_combout\,
	combout => \inst|Ex|R[7]~2_combout\);

-- Location: LCCOMB_X34_Y7_N14
\inst|Ex|R[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~5_combout\ = (\inst|Ex|R[7]~3_combout\) # ((\inst|Ex|R[7]~2_combout\) # ((\inst|Ex|R[6]~4_combout\ & \inst|Ex|R\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ex|R[6]~4_combout\,
	datab => \inst|Ex|R\(6),
	datac => \inst|Ex|R[7]~3_combout\,
	datad => \inst|Ex|R[7]~2_combout\,
	combout => \inst|Ex|R[7]~5_combout\);

-- Location: LCCOMB_X35_Y7_N8
\inst|Ex|R[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ex|R[7]~6_combout\ = (\inst|Ex|R[7]~5_combout\) # ((\inst|BUS[7]~12_combout\ & (\inst|_~27_combout\ & \inst|DI|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BUS[7]~12_combout\,
	datab => \inst|_~27_combout\,
	datac => \inst|DI|_~0_combout\,
	datad => \inst|Ex|R[7]~5_combout\,
	combout => \inst|Ex|R[7]~6_combout\);

-- Location: FF_X35_Y7_N9
\inst|Ex|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|Ex|R[7]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ex|R\(7));

-- Location: LCCOMB_X34_Y26_N0
\inst|ALU|Flags[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[7]~1_combout\ = (\inst|ALU|_~3_combout\ & (!\inst|alu_y|R\(0) & \inst|ALU|Flags[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~3_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|Flags[7]~0_combout\,
	combout => \inst|ALU|Flags[7]~1_combout\);

-- Location: IOIBUF_X34_Y39_N22
\Enable_flag~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable_flag,
	o => \Enable_flag~input_o\);

-- Location: FF_X34_Y26_N1
\inst|ALU|Flags[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[7]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(7));

-- Location: LCCOMB_X35_Y26_N30
\inst|ALU|Flags[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~5_combout\ = (!\inst|ALU|op_2~0_combout\ & (\inst|alu_y|R\(1) $ (!\inst|alu_x|R[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(1),
	datab => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datad => \inst|ALU|op_2~0_combout\,
	combout => \inst|ALU|Flags[6]~5_combout\);

-- Location: LCCOMB_X35_Y26_N28
\inst|ALU|Flags[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~4_combout\ = (\inst|alu_x|R[3]~_Duplicate_1_q\ & (\inst|alu_y|R\(3) & (\inst|alu_y|R\(2) $ (!\inst|alu_x|R[2]~_Duplicate_1_q\)))) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & (!\inst|alu_y|R\(3) & (\inst|alu_y|R\(2) $ 
-- (!\inst|alu_x|R[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(2),
	datac => \inst|alu_y|R\(3),
	datad => \inst|alu_x|R[2]~_Duplicate_1_q\,
	combout => \inst|ALU|Flags[6]~4_combout\);

-- Location: LCCOMB_X35_Y26_N24
\inst|ALU|Flags[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~2_combout\ = (\inst|alu_x|R[7]~_Duplicate_1_q\ & (\inst|alu_y|R\(7) & (\inst|alu_y|R\(6) $ (!\inst|alu_x|R[6]~_Duplicate_1_q\)))) # (!\inst|alu_x|R[7]~_Duplicate_1_q\ & (!\inst|alu_y|R\(7) & (\inst|alu_y|R\(6) $ 
-- (!\inst|alu_x|R[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[7]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(7),
	datac => \inst|alu_y|R\(6),
	datad => \inst|alu_x|R[6]~_Duplicate_1_q\,
	combout => \inst|ALU|Flags[6]~2_combout\);

-- Location: LCCOMB_X34_Y26_N30
\inst|ALU|Flags[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~3_combout\ = (\inst|alu_y|R\(4) & (\inst|alu_x|R[4]~_Duplicate_1_q\ & (\inst|alu_y|R\(5) $ (!\inst|alu_x|R[5]~_Duplicate_1_q\)))) # (!\inst|alu_y|R\(4) & (!\inst|alu_x|R[4]~_Duplicate_1_q\ & (\inst|alu_y|R\(5) $ 
-- (!\inst|alu_x|R[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(4),
	datab => \inst|alu_y|R\(5),
	datac => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => \inst|alu_x|R[5]~_Duplicate_1_q\,
	combout => \inst|ALU|Flags[6]~3_combout\);

-- Location: LCCOMB_X35_Y26_N26
\inst|ALU|Flags[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[6]~6_combout\ = (\inst|ALU|Flags[6]~5_combout\ & (\inst|ALU|Flags[6]~4_combout\ & (\inst|ALU|Flags[6]~2_combout\ & \inst|ALU|Flags[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[6]~5_combout\,
	datab => \inst|ALU|Flags[6]~4_combout\,
	datac => \inst|ALU|Flags[6]~2_combout\,
	datad => \inst|ALU|Flags[6]~3_combout\,
	combout => \inst|ALU|Flags[6]~6_combout\);

-- Location: FF_X35_Y26_N27
\inst|ALU|Flags[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[6]~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(6));

-- Location: LCCOMB_X37_Y26_N16
\inst|ALU|op_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~1_cout\ = CARRY((!\inst|alu_y|R\(0) & \inst|alu_x|R[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(0),
	datab => \inst|alu_x|R[0]~_Duplicate_1_q\,
	datad => VCC,
	cout => \inst|ALU|op_1~1_cout\);

-- Location: LCCOMB_X37_Y26_N18
\inst|ALU|op_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~3_cout\ = CARRY((\inst|alu_x|R[1]~_Duplicate_1_q\ & (\inst|alu_y|R\(1) & !\inst|ALU|op_1~1_cout\)) # (!\inst|alu_x|R[1]~_Duplicate_1_q\ & ((\inst|alu_y|R\(1)) # (!\inst|ALU|op_1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[1]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(1),
	datad => VCC,
	cin => \inst|ALU|op_1~1_cout\,
	cout => \inst|ALU|op_1~3_cout\);

-- Location: LCCOMB_X37_Y26_N20
\inst|ALU|op_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~5_cout\ = CARRY((\inst|alu_y|R\(2) & (\inst|alu_x|R[2]~_Duplicate_1_q\ & !\inst|ALU|op_1~3_cout\)) # (!\inst|alu_y|R\(2) & ((\inst|alu_x|R[2]~_Duplicate_1_q\) # (!\inst|ALU|op_1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(2),
	datab => \inst|alu_x|R[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_1~3_cout\,
	cout => \inst|ALU|op_1~5_cout\);

-- Location: LCCOMB_X37_Y26_N22
\inst|ALU|op_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~7_cout\ = CARRY((\inst|alu_x|R[3]~_Duplicate_1_q\ & (\inst|alu_y|R\(3) & !\inst|ALU|op_1~5_cout\)) # (!\inst|alu_x|R[3]~_Duplicate_1_q\ & ((\inst|alu_y|R\(3)) # (!\inst|ALU|op_1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[3]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(3),
	datad => VCC,
	cin => \inst|ALU|op_1~5_cout\,
	cout => \inst|ALU|op_1~7_cout\);

-- Location: LCCOMB_X37_Y26_N24
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

-- Location: LCCOMB_X37_Y26_N26
\inst|ALU|op_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~11_cout\ = CARRY((\inst|alu_x|R[5]~_Duplicate_1_q\ & (\inst|alu_y|R\(5) & !\inst|ALU|op_1~9_cout\)) # (!\inst|alu_x|R[5]~_Duplicate_1_q\ & ((\inst|alu_y|R\(5)) # (!\inst|ALU|op_1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_x|R[5]~_Duplicate_1_q\,
	datab => \inst|alu_y|R\(5),
	datad => VCC,
	cin => \inst|ALU|op_1~9_cout\,
	cout => \inst|ALU|op_1~11_cout\);

-- Location: LCCOMB_X37_Y26_N28
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

-- Location: LCCOMB_X37_Y26_N30
\inst|ALU|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_1~14_combout\ = (\inst|alu_y|R\(7) & (\inst|ALU|op_1~13_cout\ & \inst|alu_x|R[7]~_Duplicate_1_q\)) # (!\inst|alu_y|R\(7) & ((\inst|ALU|op_1~13_cout\) # (\inst|alu_x|R[7]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_y|R\(7),
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	cin => \inst|ALU|op_1~13_cout\,
	combout => \inst|ALU|op_1~14_combout\);

-- Location: LCCOMB_X42_Y25_N30
\inst|ALU|Flags[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[5]~7_combout\ = (!\inst|ALU|Flags[6]~6_combout\ & !\inst|ALU|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|Flags[6]~6_combout\,
	datad => \inst|ALU|op_1~14_combout\,
	combout => \inst|ALU|Flags[5]~7_combout\);

-- Location: FF_X42_Y25_N31
\inst|ALU|Flags[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[5]~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(5));

-- Location: LCCOMB_X42_Y25_N24
\inst|ALU|Flags[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[4]~8_combout\ = (!\inst|ALU|Flags[6]~6_combout\ & \inst|ALU|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|Flags[6]~6_combout\,
	datad => \inst|ALU|op_1~14_combout\,
	combout => \inst|ALU|Flags[4]~8_combout\);

-- Location: FF_X42_Y25_N25
\inst|ALU|Flags[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[4]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(4));

-- Location: LCCOMB_X36_Y27_N12
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

-- Location: LCCOMB_X36_Y27_N14
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

-- Location: LCCOMB_X36_Y27_N16
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

-- Location: LCCOMB_X36_Y27_N18
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

-- Location: LCCOMB_X36_Y27_N20
\inst|ALU|op_4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~9_cout\ = CARRY((\inst|alu_y|R\(4) & ((!\inst|ALU|op_4~7_cout\) # (!\inst|alu_x|R[4]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(4) & (!\inst|alu_x|R[4]~_Duplicate_1_q\ & !\inst|ALU|op_4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(4),
	datab => \inst|alu_x|R[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_4~7_cout\,
	cout => \inst|ALU|op_4~9_cout\);

-- Location: LCCOMB_X36_Y27_N22
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

-- Location: LCCOMB_X36_Y27_N24
\inst|ALU|op_4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~13_cout\ = CARRY((\inst|alu_y|R\(6) & ((!\inst|ALU|op_4~11_cout\) # (!\inst|alu_x|R[6]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(6) & (!\inst|alu_x|R[6]~_Duplicate_1_q\ & !\inst|ALU|op_4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_y|R\(6),
	datab => \inst|alu_x|R[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \inst|ALU|op_4~11_cout\,
	cout => \inst|ALU|op_4~13_cout\);

-- Location: LCCOMB_X36_Y27_N26
\inst|ALU|op_4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|op_4~14_combout\ = (\inst|alu_y|R\(7) & ((\inst|ALU|op_4~13_cout\) # (!\inst|alu_x|R[7]~_Duplicate_1_q\))) # (!\inst|alu_y|R\(7) & (\inst|ALU|op_4~13_cout\ & !\inst|alu_x|R[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_y|R\(7),
	datad => \inst|alu_x|R[7]~_Duplicate_1_q\,
	cin => \inst|ALU|op_4~13_cout\,
	combout => \inst|ALU|op_4~14_combout\);

-- Location: LCCOMB_X36_Y25_N16
\inst|ALU|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|_~28_combout\ = (\inst|ALU|_~4_combout\ & \inst|ALU|_~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALU|_~4_combout\,
	datad => \inst|ALU|_~5_combout\,
	combout => \inst|ALU|_~28_combout\);

-- Location: LCCOMB_X36_Y25_N22
\inst|ALU|Flags[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[3]~9_combout\ = (\inst|ALU|_~8_combout\ & ((\inst|ALU|_~28_combout\) # ((!\inst|alu_y|R\(0) & \inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~8_combout\,
	datab => \inst|ALU|_~28_combout\,
	datac => \inst|alu_y|R\(0),
	datad => \inst|ALU|_~3_combout\,
	combout => \inst|ALU|Flags[3]~9_combout\);

-- Location: LCCOMB_X36_Y25_N26
\inst|ALU|Flags[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[3]~10_combout\ = (\inst|ALU|Flags[3]~9_combout\) # ((\inst|ALU|op_4~14_combout\ & \inst|ALU|_~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_4~14_combout\,
	datac => \inst|ALU|Flags[3]~9_combout\,
	datad => \inst|ALU|_~10_combout\,
	combout => \inst|ALU|Flags[3]~10_combout\);

-- Location: FF_X36_Y25_N27
\inst|ALU|Flags[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Flags[3]~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(3));

-- Location: LCCOMB_X37_Y25_N16
\inst|ALU|Flags[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~18_combout\ = (\SelOp[0]~input_o\ & (\inst|ALU|_~28_combout\ & (\SelOp[1]~input_o\))) # (!\SelOp[0]~input_o\ & (((!\SelOp[1]~input_o\ & \inst|ALU|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~28_combout\,
	datab => \SelOp[0]~input_o\,
	datac => \SelOp[1]~input_o\,
	datad => \inst|ALU|_~6_combout\,
	combout => \inst|ALU|Flags[2]~18_combout\);

-- Location: LCCOMB_X37_Y25_N2
\inst|ALU|Flags[2]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~19_combout\ = (!\SelOp[2]~input_o\ & \inst|ALU|Flags[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelOp[2]~input_o\,
	datad => \inst|ALU|Flags[2]~18_combout\,
	combout => \inst|ALU|Flags[2]~19_combout\);

-- Location: LCCOMB_X40_Y25_N16
\inst|ALU|Flags[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~13_combout\ = (!\inst|ALU|Result\(12) & (\inst|ALU|_~2_combout\ & (!\inst|ALU|Result\(11) & !\inst|ALU|Result\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(12),
	datab => \inst|ALU|_~2_combout\,
	datac => \inst|ALU|Result\(11),
	datad => \inst|ALU|Result\(10),
	combout => \inst|ALU|Flags[2]~13_combout\);

-- Location: LCCOMB_X40_Y25_N14
\inst|ALU|Flags[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~14_combout\ = (!\inst|ALU|Result\(13) & (!\inst|ALU|Result\(15) & (!\inst|ALU|Result\(14) & \inst|ALU|Flags[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result\(13),
	datab => \inst|ALU|Result\(15),
	datac => \inst|ALU|Result\(14),
	datad => \inst|ALU|Flags[2]~13_combout\,
	combout => \inst|ALU|Flags[2]~14_combout\);

-- Location: LCCOMB_X36_Y25_N20
\inst|ALU|Flags[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~15_combout\ = (!\inst|ALU|Result\(9) & ((\inst|ALU|Flags[2]~14_combout\) # ((!\inst|ALU|op_4~14_combout\ & \inst|ALU|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|op_4~14_combout\,
	datab => \inst|ALU|_~10_combout\,
	datac => \inst|ALU|Result\(9),
	datad => \inst|ALU|Flags[2]~14_combout\,
	combout => \inst|ALU|Flags[2]~15_combout\);

-- Location: LCCOMB_X36_Y25_N14
\inst|ALU|Flags[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~16_combout\ = (\inst|ALU|_~17_combout\) # ((!\inst|ALU|Result[8]~103_combout\ & ((\inst|ALU|_~16_combout\) # (\inst|ALU|Flags[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|_~16_combout\,
	datab => \inst|ALU|Flags[2]~15_combout\,
	datac => \inst|ALU|_~17_combout\,
	datad => \inst|ALU|Result[8]~103_combout\,
	combout => \inst|ALU|Flags[2]~16_combout\);

-- Location: LCCOMB_X41_Y25_N2
\inst|ALU|Flags[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~11_combout\ = (!\inst|ALU|Result[3]~133_combout\ & (!\inst|ALU|Result[4]~128_combout\ & (!\inst|ALU|Result[5]~122_combout\ & !\inst|ALU|Result[1]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[3]~133_combout\,
	datab => \inst|ALU|Result[4]~128_combout\,
	datac => \inst|ALU|Result[5]~122_combout\,
	datad => \inst|ALU|Result[1]~144_combout\,
	combout => \inst|ALU|Flags[2]~11_combout\);

-- Location: LCCOMB_X41_Y25_N0
\inst|ALU|Flags[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~12_combout\ = (!\inst|ALU|Result[0]~145_combout\ & (!\inst|ALU|Result[6]~116_combout\ & (!\inst|ALU|Result[0]~149_combout\ & \inst|ALU|Flags[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Result[0]~145_combout\,
	datab => \inst|ALU|Result[6]~116_combout\,
	datac => \inst|ALU|Result[0]~149_combout\,
	datad => \inst|ALU|Flags[2]~11_combout\,
	combout => \inst|ALU|Flags[2]~12_combout\);

-- Location: LCCOMB_X41_Y25_N14
\inst|ALU|Flags[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~17_combout\ = (\inst|ALU|Flags[2]~16_combout\ & (!\inst|ALU|Result[2]~138_combout\ & (!\inst|ALU|Result[7]~110_combout\ & \inst|ALU|Flags[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[2]~16_combout\,
	datab => \inst|ALU|Result[2]~138_combout\,
	datac => \inst|ALU|Result[7]~110_combout\,
	datad => \inst|ALU|Flags[2]~12_combout\,
	combout => \inst|ALU|Flags[2]~17_combout\);

-- Location: LCCOMB_X41_Y25_N4
\inst|ALU|Flags[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ALU|Flags[2]~20_combout\ = (\inst|ALU|Flags[2]~19_combout\) # ((\inst|ALU|Flags[2]~17_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\) # (!\inst|ALU|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Flags[2]~19_combout\,
	datab => \inst|ALU|_~11_combout\,
	datac => \inst|ALU|Flags[2]~17_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|ALU|Flags[2]~20_combout\);

-- Location: FF_X41_Y25_N5
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
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(2));

-- Location: FF_X36_Y25_N19
\inst|ALU|Flags[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|ALU|Result[8]~101_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \Enable_flag~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ALU|Flags\(0));

-- Location: LCCOMB_X40_Y12_N6
\inst|DI|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DI|_~1_combout\ = (!\Cmd[0]~input_o\ & (!\Cmd[2]~input_o\ & !\Cmd[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cmd[0]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \Cmd[1]~input_o\,
	combout => \inst|DI|_~1_combout\);

-- Location: LCCOMB_X40_Y12_N28
\inst|alu_r|R[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_r|R[16]~0_combout\ = (\inst|DI|_~0_combout\ & (((\inst|DI|_~1_combout\ & \inst|alu_r|R\(16))) # (!\inst|ALU|Result[16]~100_combout\))) # (!\inst|DI|_~0_combout\ & (((\inst|alu_r|R\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~1_combout\,
	datab => \inst|DI|_~0_combout\,
	datac => \inst|alu_r|R\(16),
	datad => \inst|ALU|Result[16]~100_combout\,
	combout => \inst|alu_r|R[16]~0_combout\);

-- Location: FF_X40_Y12_N29
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

-- Location: LCCOMB_X43_Y26_N14
\inst|alu_res|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|_~0_combout\ = (\inst|DI|_~0_combout\ & (\inst|ALU|Flags[7]~0_combout\ & ((\inst|alu_y|R\(0)) # (!\inst|ALU|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DI|_~0_combout\,
	datab => \inst|ALU|Flags[7]~0_combout\,
	datac => \inst|ALU|_~3_combout\,
	datad => \inst|alu_y|R\(0),
	combout => \inst|alu_res|_~0_combout\);

-- Location: LCCOMB_X43_Y26_N24
\inst|alu_res|R[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[7]~0_combout\ = (\inst|alu_res|R\(7) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \inst|alu_res|R\(7),
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|alu_res|R[7]~0_combout\);

-- Location: LCCOMB_X42_Y26_N0
\inst|alu_res|R[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[7]~1_combout\ = (\inst|alu_res|R[7]~0_combout\) # ((\inst|alu_res|_~0_combout\ & (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|_~0_combout\,
	datab => \inst|alu_res|R[7]~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	combout => \inst|alu_res|R[7]~1_combout\);

-- Location: LCCOMB_X42_Y26_N30
\inst|alu_res|R[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[7]~2_combout\ = (\inst|alu_res|R[7]~1_combout\) # ((\inst|alu_res|_~0_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|_~0_combout\,
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|alu_res|R[7]~1_combout\,
	combout => \inst|alu_res|R[7]~2_combout\);

-- Location: FF_X42_Y26_N31
\inst|alu_res|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[7]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(7));

-- Location: LCCOMB_X43_Y26_N16
\inst|alu_res|R[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[6]~3_combout\ = (\inst|alu_res|R\(6) & ((\Cmd[1]~input_o\) # ((\Cmd[2]~input_o\) # (!\Cmd[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|R\(6),
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[0]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|alu_res|R[6]~3_combout\);

-- Location: LCCOMB_X42_Y26_N28
\inst|alu_res|R[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[6]~4_combout\ = (\inst|alu_res|R[6]~3_combout\) # ((\inst|alu_res|_~0_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ & 
-- !\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|_~0_combout\,
	datab => \inst|alu_res|R[6]~3_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \inst|alu_res|R[6]~4_combout\);

-- Location: LCCOMB_X42_Y26_N8
\inst|alu_res|R[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[6]~5_combout\ = (\inst|alu_res|R[6]~4_combout\) # ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\ & (\inst|alu_res|_~0_combout\ & 
-- \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datab => \inst|alu_res|_~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|alu_res|R[6]~4_combout\,
	combout => \inst|alu_res|R[6]~5_combout\);

-- Location: FF_X42_Y26_N9
\inst|alu_res|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[6]~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(6));

-- Location: LCCOMB_X44_Y26_N18
\inst|alu_res|R[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[5]~6_combout\ = (\inst|alu_res|R\(5) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|alu_res|R\(5),
	combout => \inst|alu_res|R[5]~6_combout\);

-- Location: LCCOMB_X44_Y26_N28
\inst|alu_res|R[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[5]~7_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	combout => \inst|alu_res|R[5]~7_combout\);

-- Location: LCCOMB_X44_Y26_N4
\inst|alu_res|R[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[5]~8_combout\ = (\inst|alu_res|R[5]~6_combout\) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|_~0_combout\,
	datab => \inst|alu_res|R[5]~6_combout\,
	datad => \inst|alu_res|R[5]~7_combout\,
	combout => \inst|alu_res|R[5]~8_combout\);

-- Location: FF_X44_Y26_N5
\inst|alu_res|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[5]~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(5));

-- Location: LCCOMB_X43_Y26_N18
\inst|alu_res|R[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[4]~9_combout\ = (\inst|alu_res|R\(4) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \inst|alu_res|R\(4),
	datac => \Cmd[1]~input_o\,
	datad => \Cmd[2]~input_o\,
	combout => \inst|alu_res|R[4]~9_combout\);

-- Location: LCCOMB_X43_Y26_N28
\inst|alu_res|R[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[4]~10_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	combout => \inst|alu_res|R[4]~10_combout\);

-- Location: LCCOMB_X43_Y26_N8
\inst|alu_res|R[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[4]~11_combout\ = (\inst|alu_res|R[4]~9_combout\) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[4]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_res|R[4]~9_combout\,
	datac => \inst|alu_res|_~0_combout\,
	datad => \inst|alu_res|R[4]~10_combout\,
	combout => \inst|alu_res|R[4]~11_combout\);

-- Location: FF_X43_Y26_N9
\inst|alu_res|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[4]~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(4));

-- Location: LCCOMB_X44_Y26_N22
\inst|alu_res|R[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[3]~12_combout\ = (\inst|alu_res|R\(3) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \Cmd[2]~input_o\,
	datad => \inst|alu_res|R\(3),
	combout => \inst|alu_res|R[3]~12_combout\);

-- Location: LCCOMB_X42_Y26_N2
\inst|alu_res|R[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[3]~13_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	combout => \inst|alu_res|R[3]~13_combout\);

-- Location: LCCOMB_X42_Y26_N6
\inst|alu_res|R[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[3]~14_combout\ = (\inst|alu_res|R[3]~12_combout\) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_res|R[3]~12_combout\,
	datac => \inst|alu_res|_~0_combout\,
	datad => \inst|alu_res|R[3]~13_combout\,
	combout => \inst|alu_res|R[3]~14_combout\);

-- Location: FF_X42_Y26_N7
\inst|alu_res|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[3]~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(3));

-- Location: LCCOMB_X43_Y26_N30
\inst|alu_res|R[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[2]~15_combout\ = (\inst|alu_res|R\(2) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|alu_res|R\(2),
	datad => \Cmd[2]~input_o\,
	combout => \inst|alu_res|R[2]~15_combout\);

-- Location: LCCOMB_X43_Y26_N12
\inst|alu_res|R[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[2]~16_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	combout => \inst|alu_res|R[2]~16_combout\);

-- Location: LCCOMB_X43_Y26_N22
\inst|alu_res|R[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[2]~17_combout\ = (\inst|alu_res|R[2]~15_combout\) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[2]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_res|_~0_combout\,
	datac => \inst|alu_res|R[2]~15_combout\,
	datad => \inst|alu_res|R[2]~16_combout\,
	combout => \inst|alu_res|R[2]~17_combout\);

-- Location: FF_X43_Y26_N23
\inst|alu_res|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[2]~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(2));

-- Location: LCCOMB_X43_Y26_N26
\inst|alu_res|R[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[1]~18_combout\ = (\inst|alu_res|R\(1) & (((\Cmd[1]~input_o\) # (\Cmd[2]~input_o\)) # (!\Cmd[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cmd[0]~input_o\,
	datab => \Cmd[1]~input_o\,
	datac => \inst|alu_res|R\(1),
	datad => \Cmd[2]~input_o\,
	combout => \inst|alu_res|R[1]~18_combout\);

-- Location: LCCOMB_X43_Y26_N0
\inst|alu_res|R[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[1]~19_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\)) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	combout => \inst|alu_res|R[1]~19_combout\);

-- Location: LCCOMB_X43_Y26_N4
\inst|alu_res|R[1]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[1]~20_combout\ = (\inst|alu_res|R[1]~18_combout\) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[1]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu_res|_~0_combout\,
	datac => \inst|alu_res|R[1]~18_combout\,
	datad => \inst|alu_res|R[1]~19_combout\,
	combout => \inst|alu_res|R[1]~20_combout\);

-- Location: FF_X43_Y26_N5
\inst|alu_res|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[1]~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(1));

-- Location: LCCOMB_X43_Y26_N2
\inst|alu_res|R[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[0]~21_combout\ = (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\inst|ALU|_~27_combout\))) # 
-- (!\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \inst|ALU|Division|D|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \inst|ALU|_~27_combout\,
	combout => \inst|alu_res|R[0]~21_combout\);

-- Location: LCCOMB_X43_Y26_N6
\inst|alu_res|R[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|alu_res|R[0]~22_combout\ = (\inst|alu_rl|R[7]~0_combout\ & ((\inst|alu_res|R\(0)) # ((\inst|alu_res|_~0_combout\ & \inst|alu_res|R[0]~21_combout\)))) # (!\inst|alu_rl|R[7]~0_combout\ & (\inst|alu_res|_~0_combout\ & 
-- ((\inst|alu_res|R[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu_rl|R[7]~0_combout\,
	datab => \inst|alu_res|_~0_combout\,
	datac => \inst|alu_res|R\(0),
	datad => \inst|alu_res|R[0]~21_combout\,
	combout => \inst|alu_res|R[0]~22_combout\);

-- Location: FF_X43_Y26_N7
\inst|alu_res|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|alu_res|R[0]~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu_res|R\(0));

-- Location: LCCOMB_X41_Y12_N0
\inst|SRC|R[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC|R[7]~feeder_combout\ = \inst|BUS[7]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BUS[7]~12_combout\,
	combout => \inst|SRC|R[7]~feeder_combout\);

-- Location: FF_X41_Y12_N1
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
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(7));

-- Location: FF_X40_Y11_N13
\inst|SRC|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|BUS[6]~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(6));

-- Location: FF_X40_Y11_N9
\inst|SRC|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \inst|BUS[5]~31_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \inst|SRC|R[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SRC|R\(5));

-- Location: LCCOMB_X40_Y11_N30
\inst|SRC_t[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC_t\(4) = (\inst|SRC|R\(4)) # ((\SRC_UC[4]~input_o\ & \SelSRC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SRC|R\(4),
	datac => \SRC_UC[4]~input_o\,
	datad => \SelSRC~input_o\,
	combout => \inst|SRC_t\(4));

-- Location: LCCOMB_X41_Y12_N6
\inst|SRC_t[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC_t\(3) = (\inst|SRC|R\(3)) # ((\SRC_UC[3]~input_o\ & \SelSRC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[3]~input_o\,
	datab => \SelSRC~input_o\,
	datad => \inst|SRC|R\(3),
	combout => \inst|SRC_t\(3));

-- Location: LCCOMB_X41_Y12_N30
\inst|SRC_t[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC_t\(2) = (\inst|SRC|R\(2)) # ((\SRC_UC[2]~input_o\ & \SelSRC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC_UC[2]~input_o\,
	datab => \SelSRC~input_o\,
	datad => \inst|SRC|R\(2),
	combout => \inst|SRC_t\(2));

-- Location: LCCOMB_X41_Y12_N20
\inst|SRC_t[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC_t\(1) = (\inst|SRC|R\(1)) # ((\SelSRC~input_o\ & \SRC_UC[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelSRC~input_o\,
	datac => \SRC_UC[1]~input_o\,
	datad => \inst|SRC|R\(1),
	combout => \inst|SRC_t\(1));

-- Location: LCCOMB_X41_Y12_N2
\inst|SRC_t[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SRC_t\(0) = (\inst|SRC|R\(0)) # ((\SRC_UC[0]~input_o\ & \SelSRC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SRC|R\(0),
	datab => \SRC_UC[0]~input_o\,
	datad => \SelSRC~input_o\,
	combout => \inst|SRC_t\(0));

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

ww_ADDR_BUS_t(7) <= \ADDR_BUS_t[7]~output_o\;

ww_ADDR_BUS_t(6) <= \ADDR_BUS_t[6]~output_o\;

ww_ADDR_BUS_t(5) <= \ADDR_BUS_t[5]~output_o\;

ww_ADDR_BUS_t(4) <= \ADDR_BUS_t[4]~output_o\;

ww_ADDR_BUS_t(3) <= \ADDR_BUS_t[3]~output_o\;

ww_ADDR_BUS_t(2) <= \ADDR_BUS_t[2]~output_o\;

ww_ADDR_BUS_t(1) <= \ADDR_BUS_t[1]~output_o\;

ww_ADDR_BUS_t(0) <= \ADDR_BUS_t[0]~output_o\;

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

ww_DATA_BUS_IN_t(7) <= \DATA_BUS_IN_t[7]~output_o\;

ww_DATA_BUS_IN_t(6) <= \DATA_BUS_IN_t[6]~output_o\;

ww_DATA_BUS_IN_t(5) <= \DATA_BUS_IN_t[5]~output_o\;

ww_DATA_BUS_IN_t(4) <= \DATA_BUS_IN_t[4]~output_o\;

ww_DATA_BUS_IN_t(3) <= \DATA_BUS_IN_t[3]~output_o\;

ww_DATA_BUS_IN_t(2) <= \DATA_BUS_IN_t[2]~output_o\;

ww_DATA_BUS_IN_t(1) <= \DATA_BUS_IN_t[1]~output_o\;

ww_DATA_BUS_IN_t(0) <= \DATA_BUS_IN_t[0]~output_o\;

ww_DATA_BUS_OUT_t(7) <= \DATA_BUS_OUT_t[7]~output_o\;

ww_DATA_BUS_OUT_t(6) <= \DATA_BUS_OUT_t[6]~output_o\;

ww_DATA_BUS_OUT_t(5) <= \DATA_BUS_OUT_t[5]~output_o\;

ww_DATA_BUS_OUT_t(4) <= \DATA_BUS_OUT_t[4]~output_o\;

ww_DATA_BUS_OUT_t(3) <= \DATA_BUS_OUT_t[3]~output_o\;

ww_DATA_BUS_OUT_t(2) <= \DATA_BUS_OUT_t[2]~output_o\;

ww_DATA_BUS_OUT_t(1) <= \DATA_BUS_OUT_t[1]~output_o\;

ww_DATA_BUS_OUT_t(0) <= \DATA_BUS_OUT_t[0]~output_o\;

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

ww_Flags_t(7) <= \Flags_t[7]~output_o\;

ww_Flags_t(6) <= \Flags_t[6]~output_o\;

ww_Flags_t(5) <= \Flags_t[5]~output_o\;

ww_Flags_t(4) <= \Flags_t[4]~output_o\;

ww_Flags_t(3) <= \Flags_t[3]~output_o\;

ww_Flags_t(2) <= \Flags_t[2]~output_o\;

ww_Flags_t(1) <= \Flags_t[1]~output_o\;

ww_Flags_t(0) <= \Flags_t[0]~output_o\;

ww_IR_t(7) <= \IR_t[7]~output_o\;

ww_IR_t(6) <= \IR_t[6]~output_o\;

ww_IR_t(5) <= \IR_t[5]~output_o\;

ww_IR_t(4) <= \IR_t[4]~output_o\;

ww_IR_t(3) <= \IR_t[3]~output_o\;

ww_IR_t(2) <= \IR_t[2]~output_o\;

ww_IR_t(1) <= \IR_t[1]~output_o\;

ww_IR_t(0) <= \IR_t[0]~output_o\;

ww_MAR_t(7) <= \MAR_t[7]~output_o\;

ww_MAR_t(6) <= \MAR_t[6]~output_o\;

ww_MAR_t(5) <= \MAR_t[5]~output_o\;

ww_MAR_t(4) <= \MAR_t[4]~output_o\;

ww_MAR_t(3) <= \MAR_t[3]~output_o\;

ww_MAR_t(2) <= \MAR_t[2]~output_o\;

ww_MAR_t(1) <= \MAR_t[1]~output_o\;

ww_MAR_t(0) <= \MAR_t[0]~output_o\;

ww_MDR_t(7) <= \MDR_t[7]~output_o\;

ww_MDR_t(6) <= \MDR_t[6]~output_o\;

ww_MDR_t(5) <= \MDR_t[5]~output_o\;

ww_MDR_t(4) <= \MDR_t[4]~output_o\;

ww_MDR_t(3) <= \MDR_t[3]~output_o\;

ww_MDR_t(2) <= \MDR_t[2]~output_o\;

ww_MDR_t(1) <= \MDR_t[1]~output_o\;

ww_MDR_t(0) <= \MDR_t[0]~output_o\;

ww_PC_t(7) <= \PC_t[7]~output_o\;

ww_PC_t(6) <= \PC_t[6]~output_o\;

ww_PC_t(5) <= \PC_t[5]~output_o\;

ww_PC_t(4) <= \PC_t[4]~output_o\;

ww_PC_t(3) <= \PC_t[3]~output_o\;

ww_PC_t(2) <= \PC_t[2]~output_o\;

ww_PC_t(1) <= \PC_t[1]~output_o\;

ww_PC_t(0) <= \PC_t[0]~output_o\;

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


