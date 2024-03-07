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

-- DATE "03/05/2024 17:53:51"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decodificador IS
    PORT (
	bcdA : IN std_logic;
	bcdB : IN std_logic;
	bcdC : IN std_logic;
	bcdD : IN std_logic;
	SEG : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END decodificador;

-- Design Ports Information
-- SEG[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcdD	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcdC	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcdB	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcdA	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decodificador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bcdA : std_logic;
SIGNAL ww_bcdB : std_logic;
SIGNAL ww_bcdC : std_logic;
SIGNAL ww_bcdD : std_logic;
SIGNAL ww_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \bcdD~input_o\ : std_logic;
SIGNAL \bcdB~input_o\ : std_logic;
SIGNAL \bcdA~input_o\ : std_logic;
SIGNAL \bcdC~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_bcdA <= bcdA;
ww_bcdB <= bcdB;
ww_bcdC <= bcdC;
ww_bcdD <= bcdD;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X21_Y29_N23
\SEG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\SEG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\SEG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\SEG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\SEG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\SEG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\SEG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOIBUF_X7_Y0_N1
\bcdD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcdD,
	o => \bcdD~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\bcdB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcdB,
	o => \bcdB~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\bcdA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcdA,
	o => \bcdA~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\bcdC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bcdC,
	o => \bcdC~input_o\);

-- Location: LCCOMB_X7_Y28_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\bcdB~input_o\ & (!\bcdA~input_o\ & ((!\bcdC~input_o\) # (!\bcdD~input_o\)))) # (!\bcdB~input_o\ & ((\bcdA~input_o\ $ (\bcdC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X7_Y28_N10
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\bcdD~input_o\ & ((\bcdC~input_o\) # (\bcdB~input_o\ $ (!\bcdA~input_o\)))) # (!\bcdD~input_o\ & ((\bcdB~input_o\ & (\bcdA~input_o\)) # (!\bcdB~input_o\ & ((\bcdC~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X7_Y28_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bcdD~input_o\) # ((\bcdC~input_o\ & ((\bcdA~input_o\))) # (!\bcdC~input_o\ & (\bcdB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X7_Y28_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\bcdD~input_o\ & ((\bcdA~input_o\) # (\bcdB~input_o\ $ (!\bcdC~input_o\)))) # (!\bcdD~input_o\ & ((\bcdC~input_o\ & ((\bcdA~input_o\))) # (!\bcdC~input_o\ & (\bcdB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X7_Y28_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\bcdB~input_o\ & (((\bcdA~input_o\)))) # (!\bcdB~input_o\ & (\bcdC~input_o\ & ((\bcdA~input_o\) # (!\bcdD~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X7_Y28_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\bcdB~input_o\ & ((\bcdA~input_o\) # (\bcdD~input_o\ $ (\bcdC~input_o\)))) # (!\bcdB~input_o\ & (((\bcdA~input_o\ & \bcdC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X7_Y28_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\bcdD~input_o\ & (\bcdA~input_o\ $ (((!\bcdB~input_o\ & !\bcdC~input_o\))))) # (!\bcdD~input_o\ & ((\bcdB~input_o\) # ((\bcdA~input_o\ & \bcdC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcdD~input_o\,
	datab => \bcdB~input_o\,
	datac => \bcdA~input_o\,
	datad => \bcdC~input_o\,
	combout => \Mux0~0_combout\);

ww_SEG(0) <= \SEG[0]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;
END structure;


