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

-- DATE "10/25/2019 06:56:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuit2 IS
    PORT (
	i_CLK : IN std_logic;
	o_X : BUFFER std_logic;
	o_Y : BUFFER std_logic;
	o_Z : BUFFER std_logic
	);
END circuit2;

-- Design Ports Information
-- o_X	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Z	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_o_X : std_logic;
SIGNAL ww_o_Y : std_logic;
SIGNAL ww_o_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \w_STATE_REG.t_S3~q\ : std_logic;
SIGNAL \w_STATE_REG.t_S0~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_S0~q\ : std_logic;
SIGNAL \w_STATE_REG.t_S1~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_S1~q\ : std_logic;
SIGNAL \w_STATE_REG.t_S2~feeder_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_S2~q\ : std_logic;
SIGNAL \w_STATE_REG.t_S3~feeder_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_S3~DUPLICATE_q\ : std_logic;
SIGNAL \w_STATE_REG.t_S2~DUPLICATE_q\ : std_logic;
SIGNAL \w_STATE_REG.t_S1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_S0~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_S1~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_S2~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_S3~q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
o_X <= ww_o_X;
o_Y <= ww_o_Y;
o_Z <= ww_o_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w_STATE_REG.t_S0~q\ <= NOT \w_STATE_REG.t_S0~q\;
\ALT_INV_w_STATE_REG.t_S1~q\ <= NOT \w_STATE_REG.t_S1~q\;
\ALT_INV_w_STATE_REG.t_S2~q\ <= NOT \w_STATE_REG.t_S2~q\;
\ALT_INV_w_STATE_REG.t_S3~q\ <= NOT \w_STATE_REG.t_S3~q\;

-- Location: IOOBUF_X64_Y0_N36
\o_X~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_STATE_REG.t_S3~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_X);

-- Location: IOOBUF_X64_Y0_N19
\o_Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_STATE_REG.t_S2~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Y);

-- Location: IOOBUF_X64_Y0_N53
\o_Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_STATE_REG.t_S1~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_o_Z);

-- Location: IOIBUF_X89_Y25_N21
\i_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G10
\i_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~input_o\,
	outclk => \i_CLK~inputCLKENA0_outclk\);

-- Location: FF_X64_Y2_N25
\w_STATE_REG.t_S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S3~q\);

-- Location: LABCELL_X64_Y2_N21
\w_STATE_REG.t_S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_STATE_REG.t_S0~0_combout\ = ( !\w_STATE_REG.t_S3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_w_STATE_REG.t_S3~q\,
	combout => \w_STATE_REG.t_S0~0_combout\);

-- Location: FF_X64_Y2_N22
\w_STATE_REG.t_S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S0~q\);

-- Location: LABCELL_X64_Y2_N6
\w_STATE_REG.t_S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_STATE_REG.t_S1~0_combout\ = ( !\w_STATE_REG.t_S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_w_STATE_REG.t_S0~q\,
	combout => \w_STATE_REG.t_S1~0_combout\);

-- Location: FF_X64_Y2_N8
\w_STATE_REG.t_S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S1~q\);

-- Location: LABCELL_X64_Y2_N57
\w_STATE_REG.t_S2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_STATE_REG.t_S2~feeder_combout\ = ( \w_STATE_REG.t_S1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_w_STATE_REG.t_S1~q\,
	combout => \w_STATE_REG.t_S2~feeder_combout\);

-- Location: FF_X64_Y2_N58
\w_STATE_REG.t_S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S2~q\);

-- Location: LABCELL_X64_Y2_N24
\w_STATE_REG.t_S3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_STATE_REG.t_S3~feeder_combout\ = ( \w_STATE_REG.t_S2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_w_STATE_REG.t_S2~q\,
	combout => \w_STATE_REG.t_S3~feeder_combout\);

-- Location: FF_X64_Y2_N26
\w_STATE_REG.t_S3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S3~DUPLICATE_q\);

-- Location: FF_X64_Y2_N59
\w_STATE_REG.t_S2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S2~DUPLICATE_q\);

-- Location: FF_X64_Y2_N7
\w_STATE_REG.t_S1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_STATE_REG.t_S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_S1~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


