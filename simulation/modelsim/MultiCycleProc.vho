-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/30/2019 11:58:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MultiCycleProc IS
    PORT (
	ValueSelect : IN std_logic_vector(2 DOWNTO 0);
	InstrSelect : IN std_logic_vector(2 DOWNTO 0);
	GClock : IN std_logic;
	GresetBar : IN std_logic;
	MuxOut : BUFFER std_logic_vector(7 DOWNTO 0);
	InstructionOut : BUFFER std_logic_vector(31 DOWNTO 0);
	BranchOut : BUFFER std_logic;
	ZeroOut : BUFFER std_logic;
	MemWriteOut : BUFFER std_logic;
	RegWriteOut : BUFFER std_logic
	);
END MultiCycleProc;

-- Design Ports Information
-- ValueSelect[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[2]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstrSelect[0]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstrSelect[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstrSelect[2]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GresetBar	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[7]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[1]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[8]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[9]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[11]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[13]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[14]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[16]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[17]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[18]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[19]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[20]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[21]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[22]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[23]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[24]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[25]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[26]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[27]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[28]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[29]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[30]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOut	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZeroOut	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWriteOut	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWriteOut	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultiCycleProc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ValueSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_InstrSelect : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GresetBar : std_logic;
SIGNAL ww_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_InstructionOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchOut : std_logic;
SIGNAL ww_ZeroOut : std_logic;
SIGNAL ww_MemWriteOut : std_logic;
SIGNAL ww_RegWriteOut : std_logic;
SIGNAL \ValueSelect[0]~input_o\ : std_logic;
SIGNAL \ValueSelect[1]~input_o\ : std_logic;
SIGNAL \ValueSelect[2]~input_o\ : std_logic;
SIGNAL \InstrSelect[0]~input_o\ : std_logic;
SIGNAL \InstrSelect[1]~input_o\ : std_logic;
SIGNAL \InstrSelect[2]~input_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GresetBar~input_o\ : std_logic;
SIGNAL \MuxOut[0]~output_o\ : std_logic;
SIGNAL \MuxOut[1]~output_o\ : std_logic;
SIGNAL \MuxOut[2]~output_o\ : std_logic;
SIGNAL \MuxOut[3]~output_o\ : std_logic;
SIGNAL \MuxOut[4]~output_o\ : std_logic;
SIGNAL \MuxOut[5]~output_o\ : std_logic;
SIGNAL \MuxOut[6]~output_o\ : std_logic;
SIGNAL \MuxOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[0]~output_o\ : std_logic;
SIGNAL \InstructionOut[1]~output_o\ : std_logic;
SIGNAL \InstructionOut[2]~output_o\ : std_logic;
SIGNAL \InstructionOut[3]~output_o\ : std_logic;
SIGNAL \InstructionOut[4]~output_o\ : std_logic;
SIGNAL \InstructionOut[5]~output_o\ : std_logic;
SIGNAL \InstructionOut[6]~output_o\ : std_logic;
SIGNAL \InstructionOut[7]~output_o\ : std_logic;
SIGNAL \InstructionOut[8]~output_o\ : std_logic;
SIGNAL \InstructionOut[9]~output_o\ : std_logic;
SIGNAL \InstructionOut[10]~output_o\ : std_logic;
SIGNAL \InstructionOut[11]~output_o\ : std_logic;
SIGNAL \InstructionOut[12]~output_o\ : std_logic;
SIGNAL \InstructionOut[13]~output_o\ : std_logic;
SIGNAL \InstructionOut[14]~output_o\ : std_logic;
SIGNAL \InstructionOut[15]~output_o\ : std_logic;
SIGNAL \InstructionOut[16]~output_o\ : std_logic;
SIGNAL \InstructionOut[17]~output_o\ : std_logic;
SIGNAL \InstructionOut[18]~output_o\ : std_logic;
SIGNAL \InstructionOut[19]~output_o\ : std_logic;
SIGNAL \InstructionOut[20]~output_o\ : std_logic;
SIGNAL \InstructionOut[21]~output_o\ : std_logic;
SIGNAL \InstructionOut[22]~output_o\ : std_logic;
SIGNAL \InstructionOut[23]~output_o\ : std_logic;
SIGNAL \InstructionOut[24]~output_o\ : std_logic;
SIGNAL \InstructionOut[25]~output_o\ : std_logic;
SIGNAL \InstructionOut[26]~output_o\ : std_logic;
SIGNAL \InstructionOut[27]~output_o\ : std_logic;
SIGNAL \InstructionOut[28]~output_o\ : std_logic;
SIGNAL \InstructionOut[29]~output_o\ : std_logic;
SIGNAL \InstructionOut[30]~output_o\ : std_logic;
SIGNAL \InstructionOut[31]~output_o\ : std_logic;
SIGNAL \BranchOut~output_o\ : std_logic;
SIGNAL \ZeroOut~output_o\ : std_logic;
SIGNAL \MemWriteOut~output_o\ : std_logic;
SIGNAL \RegWriteOut~output_o\ : std_logic;

BEGIN

ww_ValueSelect <= ValueSelect;
ww_InstrSelect <= InstrSelect;
ww_GClock <= GClock;
ww_GresetBar <= GresetBar;
MuxOut <= ww_MuxOut;
InstructionOut <= ww_InstructionOut;
BranchOut <= ww_BranchOut;
ZeroOut <= ww_ZeroOut;
MemWriteOut <= ww_MemWriteOut;
RegWriteOut <= ww_RegWriteOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y69_N9
\MuxOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\MuxOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\MuxOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[2]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\MuxOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[3]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\MuxOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[4]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\MuxOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\MuxOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[6]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\MuxOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MuxOut[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\InstructionOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[0]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\InstructionOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\InstructionOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\InstructionOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\InstructionOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[4]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\InstructionOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\InstructionOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[6]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\InstructionOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[7]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\InstructionOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[8]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\InstructionOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[9]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\InstructionOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\InstructionOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[11]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\InstructionOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[12]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\InstructionOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[13]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\InstructionOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[14]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\InstructionOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[15]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\InstructionOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[16]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\InstructionOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[17]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\InstructionOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[18]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\InstructionOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[19]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\InstructionOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[20]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\InstructionOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[21]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\InstructionOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[22]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\InstructionOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[23]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\InstructionOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[24]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\InstructionOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[25]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\InstructionOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[26]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\InstructionOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[27]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\InstructionOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[28]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\InstructionOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[29]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\InstructionOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[30]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\InstructionOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \InstructionOut[31]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\BranchOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BranchOut~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\ZeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ZeroOut~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\MemWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemWriteOut~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\RegWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegWriteOut~output_o\);

-- Location: IOIBUF_X115_Y37_N8
\ValueSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(0),
	o => \ValueSelect[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ValueSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(1),
	o => \ValueSelect[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\ValueSelect[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(2),
	o => \ValueSelect[2]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\InstrSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InstrSelect(0),
	o => \InstrSelect[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\InstrSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InstrSelect(1),
	o => \InstrSelect[1]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\InstrSelect[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InstrSelect(2),
	o => \InstrSelect[2]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\GresetBar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GresetBar,
	o => \GresetBar~input_o\);

ww_MuxOut(0) <= \MuxOut[0]~output_o\;

ww_MuxOut(1) <= \MuxOut[1]~output_o\;

ww_MuxOut(2) <= \MuxOut[2]~output_o\;

ww_MuxOut(3) <= \MuxOut[3]~output_o\;

ww_MuxOut(4) <= \MuxOut[4]~output_o\;

ww_MuxOut(5) <= \MuxOut[5]~output_o\;

ww_MuxOut(6) <= \MuxOut[6]~output_o\;

ww_MuxOut(7) <= \MuxOut[7]~output_o\;

ww_InstructionOut(0) <= \InstructionOut[0]~output_o\;

ww_InstructionOut(1) <= \InstructionOut[1]~output_o\;

ww_InstructionOut(2) <= \InstructionOut[2]~output_o\;

ww_InstructionOut(3) <= \InstructionOut[3]~output_o\;

ww_InstructionOut(4) <= \InstructionOut[4]~output_o\;

ww_InstructionOut(5) <= \InstructionOut[5]~output_o\;

ww_InstructionOut(6) <= \InstructionOut[6]~output_o\;

ww_InstructionOut(7) <= \InstructionOut[7]~output_o\;

ww_InstructionOut(8) <= \InstructionOut[8]~output_o\;

ww_InstructionOut(9) <= \InstructionOut[9]~output_o\;

ww_InstructionOut(10) <= \InstructionOut[10]~output_o\;

ww_InstructionOut(11) <= \InstructionOut[11]~output_o\;

ww_InstructionOut(12) <= \InstructionOut[12]~output_o\;

ww_InstructionOut(13) <= \InstructionOut[13]~output_o\;

ww_InstructionOut(14) <= \InstructionOut[14]~output_o\;

ww_InstructionOut(15) <= \InstructionOut[15]~output_o\;

ww_InstructionOut(16) <= \InstructionOut[16]~output_o\;

ww_InstructionOut(17) <= \InstructionOut[17]~output_o\;

ww_InstructionOut(18) <= \InstructionOut[18]~output_o\;

ww_InstructionOut(19) <= \InstructionOut[19]~output_o\;

ww_InstructionOut(20) <= \InstructionOut[20]~output_o\;

ww_InstructionOut(21) <= \InstructionOut[21]~output_o\;

ww_InstructionOut(22) <= \InstructionOut[22]~output_o\;

ww_InstructionOut(23) <= \InstructionOut[23]~output_o\;

ww_InstructionOut(24) <= \InstructionOut[24]~output_o\;

ww_InstructionOut(25) <= \InstructionOut[25]~output_o\;

ww_InstructionOut(26) <= \InstructionOut[26]~output_o\;

ww_InstructionOut(27) <= \InstructionOut[27]~output_o\;

ww_InstructionOut(28) <= \InstructionOut[28]~output_o\;

ww_InstructionOut(29) <= \InstructionOut[29]~output_o\;

ww_InstructionOut(30) <= \InstructionOut[30]~output_o\;

ww_InstructionOut(31) <= \InstructionOut[31]~output_o\;

ww_BranchOut <= \BranchOut~output_o\;

ww_ZeroOut <= \ZeroOut~output_o\;

ww_MemWriteOut <= \MemWriteOut~output_o\;

ww_RegWriteOut <= \RegWriteOut~output_o\;
END structure;


