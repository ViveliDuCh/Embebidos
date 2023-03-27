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
-- Generated on "03/24/2023 13:11:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ArchivoRegistros
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ArchivoRegistros_vhd_vec_tst IS
END ArchivoRegistros_vhd_vec_tst;
ARCHITECTURE ArchivoRegistros_arch OF ArchivoRegistros_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ax_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bx_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Cmd : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL DST : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Fx : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL r_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Reloj : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL SelBus : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SRC : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL x_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ArchivoRegistros
	PORT (
	Ax_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bx_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Cmd : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	DST : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Fx : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	r_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reloj : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	SelBus : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	SRC : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	x_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	y_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ArchivoRegistros
	PORT MAP (
-- list connections between master ports and signals
	Ax_t => Ax_t,
	Bx_t => Bx_t,
	Cmd => Cmd,
	DST => DST,
	Fx => Fx,
	r_t => r_t,
	Reloj => Reloj,
	Reset => Reset,
	SelBus => SelBus,
	SRC => SRC,
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
-- SelBus[4]
t_prcs_SelBus_4: PROCESS
BEGIN
	SelBus(4) <= '0';
WAIT;
END PROCESS t_prcs_SelBus_4;
-- SelBus[3]
t_prcs_SelBus_3: PROCESS
BEGIN
	SelBus(3) <= '0';
WAIT;
END PROCESS t_prcs_SelBus_3;
-- SelBus[2]
t_prcs_SelBus_2: PROCESS
BEGIN
	SelBus(2) <= '0';
	WAIT FOR 100000 ps;
	SelBus(2) <= '1';
	WAIT FOR 100000 ps;
	SelBus(2) <= '0';
WAIT;
END PROCESS t_prcs_SelBus_2;
-- SelBus[1]
t_prcs_SelBus_1: PROCESS
BEGIN
	SelBus(1) <= '0';
WAIT;
END PROCESS t_prcs_SelBus_1;
-- SelBus[0]
t_prcs_SelBus_0: PROCESS
BEGIN
	SelBus(0) <= '0';
	WAIT FOR 100000 ps;
	SelBus(0) <= '1';
	WAIT FOR 100000 ps;
	SelBus(0) <= '0';
WAIT;
END PROCESS t_prcs_SelBus_0;
-- DST[4]
t_prcs_DST_4: PROCESS
BEGIN
	DST(4) <= '0';
WAIT;
END PROCESS t_prcs_DST_4;
-- DST[3]
t_prcs_DST_3: PROCESS
BEGIN
	DST(3) <= '0';
WAIT;
END PROCESS t_prcs_DST_3;
-- DST[2]
t_prcs_DST_2: PROCESS
BEGIN
	DST(2) <= '0';
WAIT;
END PROCESS t_prcs_DST_2;
-- DST[1]
t_prcs_DST_1: PROCESS
BEGIN
	DST(1) <= '0';
WAIT;
END PROCESS t_prcs_DST_1;
-- DST[0]
t_prcs_DST_0: PROCESS
BEGIN
	DST(0) <= '0';
WAIT;
END PROCESS t_prcs_DST_0;
-- SRC[4]
t_prcs_SRC_4: PROCESS
BEGIN
	SRC(4) <= '0';
WAIT;
END PROCESS t_prcs_SRC_4;
-- SRC[3]
t_prcs_SRC_3: PROCESS
BEGIN
	SRC(3) <= '0';
WAIT;
END PROCESS t_prcs_SRC_3;
-- SRC[2]
t_prcs_SRC_2: PROCESS
BEGIN
	SRC(2) <= '0';
WAIT;
END PROCESS t_prcs_SRC_2;
-- SRC[1]
t_prcs_SRC_1: PROCESS
BEGIN
	SRC(1) <= '0';
WAIT;
END PROCESS t_prcs_SRC_1;
-- SRC[0]
t_prcs_SRC_0: PROCESS
BEGIN
	SRC(0) <= '0';
WAIT;
END PROCESS t_prcs_SRC_0;
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
	WAIT FOR 200000 ps;
	Cmd(0) <= '1';
	WAIT FOR 100000 ps;
	Cmd(0) <= '0';
WAIT;
END PROCESS t_prcs_Cmd_0;
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
	Fx(2) <= '1';
WAIT;
END PROCESS t_prcs_Fx_2;
-- Fx[1]
t_prcs_Fx_1: PROCESS
BEGIN
	Fx(1) <= '1';
WAIT;
END PROCESS t_prcs_Fx_1;
-- Fx[0]
t_prcs_Fx_0: PROCESS
BEGIN
	Fx(0) <= '1';
WAIT;
END PROCESS t_prcs_Fx_0;
END ArchivoRegistros_arch;
