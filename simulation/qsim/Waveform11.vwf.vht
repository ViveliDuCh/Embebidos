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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/10/2023 15:01:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MiQRObio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MiQRObio_vhd_vec_tst IS
END MiQRObio_vhd_vec_tst;
ARCHITECTURE MiQRObio_arch OF MiQRObio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Ax_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bus_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bx_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cmd : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Cx_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DST_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DST_UC : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Enable_t : STD_LOGIC;
SIGNAL Fx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reloj : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL SelBus_t : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SelDST : STD_LOGIC;
SIGNAL SelMAR : STD_LOGIC;
SIGNAL SelMDR : STD_LOGIC;
SIGNAL SelSRC : STD_LOGIC;
SIGNAL SRC_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SRC_UC : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Write_En : STD_LOGIC;
SIGNAL x_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MiQRObio
	PORT (
	ALU_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Ax_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bus_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bx_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cmd : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Cx_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DST_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DST_UC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Enable_t : IN STD_LOGIC;
	Fx : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	r_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reloj : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	SelBus_t : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	SelDST : IN STD_LOGIC;
	SelMAR : IN STD_LOGIC;
	SelMDR : IN STD_LOGIC;
	SelSRC : IN STD_LOGIC;
	SRC_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SRC_UC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Write_En : IN STD_LOGIC;
	x_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	y_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MiQRObio
	PORT MAP (
-- list connections between master ports and signals
	ALU_t => ALU_t,
	Ax_t => Ax_t,
	Bus_t => Bus_t,
	Bx_t => Bx_t,
	Cmd => Cmd,
	Cx_t => Cx_t,
	DST_t => DST_t,
	DST_UC => DST_UC,
	Enable_t => Enable_t,
	Fx => Fx,
	IR => IR,
	MAR => MAR,
	MDR => MDR,
	PC => PC,
	r_t => r_t,
	Reloj => Reloj,
	Reset => Reset,
	SelBus_t => SelBus_t,
	SelDST => SelDST,
	SelMAR => SelMAR,
	SelMDR => SelMDR,
	SelSRC => SelSRC,
	SRC_t => SRC_t,
	SRC_UC => SRC_UC,
	Write_En => Write_En,
	x_t => x_t,
	y_t => y_t
	);

-- Reloj
t_prcs_Reloj: PROCESS
BEGIN
LOOP
	Reloj <= '0';
	WAIT FOR 50000 ps;
	Reloj <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Reloj;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
	WAIT FOR 100000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- SelDST
t_prcs_SelDST: PROCESS
BEGIN
	SelDST <= '0';
	WAIT FOR 500000 ps;
	SelDST <= '1';
	WAIT FOR 700000 ps;
	SelDST <= '0';
WAIT;
END PROCESS t_prcs_SelDST;

-- SelMAR
t_prcs_SelMAR: PROCESS
BEGIN
	SelMAR <= '0';
WAIT;
END PROCESS t_prcs_SelMAR;

-- SelMDR
t_prcs_SelMDR: PROCESS
BEGIN
	SelMDR <= '0';
	WAIT FOR 500000 ps;
	SelMDR <= '1';
	WAIT FOR 700000 ps;
	SelMDR <= '0';
WAIT;
END PROCESS t_prcs_SelMDR;

-- SelSRC
t_prcs_SelSRC: PROCESS
BEGIN
	SelSRC <= '0';
	WAIT FOR 100000 ps;
	SelSRC <= '1';
	WAIT FOR 1100000 ps;
	SelSRC <= '0';
WAIT;
END PROCESS t_prcs_SelSRC;
-- SRC_UC[4]
t_prcs_SRC_UC_4: PROCESS
BEGIN
	SRC_UC(4) <= '0';
WAIT;
END PROCESS t_prcs_SRC_UC_4;
-- SRC_UC[3]
t_prcs_SRC_UC_3: PROCESS
BEGIN
	SRC_UC(3) <= '0';
WAIT;
END PROCESS t_prcs_SRC_UC_3;
-- SRC_UC[2]
t_prcs_SRC_UC_2: PROCESS
BEGIN
	SRC_UC(2) <= '0';
	WAIT FOR 300000 ps;
	SRC_UC(2) <= '1';
	WAIT FOR 900000 ps;
	SRC_UC(2) <= '0';
WAIT;
END PROCESS t_prcs_SRC_UC_2;
-- SRC_UC[1]
t_prcs_SRC_UC_1: PROCESS
BEGIN
	SRC_UC(1) <= '0';
WAIT;
END PROCESS t_prcs_SRC_UC_1;
-- SRC_UC[0]
t_prcs_SRC_UC_0: PROCESS
BEGIN
	SRC_UC(0) <= '0';
	WAIT FOR 300000 ps;
	SRC_UC(0) <= '1';
	WAIT FOR 900000 ps;
	SRC_UC(0) <= '0';
WAIT;
END PROCESS t_prcs_SRC_UC_0;
-- DST_UC[4]
t_prcs_DST_UC_4: PROCESS
BEGIN
	DST_UC(4) <= '0';
WAIT;
END PROCESS t_prcs_DST_UC_4;
-- DST_UC[3]
t_prcs_DST_UC_3: PROCESS
BEGIN
	DST_UC(3) <= '0';
	WAIT FOR 500000 ps;
	DST_UC(3) <= '1';
	WAIT FOR 700000 ps;
	DST_UC(3) <= '0';
WAIT;
END PROCESS t_prcs_DST_UC_3;
-- DST_UC[2]
t_prcs_DST_UC_2: PROCESS
BEGIN
	DST_UC(2) <= '0';
	WAIT FOR 500000 ps;
	DST_UC(2) <= '1';
	WAIT FOR 700000 ps;
	DST_UC(2) <= '0';
WAIT;
END PROCESS t_prcs_DST_UC_2;
-- DST_UC[1]
t_prcs_DST_UC_1: PROCESS
BEGIN
	DST_UC(1) <= '0';
WAIT;
END PROCESS t_prcs_DST_UC_1;
-- DST_UC[0]
t_prcs_DST_UC_0: PROCESS
BEGIN
	DST_UC(0) <= '0';
	WAIT FOR 500000 ps;
	DST_UC(0) <= '1';
	WAIT FOR 700000 ps;
	DST_UC(0) <= '0';
WAIT;
END PROCESS t_prcs_DST_UC_0;
-- Cmd[2]
t_prcs_Cmd_2: PROCESS
BEGIN
	Cmd(2) <= '0';
WAIT;
END PROCESS t_prcs_Cmd_2;
-- Cmd[1]
t_prcs_Cmd_1: PROCESS
BEGIN
	Cmd(1) <= '0';
WAIT;
END PROCESS t_prcs_Cmd_1;
-- Cmd[0]
t_prcs_Cmd_0: PROCESS
BEGIN
	Cmd(0) <= '0';
	WAIT FOR 500000 ps;
	Cmd(0) <= '1';
	WAIT FOR 700000 ps;
	Cmd(0) <= '0';
WAIT;
END PROCESS t_prcs_Cmd_0;

-- Enable_t
t_prcs_Enable_t: PROCESS
BEGIN
	Enable_t <= '0';
WAIT;
END PROCESS t_prcs_Enable_t;

-- Write_En
t_prcs_Write_En: PROCESS
BEGIN
	Write_En <= '0';
WAIT;
END PROCESS t_prcs_Write_En;
-- Fx[7]
t_prcs_Fx_7: PROCESS
BEGIN
	Fx(7) <= '0';
WAIT;
END PROCESS t_prcs_Fx_7;
-- Fx[6]
t_prcs_Fx_6: PROCESS
BEGIN
	Fx(6) <= '0';
WAIT;
END PROCESS t_prcs_Fx_6;
-- Fx[5]
t_prcs_Fx_5: PROCESS
BEGIN
	Fx(5) <= '0';
WAIT;
END PROCESS t_prcs_Fx_5;
-- Fx[4]
t_prcs_Fx_4: PROCESS
BEGIN
	Fx(4) <= '0';
	WAIT FOR 300000 ps;
	Fx(4) <= '1';
	WAIT FOR 900000 ps;
	Fx(4) <= '0';
WAIT;
END PROCESS t_prcs_Fx_4;
-- Fx[3]
t_prcs_Fx_3: PROCESS
BEGIN
	Fx(3) <= '0';
WAIT;
END PROCESS t_prcs_Fx_3;
-- Fx[2]
t_prcs_Fx_2: PROCESS
BEGIN
	Fx(2) <= '0';
	WAIT FOR 300000 ps;
	Fx(2) <= '1';
	WAIT FOR 900000 ps;
	Fx(2) <= '0';
WAIT;
END PROCESS t_prcs_Fx_2;
-- Fx[1]
t_prcs_Fx_1: PROCESS
BEGIN
	Fx(1) <= '0';
	WAIT FOR 300000 ps;
	Fx(1) <= '1';
	WAIT FOR 900000 ps;
	Fx(1) <= '0';
WAIT;
END PROCESS t_prcs_Fx_1;
-- Fx[0]
t_prcs_Fx_0: PROCESS
BEGIN
	Fx(0) <= '0';
	WAIT FOR 300000 ps;
	Fx(0) <= '1';
	WAIT FOR 900000 ps;
	Fx(0) <= '0';
WAIT;
END PROCESS t_prcs_Fx_0;
END MiQRObio_arch;
