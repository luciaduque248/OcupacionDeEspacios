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

-- DATE "03/07/2024 17:45:42"

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

ENTITY 	contadorDescendente IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	count : OUT std_logic_vector(5 DOWNTO 0)
	);
END contadorDescendente;

-- Design Ports Information
-- count[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contadorDescendente IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \contador[1]~9_cout\ : std_logic;
SIGNAL \contador[1]~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[1]~11\ : std_logic;
SIGNAL \contador[2]~12_combout\ : std_logic;
SIGNAL \contador[2]~13\ : std_logic;
SIGNAL \contador[3]~14_combout\ : std_logic;
SIGNAL \contador[3]~15\ : std_logic;
SIGNAL \contador[4]~16_combout\ : std_logic;
SIGNAL \contador[4]~17\ : std_logic;
SIGNAL \contador[5]~18_combout\ : std_logic;
SIGNAL \contador[0]~5_combout\ : std_logic;
SIGNAL \contador[0]~6_combout\ : std_logic;
SIGNAL \contador[0]~7_combout\ : std_logic;
SIGNAL contador : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y9_N16
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => contador(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

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

-- Location: IOIBUF_X0_Y9_N22
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X1_Y9_N14
\contador[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~9_cout\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	cout => \contador[1]~9_cout\);

-- Location: LCCOMB_X1_Y9_N16
\contador[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~10_combout\ = (contador(1) & (\contador[1]~9_cout\ & VCC)) # (!contador(1) & (!\contador[1]~9_cout\))
-- \contador[1]~11\ = CARRY((!contador(1) & !\contador[1]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \contador[1]~9_cout\,
	combout => \contador[1]~10_combout\,
	cout => \contador[1]~11\);

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

-- Location: FF_X1_Y9_N17
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X1_Y9_N18
\contador[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~12_combout\ = (contador(2) & ((GND) # (!\contador[1]~11\))) # (!contador(2) & (\contador[1]~11\ $ (GND)))
-- \contador[2]~13\ = CARRY((contador(2)) # (!\contador[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~11\,
	combout => \contador[2]~12_combout\,
	cout => \contador[2]~13\);

-- Location: FF_X1_Y9_N19
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X1_Y9_N20
\contador[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~14_combout\ = (contador(3) & (\contador[2]~13\ & VCC)) # (!contador(3) & (!\contador[2]~13\))
-- \contador[3]~15\ = CARRY((!contador(3) & !\contador[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~13\,
	combout => \contador[3]~14_combout\,
	cout => \contador[3]~15\);

-- Location: FF_X1_Y9_N21
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X1_Y9_N22
\contador[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~16_combout\ = (contador(4) & ((GND) # (!\contador[3]~15\))) # (!contador(4) & (\contador[3]~15\ $ (GND)))
-- \contador[4]~17\ = CARRY((contador(4)) # (!\contador[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datad => VCC,
	cin => \contador[3]~15\,
	combout => \contador[4]~16_combout\,
	cout => \contador[4]~17\);

-- Location: FF_X1_Y9_N23
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X1_Y9_N24
\contador[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[5]~18_combout\ = \contador[4]~17\ $ (!contador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(5),
	cin => \contador[4]~17\,
	combout => \contador[5]~18_combout\);

-- Location: FF_X1_Y9_N25
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[5]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X1_Y9_N10
\contador[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~5_combout\ = (contador(0)) # ((contador(2)) # ((contador(1)) # (contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(2),
	datac => contador(1),
	datad => contador(3),
	combout => \contador[0]~5_combout\);

-- Location: LCCOMB_X1_Y9_N28
\contador[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~6_combout\ = (\start~input_o\ & ((contador(5)) # ((contador(4)) # (\contador[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => contador(5),
	datac => contador(4),
	datad => \contador[0]~5_combout\,
	combout => \contador[0]~6_combout\);

-- Location: LCCOMB_X1_Y9_N8
\contador[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~7_combout\ = contador(0) $ (\contador[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	datad => \contador[0]~6_combout\,
	combout => \contador[0]~7_combout\);

-- Location: FF_X1_Y9_N9
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;
END structure;


