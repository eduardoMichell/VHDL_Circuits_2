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

-- DATE "10/25/2019 07:55:12"

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

ENTITY 	circuit3 IS
    PORT (
	i_CLK : IN std_logic;
	i_B : IN std_logic;
	o_S0 : OUT std_logic;
	o_S1 : OUT std_logic
	);
END circuit3;

-- Design Ports Information
-- o_S0	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S1	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuit3 IS
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
SIGNAL ww_i_B : std_logic;
SIGNAL ww_o_S0 : std_logic;
SIGNAL ww_o_S1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_B~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_Pdata~q\ : std_logic;
SIGNAL \w_NEXT_STATE.t_hora~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_hora~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_Phora~q\ : std_logic;
SIGNAL \w_NEXT_STATE.t_alarme~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_alarme~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_Palarme~q\ : std_logic;
SIGNAL \w_NEXT_STATE.t_crono~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_crono~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_Pcrono~q\ : std_logic;
SIGNAL \w_NEXT_STATE.t_data~0_combout\ : std_logic;
SIGNAL \w_STATE_REG.t_data~q\ : std_logic;
SIGNAL \o_S0~0_combout\ : std_logic;
SIGNAL \o_S1~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_B~input_o\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_hora~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_Phora~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_Palarme~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_alarme~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_Pcrono~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_crono~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_Pdata~q\ : std_logic;
SIGNAL \ALT_INV_w_STATE_REG.t_data~q\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_B <= i_B;
o_S0 <= ww_o_S0;
o_S1 <= ww_o_S1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_B~input_o\ <= NOT \i_B~input_o\;
\ALT_INV_w_STATE_REG.t_hora~q\ <= NOT \w_STATE_REG.t_hora~q\;
\ALT_INV_w_STATE_REG.t_Phora~q\ <= NOT \w_STATE_REG.t_Phora~q\;
\ALT_INV_w_STATE_REG.t_Palarme~q\ <= NOT \w_STATE_REG.t_Palarme~q\;
\ALT_INV_w_STATE_REG.t_alarme~q\ <= NOT \w_STATE_REG.t_alarme~q\;
\ALT_INV_w_STATE_REG.t_Pcrono~q\ <= NOT \w_STATE_REG.t_Pcrono~q\;
\ALT_INV_w_STATE_REG.t_crono~q\ <= NOT \w_STATE_REG.t_crono~q\;
\ALT_INV_w_STATE_REG.t_Pdata~q\ <= NOT \w_STATE_REG.t_Pdata~q\;
\ALT_INV_w_STATE_REG.t_data~q\ <= NOT \w_STATE_REG.t_data~q\;

-- Location: IOOBUF_X6_Y81_N53
\o_S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S0~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S0);

-- Location: IOOBUF_X6_Y81_N19
\o_S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \o_S1~0_combout\,
	devoe => ww_devoe,
	o => ww_o_S1);

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

-- Location: IOIBUF_X6_Y81_N1
\i_B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B,
	o => \i_B~input_o\);

-- Location: MLABCELL_X6_Y80_N57
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \w_STATE_REG.t_Pdata~q\ & ( \w_STATE_REG.t_data~q\ & ( !\i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_Pdata~q\ & ( \w_STATE_REG.t_data~q\ & ( !\i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_Pdata~q\ & ( !\w_STATE_REG.t_data~q\ & ( 
-- !\i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_Pdata~q\,
	dataf => \ALT_INV_w_STATE_REG.t_data~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X6_Y80_N59
\w_STATE_REG.t_Pdata\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_Pdata~q\);

-- Location: MLABCELL_X6_Y80_N15
\w_NEXT_STATE.t_hora~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_NEXT_STATE.t_hora~0_combout\ = ( \w_STATE_REG.t_hora~q\ & ( \w_STATE_REG.t_Pdata~q\ & ( !\i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_hora~q\ & ( \w_STATE_REG.t_Pdata~q\ & ( !\i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_hora~q\ & ( !\w_STATE_REG.t_Pdata~q\ ) ) # 
-- ( !\w_STATE_REG.t_hora~q\ & ( !\w_STATE_REG.t_Pdata~q\ & ( !\i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_hora~q\,
	dataf => \ALT_INV_w_STATE_REG.t_Pdata~q\,
	combout => \w_NEXT_STATE.t_hora~0_combout\);

-- Location: FF_X6_Y80_N17
\w_STATE_REG.t_hora\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_NEXT_STATE.t_hora~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_hora~q\);

-- Location: MLABCELL_X6_Y80_N30
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \w_STATE_REG.t_Phora~q\ & ( \w_STATE_REG.t_hora~q\ & ( !\i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_Phora~q\ & ( !\w_STATE_REG.t_hora~q\ & ( !\i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_Phora~q\ & ( !\w_STATE_REG.t_hora~q\ & ( 
-- !\i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_Phora~q\,
	dataf => \ALT_INV_w_STATE_REG.t_hora~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X6_Y80_N31
\w_STATE_REG.t_Phora\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_Phora~q\);

-- Location: MLABCELL_X6_Y80_N3
\w_NEXT_STATE.t_alarme~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_NEXT_STATE.t_alarme~0_combout\ = ( \w_STATE_REG.t_Phora~q\ & ( \i_B~input_o\ ) ) # ( !\w_STATE_REG.t_Phora~q\ & ( (\i_B~input_o\ & \w_STATE_REG.t_alarme~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_B~input_o\,
	datad => \ALT_INV_w_STATE_REG.t_alarme~q\,
	dataf => \ALT_INV_w_STATE_REG.t_Phora~q\,
	combout => \w_NEXT_STATE.t_alarme~0_combout\);

-- Location: FF_X6_Y80_N5
\w_STATE_REG.t_alarme\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_NEXT_STATE.t_alarme~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_alarme~q\);

-- Location: MLABCELL_X6_Y80_N18
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \w_STATE_REG.t_Palarme~q\ & ( \w_STATE_REG.t_alarme~q\ & ( !\i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_Palarme~q\ & ( \w_STATE_REG.t_alarme~q\ & ( !\i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_Palarme~q\ & ( !\w_STATE_REG.t_alarme~q\ & ( 
-- !\i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_Palarme~q\,
	dataf => \ALT_INV_w_STATE_REG.t_alarme~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X6_Y80_N20
\w_STATE_REG.t_Palarme\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_Palarme~q\);

-- Location: MLABCELL_X6_Y80_N9
\w_NEXT_STATE.t_crono~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_NEXT_STATE.t_crono~0_combout\ = ( \w_STATE_REG.t_crono~q\ & ( \w_STATE_REG.t_Palarme~q\ & ( \i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_crono~q\ & ( \w_STATE_REG.t_Palarme~q\ & ( \i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_crono~q\ & ( 
-- !\w_STATE_REG.t_Palarme~q\ & ( \i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_crono~q\,
	dataf => \ALT_INV_w_STATE_REG.t_Palarme~q\,
	combout => \w_NEXT_STATE.t_crono~0_combout\);

-- Location: FF_X6_Y80_N11
\w_STATE_REG.t_crono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_NEXT_STATE.t_crono~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_crono~q\);

-- Location: MLABCELL_X6_Y80_N42
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \w_STATE_REG.t_crono~q\ & ( !\i_B~input_o\ ) ) # ( !\w_STATE_REG.t_crono~q\ & ( (!\i_B~input_o\ & \w_STATE_REG.t_Pcrono~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B~input_o\,
	datad => \ALT_INV_w_STATE_REG.t_Pcrono~q\,
	dataf => \ALT_INV_w_STATE_REG.t_crono~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X6_Y80_N44
\w_STATE_REG.t_Pcrono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_Pcrono~q\);

-- Location: MLABCELL_X6_Y80_N48
\w_NEXT_STATE.t_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_NEXT_STATE.t_data~0_combout\ = ( \w_STATE_REG.t_data~q\ & ( \w_STATE_REG.t_Pcrono~q\ & ( \i_B~input_o\ ) ) ) # ( !\w_STATE_REG.t_data~q\ & ( \w_STATE_REG.t_Pcrono~q\ & ( \i_B~input_o\ ) ) ) # ( \w_STATE_REG.t_data~q\ & ( !\w_STATE_REG.t_Pcrono~q\ & ( 
-- \i_B~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i_B~input_o\,
	datae => \ALT_INV_w_STATE_REG.t_data~q\,
	dataf => \ALT_INV_w_STATE_REG.t_Pcrono~q\,
	combout => \w_NEXT_STATE.t_data~0_combout\);

-- Location: FF_X6_Y80_N50
\w_STATE_REG.t_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputCLKENA0_outclk\,
	d => \w_NEXT_STATE.t_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_STATE_REG.t_data~q\);

-- Location: MLABCELL_X6_Y80_N0
\o_S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S0~0_combout\ = ( \w_STATE_REG.t_crono~q\ ) # ( !\w_STATE_REG.t_crono~q\ & ( ((\w_STATE_REG.t_Pdata~q\) # (\w_STATE_REG.t_Pcrono~q\)) # (\w_STATE_REG.t_data~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_STATE_REG.t_data~q\,
	datab => \ALT_INV_w_STATE_REG.t_Pcrono~q\,
	datad => \ALT_INV_w_STATE_REG.t_Pdata~q\,
	dataf => \ALT_INV_w_STATE_REG.t_crono~q\,
	combout => \o_S0~0_combout\);

-- Location: MLABCELL_X6_Y80_N45
\o_S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o_S1~0_combout\ = ( \w_STATE_REG.t_alarme~q\ ) # ( !\w_STATE_REG.t_alarme~q\ & ( ((\w_STATE_REG.t_Palarme~q\) # (\w_STATE_REG.t_Pdata~q\)) # (\w_STATE_REG.t_data~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_STATE_REG.t_data~q\,
	datac => \ALT_INV_w_STATE_REG.t_Pdata~q\,
	datad => \ALT_INV_w_STATE_REG.t_Palarme~q\,
	dataf => \ALT_INV_w_STATE_REG.t_alarme~q\,
	combout => \o_S1~0_combout\);

-- Location: LABCELL_X1_Y12_N3
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


