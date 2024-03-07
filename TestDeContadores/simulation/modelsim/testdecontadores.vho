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

-- DATE "03/07/2024 17:51:11"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testdecontadores IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start_up : IN std_logic;
	start_down : IN std_logic;
	count_up : OUT std_logic_vector(5 DOWNTO 0);
	count_down : OUT std_logic_vector(5 DOWNTO 0);
	alarm_triggered : OUT std_logic
	);
END testdecontadores;

-- Design Ports Information
-- count_up[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_up[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_up[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_up[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_up[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_up[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[2]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_down[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm_triggered	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_up	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_down	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testdecontadores IS
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
SIGNAL ww_start_up : std_logic;
SIGNAL ww_start_down : std_logic;
SIGNAL ww_count_up : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_count_down : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_alarm_triggered : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_up[0]~output_o\ : std_logic;
SIGNAL \count_up[1]~output_o\ : std_logic;
SIGNAL \count_up[2]~output_o\ : std_logic;
SIGNAL \count_up[3]~output_o\ : std_logic;
SIGNAL \count_up[4]~output_o\ : std_logic;
SIGNAL \count_up[5]~output_o\ : std_logic;
SIGNAL \count_down[0]~output_o\ : std_logic;
SIGNAL \count_down[1]~output_o\ : std_logic;
SIGNAL \count_down[2]~output_o\ : std_logic;
SIGNAL \count_down[3]~output_o\ : std_logic;
SIGNAL \count_down[4]~output_o\ : std_logic;
SIGNAL \count_down[5]~output_o\ : std_logic;
SIGNAL \alarm_triggered~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_up~input_o\ : std_logic;
SIGNAL \U1|contador[0]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|contador[1]~6_combout\ : std_logic;
SIGNAL \U1|contador[1]~7\ : std_logic;
SIGNAL \U1|contador[2]~8_combout\ : std_logic;
SIGNAL \U1|contador[2]~9\ : std_logic;
SIGNAL \U1|contador[3]~10_combout\ : std_logic;
SIGNAL \U1|contador[3]~11\ : std_logic;
SIGNAL \U1|contador[4]~12_combout\ : std_logic;
SIGNAL \U1|contador[4]~13\ : std_logic;
SIGNAL \U1|contador[5]~14_combout\ : std_logic;
SIGNAL \start_down~input_o\ : std_logic;
SIGNAL \U2|contador[1]~8_cout\ : std_logic;
SIGNAL \U2|contador[1]~9_combout\ : std_logic;
SIGNAL \U2|contador[1]~10\ : std_logic;
SIGNAL \U2|contador[2]~11_combout\ : std_logic;
SIGNAL \U2|contador[2]~12\ : std_logic;
SIGNAL \U2|contador[3]~13_combout\ : std_logic;
SIGNAL \U2|contador[3]~14\ : std_logic;
SIGNAL \U2|contador[4]~15_combout\ : std_logic;
SIGNAL \U2|contador[4]~16\ : std_logic;
SIGNAL \U2|contador[5]~17_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \U2|contador[0]~5_combout\ : std_logic;
SIGNAL \U2|contador[0]~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \U1|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U2|contador\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start_up <= start_up;
ww_start_down <= start_down;
count_up <= ww_count_up;
count_down <= ww_count_down;
alarm_triggered <= ww_alarm_triggered;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X14_Y0_N2
\count_up[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(0),
	devoe => ww_devoe,
	o => \count_up[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\count_up[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(1),
	devoe => ww_devoe,
	o => \count_up[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\count_up[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(2),
	devoe => ww_devoe,
	o => \count_up[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\count_up[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(3),
	devoe => ww_devoe,
	o => \count_up[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\count_up[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(4),
	devoe => ww_devoe,
	o => \count_up[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\count_up[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|contador\(5),
	devoe => ww_devoe,
	o => \count_up[5]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\count_down[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(0),
	devoe => ww_devoe,
	o => \count_down[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\count_down[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(1),
	devoe => ww_devoe,
	o => \count_down[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\count_down[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(2),
	devoe => ww_devoe,
	o => \count_down[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\count_down[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(3),
	devoe => ww_devoe,
	o => \count_down[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\count_down[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(4),
	devoe => ww_devoe,
	o => \count_down[4]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\count_down[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|contador\(5),
	devoe => ww_devoe,
	o => \count_down[5]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\alarm_triggered~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \alarm_triggered~output_o\);

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

-- Location: IOIBUF_X14_Y0_N15
\start_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_up,
	o => \start_up~input_o\);

-- Location: LCCOMB_X14_Y1_N12
\U1|contador[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[0]~5_combout\ = \U1|contador\(0) $ (\start_up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|contador\(0),
	datad => \start_up~input_o\,
	combout => \U1|contador[0]~5_combout\);

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

-- Location: FF_X14_Y1_N13
\U1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[0]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(0));

-- Location: LCCOMB_X14_Y1_N16
\U1|contador[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[1]~6_combout\ = (\U1|contador\(0) & (\U1|contador\(1) $ (VCC))) # (!\U1|contador\(0) & (\U1|contador\(1) & VCC))
-- \U1|contador[1]~7\ = CARRY((\U1|contador\(0) & \U1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|contador\(0),
	datab => \U1|contador\(1),
	datad => VCC,
	combout => \U1|contador[1]~6_combout\,
	cout => \U1|contador[1]~7\);

-- Location: FF_X14_Y1_N17
\U1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[1]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \start_up~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(1));

-- Location: LCCOMB_X14_Y1_N18
\U1|contador[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[2]~8_combout\ = (\U1|contador\(2) & (!\U1|contador[1]~7\)) # (!\U1|contador\(2) & ((\U1|contador[1]~7\) # (GND)))
-- \U1|contador[2]~9\ = CARRY((!\U1|contador[1]~7\) # (!\U1|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|contador\(2),
	datad => VCC,
	cin => \U1|contador[1]~7\,
	combout => \U1|contador[2]~8_combout\,
	cout => \U1|contador[2]~9\);

-- Location: FF_X14_Y1_N19
\U1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[2]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \start_up~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(2));

-- Location: LCCOMB_X14_Y1_N20
\U1|contador[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[3]~10_combout\ = (\U1|contador\(3) & (\U1|contador[2]~9\ $ (GND))) # (!\U1|contador\(3) & (!\U1|contador[2]~9\ & VCC))
-- \U1|contador[3]~11\ = CARRY((\U1|contador\(3) & !\U1|contador[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|contador\(3),
	datad => VCC,
	cin => \U1|contador[2]~9\,
	combout => \U1|contador[3]~10_combout\,
	cout => \U1|contador[3]~11\);

-- Location: FF_X14_Y1_N21
\U1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[3]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \start_up~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(3));

-- Location: LCCOMB_X14_Y1_N22
\U1|contador[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[4]~12_combout\ = (\U1|contador\(4) & (!\U1|contador[3]~11\)) # (!\U1|contador\(4) & ((\U1|contador[3]~11\) # (GND)))
-- \U1|contador[4]~13\ = CARRY((!\U1|contador[3]~11\) # (!\U1|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|contador\(4),
	datad => VCC,
	cin => \U1|contador[3]~11\,
	combout => \U1|contador[4]~12_combout\,
	cout => \U1|contador[4]~13\);

-- Location: FF_X14_Y1_N23
\U1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[4]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \start_up~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(4));

-- Location: LCCOMB_X14_Y1_N24
\U1|contador[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|contador[5]~14_combout\ = \U1|contador[4]~13\ $ (!\U1|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|contador\(5),
	cin => \U1|contador[4]~13\,
	combout => \U1|contador[5]~14_combout\);

-- Location: FF_X14_Y1_N25
\U1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|contador[5]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \start_up~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|contador\(5));

-- Location: IOIBUF_X41_Y20_N1
\start_down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_down,
	o => \start_down~input_o\);

-- Location: LCCOMB_X40_Y20_N14
\U2|contador[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[1]~8_cout\ = CARRY(\U2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|contador\(0),
	datad => VCC,
	cout => \U2|contador[1]~8_cout\);

-- Location: LCCOMB_X40_Y20_N16
\U2|contador[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[1]~9_combout\ = (\U2|contador\(1) & (\U2|contador[1]~8_cout\ & VCC)) # (!\U2|contador\(1) & (!\U2|contador[1]~8_cout\))
-- \U2|contador[1]~10\ = CARRY((!\U2|contador\(1) & !\U2|contador[1]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|contador\(1),
	datad => VCC,
	cin => \U2|contador[1]~8_cout\,
	combout => \U2|contador[1]~9_combout\,
	cout => \U2|contador[1]~10\);

-- Location: FF_X40_Y20_N17
\U2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[1]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U2|contador[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(1));

-- Location: LCCOMB_X40_Y20_N18
\U2|contador[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[2]~11_combout\ = (\U2|contador\(2) & ((GND) # (!\U2|contador[1]~10\))) # (!\U2|contador\(2) & (\U2|contador[1]~10\ $ (GND)))
-- \U2|contador[2]~12\ = CARRY((\U2|contador\(2)) # (!\U2|contador[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|contador\(2),
	datad => VCC,
	cin => \U2|contador[1]~10\,
	combout => \U2|contador[2]~11_combout\,
	cout => \U2|contador[2]~12\);

-- Location: FF_X40_Y20_N19
\U2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U2|contador[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(2));

-- Location: LCCOMB_X40_Y20_N20
\U2|contador[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[3]~13_combout\ = (\U2|contador\(3) & (\U2|contador[2]~12\ & VCC)) # (!\U2|contador\(3) & (!\U2|contador[2]~12\))
-- \U2|contador[3]~14\ = CARRY((!\U2|contador\(3) & !\U2|contador[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|contador\(3),
	datad => VCC,
	cin => \U2|contador[2]~12\,
	combout => \U2|contador[3]~13_combout\,
	cout => \U2|contador[3]~14\);

-- Location: FF_X40_Y20_N21
\U2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[3]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U2|contador[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(3));

-- Location: LCCOMB_X40_Y20_N22
\U2|contador[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[4]~15_combout\ = (\U2|contador\(4) & ((GND) # (!\U2|contador[3]~14\))) # (!\U2|contador\(4) & (\U2|contador[3]~14\ $ (GND)))
-- \U2|contador[4]~16\ = CARRY((\U2|contador\(4)) # (!\U2|contador[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|contador\(4),
	datad => VCC,
	cin => \U2|contador[3]~14\,
	combout => \U2|contador[4]~15_combout\,
	cout => \U2|contador[4]~16\);

-- Location: FF_X40_Y20_N23
\U2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[4]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U2|contador[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(4));

-- Location: LCCOMB_X40_Y20_N24
\U2|contador[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[5]~17_combout\ = \U2|contador[4]~16\ $ (!\U2|contador\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|contador\(5),
	cin => \U2|contador[4]~16\,
	combout => \U2|contador[5]~17_combout\);

-- Location: FF_X40_Y20_N25
\U2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[5]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \U2|contador[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(5));

-- Location: LCCOMB_X40_Y20_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\U2|contador\(0) & (!\U2|contador\(1) & (!\U2|contador\(2) & !\U2|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|contador\(0),
	datab => \U2|contador\(1),
	datac => \U2|contador\(2),
	datad => \U2|contador\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y20_N10
\U2|contador[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[0]~5_combout\ = (\start_down~input_o\ & ((\U2|contador\(5)) # ((\U2|contador\(4)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_down~input_o\,
	datab => \U2|contador\(5),
	datac => \U2|contador\(4),
	datad => \Equal0~0_combout\,
	combout => \U2|contador[0]~5_combout\);

-- Location: LCCOMB_X40_Y20_N4
\U2|contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2|contador[0]~6_combout\ = \U2|contador\(0) $ (\U2|contador[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|contador\(0),
	datad => \U2|contador[0]~5_combout\,
	combout => \U2|contador[0]~6_combout\);

-- Location: FF_X40_Y20_N5
\U2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|contador[0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|contador\(0));

-- Location: LCCOMB_X40_Y20_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\U2|contador\(4) & !\U2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \U2|contador\(4),
	datad => \U2|contador\(5),
	combout => \Equal0~1_combout\);

ww_count_up(0) <= \count_up[0]~output_o\;

ww_count_up(1) <= \count_up[1]~output_o\;

ww_count_up(2) <= \count_up[2]~output_o\;

ww_count_up(3) <= \count_up[3]~output_o\;

ww_count_up(4) <= \count_up[4]~output_o\;

ww_count_up(5) <= \count_up[5]~output_o\;

ww_count_down(0) <= \count_down[0]~output_o\;

ww_count_down(1) <= \count_down[1]~output_o\;

ww_count_down(2) <= \count_down[2]~output_o\;

ww_count_down(3) <= \count_down[3]~output_o\;

ww_count_down(4) <= \count_down[4]~output_o\;

ww_count_down(5) <= \count_down[5]~output_o\;

ww_alarm_triggered <= \alarm_triggered~output_o\;
END structure;


