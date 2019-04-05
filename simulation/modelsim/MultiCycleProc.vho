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

-- DATE "04/05/2019 11:18:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MultiCycleProc IS
    PORT (
	ValueSelect : IN std_logic_vector(2 DOWNTO 0);
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
-- MuxOut[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[2]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[4]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[7]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[8]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[9]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[11]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[12]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[13]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[14]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[15]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[16]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[17]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[18]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[19]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[20]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[21]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[22]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[23]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[24]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[25]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[26]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[27]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[28]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[29]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[30]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstructionOut[31]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BranchOut	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZeroOut	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWriteOut	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWriteOut	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ValueSelect[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GresetBar	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GresetBar : std_logic;
SIGNAL ww_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_InstructionOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BranchOut : std_logic;
SIGNAL ww_ZeroOut : std_logic;
SIGNAL ww_MemWriteOut : std_logic;
SIGNAL ww_RegWriteOut : std_logic;
SIGNAL \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \PC_INC|AddGenerator:3:SingleBitAdd|int_CarryOut1~combout\ : std_logic;
SIGNAL \GresetBar~input_o\ : std_logic;
SIGNAL \PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\ : std_logic;
SIGNAL \IF_ID|pcbit4|int_q~q\ : std_logic;
SIGNAL \HZRD_CNTRL|IF_ID_Flush~0_combout\ : std_logic;
SIGNAL \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\ : std_logic;
SIGNAL \IF_ID|pcbit5|int_q~q\ : std_logic;
SIGNAL \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\ : std_logic;
SIGNAL \PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\ : std_logic;
SIGNAL \IF_ID|ibit1|int_q~q\ : std_logic;
SIGNAL \IF_ID|pcbit2|int_q~0_combout\ : std_logic;
SIGNAL \IF_ID|pcbit2|int_q~q\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\ : std_logic;
SIGNAL \IF_ID|pcbit7|int_q~q\ : std_logic;
SIGNAL \PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\ : std_logic;
SIGNAL \IF_ID|pcbit6|int_q~q\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit5|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit19|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_20_16_bit4|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_20_16_bit3|int_q~q\ : std_logic;
SIGNAL \HZRD_CNTRL|Int_PC_Stall~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit16|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_20_16_bit0|int_q~q\ : std_logic;
SIGNAL \HZRD_CNTRL|Int_PC_Stall~2_combout\ : std_logic;
SIGNAL \IF_ID|ibit17|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit18|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_20_16_bit2|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_20_16_bit1|int_q~q\ : std_logic;
SIGNAL \HZRD_CNTRL|Int_PC_Stall~1_combout\ : std_logic;
SIGNAL \HZRD_CNTRL|Int_PC_Stall~3_combout\ : std_logic;
SIGNAL \HZRD_CNTRL|MuxSelect~0_combout\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \PC_REG|bit7|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit4|int_q~q\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0_combout\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \PC_REG|bit6|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit3|int_q~q\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0_combout\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \PC_REG|bit5|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit28|int_q~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit28|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit2|int_q~q\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0_combout\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \PC_REG|bit4|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit27|int_q~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit27|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit29|int_q~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit29|int_q~q\ : std_logic;
SIGNAL \CNTRL|Jump~0_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit0|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit3|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit1|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit2|int_q~q\ : std_logic;
SIGNAL \ALU_CONTRL|ALU_OP_OUT[0]~0_combout\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|ALUOpbit1|int_q~q\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|ALUOpbit0|int_q~q\ : std_logic;
SIGNAL \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ : std_logic;
SIGNAL \CNTRL|RegDst~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit26|int_q~q\ : std_logic;
SIGNAL \CNTRL|RegDst~1_combout\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|RegWriteFF|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegWriteFF|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit11|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit0|int_q~q\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ : std_logic;
SIGNAL \ID_EX|RegDstFF|int_q~q\ : std_logic;
SIGNAL \DST_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|Mux0|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit13|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit2|int_q~q\ : std_logic;
SIGNAL \DST_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|Mux2|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit15|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit4|int_q~q\ : std_logic;
SIGNAL \DST_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|Mux4|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit12|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit1|int_q~q\ : std_logic;
SIGNAL \DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|Mux1|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|Mux1|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit14|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_15_11_bit3|int_q~q\ : std_logic;
SIGNAL \DST_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|Mux3|int_q~q\ : std_logic;
SIGNAL \FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardB~1_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardB~0_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardB~2_combout\ : std_logic;
SIGNAL \FWD_UNIT|ForwardB[1]~3_combout\ : std_logic;
SIGNAL \MEM_WB|Mux3|int_q~q\ : std_logic;
SIGNAL \MEM_WB|Mux4|int_q~q\ : std_logic;
SIGNAL \FWD_UNIT|ForwardB[0]~2_combout\ : std_logic;
SIGNAL \MEM_WB|Mux0|int_q~q\ : std_logic;
SIGNAL \MEM_WB|RegWriteFF|int_q~q\ : std_logic;
SIGNAL \MEM_WB|Mux1|int_q~q\ : std_logic;
SIGNAL \MEM_WB|Mux2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardA~0_combout\ : std_logic;
SIGNAL \FWD_UNIT|ForwardB[0]~0_combout\ : std_logic;
SIGNAL \FWD_UNIT|ForwardB[0]~1_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardB~3_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ : std_logic;
SIGNAL \EX_MEM|ALU0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit0|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ : std_logic;
SIGNAL \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \MAINALU|B_INVERT_CONTR~0_combout\ : std_logic;
SIGNAL \MAINALU|B_INVERT_CONTR~combout\ : std_logic;
SIGNAL \IF_ID|ibit23|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit2|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit22|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit1|int_q~q\ : std_logic;
SIGNAL \FWD_UNIT|ForwardA[0]~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit21|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit0|int_q~q\ : std_logic;
SIGNAL \FWD_UNIT|ForwardA[0]~1_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardA~2_combout\ : std_logic;
SIGNAL \IF_ID|ibit24|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit3|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit25|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_25_21_bit4|int_q~q\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardA~1_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardA~3_combout\ : std_logic;
SIGNAL \FWD_UNIT|Int_ForwardA~4_combout\ : std_logic;
SIGNAL \FWD_UNIT|ForwardA[0]~2_combout\ : std_logic;
SIGNAL \FWD_UNIT|ForwardA[1]~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit0|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ : std_logic;
SIGNAL \MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \IF_ID|ibit7|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit7|int_q~q\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|MemWriteFF|int_q~q\ : std_logic;
SIGNAL \EX_MEM|MemWriteFF|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|MemWriteFF|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ : std_logic;
SIGNAL \EX_MEM|RegData0|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData0|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit4|int_q~q\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit4|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit4|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit2|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ : std_logic;
SIGNAL \MEM_WB|ALU1|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit6|int_q~q\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit6|int_q~q\ : std_logic;
SIGNAL \MEM_WB|ALU6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit1|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ : std_logic;
SIGNAL \EX_MEM|RegData1|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData1|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegData2|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData2|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegData3|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData3|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegData4|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData4|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegData6|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData6|int_q~q\ : std_logic;
SIGNAL \EX_MEM|RegData7|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData7|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem5|int_q\ : std_logic;
SIGNAL \MEM_WB|ALU5|int_q~q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit5|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ : std_logic;
SIGNAL \EX_MEM|RegData5|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|RegData5|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem6|int_q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit6|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|instruction_extend_bit5|int_q~q\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit5|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit6|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|ZERO~1_combout\ : std_logic;
SIGNAL \MAINALU|RESULT_INV~0_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU6|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem1|int_q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit1|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ : std_logic;
SIGNAL \MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit3|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU5|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem3|int_q\ : std_logic;
SIGNAL \MEM_WB|ALU3|int_q~q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit3|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum~combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU3|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem2|int_q\ : std_logic;
SIGNAL \MEM_WB|ALU2|int_q~q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit2|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU2|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem7|int_q\ : std_logic;
SIGNAL \MEM_WB|ALU7|int_q~q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA2_bit7|int_q~q\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU7|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \ID_EX|READ_DATA1_bit7|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\ : std_logic;
SIGNAL \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU1|int_q~q\ : std_logic;
SIGNAL \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ : std_logic;
SIGNAL \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ : std_logic;
SIGNAL \MAINALU|ZERO~0_combout\ : std_logic;
SIGNAL \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \EX_MEM|ALU4|int_q~q\ : std_logic;
SIGNAL \MEM_WB|ALU4|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem4|int_q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ : std_logic;
SIGNAL \Branch_Sig~1_combout\ : std_logic;
SIGNAL \Branch_Sig~0_combout\ : std_logic;
SIGNAL \Branch_Sig~3_combout\ : std_logic;
SIGNAL \HZRD_CNTRL|PC_Stall~0_combout\ : std_logic;
SIGNAL \HZRD_CNTRL|PC_Stall~1_combout\ : std_logic;
SIGNAL \IF_ID|pcbit3|int_q~q\ : std_logic;
SIGNAL \BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0_combout\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \PC_REG|bit3|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit20|int_q~q\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\ : std_logic;
SIGNAL \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ : std_logic;
SIGNAL \Branch_Sig~2_combout\ : std_logic;
SIGNAL \Branch_Sig~4_combout\ : std_logic;
SIGNAL \IF_ID|ibit0|int_q~q\ : std_logic;
SIGNAL \BR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \PC_REG|bit2|int_q~q\ : std_logic;
SIGNAL \IF_ID|ibit31|int_q~0_combout\ : std_logic;
SIGNAL \IF_ID|ibit31|int_q~q\ : std_logic;
SIGNAL \CLR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \ID_EX|MemReadFF|int_q~q\ : std_logic;
SIGNAL \EX_MEM|MemReadFF|int_q~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|MemReadFF|int_q~q\ : std_logic;
SIGNAL \MEM_WB|MemtoRegFF|int_q~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|MemtoRegFF|int_q~q\ : std_logic;
SIGNAL \MEM_WB|DataMem0|int_q\ : std_logic;
SIGNAL \MEM_WB|ALU0|int_q~q\ : std_logic;
SIGNAL \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \ValueSelect[2]~input_o\ : std_logic;
SIGNAL \ValueSelect[0]~input_o\ : std_logic;
SIGNAL \ValueSelect[1]~input_o\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ : std_logic;
SIGNAL \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ : std_logic;
SIGNAL \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ : std_logic;
SIGNAL \MAINALU|ZERO~2_combout\ : std_logic;
SIGNAL \MEM_ROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \FWD_UNIT|ForwardA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALU_CONTRL|ALU_OP_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \FWD_UNIT|ForwardB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \IF_ID|instruction\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_GresetBar~input_o\ : std_logic;
SIGNAL \ALT_INV_GClock~input_o\ : std_logic;
SIGNAL \MAINALU|ALT_INV_ZERO~2_combout\ : std_logic;

BEGIN

ww_ValueSelect <= ValueSelect;
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

\MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC_REG|bit7|int_q~q\ & \PC_REG|bit6|int_q~q\ & \PC_REG|bit5|int_q~q\ & \PC_REG|bit4|int_q~q\ & \PC_REG|bit3|int_q~q\ & \PC_REG|bit2|int_q~q\ & \~GND~combout\ & \~GND~combout\);

\MEM_ROM|altsyncram_component|auto_generated|q_a\(0) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(1) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(2) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(3) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(4) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(5) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(6) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(7) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(8) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(9) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(10) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(11) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(12) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(13) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(14) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(15) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(16) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(17) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(18) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(19) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(20) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(21) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(22) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(23) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(24) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(25) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(26) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(27) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(28) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(29) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(30) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\MEM_ROM|altsyncram_component|auto_generated|q_a\(31) <= \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \EX_MEM|RegData7|int_q~q\ & \EX_MEM|RegData6|int_q~q\ & \EX_MEM|RegData5|int_q~q\ & \EX_MEM|RegData4|int_q~q\ & 
\EX_MEM|RegData3|int_q~q\ & \EX_MEM|RegData2|int_q~q\ & \EX_MEM|RegData1|int_q~q\ & \EX_MEM|RegData0|int_q~q\);

\MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|ALU7|int_q~q\ & \EX_MEM|ALU6|int_q~q\ & \EX_MEM|ALU5|int_q~q\ & \EX_MEM|ALU4|int_q~q\ & \EX_MEM|ALU3|int_q~q\ & \EX_MEM|ALU2|int_q~q\ & \EX_MEM|ALU1|int_q~q\ & 
\EX_MEM|ALU0|int_q~q\);

\MEM_WB|DataMem0|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEM_WB|DataMem1|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEM_WB|DataMem2|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEM_WB|DataMem3|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEM_WB|DataMem4|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEM_WB|DataMem5|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEM_WB|DataMem6|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEM_WB|DataMem7|int_q\ <= \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ALT_INV_GresetBar~input_o\ <= NOT \GresetBar~input_o\;
\ALT_INV_GClock~input_o\ <= NOT \GClock~input_o\;
\MAINALU|ALT_INV_ZERO~2_combout\ <= NOT \MAINALU|ZERO~2_combout\;

-- Location: IOOBUF_X69_Y73_N16
\MuxOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\MuxOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\MuxOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\MuxOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\MuxOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\MuxOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\MuxOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\,
	devoe => ww_devoe,
	o => \MuxOut[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\MuxOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\InstructionOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \InstructionOut[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\InstructionOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \InstructionOut[1]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\InstructionOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \InstructionOut[2]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\InstructionOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \InstructionOut[3]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\InstructionOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \InstructionOut[4]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\InstructionOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \InstructionOut[5]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\InstructionOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \InstructionOut[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\InstructionOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \InstructionOut[7]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\InstructionOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \InstructionOut[8]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\InstructionOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \InstructionOut[9]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\InstructionOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \InstructionOut[10]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\InstructionOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \InstructionOut[11]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\InstructionOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \InstructionOut[12]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\InstructionOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \InstructionOut[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\InstructionOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \InstructionOut[14]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\InstructionOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \InstructionOut[15]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\InstructionOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \InstructionOut[16]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\InstructionOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \InstructionOut[17]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\InstructionOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \InstructionOut[18]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\InstructionOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \InstructionOut[19]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\InstructionOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \InstructionOut[20]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\InstructionOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \InstructionOut[21]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\InstructionOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \InstructionOut[22]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\InstructionOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \InstructionOut[23]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\InstructionOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \InstructionOut[24]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\InstructionOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \InstructionOut[25]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\InstructionOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \InstructionOut[26]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\InstructionOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \InstructionOut[27]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\InstructionOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \InstructionOut[28]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\InstructionOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \InstructionOut[29]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\InstructionOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \InstructionOut[30]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\InstructionOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_ROM|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \InstructionOut[31]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\BranchOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|ibit28|int_q~q\,
	devoe => ww_devoe,
	o => \BranchOut~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\ZeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MAINALU|ALT_INV_ZERO~2_combout\,
	devoe => ww_devoe,
	o => \ZeroOut~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\MemWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EX_MEM|MemWriteFF|int_q~q\,
	devoe => ww_devoe,
	o => \MemWriteOut~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\RegWriteOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|RegWriteFF|int_q~q\,
	devoe => ww_devoe,
	o => \RegWriteOut~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: LCCOMB_X103_Y44_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X107_Y46_N28
\PC_INC|AddGenerator:3:SingleBitAdd|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:3:SingleBitAdd|int_CarryOut1~combout\ = \PC_REG|bit2|int_q~q\ $ (\PC_REG|bit3|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|bit2|int_q~q\,
	datac => \PC_REG|bit3|int_q~q\,
	combout => \PC_INC|AddGenerator:3:SingleBitAdd|int_CarryOut1~combout\);

-- Location: IOIBUF_X115_Y17_N1
\GresetBar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GresetBar,
	o => \GresetBar~input_o\);

-- Location: LCCOMB_X107_Y46_N26
\PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\ = \PC_REG|bit4|int_q~q\ $ (((\PC_REG|bit2|int_q~q\ & \PC_REG|bit3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|bit2|int_q~q\,
	datac => \PC_REG|bit3|int_q~q\,
	datad => \PC_REG|bit4|int_q~q\,
	combout => \PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\);

-- Location: FF_X107_Y46_N27
\IF_ID|pcbit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit4|int_q~q\);

-- Location: LCCOMB_X109_Y46_N30
\HZRD_CNTRL|IF_ID_Flush~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|IF_ID_Flush~0_combout\ = (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTRL|Jump~0_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datad => \Branch_Sig~4_combout\,
	combout => \HZRD_CNTRL|IF_ID_Flush~0_combout\);

-- Location: LCCOMB_X107_Y46_N20
\PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\ = \PC_REG|bit5|int_q~q\ $ (((\PC_REG|bit2|int_q~q\ & (\PC_REG|bit3|int_q~q\ & \PC_REG|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|bit5|int_q~q\,
	datab => \PC_REG|bit2|int_q~q\,
	datac => \PC_REG|bit3|int_q~q\,
	datad => \PC_REG|bit4|int_q~q\,
	combout => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\);

-- Location: FF_X107_Y46_N21
\IF_ID|pcbit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit5|int_q~q\);

-- Location: LCCOMB_X106_Y46_N24
\PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\ = (\PC_REG|bit3|int_q~q\ & (\PC_REG|bit2|int_q~q\ & (\PC_REG|bit4|int_q~q\ & \PC_REG|bit5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|bit3|int_q~q\,
	datab => \PC_REG|bit2|int_q~q\,
	datac => \PC_REG|bit4|int_q~q\,
	datad => \PC_REG|bit5|int_q~q\,
	combout => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\);

-- Location: LCCOMB_X107_Y46_N12
\PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\ = \PC_REG|bit7|int_q~q\ $ (((\PC_REG|bit6|int_q~q\ & \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|bit7|int_q~q\,
	datab => \PC_REG|bit6|int_q~q\,
	datad => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\,
	combout => \PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\);

-- Location: M9K_X104_Y44_N0
\MEM_ROM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000102100280000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000B00000000000000000000000000008C03000400000000000000000000000000008C0200030000000000000000000000000000AC0100040000000000000000000000000000004308200000000000000000000000000000AC04000300000000000000000000000000000023202500000000000000000000000000000043082200000000000000000000000000008C03000100000000000000000000000000008C020000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "instruction_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "instruction_mem:MEM_ROM|altsyncram:altsyncram_component|altsyncram_uts3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \GClock~input_o\,
	portaaddr => \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM_ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X112_Y40_N12
\IF_ID|instruction[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(1) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(1) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(1),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(1));

-- Location: FF_X112_Y40_N13
\IF_ID|ibit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(1),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit1|int_q~q\);

-- Location: LCCOMB_X107_Y46_N30
\IF_ID|pcbit2|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|pcbit2|int_q~0_combout\ = !\PC_REG|bit2|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC_REG|bit2|int_q~q\,
	combout => \IF_ID|pcbit2|int_q~0_combout\);

-- Location: FF_X107_Y46_N31
\IF_ID|pcbit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|pcbit2|int_q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit2|int_q~q\);

-- Location: LCCOMB_X108_Y46_N10
\BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\ = (\IF_ID|pcbit3|int_q~q\ & ((\IF_ID|ibit1|int_q~q\) # ((\IF_ID|ibit0|int_q~q\ & \IF_ID|pcbit2|int_q~q\)))) # (!\IF_ID|pcbit3|int_q~q\ & (\IF_ID|ibit0|int_q~q\ & (\IF_ID|ibit1|int_q~q\ & 
-- \IF_ID|pcbit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit0|int_q~q\,
	datab => \IF_ID|pcbit3|int_q~q\,
	datac => \IF_ID|ibit1|int_q~q\,
	datad => \IF_ID|pcbit2|int_q~q\,
	combout => \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\);

-- Location: LCCOMB_X108_Y46_N20
\BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\ = (\IF_ID|pcbit4|int_q~q\ & ((\IF_ID|ibit2|int_q~q\) # (\BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\))) # (!\IF_ID|pcbit4|int_q~q\ & (\IF_ID|ibit2|int_q~q\ & 
-- \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|pcbit4|int_q~q\,
	datab => \IF_ID|ibit2|int_q~q\,
	datad => \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\,
	combout => \BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\);

-- Location: LCCOMB_X108_Y46_N18
\BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\ = (\IF_ID|pcbit5|int_q~q\ & ((\IF_ID|ibit3|int_q~q\) # (\BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\))) # (!\IF_ID|pcbit5|int_q~q\ & (\IF_ID|ibit3|int_q~q\ & 
-- \BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|pcbit5|int_q~q\,
	datac => \IF_ID|ibit3|int_q~q\,
	datad => \BR_ADD|AddGenerator:4:SingleBitAdd|o_CarryOut~0_combout\,
	combout => \BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\);

-- Location: FF_X107_Y46_N13
\IF_ID|pcbit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit7|int_q~q\);

-- Location: LCCOMB_X107_Y46_N6
\PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\ = \PC_REG|bit6|int_q~q\ $ (\PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_REG|bit6|int_q~q\,
	datad => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut3~combout\,
	combout => \PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\);

-- Location: FF_X107_Y46_N7
\IF_ID|pcbit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit6|int_q~q\);

-- Location: LCCOMB_X108_Y46_N2
\BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = \IF_ID|pcbit7|int_q~q\ $ (((\IF_ID|ibit4|int_q~q\ & ((\BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\) # (\IF_ID|pcbit6|int_q~q\))) # (!\IF_ID|ibit4|int_q~q\ & 
-- (\BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\ & \IF_ID|pcbit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit4|int_q~q\,
	datab => \BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\,
	datac => \IF_ID|pcbit7|int_q~q\,
	datad => \IF_ID|pcbit6|int_q~q\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y40_N18
\IF_ID|instruction[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(5) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(5) & (!\CNTRL|Jump~0_combout\ & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \MEM_ROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(5));

-- Location: FF_X112_Y40_N19
\IF_ID|ibit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(5),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit5|int_q~q\);

-- Location: LCCOMB_X111_Y43_N30
\IF_ID|instruction[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(19) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(19) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \MEM_ROM|altsyncram_component|auto_generated|q_a\(19),
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(19));

-- Location: FF_X111_Y43_N31
\IF_ID|ibit19|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(19),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit19|int_q~q\);

-- Location: FF_X112_Y43_N7
\ID_EX|instruction_20_16_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit20|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_20_16_bit4|int_q~q\);

-- Location: FF_X112_Y43_N21
\ID_EX|instruction_20_16_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit19|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_20_16_bit3|int_q~q\);

-- Location: LCCOMB_X112_Y43_N6
\HZRD_CNTRL|Int_PC_Stall~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|Int_PC_Stall~0_combout\ = (\IF_ID|ibit20|int_q~q\ & (\ID_EX|instruction_20_16_bit4|int_q~q\ & (\IF_ID|ibit19|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\)))) # (!\IF_ID|ibit20|int_q~q\ & (!\ID_EX|instruction_20_16_bit4|int_q~q\ & 
-- (\IF_ID|ibit19|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \ID_EX|instruction_20_16_bit4|int_q~q\,
	datad => \ID_EX|instruction_20_16_bit3|int_q~q\,
	combout => \HZRD_CNTRL|Int_PC_Stall~0_combout\);

-- Location: LCCOMB_X111_Y44_N16
\IF_ID|instruction[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(16) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(16) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(16),
	datab => \CNTRL|Jump~0_combout\,
	datac => \IF_ID|ibit28|int_q~q\,
	datad => \Branch_Sig~4_combout\,
	combout => \IF_ID|instruction\(16));

-- Location: FF_X111_Y44_N17
\IF_ID|ibit16|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(16),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit16|int_q~q\);

-- Location: FF_X108_Y41_N13
\ID_EX|instruction_20_16_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit16|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_20_16_bit0|int_q~q\);

-- Location: LCCOMB_X111_Y41_N26
\HZRD_CNTRL|Int_PC_Stall~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|Int_PC_Stall~2_combout\ = (\ID_EX|MemReadFF|int_q~q\ & (\ID_EX|instruction_20_16_bit0|int_q~q\ $ (!\IF_ID|ibit16|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit0|int_q~q\,
	datab => \ID_EX|MemReadFF|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \HZRD_CNTRL|Int_PC_Stall~2_combout\);

-- Location: LCCOMB_X112_Y44_N0
\IF_ID|instruction[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(17) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(17) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \CNTRL|Jump~0_combout\,
	datad => \Branch_Sig~4_combout\,
	combout => \IF_ID|instruction\(17));

-- Location: FF_X112_Y44_N1
\IF_ID|ibit17|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(17),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit17|int_q~q\);

-- Location: LCCOMB_X111_Y43_N24
\IF_ID|instruction[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(18) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(18) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \MEM_ROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(18));

-- Location: FF_X111_Y43_N25
\IF_ID|ibit18|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(18),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit18|int_q~q\);

-- Location: FF_X112_Y41_N15
\ID_EX|instruction_20_16_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit18|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_20_16_bit2|int_q~q\);

-- Location: FF_X112_Y41_N13
\ID_EX|instruction_20_16_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit17|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_20_16_bit1|int_q~q\);

-- Location: LCCOMB_X112_Y41_N12
\HZRD_CNTRL|Int_PC_Stall~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|Int_PC_Stall~1_combout\ = (\IF_ID|ibit17|int_q~q\ & (\ID_EX|instruction_20_16_bit1|int_q~q\ & (\ID_EX|instruction_20_16_bit2|int_q~q\ $ (!\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (!\ID_EX|instruction_20_16_bit1|int_q~q\ & 
-- (\ID_EX|instruction_20_16_bit2|int_q~q\ $ (!\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \ID_EX|instruction_20_16_bit2|int_q~q\,
	datac => \ID_EX|instruction_20_16_bit1|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \HZRD_CNTRL|Int_PC_Stall~1_combout\);

-- Location: LCCOMB_X112_Y41_N0
\HZRD_CNTRL|Int_PC_Stall~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|Int_PC_Stall~3_combout\ = (\HZRD_CNTRL|Int_PC_Stall~0_combout\ & (\HZRD_CNTRL|Int_PC_Stall~2_combout\ & \HZRD_CNTRL|Int_PC_Stall~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HZRD_CNTRL|Int_PC_Stall~0_combout\,
	datab => \HZRD_CNTRL|Int_PC_Stall~2_combout\,
	datad => \HZRD_CNTRL|Int_PC_Stall~1_combout\,
	combout => \HZRD_CNTRL|Int_PC_Stall~3_combout\);

-- Location: LCCOMB_X109_Y46_N2
\HZRD_CNTRL|MuxSelect~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|MuxSelect~0_combout\ = (!\CNTRL|Jump~0_combout\ & (!\HZRD_CNTRL|Int_PC_Stall~3_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTRL|Jump~0_combout\,
	datab => \HZRD_CNTRL|Int_PC_Stall~3_combout\,
	datac => \IF_ID|ibit28|int_q~q\,
	datad => \Branch_Sig~4_combout\,
	combout => \HZRD_CNTRL|MuxSelect~0_combout\);

-- Location: LCCOMB_X108_Y46_N14
\BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & (\PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\)) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & ((\BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ $ 
-- (\IF_ID|ibit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_INC|AddGenerator:7:SingleBitAdd|int_CarryOut1~combout\,
	datab => \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datac => \IF_ID|ibit5|int_q~q\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: FF_X108_Y46_N15
\PC_REG|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y40_N0
\IF_ID|instruction[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(4) = (!\CNTRL|Jump~0_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(4) & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \CNTRL|Jump~0_combout\,
	datad => \MEM_ROM|altsyncram_component|auto_generated|q_a\(4),
	combout => \IF_ID|instruction\(4));

-- Location: FF_X112_Y40_N1
\IF_ID|ibit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(4),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit4|int_q~q\);

-- Location: LCCOMB_X108_Y46_N12
\BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0_combout\ = \IF_ID|ibit4|int_q~q\ $ (\IF_ID|pcbit6|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|ibit4|int_q~q\,
	datad => \IF_ID|pcbit6|int_q~q\,
	combout => \BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0_combout\);

-- Location: LCCOMB_X108_Y46_N16
\BR_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & (((\PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\)))) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & (\BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0_combout\ $ 
-- ((\BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BR_ADD|AddGenerator:6:SingleBitAdd|o_Sum~0_combout\,
	datab => \BR_ADD|AddGenerator:5:SingleBitAdd|o_CarryOut~0_combout\,
	datac => \PC_INC|AddGenerator:6:SingleBitAdd|int_CarryOut1~combout\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: FF_X108_Y46_N17
\PC_REG|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit6|int_q~q\);

-- Location: LCCOMB_X112_Y40_N10
\IF_ID|instruction[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(3) = (!\CNTRL|Jump~0_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(3) & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \CNTRL|Jump~0_combout\,
	datad => \MEM_ROM|altsyncram_component|auto_generated|q_a\(3),
	combout => \IF_ID|instruction\(3));

-- Location: FF_X112_Y40_N11
\IF_ID|ibit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(3),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit3|int_q~q\);

-- Location: LCCOMB_X108_Y46_N30
\BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0_combout\ = \IF_ID|ibit3|int_q~q\ $ (((\IF_ID|pcbit4|int_q~q\ & ((\IF_ID|ibit2|int_q~q\) # (\BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\))) # (!\IF_ID|pcbit4|int_q~q\ & (\IF_ID|ibit2|int_q~q\ & 
-- \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|pcbit4|int_q~q\,
	datab => \IF_ID|ibit2|int_q~q\,
	datac => \IF_ID|ibit3|int_q~q\,
	datad => \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\,
	combout => \BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0_combout\);

-- Location: LCCOMB_X108_Y46_N26
\BR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & (((\PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\)))) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & (\IF_ID|pcbit5|int_q~q\ $ 
-- (((\BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|pcbit5|int_q~q\,
	datab => \PC_INC|AddGenerator:5:SingleBitAdd|int_CarryOut1~combout\,
	datac => \BR_ADD|AddGenerator:5:SingleBitAdd|o_Sum~0_combout\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: FF_X108_Y46_N27
\PC_REG|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit5|int_q~q\);

-- Location: LCCOMB_X109_Y46_N8
\IF_ID|ibit28|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|ibit28|int_q~0_combout\ = (\HZRD_CNTRL|PC_Stall~1_combout\ & (\HZRD_CNTRL|IF_ID_Flush~0_combout\ & ((\MEM_ROM|altsyncram_component|auto_generated|q_a\(28))))) # (!\HZRD_CNTRL|PC_Stall~1_combout\ & (((\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HZRD_CNTRL|IF_ID_Flush~0_combout\,
	datab => \HZRD_CNTRL|PC_Stall~1_combout\,
	datac => \IF_ID|ibit28|int_q~q\,
	datad => \MEM_ROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \IF_ID|ibit28|int_q~0_combout\);

-- Location: FF_X109_Y46_N9
\IF_ID|ibit28|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|ibit28|int_q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit28|int_q~q\);

-- Location: LCCOMB_X112_Y40_N22
\IF_ID|instruction[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(2) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(2) & (!\CNTRL|Jump~0_combout\ & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \MEM_ROM|altsyncram_component|auto_generated|q_a\(2),
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(2));

-- Location: FF_X112_Y40_N23
\IF_ID|ibit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(2),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit2|int_q~q\);

-- Location: LCCOMB_X108_Y46_N28
\BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0_combout\ = \IF_ID|pcbit4|int_q~q\ $ (\IF_ID|ibit2|int_q~q\ $ (\BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|pcbit4|int_q~q\,
	datab => \IF_ID|ibit2|int_q~q\,
	datad => \BR_ADD|AddGenerator:3:SingleBitAdd|o_CarryOut~0_combout\,
	combout => \BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0_combout\);

-- Location: LCCOMB_X108_Y46_N4
\BR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & ((\PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\))) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & (\BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BR_ADD|AddGenerator:4:SingleBitAdd|o_Sum~0_combout\,
	datac => \PC_INC|AddGenerator:4:SingleBitAdd|int_CarryOut1~combout\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: FF_X108_Y46_N5
\PC_REG|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit4|int_q~q\);

-- Location: LCCOMB_X109_Y47_N22
\IF_ID|ibit27|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|ibit27|int_q~0_combout\ = (\HZRD_CNTRL|PC_Stall~1_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(27) & ((\HZRD_CNTRL|IF_ID_Flush~0_combout\)))) # (!\HZRD_CNTRL|PC_Stall~1_combout\ & (((\IF_ID|ibit27|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(27),
	datab => \HZRD_CNTRL|PC_Stall~1_combout\,
	datac => \IF_ID|ibit27|int_q~q\,
	datad => \HZRD_CNTRL|IF_ID_Flush~0_combout\,
	combout => \IF_ID|ibit27|int_q~0_combout\);

-- Location: FF_X109_Y47_N23
\IF_ID|ibit27|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|ibit27|int_q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit27|int_q~q\);

-- Location: LCCOMB_X109_Y47_N0
\IF_ID|ibit29|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|ibit29|int_q~0_combout\ = (\HZRD_CNTRL|PC_Stall~1_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(29) & ((\HZRD_CNTRL|IF_ID_Flush~0_combout\)))) # (!\HZRD_CNTRL|PC_Stall~1_combout\ & (((\IF_ID|ibit29|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HZRD_CNTRL|PC_Stall~1_combout\,
	datab => \MEM_ROM|altsyncram_component|auto_generated|q_a\(29),
	datac => \IF_ID|ibit29|int_q~q\,
	datad => \HZRD_CNTRL|IF_ID_Flush~0_combout\,
	combout => \IF_ID|ibit29|int_q~0_combout\);

-- Location: FF_X109_Y47_N1
\IF_ID|ibit29|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|ibit29|int_q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit29|int_q~q\);

-- Location: LCCOMB_X109_Y47_N30
\CNTRL|Jump~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTRL|Jump~0_combout\ = (\IF_ID|ibit27|int_q~q\ & (!\IF_ID|ibit29|int_q~q\ & !\IF_ID|ibit31|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit27|int_q~q\,
	datab => \IF_ID|ibit29|int_q~q\,
	datad => \IF_ID|ibit31|int_q~q\,
	combout => \CNTRL|Jump~0_combout\);

-- Location: FF_X107_Y41_N19
\ID_EX|instruction_extend_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit0|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit0|int_q~q\);

-- Location: FF_X107_Y41_N17
\ID_EX|instruction_extend_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit3|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit3|int_q~q\);

-- Location: FF_X107_Y41_N27
\ID_EX|instruction_extend_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit1|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit1|int_q~q\);

-- Location: FF_X107_Y41_N29
\ID_EX|instruction_extend_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit2|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit2|int_q~q\);

-- Location: LCCOMB_X107_Y41_N26
\ALU_CONTRL|ALU_OP_OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTRL|ALU_OP_OUT[0]~0_combout\ = (\ID_EX|instruction_extend_bit0|int_q~q\ & (!\ID_EX|instruction_extend_bit3|int_q~q\ & (!\ID_EX|instruction_extend_bit1|int_q~q\ & \ID_EX|instruction_extend_bit2|int_q~q\))) # 
-- (!\ID_EX|instruction_extend_bit0|int_q~q\ & (\ID_EX|instruction_extend_bit3|int_q~q\ & (\ID_EX|instruction_extend_bit1|int_q~q\ & !\ID_EX|instruction_extend_bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit0|int_q~q\,
	datab => \ID_EX|instruction_extend_bit3|int_q~q\,
	datac => \ID_EX|instruction_extend_bit1|int_q~q\,
	datad => \ID_EX|instruction_extend_bit2|int_q~q\,
	combout => \ALU_CONTRL|ALU_OP_OUT[0]~0_combout\);

-- Location: LCCOMB_X108_Y41_N4
\CLR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (!\IF_ID|ibit31|int_q~q\ & (\HZRD_CNTRL|MuxSelect~0_combout\ & \IF_ID|ibit28|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit31|int_q~q\,
	datac => \HZRD_CNTRL|MuxSelect~0_combout\,
	datad => \IF_ID|ibit28|int_q~q\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: FF_X108_Y41_N5
\ID_EX|ALUOpbit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|ALUOpbit1|int_q~q\);

-- Location: LCCOMB_X108_Y41_N16
\CLR_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & \IF_ID|ibit31|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HZRD_CNTRL|MuxSelect~0_combout\,
	datad => \IF_ID|ibit31|int_q~q\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: FF_X108_Y41_N17
\ID_EX|ALUOpbit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|ALUOpbit0|int_q~q\);

-- Location: LCCOMB_X107_Y41_N18
\ALU_CONTRL|ALU_OP_OUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT[0]~0_combout\ & (!\ID_EX|ALUOpbit1|int_q~q\ & !\ID_EX|ALUOpbit0|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~0_combout\,
	datab => \ID_EX|ALUOpbit1|int_q~q\,
	datad => \ID_EX|ALUOpbit0|int_q~q\,
	combout => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\);

-- Location: LCCOMB_X108_Y41_N26
\CNTRL|RegDst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTRL|RegDst~0_combout\ = (!\IF_ID|ibit29|int_q~q\ & (!\IF_ID|ibit28|int_q~q\ & (!\IF_ID|ibit27|int_q~q\ & !\IF_ID|ibit31|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit29|int_q~q\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \IF_ID|ibit27|int_q~q\,
	datad => \IF_ID|ibit31|int_q~q\,
	combout => \CNTRL|RegDst~0_combout\);

-- Location: LCCOMB_X112_Y40_N16
\IF_ID|instruction[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(26) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(26) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(26));

-- Location: FF_X112_Y40_N17
\IF_ID|ibit26|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(26),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit26|int_q~q\);

-- Location: LCCOMB_X108_Y41_N8
\CNTRL|RegDst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNTRL|RegDst~1_combout\ = (\CNTRL|RegDst~0_combout\ & !\IF_ID|ibit26|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNTRL|RegDst~0_combout\,
	datad => \IF_ID|ibit26|int_q~q\,
	combout => \CNTRL|RegDst~1_combout\);

-- Location: LCCOMB_X108_Y41_N30
\CLR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & ((\CNTRL|RegDst~1_combout\) # ((!\IF_ID|ibit29|int_q~q\ & \IF_ID|ibit31|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTRL|RegDst~1_combout\,
	datab => \HZRD_CNTRL|MuxSelect~0_combout\,
	datac => \IF_ID|ibit29|int_q~q\,
	datad => \IF_ID|ibit31|int_q~q\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: FF_X108_Y41_N31
\ID_EX|RegWriteFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|RegWriteFF|int_q~q\);

-- Location: FF_X108_Y41_N21
\EX_MEM|RegWriteFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \ID_EX|RegWriteFF|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegWriteFF|int_q~q\);

-- Location: LCCOMB_X107_Y41_N24
\ALU_CONTRL|ALU_OP_OUT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_CONTRL|ALU_OP_OUT\(1) = (\ID_EX|ALUOpbit1|int_q~q\) # ((\ID_EX|ALUOpbit0|int_q~q\) # ((!\ID_EX|instruction_extend_bit0|int_q~q\ & !\ID_EX|instruction_extend_bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALUOpbit1|int_q~q\,
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datac => \ID_EX|instruction_extend_bit0|int_q~q\,
	datad => \ID_EX|instruction_extend_bit2|int_q~q\,
	combout => \ALU_CONTRL|ALU_OP_OUT\(1));

-- Location: LCCOMB_X112_Y40_N14
\IF_ID|instruction[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(11) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(11) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(11),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(11));

-- Location: FF_X112_Y40_N15
\IF_ID|ibit11|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(11),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit11|int_q~q\);

-- Location: LCCOMB_X114_Y40_N16
\ID_EX|instruction_15_11_bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_15_11_bit0|int_q~feeder_combout\ = \IF_ID|ibit11|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit11|int_q~q\,
	combout => \ID_EX|instruction_15_11_bit0|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N17
\ID_EX|instruction_15_11_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_15_11_bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_15_11_bit0|int_q~q\);

-- Location: LCCOMB_X114_Y40_N24
\CLR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ = (!\IF_ID|ibit26|int_q~q\ & (\CNTRL|RegDst~0_combout\ & \HZRD_CNTRL|MuxSelect~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit26|int_q~q\,
	datac => \CNTRL|RegDst~0_combout\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\);

-- Location: FF_X114_Y40_N25
\ID_EX|RegDstFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|RegDstFF|int_q~q\);

-- Location: LCCOMB_X114_Y41_N8
\DST_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DST_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\ID_EX|RegDstFF|int_q~q\ & ((\ID_EX|instruction_15_11_bit0|int_q~q\))) # (!\ID_EX|RegDstFF|int_q~q\ & (\ID_EX|instruction_20_16_bit0|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|instruction_20_16_bit0|int_q~q\,
	datac => \ID_EX|instruction_15_11_bit0|int_q~q\,
	datad => \ID_EX|RegDstFF|int_q~q\,
	combout => \DST_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: FF_X114_Y41_N9
\EX_MEM|Mux0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \DST_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|Mux0|int_q~q\);

-- Location: LCCOMB_X112_Y40_N30
\IF_ID|instruction[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(13) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(13) & (!\CNTRL|Jump~0_combout\ & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \MEM_ROM|altsyncram_component|auto_generated|q_a\(13),
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(13));

-- Location: FF_X112_Y40_N31
\IF_ID|ibit13|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(13),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit13|int_q~q\);

-- Location: FF_X114_Y40_N5
\ID_EX|instruction_15_11_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit13|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_15_11_bit2|int_q~q\);

-- Location: LCCOMB_X112_Y41_N10
\DST_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DST_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\ID_EX|RegDstFF|int_q~q\ & (\ID_EX|instruction_15_11_bit2|int_q~q\)) # (!\ID_EX|RegDstFF|int_q~q\ & ((\ID_EX|instruction_20_16_bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_15_11_bit2|int_q~q\,
	datab => \ID_EX|instruction_20_16_bit2|int_q~q\,
	datad => \ID_EX|RegDstFF|int_q~q\,
	combout => \DST_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: FF_X112_Y41_N11
\EX_MEM|Mux2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \DST_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|Mux2|int_q~q\);

-- Location: LCCOMB_X112_Y40_N26
\IF_ID|instruction[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(15) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(15) & (!\CNTRL|Jump~0_combout\ & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \MEM_ROM|altsyncram_component|auto_generated|q_a\(15),
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(15));

-- Location: FF_X112_Y40_N27
\IF_ID|ibit15|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(15),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit15|int_q~q\);

-- Location: LCCOMB_X114_Y40_N30
\ID_EX|instruction_15_11_bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_15_11_bit4|int_q~feeder_combout\ = \IF_ID|ibit15|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit15|int_q~q\,
	combout => \ID_EX|instruction_15_11_bit4|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N31
\ID_EX|instruction_15_11_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_15_11_bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_15_11_bit4|int_q~q\);

-- Location: LCCOMB_X112_Y43_N14
\DST_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DST_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\ID_EX|RegDstFF|int_q~q\ & (\ID_EX|instruction_15_11_bit4|int_q~q\)) # (!\ID_EX|RegDstFF|int_q~q\ & ((\ID_EX|instruction_20_16_bit4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|instruction_15_11_bit4|int_q~q\,
	datac => \ID_EX|RegDstFF|int_q~q\,
	datad => \ID_EX|instruction_20_16_bit4|int_q~q\,
	combout => \DST_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: FF_X112_Y43_N15
\EX_MEM|Mux4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \DST_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|Mux4|int_q~q\);

-- Location: LCCOMB_X112_Y40_N4
\IF_ID|instruction[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(12) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(12) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(12),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(12));

-- Location: FF_X112_Y40_N5
\IF_ID|ibit12|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(12),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit12|int_q~q\);

-- Location: FF_X114_Y40_N7
\ID_EX|instruction_15_11_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit12|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_15_11_bit1|int_q~q\);

-- Location: LCCOMB_X113_Y41_N28
\DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\ID_EX|RegDstFF|int_q~q\ & ((\ID_EX|instruction_15_11_bit1|int_q~q\))) # (!\ID_EX|RegDstFF|int_q~q\ & (\ID_EX|instruction_20_16_bit1|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit1|int_q~q\,
	datab => \ID_EX|instruction_15_11_bit1|int_q~q\,
	datad => \ID_EX|RegDstFF|int_q~q\,
	combout => \DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X114_Y41_N26
\EX_MEM|Mux1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|Mux1|int_q~feeder_combout\ = \DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DST_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \EX_MEM|Mux1|int_q~feeder_combout\);

-- Location: FF_X114_Y41_N27
\EX_MEM|Mux1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|Mux1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|Mux1|int_q~q\);

-- Location: LCCOMB_X112_Y40_N28
\IF_ID|instruction[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(14) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(14) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(14),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(14));

-- Location: FF_X112_Y40_N29
\IF_ID|ibit14|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(14),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit14|int_q~q\);

-- Location: LCCOMB_X114_Y40_N14
\ID_EX|instruction_15_11_bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_15_11_bit3|int_q~feeder_combout\ = \IF_ID|ibit14|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit14|int_q~q\,
	combout => \ID_EX|instruction_15_11_bit3|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N15
\ID_EX|instruction_15_11_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_15_11_bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_15_11_bit3|int_q~q\);

-- Location: LCCOMB_X112_Y43_N26
\DST_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DST_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\ID_EX|RegDstFF|int_q~q\ & (\ID_EX|instruction_15_11_bit3|int_q~q\)) # (!\ID_EX|RegDstFF|int_q~q\ & ((\ID_EX|instruction_20_16_bit3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|RegDstFF|int_q~q\,
	datab => \ID_EX|instruction_15_11_bit3|int_q~q\,
	datad => \ID_EX|instruction_20_16_bit3|int_q~q\,
	combout => \DST_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: FF_X112_Y43_N27
\EX_MEM|Mux3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \DST_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|Mux3|int_q~q\);

-- Location: LCCOMB_X112_Y41_N6
\FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\ = (\EX_MEM|Mux2|int_q~q\) # ((\EX_MEM|Mux4|int_q~q\) # ((\EX_MEM|Mux1|int_q~q\) # (\EX_MEM|Mux3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|Mux2|int_q~q\,
	datab => \EX_MEM|Mux4|int_q~q\,
	datac => \EX_MEM|Mux1|int_q~q\,
	datad => \EX_MEM|Mux3|int_q~q\,
	combout => \FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\);

-- Location: LCCOMB_X112_Y41_N4
\FWD_UNIT|Int_ForwardB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardB~1_combout\ = (\ID_EX|instruction_20_16_bit1|int_q~q\ & (\EX_MEM|Mux1|int_q~q\ & (\ID_EX|instruction_20_16_bit2|int_q~q\ $ (!\EX_MEM|Mux2|int_q~q\)))) # (!\ID_EX|instruction_20_16_bit1|int_q~q\ & (!\EX_MEM|Mux1|int_q~q\ & 
-- (\ID_EX|instruction_20_16_bit2|int_q~q\ $ (!\EX_MEM|Mux2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit1|int_q~q\,
	datab => \ID_EX|instruction_20_16_bit2|int_q~q\,
	datac => \EX_MEM|Mux1|int_q~q\,
	datad => \EX_MEM|Mux2|int_q~q\,
	combout => \FWD_UNIT|Int_ForwardB~1_combout\);

-- Location: LCCOMB_X112_Y43_N8
\FWD_UNIT|Int_ForwardB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardB~0_combout\ = (\ID_EX|instruction_20_16_bit4|int_q~q\ & (\EX_MEM|Mux4|int_q~q\ & (\EX_MEM|Mux3|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\)))) # (!\ID_EX|instruction_20_16_bit4|int_q~q\ & (!\EX_MEM|Mux4|int_q~q\ & 
-- (\EX_MEM|Mux3|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit4|int_q~q\,
	datab => \EX_MEM|Mux4|int_q~q\,
	datac => \EX_MEM|Mux3|int_q~q\,
	datad => \ID_EX|instruction_20_16_bit3|int_q~q\,
	combout => \FWD_UNIT|Int_ForwardB~0_combout\);

-- Location: LCCOMB_X112_Y41_N8
\FWD_UNIT|Int_ForwardB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardB~2_combout\ = (\FWD_UNIT|Int_ForwardB~1_combout\ & (\FWD_UNIT|Int_ForwardB~0_combout\ & ((\FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\) # (\EX_MEM|Mux0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\,
	datab => \EX_MEM|Mux0|int_q~q\,
	datac => \FWD_UNIT|Int_ForwardB~1_combout\,
	datad => \FWD_UNIT|Int_ForwardB~0_combout\,
	combout => \FWD_UNIT|Int_ForwardB~2_combout\);

-- Location: LCCOMB_X108_Y41_N22
\FWD_UNIT|ForwardB[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardB[1]~3_combout\ = (\EX_MEM|RegWriteFF|int_q~q\ & (\FWD_UNIT|Int_ForwardB~2_combout\ & (\ID_EX|instruction_20_16_bit0|int_q~q\ $ (!\EX_MEM|Mux0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit0|int_q~q\,
	datab => \EX_MEM|RegWriteFF|int_q~q\,
	datac => \EX_MEM|Mux0|int_q~q\,
	datad => \FWD_UNIT|Int_ForwardB~2_combout\,
	combout => \FWD_UNIT|ForwardB[1]~3_combout\);

-- Location: FF_X112_Y43_N9
\MEM_WB|Mux3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|Mux3|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|Mux3|int_q~q\);

-- Location: FF_X113_Y41_N1
\MEM_WB|Mux4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|Mux4|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|Mux4|int_q~q\);

-- Location: LCCOMB_X112_Y43_N20
\FWD_UNIT|ForwardB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardB[0]~2_combout\ = (\ID_EX|instruction_20_16_bit4|int_q~q\ & (\MEM_WB|Mux4|int_q~q\ & (\MEM_WB|Mux3|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\)))) # (!\ID_EX|instruction_20_16_bit4|int_q~q\ & (!\MEM_WB|Mux4|int_q~q\ & 
-- (\MEM_WB|Mux3|int_q~q\ $ (!\ID_EX|instruction_20_16_bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit4|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \ID_EX|instruction_20_16_bit3|int_q~q\,
	datad => \MEM_WB|Mux4|int_q~q\,
	combout => \FWD_UNIT|ForwardB[0]~2_combout\);

-- Location: FF_X114_Y41_N31
\MEM_WB|Mux0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|Mux0|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|Mux0|int_q~q\);

-- Location: FF_X113_Y41_N19
\MEM_WB|RegWriteFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|RegWriteFF|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|RegWriteFF|int_q~q\);

-- Location: FF_X113_Y41_N9
\MEM_WB|Mux1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|Mux1|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|Mux1|int_q~q\);

-- Location: FF_X113_Y41_N3
\MEM_WB|Mux2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|Mux2|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|Mux2|int_q~q\);

-- Location: LCCOMB_X113_Y41_N26
\REGISTER_FILE|SEL_WRITE|P_OUT[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux1|int_q~q\ & !\MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\);

-- Location: LCCOMB_X113_Y41_N4
\FWD_UNIT|Int_ForwardA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardA~0_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & ((\MEM_WB|Mux0|int_q~q\) # ((\MEM_WB|Mux4|int_q~q\) # (!\REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \MEM_WB|RegWriteFF|int_q~q\,
	datac => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\,
	datad => \MEM_WB|Mux4|int_q~q\,
	combout => \FWD_UNIT|Int_ForwardA~0_combout\);

-- Location: LCCOMB_X113_Y41_N24
\FWD_UNIT|ForwardB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardB[0]~0_combout\ = (\ID_EX|instruction_20_16_bit1|int_q~q\ & (\MEM_WB|Mux1|int_q~q\ & (\MEM_WB|Mux2|int_q~q\ $ (!\ID_EX|instruction_20_16_bit2|int_q~q\)))) # (!\ID_EX|instruction_20_16_bit1|int_q~q\ & (!\MEM_WB|Mux1|int_q~q\ & 
-- (\MEM_WB|Mux2|int_q~q\ $ (!\ID_EX|instruction_20_16_bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit1|int_q~q\,
	datab => \MEM_WB|Mux2|int_q~q\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \ID_EX|instruction_20_16_bit2|int_q~q\,
	combout => \FWD_UNIT|ForwardB[0]~0_combout\);

-- Location: LCCOMB_X114_Y41_N24
\FWD_UNIT|ForwardB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardB[0]~1_combout\ = (\FWD_UNIT|ForwardB[0]~0_combout\ & (\MEM_WB|Mux0|int_q~q\ $ (!\ID_EX|instruction_20_16_bit0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datac => \ID_EX|instruction_20_16_bit0|int_q~q\,
	datad => \FWD_UNIT|ForwardB[0]~0_combout\,
	combout => \FWD_UNIT|ForwardB[0]~1_combout\);

-- Location: LCCOMB_X108_Y41_N0
\FWD_UNIT|Int_ForwardB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardB~3_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & (\FWD_UNIT|Int_ForwardB~2_combout\ & (\ID_EX|instruction_20_16_bit0|int_q~q\ $ (!\EX_MEM|Mux0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_20_16_bit0|int_q~q\,
	datab => \MEM_WB|RegWriteFF|int_q~q\,
	datac => \EX_MEM|Mux0|int_q~q\,
	datad => \FWD_UNIT|Int_ForwardB~2_combout\,
	combout => \FWD_UNIT|Int_ForwardB~3_combout\);

-- Location: LCCOMB_X108_Y41_N24
\FWD_UNIT|ForwardB[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardB\(0) = (\FWD_UNIT|ForwardB[0]~2_combout\ & (\FWD_UNIT|Int_ForwardA~0_combout\ & (\FWD_UNIT|ForwardB[0]~1_combout\ & !\FWD_UNIT|Int_ForwardB~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[0]~2_combout\,
	datab => \FWD_UNIT|Int_ForwardA~0_combout\,
	datac => \FWD_UNIT|ForwardB[0]~1_combout\,
	datad => \FWD_UNIT|Int_ForwardB~3_combout\,
	combout => \FWD_UNIT|ForwardB\(0));

-- Location: LCCOMB_X107_Y41_N22
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ = (\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & (!\FWD_UNIT|ForwardB[1]~3_combout\ & \FWD_UNIT|ForwardB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardB[1]~3_combout\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\);

-- Location: FF_X108_Y40_N1
\EX_MEM|ALU0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU0|int_q~q\);

-- Location: LCCOMB_X113_Y41_N30
\REGISTER_FILE|SEL_WRITE|P_OUT[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ = (!\MEM_WB|Mux0|int_q~q\ & (\MEM_WB|Mux4|int_q~q\ & \MEM_WB|RegWriteFF|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|RegWriteFF|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\);

-- Location: LCCOMB_X114_Y42_N24
\REGISTER_FILE|SEL_WRITE|P_OUT[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\ = (\MEM_WB|Mux1|int_q~q\ & (!\MEM_WB|Mux3|int_q~q\ & (\MEM_WB|Mux2|int_q~q\ & \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\);

-- Location: FF_X112_Y42_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X114_Y42_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y42_N30
\REGISTER_FILE|SEL_WRITE|P_OUT[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\ = (\MEM_WB|Mux1|int_q~q\ & (\MEM_WB|Mux3|int_q~q\ & (\MEM_WB|Mux2|int_q~q\ & \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\);

-- Location: FF_X114_Y42_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X114_Y42_N26
\REGISTER_FILE|SEL_WRITE|P_OUT[26]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\ = (\MEM_WB|Mux1|int_q~q\ & (\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\);

-- Location: FF_X113_Y42_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X111_Y42_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y42_N20
\REGISTER_FILE|SEL_WRITE|P_OUT[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\ = (\MEM_WB|Mux1|int_q~q\ & (!\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\);

-- Location: FF_X111_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X112_Y42_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\) # ((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\ & !\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y42_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y42_N30
\REGISTER_FILE|SEL_WRITE|P_OUT[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & (\MEM_WB|Mux3|int_q~q\ & (\MEM_WB|Mux4|int_q~q\ & \MEM_WB|Mux0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|RegWriteFF|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|Mux0|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\);

-- Location: LCCOMB_X109_Y43_N18
\REGISTER_FILE|SEL_WRITE|P_OUT[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ & (\MEM_WB|Mux1|int_q~q\ & !\MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\);

-- Location: FF_X108_Y43_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X109_Y43_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X109_Y43_N4
\REGISTER_FILE|SEL_WRITE|P_OUT[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ & (\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\);

-- Location: FF_X109_Y43_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X106_Y43_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X113_Y41_N6
\REGISTER_FILE|SEL_WRITE|P_OUT[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\ = (\MEM_WB|Mux2|int_q~q\ & (\MEM_WB|Mux4|int_q~q\ & \MEM_WB|RegWriteFF|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux2|int_q~q\,
	datab => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|RegWriteFF|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\);

-- Location: LCCOMB_X110_Y41_N28
\REGISTER_FILE|SEL_WRITE|P_OUT[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\ & (!\MEM_WB|Mux3|int_q~q\ & (\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux0|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\);

-- Location: FF_X106_Y43_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X107_Y43_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y41_N18
\REGISTER_FILE|SEL_WRITE|P_OUT[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & (\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \MEM_WB|Mux2|int_q~q\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux0|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\);

-- Location: LCCOMB_X108_Y41_N12
\REGISTER_FILE|SEL_WRITE|P_OUT[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\ & (\MEM_WB|Mux4|int_q~q\ & \MEM_WB|RegWriteFF|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\,
	datab => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|RegWriteFF|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\);

-- Location: FF_X107_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X107_Y43_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\);

-- Location: LCCOMB_X110_Y41_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y41_N30
\REGISTER_FILE|SEL_WRITE|P_OUT[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ & (!\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\);

-- Location: FF_X110_Y41_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X114_Y41_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y41_N6
\REGISTER_FILE|SEL_WRITE|P_OUT[25]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\ & (!\MEM_WB|Mux1|int_q~q\ & !\MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~14_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\);

-- Location: FF_X114_Y41_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X113_Y41_N0
\REGISTER_FILE|SEL_WRITE|P_OUT[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\ & (\MEM_WB|Mux0|int_q~q\ & (\MEM_WB|Mux4|int_q~q\ & \MEM_WB|RegWriteFF|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\,
	datab => \MEM_WB|Mux0|int_q~q\,
	datac => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|RegWriteFF|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\);

-- Location: FF_X112_Y41_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X111_Y41_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y41_N2
\REGISTER_FILE|SEL_WRITE|P_OUT[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\ & (!\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~16_combout\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux0|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\);

-- Location: FF_X111_Y41_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X112_Y41_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (!\IF_ID|ibit19|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\);

-- Location: LCCOMB_X111_Y41_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\) # ((!\IF_ID|ibit19|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\ & \IF_ID|ibit19|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\);

-- Location: LCCOMB_X113_Y43_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y43_N0
\REGISTER_FILE|SEL_WRITE|P_OUT[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ & (!\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\);

-- Location: FF_X113_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X112_Y43_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y43_N26
\REGISTER_FILE|SEL_WRITE|P_OUT[24]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\ = (\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ & (!\MEM_WB|Mux1|int_q~q\ & !\MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\);

-- Location: FF_X112_Y43_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X114_Y43_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y43_N30
\REGISTER_FILE|SEL_WRITE|P_OUT[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ & (!\MEM_WB|Mux1|int_q~q\ & !\MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\);

-- Location: FF_X114_Y43_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X114_Y43_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\) # ((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\ & !\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X114_Y43_N24
\REGISTER_FILE|SEL_WRITE|P_OUT[28]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\ = (\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\ & (!\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~9_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\);

-- Location: FF_X110_Y43_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y43_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\) # (!\IF_ID|ibit18|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\ & (\IF_ID|ibit18|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\);

-- Location: LCCOMB_X110_Y45_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\) # ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\)))) # (!\IF_ID|ibit16|int_q~q\ & (!\IF_ID|ibit17|int_q~q\ 
-- & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\);

-- Location: LCCOMB_X110_Y45_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\);

-- Location: LCCOMB_X110_Y46_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X108_Y42_N4
\REGISTER_FILE|SEL_WRITE|P_OUT[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & (\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux4|int_q~q\ & \MEM_WB|Mux0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|RegWriteFF|int_q~q\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux4|int_q~q\,
	datad => \MEM_WB|Mux0|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\);

-- Location: LCCOMB_X111_Y46_N16
\REGISTER_FILE|SEL_WRITE|P_OUT[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\ = (\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ & !\MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\);

-- Location: FF_X110_Y46_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X113_Y46_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X112_Y42_N0
\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ = (!\MEM_WB|Mux0|int_q~q\ & (\MEM_WB|RegWriteFF|int_q~q\ & !\MEM_WB|Mux4|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \MEM_WB|RegWriteFF|int_q~q\,
	datad => \MEM_WB|Mux4|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\);

-- Location: LCCOMB_X112_Y46_N6
\REGISTER_FILE|SEL_WRITE|P_OUT[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & !\MEM_WB|Mux1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \MEM_WB|Mux1|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\);

-- Location: FF_X113_Y46_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X111_Y46_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X111_Y46_N20
\REGISTER_FILE|SEL_WRITE|P_OUT[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\ = (!\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ & !\MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\);

-- Location: FF_X111_Y46_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X113_Y46_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\) # (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\ & (!\IF_ID|ibit17|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\);

-- Location: LCCOMB_X112_Y46_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X112_Y46_N20
\REGISTER_FILE|SEL_WRITE|P_OUT[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux3|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & \MEM_WB|Mux1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datab => \MEM_WB|Mux3|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \MEM_WB|Mux1|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\);

-- Location: FF_X112_Y46_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X113_Y46_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\);

-- Location: LCCOMB_X110_Y47_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X111_Y46_N22
\REGISTER_FILE|SEL_WRITE|P_OUT[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\ = (\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ & \MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\);

-- Location: FF_X110_Y47_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X111_Y47_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X111_Y46_N14
\REGISTER_FILE|SEL_WRITE|P_OUT[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\ = (!\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\ & \MEM_WB|Mux2|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux1|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~30_combout\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\);

-- Location: FF_X111_Y47_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X109_Y47_N6
\REGISTER_FILE|SEL_WRITE|P_OUT[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\ = (\MEM_WB|Mux2|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux3|int_q~q\ & !\MEM_WB|Mux1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux2|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datac => \MEM_WB|Mux3|int_q~q\,
	datad => \MEM_WB|Mux1|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\);

-- Location: FF_X109_Y47_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X108_Y47_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X109_Y47_N12
\REGISTER_FILE|SEL_WRITE|P_OUT[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\ = (\MEM_WB|Mux2|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux3|int_q~q\ & \MEM_WB|Mux1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux2|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datac => \MEM_WB|Mux3|int_q~q\,
	datad => \MEM_WB|Mux1|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\);

-- Location: FF_X108_Y47_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X109_Y47_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\) # (\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\ & ((!\IF_ID|ibit16|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\);

-- Location: LCCOMB_X110_Y47_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\);

-- Location: LCCOMB_X109_Y45_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y45_N8
\REGISTER_FILE|SEL_WRITE|P_OUT[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux1|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & !\MEM_WB|Mux3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \MEM_WB|Mux3|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\);

-- Location: FF_X109_Y45_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y44_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X108_Y41_N14
\REGISTER_FILE|SEL_WRITE|P_OUT[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & (!\MEM_WB|Mux4|int_q~q\ & \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|RegWriteFF|int_q~q\,
	datac => \MEM_WB|Mux4|int_q~q\,
	datad => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~25_combout\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\);

-- Location: FF_X110_Y44_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y45_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y45_N18
\REGISTER_FILE|SEL_WRITE|P_OUT[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (!\MEM_WB|Mux1|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & !\MEM_WB|Mux3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \MEM_WB|Mux3|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\);

-- Location: FF_X110_Y45_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X111_Y45_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X113_Y41_N18
\REGISTER_FILE|SEL_WRITE|P_OUT[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\ = (\REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\ & (\MEM_WB|Mux0|int_q~q\ & (\MEM_WB|RegWriteFF|int_q~q\ & !\MEM_WB|Mux4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~8_combout\,
	datab => \MEM_WB|Mux0|int_q~q\,
	datac => \MEM_WB|RegWriteFF|int_q~q\,
	datad => \MEM_WB|Mux4|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\);

-- Location: FF_X111_Y45_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y45_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\))) # 
-- (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\);

-- Location: LCCOMB_X110_Y44_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\) # (!\IF_ID|ibit17|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\ & ((\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\);

-- Location: LCCOMB_X107_Y42_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X108_Y42_N22
\REGISTER_FILE|SEL_WRITE|P_OUT[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\ = (!\MEM_WB|Mux4|int_q~q\ & (\MEM_WB|Mux2|int_q~q\ & \MEM_WB|RegWriteFF|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux4|int_q~q\,
	datab => \MEM_WB|Mux2|int_q~q\,
	datad => \MEM_WB|RegWriteFF|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\);

-- Location: LCCOMB_X108_Y42_N26
\REGISTER_FILE|SEL_WRITE|P_OUT[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\ = (\MEM_WB|Mux0|int_q~q\ & (\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\ & !\MEM_WB|Mux3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datac => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\,
	datad => \MEM_WB|Mux3|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\);

-- Location: FF_X107_Y42_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X108_Y42_N0
\REGISTER_FILE|SEL_WRITE|P_OUT[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\ = (\MEM_WB|Mux0|int_q~q\ & (!\MEM_WB|Mux1|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\ & !\MEM_WB|Mux3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datac => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~34_combout\,
	datad => \MEM_WB|Mux3|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\);

-- Location: FF_X108_Y42_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X109_Y42_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y42_N8
\REGISTER_FILE|SEL_WRITE|P_OUT[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\);

-- Location: FF_X109_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y42_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~feeder_combout\);

-- Location: LCCOMB_X110_Y42_N26
\REGISTER_FILE|SEL_WRITE|P_OUT[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\ = (!\MEM_WB|Mux3|int_q~q\ & (\REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\ & (!\MEM_WB|Mux1|int_q~q\ & \MEM_WB|Mux2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~28_combout\,
	datac => \MEM_WB|Mux1|int_q~q\,
	datad => \MEM_WB|Mux2|int_q~q\,
	combout => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\);

-- Location: FF_X110_Y42_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\);

-- Location: LCCOMB_X110_Y42_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\)) # 
-- (!\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\);

-- Location: LCCOMB_X107_Y42_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\);

-- Location: LCCOMB_X110_Y44_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ = (\IF_ID|ibit19|int_q~q\ & (\IF_ID|ibit18|int_q~q\)) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\))) # (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\);

-- Location: LCCOMB_X110_Y44_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\);

-- Location: LCCOMB_X110_Y45_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\)) # (!\IF_ID|ibit20|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\);

-- Location: FF_X107_Y41_N1
\ID_EX|READ_DATA2_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit0|int_q~q\);

-- Location: LCCOMB_X107_Y41_N0
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ = (\FWD_UNIT|ForwardB[1]~3_combout\ & (\EX_MEM|ALU0|int_q~q\)) # (!\FWD_UNIT|ForwardB[1]~3_combout\ & (((\ID_EX|READ_DATA2_bit0|int_q~q\ & !\FWD_UNIT|ForwardB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU0|int_q~q\,
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \ID_EX|READ_DATA2_bit0|int_q~q\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\);

-- Location: LCCOMB_X107_Y41_N2
\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit0|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & (((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\) # 
-- (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit0|int_q~q\,
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	combout => \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: LCCOMB_X107_Y41_N16
\MAINALU|B_INVERT_CONTR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|B_INVERT_CONTR~0_combout\ = (!\ID_EX|ALUOpbit1|int_q~q\ & (((\ID_EX|instruction_extend_bit3|int_q~q\) # (\ID_EX|ALUOpbit0|int_q~q\)) # (!\ID_EX|instruction_extend_bit1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALUOpbit1|int_q~q\,
	datab => \ID_EX|instruction_extend_bit1|int_q~q\,
	datac => \ID_EX|instruction_extend_bit3|int_q~q\,
	datad => \ID_EX|ALUOpbit0|int_q~q\,
	combout => \MAINALU|B_INVERT_CONTR~0_combout\);

-- Location: LCCOMB_X107_Y41_N28
\MAINALU|B_INVERT_CONTR\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|B_INVERT_CONTR~combout\ = ((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & \ALU_CONTRL|ALU_OP_OUT\(1))) # (!\MAINALU|B_INVERT_CONTR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|B_INVERT_CONTR~0_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT\(1),
	combout => \MAINALU|B_INVERT_CONTR~combout\);

-- Location: LCCOMB_X111_Y43_N20
\IF_ID|instruction[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(23) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(23) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \MEM_ROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(23));

-- Location: FF_X111_Y43_N21
\IF_ID|ibit23|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(23),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit23|int_q~q\);

-- Location: LCCOMB_X114_Y41_N6
\ID_EX|instruction_25_21_bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_25_21_bit2|int_q~feeder_combout\ = \IF_ID|ibit23|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \ID_EX|instruction_25_21_bit2|int_q~feeder_combout\);

-- Location: FF_X114_Y41_N7
\ID_EX|instruction_25_21_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_25_21_bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_25_21_bit2|int_q~q\);

-- Location: LCCOMB_X111_Y44_N20
\IF_ID|instruction[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(22) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(22) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(22),
	datab => \CNTRL|Jump~0_combout\,
	datac => \IF_ID|ibit28|int_q~q\,
	datad => \Branch_Sig~4_combout\,
	combout => \IF_ID|instruction\(22));

-- Location: FF_X111_Y44_N21
\IF_ID|ibit22|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(22),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit22|int_q~q\);

-- Location: FF_X113_Y41_N27
\ID_EX|instruction_25_21_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit22|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_25_21_bit1|int_q~q\);

-- Location: LCCOMB_X113_Y41_N2
\FWD_UNIT|ForwardA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardA[0]~0_combout\ = (\ID_EX|instruction_25_21_bit2|int_q~q\ & (\MEM_WB|Mux2|int_q~q\ & (\MEM_WB|Mux1|int_q~q\ $ (!\ID_EX|instruction_25_21_bit1|int_q~q\)))) # (!\ID_EX|instruction_25_21_bit2|int_q~q\ & (!\MEM_WB|Mux2|int_q~q\ & 
-- (\MEM_WB|Mux1|int_q~q\ $ (!\ID_EX|instruction_25_21_bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_25_21_bit2|int_q~q\,
	datab => \MEM_WB|Mux1|int_q~q\,
	datac => \MEM_WB|Mux2|int_q~q\,
	datad => \ID_EX|instruction_25_21_bit1|int_q~q\,
	combout => \FWD_UNIT|ForwardA[0]~0_combout\);

-- Location: LCCOMB_X107_Y46_N24
\IF_ID|instruction[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(21) = (!\CNTRL|Jump~0_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(21) & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \CNTRL|Jump~0_combout\,
	datad => \MEM_ROM|altsyncram_component|auto_generated|q_a\(21),
	combout => \IF_ID|instruction\(21));

-- Location: FF_X107_Y46_N25
\IF_ID|ibit21|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(21),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit21|int_q~q\);

-- Location: FF_X114_Y41_N21
\ID_EX|instruction_25_21_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit21|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_25_21_bit0|int_q~q\);

-- Location: LCCOMB_X113_Y41_N8
\FWD_UNIT|ForwardA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardA[0]~1_combout\ = (\FWD_UNIT|ForwardA[0]~0_combout\ & (\MEM_WB|Mux0|int_q~q\ $ (!\ID_EX|instruction_25_21_bit0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux0|int_q~q\,
	datab => \FWD_UNIT|ForwardA[0]~0_combout\,
	datad => \ID_EX|instruction_25_21_bit0|int_q~q\,
	combout => \FWD_UNIT|ForwardA[0]~1_combout\);

-- Location: LCCOMB_X112_Y41_N26
\FWD_UNIT|Int_ForwardA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardA~2_combout\ = (\EX_MEM|Mux2|int_q~q\ & (\ID_EX|instruction_25_21_bit2|int_q~q\ & (\EX_MEM|Mux1|int_q~q\ $ (!\ID_EX|instruction_25_21_bit1|int_q~q\)))) # (!\EX_MEM|Mux2|int_q~q\ & (!\ID_EX|instruction_25_21_bit2|int_q~q\ & 
-- (\EX_MEM|Mux1|int_q~q\ $ (!\ID_EX|instruction_25_21_bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|Mux2|int_q~q\,
	datab => \ID_EX|instruction_25_21_bit2|int_q~q\,
	datac => \EX_MEM|Mux1|int_q~q\,
	datad => \ID_EX|instruction_25_21_bit1|int_q~q\,
	combout => \FWD_UNIT|Int_ForwardA~2_combout\);

-- Location: LCCOMB_X111_Y43_N14
\IF_ID|instruction[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(24) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(24) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \MEM_ROM|altsyncram_component|auto_generated|q_a\(24),
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(24));

-- Location: FF_X111_Y43_N15
\IF_ID|ibit24|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(24),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit24|int_q~q\);

-- Location: FF_X112_Y43_N5
\ID_EX|instruction_25_21_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit24|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_25_21_bit3|int_q~q\);

-- Location: LCCOMB_X112_Y44_N26
\IF_ID|instruction[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(25) = (!\CNTRL|Jump~0_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(25) & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \CNTRL|Jump~0_combout\,
	datac => \MEM_ROM|altsyncram_component|auto_generated|q_a\(25),
	datad => \IF_ID|ibit28|int_q~q\,
	combout => \IF_ID|instruction\(25));

-- Location: FF_X112_Y44_N27
\IF_ID|ibit25|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(25),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit25|int_q~q\);

-- Location: FF_X112_Y43_N19
\ID_EX|instruction_25_21_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit25|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_25_21_bit4|int_q~q\);

-- Location: LCCOMB_X112_Y43_N4
\FWD_UNIT|Int_ForwardA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardA~1_combout\ = (\EX_MEM|Mux3|int_q~q\ & (\ID_EX|instruction_25_21_bit3|int_q~q\ & (\EX_MEM|Mux4|int_q~q\ $ (!\ID_EX|instruction_25_21_bit4|int_q~q\)))) # (!\EX_MEM|Mux3|int_q~q\ & (!\ID_EX|instruction_25_21_bit3|int_q~q\ & 
-- (\EX_MEM|Mux4|int_q~q\ $ (!\ID_EX|instruction_25_21_bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|Mux3|int_q~q\,
	datab => \EX_MEM|Mux4|int_q~q\,
	datac => \ID_EX|instruction_25_21_bit3|int_q~q\,
	datad => \ID_EX|instruction_25_21_bit4|int_q~q\,
	combout => \FWD_UNIT|Int_ForwardA~1_combout\);

-- Location: LCCOMB_X112_Y41_N24
\FWD_UNIT|Int_ForwardA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardA~3_combout\ = (\FWD_UNIT|Int_ForwardA~2_combout\ & (\FWD_UNIT|Int_ForwardA~1_combout\ & ((\EX_MEM|Mux0|int_q~q\) # (\FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|Int_ForwardA~2_combout\,
	datab => \EX_MEM|Mux0|int_q~q\,
	datac => \FWD_UNIT|Int_ForwardA~1_combout\,
	datad => \FWD_UNIT|Compare_EXMEM_Rd_Zero|brSig~0_combout\,
	combout => \FWD_UNIT|Int_ForwardA~3_combout\);

-- Location: LCCOMB_X113_Y41_N14
\FWD_UNIT|Int_ForwardA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Int_ForwardA~4_combout\ = (\MEM_WB|RegWriteFF|int_q~q\ & (\FWD_UNIT|Int_ForwardA~3_combout\ & (\ID_EX|instruction_25_21_bit0|int_q~q\ $ (!\EX_MEM|Mux0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_25_21_bit0|int_q~q\,
	datab => \MEM_WB|RegWriteFF|int_q~q\,
	datac => \EX_MEM|Mux0|int_q~q\,
	datad => \FWD_UNIT|Int_ForwardA~3_combout\,
	combout => \FWD_UNIT|Int_ForwardA~4_combout\);

-- Location: LCCOMB_X112_Y43_N18
\FWD_UNIT|ForwardA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardA[0]~2_combout\ = (\MEM_WB|Mux3|int_q~q\ & (\ID_EX|instruction_25_21_bit3|int_q~q\ & (\ID_EX|instruction_25_21_bit4|int_q~q\ $ (!\MEM_WB|Mux4|int_q~q\)))) # (!\MEM_WB|Mux3|int_q~q\ & (!\ID_EX|instruction_25_21_bit3|int_q~q\ & 
-- (\ID_EX|instruction_25_21_bit4|int_q~q\ $ (!\MEM_WB|Mux4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|Mux3|int_q~q\,
	datab => \ID_EX|instruction_25_21_bit3|int_q~q\,
	datac => \ID_EX|instruction_25_21_bit4|int_q~q\,
	datad => \MEM_WB|Mux4|int_q~q\,
	combout => \FWD_UNIT|ForwardA[0]~2_combout\);

-- Location: LCCOMB_X113_Y41_N12
\FWD_UNIT|ForwardA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardA\(0) = (\FWD_UNIT|ForwardA[0]~1_combout\ & (\FWD_UNIT|Int_ForwardA~0_combout\ & (!\FWD_UNIT|Int_ForwardA~4_combout\ & \FWD_UNIT|ForwardA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA[0]~1_combout\,
	datab => \FWD_UNIT|Int_ForwardA~0_combout\,
	datac => \FWD_UNIT|Int_ForwardA~4_combout\,
	datad => \FWD_UNIT|ForwardA[0]~2_combout\,
	combout => \FWD_UNIT|ForwardA\(0));

-- Location: LCCOMB_X108_Y41_N10
\FWD_UNIT|ForwardA[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|ForwardA[1]~3_combout\ = (\EX_MEM|RegWriteFF|int_q~q\ & (\FWD_UNIT|Int_ForwardA~3_combout\ & (\EX_MEM|Mux0|int_q~q\ $ (!\ID_EX|instruction_25_21_bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|Mux0|int_q~q\,
	datab => \EX_MEM|RegWriteFF|int_q~q\,
	datac => \FWD_UNIT|Int_ForwardA~3_combout\,
	datad => \ID_EX|instruction_25_21_bit0|int_q~q\,
	combout => \FWD_UNIT|ForwardA[1]~3_combout\);

-- Location: LCCOMB_X107_Y43_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\) # ((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\ & !\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\);

-- Location: LCCOMB_X111_Y41_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\)) # 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\);

-- Location: LCCOMB_X110_Y41_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\);

-- Location: LCCOMB_X112_Y43_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\) # ((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\ & !\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit0|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\);

-- Location: LCCOMB_X113_Y43_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\);

-- Location: LCCOMB_X109_Y45_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\);

-- Location: LCCOMB_X113_Y42_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\))) # 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit0|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: LCCOMB_X113_Y42_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\);

-- Location: LCCOMB_X109_Y45_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\))))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~8_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\);

-- Location: LCCOMB_X110_Y46_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\) # (\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\ & ((!\IF_ID|ibit22|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit0|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\);

-- Location: LCCOMB_X110_Y46_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\);

-- Location: LCCOMB_X108_Y47_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\) # (\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\ & ((!\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit0|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\);

-- Location: LCCOMB_X111_Y47_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\);

-- Location: LCCOMB_X111_Y45_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\IF_ID|ibit22|int_q~q\) # (\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\ & (!\IF_ID|ibit22|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit0|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit0|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\);

-- Location: LCCOMB_X109_Y45_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\) # (!\IF_ID|ibit22|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\ & ((\IF_ID|ibit22|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit0|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~14_combout\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\);

-- Location: LCCOMB_X109_Y42_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit0|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\);

-- Location: LCCOMB_X108_Y42_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit0|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit0|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\);

-- Location: LCCOMB_X109_Y45_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\);

-- Location: LCCOMB_X109_Y45_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~11_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\);

-- Location: LCCOMB_X109_Y45_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\)) # (!\IF_ID|ibit25|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\);

-- Location: FF_X106_Y41_N7
\ID_EX|READ_DATA1_bit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit0|int_q~q\);

-- Location: LCCOMB_X106_Y41_N6
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ = (\FWD_UNIT|ForwardA[1]~3_combout\ & (\EX_MEM|ALU0|int_q~q\)) # (!\FWD_UNIT|ForwardA[1]~3_combout\ & (((\ID_EX|READ_DATA1_bit0|int_q~q\ & !\FWD_UNIT|ForwardA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU0|int_q~q\,
	datab => \FWD_UNIT|ForwardA[1]~3_combout\,
	datac => \ID_EX|READ_DATA1_bit0|int_q~q\,
	datad => \FWD_UNIT|ForwardA\(0),
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y41_N26
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\) # ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & !\FWD_UNIT|ForwardA[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA\(0),
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardA[1]~3_combout\,
	datad => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\);

-- Location: LCCOMB_X106_Y41_N14
\MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & ((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # (\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ $ (\MAINALU|B_INVERT_CONTR~combout\)))) # 
-- (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ & (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & (\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ $ (\MAINALU|B_INVERT_CONTR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	combout => \MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N12
\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (!\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & (\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ $ (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	combout => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N0
\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1_combout\ = (\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0_combout\) # ((!\ALU_CONTRL|ALU_OP_OUT\(1) & \MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|SINGLE_ALU0|MUX|SEL1|RESULT~0_combout\,
	datad => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~0_combout\,
	combout => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X112_Y40_N6
\IF_ID|instruction[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(7) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(7) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(7),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(7));

-- Location: FF_X112_Y40_N7
\IF_ID|ibit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(7),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit7|int_q~q\);

-- Location: FF_X114_Y40_N29
\ID_EX|instruction_extend_bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \IF_ID|ibit7|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit7|int_q~q\);

-- Location: LCCOMB_X114_Y40_N18
\CLR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\IF_ID|ibit29|int_q~q\ & \HZRD_CNTRL|MuxSelect~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|ibit29|int_q~q\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: FF_X114_Y40_N19
\ID_EX|MemWriteFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|MemWriteFF|int_q~q\);

-- Location: LCCOMB_X114_Y40_N12
\EX_MEM|MemWriteFF|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|MemWriteFF|int_q~feeder_combout\ = \ID_EX|MemWriteFF|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|MemWriteFF|int_q~q\,
	combout => \EX_MEM|MemWriteFF|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N13
\EX_MEM|MemWriteFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|MemWriteFF|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|MemWriteFF|int_q~q\);

-- Location: LCCOMB_X107_Y41_N10
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\) # ((!\FWD_UNIT|ForwardB[1]~3_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & \FWD_UNIT|ForwardB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\);

-- Location: LCCOMB_X111_Y40_N16
\EX_MEM|RegData0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData0|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~4_combout\,
	combout => \EX_MEM|RegData0|int_q~feeder_combout\);

-- Location: FF_X111_Y40_N17
\EX_MEM|RegData0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData0|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData0|int_q~q\);

-- Location: LCCOMB_X108_Y41_N2
\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) = \EX_MEM|Mux0|int_q~q\ $ (\ID_EX|instruction_25_21_bit0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_MEM|Mux0|int_q~q\,
	datad => \ID_EX|instruction_25_21_bit0|int_q~q\,
	combout => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0));

-- Location: LCCOMB_X105_Y41_N14
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\EX_MEM|ALU2|int_q~q\ & (!\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) & (\EX_MEM|RegWriteFF|int_q~q\ & \FWD_UNIT|Int_ForwardA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU2|int_q~q\,
	datab => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	datac => \EX_MEM|RegWriteFF|int_q~q\,
	datad => \FWD_UNIT|Int_ForwardA~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y40_N2
\ID_EX|instruction_extend_bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_extend_bit4|int_q~feeder_combout\ = \IF_ID|ibit4|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit4|int_q~q\,
	combout => \ID_EX|instruction_extend_bit4|int_q~feeder_combout\);

-- Location: FF_X112_Y40_N3
\ID_EX|instruction_extend_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_extend_bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit4|int_q~q\);

-- Location: FF_X108_Y41_N3
\ID_EX|READ_DATA2_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit4|int_q~q\);

-- Location: LCCOMB_X108_Y41_N18
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardB[1]~3_combout\ & ((\FWD_UNIT|ForwardB\(0) & ((\WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))) # (!\FWD_UNIT|ForwardB\(0) & (\ID_EX|READ_DATA2_bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|READ_DATA2_bit4|int_q~q\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardB[1]~3_combout\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X109_Y40_N16
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\) # ((\EX_MEM|ALU4|int_q~q\ & \FWD_UNIT|ForwardB[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_MEM|ALU4|int_q~q\,
	datac => \FWD_UNIT|ForwardB[1]~3_combout\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\);

-- Location: LCCOMB_X109_Y40_N26
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit4|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit4|int_q~q\,
	datab => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	datac => \ID_EX|ALUOpbit0|int_q~q\,
	datad => \MAINALU|B_INVERT_CONTR~combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: FF_X112_Y46_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\);

-- Location: FF_X110_Y46_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X111_Y46_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X111_Y46_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X113_Y46_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X113_Y46_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X110_Y46_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\) # ((\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\ & !\IF_ID|ibit22|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\);

-- Location: LCCOMB_X110_Y46_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\);

-- Location: LCCOMB_X107_Y45_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X107_Y45_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X111_Y45_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X111_Y45_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\);

-- Location: FF_X110_Y45_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X110_Y45_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\);

-- Location: FF_X108_Y45_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X107_Y45_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\);

-- Location: FF_X108_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\);

-- Location: FF_X107_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X109_Y42_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X109_Y42_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\);

-- Location: FF_X110_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X110_Y42_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\);

-- Location: LCCOMB_X107_Y42_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\);

-- Location: LCCOMB_X108_Y45_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\);

-- Location: FF_X108_Y47_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\);

-- Location: FF_X109_Y47_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X109_Y47_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\);

-- Location: LCCOMB_X111_Y47_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X111_Y47_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X110_Y47_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\) # ((!\IF_ID|ibit21|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ & (((\IF_ID|ibit21|int_q~q\ & \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\);

-- Location: LCCOMB_X108_Y45_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\);

-- Location: LCCOMB_X106_Y43_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X107_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X107_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X106_Y43_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\) # ((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((!\IF_ID|ibit24|int_q~q\ & 
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\);

-- Location: FF_X108_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X109_Y43_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X109_Y43_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X109_Y43_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\) # (!\IF_ID|ibit24|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\ & ((\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\);

-- Location: LCCOMB_X112_Y42_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X112_Y42_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X114_Y42_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X111_Y42_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X113_Y42_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X113_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X111_Y42_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\) # (\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\ & ((!\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y43_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\);

-- Location: LCCOMB_X110_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X110_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X113_Y43_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\);

-- Location: FF_X112_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X114_Y43_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X114_Y43_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X114_Y43_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\)) # 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\);

-- Location: LCCOMB_X109_Y41_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X109_Y41_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\);

-- Location: FF_X110_Y41_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X111_Y41_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X111_Y41_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\);

-- Location: FF_X112_Y41_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X112_Y41_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\)) # 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\);

-- Location: LCCOMB_X110_Y41_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\);

-- Location: LCCOMB_X109_Y43_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\))) 
-- # (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y43_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\))))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\);

-- Location: LCCOMB_X108_Y45_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\))) # (!\IF_ID|ibit25|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\);

-- Location: FF_X110_Y40_N9
\ID_EX|READ_DATA1_bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit4|int_q~q\);

-- Location: LCCOMB_X110_Y40_N8
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardA\(0) & ((\ID_EX|READ_DATA1_bit4|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA\(0),
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datac => \ID_EX|READ_DATA1_bit4|int_q~q\,
	datad => \FWD_UNIT|ForwardA[1]~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y41_N6
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\FWD_UNIT|Int_ForwardA~3_combout\ & (!\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) & (\EX_MEM|RegWriteFF|int_q~q\ & \EX_MEM|ALU4|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|Int_ForwardA~3_combout\,
	datab => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	datac => \EX_MEM|RegWriteFF|int_q~q\,
	datad => \EX_MEM|ALU4|int_q~q\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X109_Y40_N8
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\) # 
-- (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT\(1),
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X109_Y40_N0
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit4|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit4|int_q~q\,
	datac => \ID_EX|ALUOpbit0|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X105_Y41_N30
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\EX_MEM|RegWriteFF|int_q~q\ & (\EX_MEM|ALU3|int_q~q\ & (!\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) & \FWD_UNIT|Int_ForwardA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|RegWriteFF|int_q~q\,
	datab => \EX_MEM|ALU3|int_q~q\,
	datac => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	datad => \FWD_UNIT|Int_ForwardA~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: FF_X107_Y43_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\);

-- Location: FF_X106_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X107_Y43_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\);

-- Location: FF_X108_Y43_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X109_Y43_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X109_Y43_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X108_Y43_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\)) # (!\IF_ID|ibit24|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ & (\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\);

-- Location: LCCOMB_X114_Y42_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\);

-- Location: FF_X112_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X111_Y42_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\);

-- Location: FF_X113_Y42_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X113_Y42_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X113_Y42_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\);

-- Location: FF_X111_Y41_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\);

-- Location: FF_X112_Y41_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X111_Y41_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\)) # 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\);

-- Location: FF_X109_Y41_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\);

-- Location: FF_X110_Y41_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X109_Y41_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\);

-- Location: FF_X110_Y43_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X113_Y43_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X114_Y43_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X114_Y43_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\);

-- Location: FF_X112_Y43_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X112_Y43_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\) # (\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\ & ((!\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\);

-- Location: LCCOMB_X109_Y45_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y45_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\))))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\);

-- Location: LCCOMB_X110_Y47_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X107_Y47_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X107_Y47_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X108_Y47_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X108_Y47_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\);

-- Location: FF_X109_Y47_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X108_Y47_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\);

-- Location: LCCOMB_X107_Y47_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\);

-- Location: LCCOMB_X112_Y46_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X114_Y46_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X114_Y46_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\);

-- Location: FF_X111_Y46_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X113_Y46_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X113_Y46_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X111_Y46_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\);

-- Location: LCCOMB_X111_Y46_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\);

-- Location: FF_X107_Y42_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\);

-- Location: FF_X108_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\);

-- Location: FF_X110_Y42_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\);

-- Location: FF_X109_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X109_Y42_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\) # (\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\ & ((!\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\);

-- Location: LCCOMB_X108_Y42_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\);

-- Location: LCCOMB_X109_Y45_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X109_Y45_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\);

-- Location: FF_X109_Y46_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\);

-- Location: FF_X111_Y45_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X110_Y45_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~feeder_combout\);

-- Location: FF_X110_Y45_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\);

-- Location: LCCOMB_X111_Y45_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\IF_ID|ibit22|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (!\IF_ID|ibit22|int_q~q\ & 
-- ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\);

-- Location: LCCOMB_X109_Y45_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\);

-- Location: LCCOMB_X109_Y45_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\);

-- Location: LCCOMB_X109_Y45_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\))))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\);

-- Location: LCCOMB_X109_Y45_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\)) # (!\IF_ID|ibit25|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\);

-- Location: FF_X106_Y41_N19
\ID_EX|READ_DATA1_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit2|int_q~q\);

-- Location: LCCOMB_X106_Y41_N18
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & ((\WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\))) # (!\FWD_UNIT|ForwardA\(0) & (\ID_EX|READ_DATA1_bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA[1]~3_combout\,
	datab => \FWD_UNIT|ForwardA\(0),
	datac => \ID_EX|READ_DATA1_bit2|int_q~q\,
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\);

-- Location: FF_X106_Y40_N5
\MEM_WB|ALU1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU1|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU1|int_q~q\);

-- Location: LCCOMB_X112_Y40_N20
\IF_ID|instruction[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(6) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(6) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \Branch_Sig~4_combout\,
	datad => \CNTRL|Jump~0_combout\,
	combout => \IF_ID|instruction\(6));

-- Location: FF_X112_Y40_N21
\IF_ID|ibit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(6),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit6|int_q~q\);

-- Location: LCCOMB_X114_Y40_N10
\ID_EX|instruction_extend_bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_extend_bit6|int_q~feeder_combout\ = \IF_ID|ibit6|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit6|int_q~q\,
	combout => \ID_EX|instruction_extend_bit6|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N11
\ID_EX|instruction_extend_bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_extend_bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit6|int_q~q\);

-- Location: FF_X110_Y40_N15
\MEM_WB|ALU6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU6|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU6|int_q~q\);

-- Location: LCCOMB_X111_Y41_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X111_Y41_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\);

-- Location: FF_X110_Y41_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\);

-- Location: FF_X112_Y41_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\);

-- Location: FF_X113_Y41_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X112_Y41_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\IF_ID|ibit18|int_q~q\ & (\IF_ID|ibit19|int_q~q\)) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y41_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\);

-- Location: FF_X109_Y43_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X106_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\);

-- Location: FF_X107_Y43_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\);

-- Location: FF_X108_Y43_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X107_Y43_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (!\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\);

-- Location: LCCOMB_X109_Y43_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\);

-- Location: LCCOMB_X113_Y44_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X113_Y44_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\);

-- Location: FF_X112_Y43_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X113_Y43_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\);

-- Location: FF_X114_Y43_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X114_Y43_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\);

-- Location: LCCOMB_X113_Y45_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\);

-- Location: LCCOMB_X113_Y42_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X113_Y42_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X114_Y42_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\);

-- Location: FF_X111_Y42_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X112_Y42_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X112_Y42_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X111_Y42_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\);

-- Location: LCCOMB_X112_Y42_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\);

-- Location: LCCOMB_X113_Y45_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ = (\IF_ID|ibit16|int_q~q\ & (\IF_ID|ibit17|int_q~q\)) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\))) 
-- # (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\);

-- Location: LCCOMB_X110_Y45_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\);

-- Location: FF_X108_Y47_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\);

-- Location: FF_X109_Y47_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X107_Y47_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X107_Y47_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X109_Y47_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (!\IF_ID|ibit17|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\);

-- Location: LCCOMB_X109_Y47_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\);

-- Location: LCCOMB_X110_Y44_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X110_Y44_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X111_Y45_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X111_Y45_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X107_Y44_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X107_Y44_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X108_Y45_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X108_Y45_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X107_Y44_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\);

-- Location: LCCOMB_X110_Y44_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\);

-- Location: FF_X111_Y46_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X113_Y46_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X113_Y46_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X112_Y46_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X113_Y46_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\);

-- Location: LCCOMB_X110_Y46_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X110_Y46_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X110_Y46_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\);

-- Location: LCCOMB_X110_Y45_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\) # ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\);

-- Location: LCCOMB_X107_Y42_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X107_Y42_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\);

-- Location: FF_X109_Y42_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\);

-- Location: FF_X108_Y42_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X110_Y42_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X110_Y42_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X110_Y42_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\);

-- Location: LCCOMB_X107_Y42_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\);

-- Location: LCCOMB_X110_Y45_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\))))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\);

-- Location: LCCOMB_X110_Y45_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\)) # (!\IF_ID|ibit20|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\);

-- Location: FF_X105_Y41_N21
\ID_EX|READ_DATA2_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit1|int_q~q\);

-- Location: LCCOMB_X105_Y41_N20
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\FWD_UNIT|ForwardB[1]~3_combout\ & (\EX_MEM|ALU1|int_q~q\)) # (!\FWD_UNIT|ForwardB[1]~3_combout\ & (((\ID_EX|READ_DATA2_bit1|int_q~q\ & !\FWD_UNIT|ForwardB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[1]~3_combout\,
	datab => \EX_MEM|ALU1|int_q~q\,
	datac => \ID_EX|READ_DATA2_bit1|int_q~q\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X105_Y41_N18
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\) # ((!\FWD_UNIT|ForwardB[1]~3_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & \FWD_UNIT|ForwardB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[1]~3_combout\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardB\(0),
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y40_N0
\EX_MEM|RegData1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData1|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData1|int_q~feeder_combout\);

-- Location: FF_X106_Y40_N1
\EX_MEM|RegData1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData1|int_q~q\);

-- Location: LCCOMB_X110_Y40_N28
\EX_MEM|RegData2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData2|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData2|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N29
\EX_MEM|RegData2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData2|int_q~q\);

-- Location: LCCOMB_X106_Y40_N22
\EX_MEM|RegData3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData3|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData3|int_q~feeder_combout\);

-- Location: FF_X106_Y40_N23
\EX_MEM|RegData3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData3|int_q~q\);

-- Location: LCCOMB_X114_Y40_N2
\EX_MEM|RegData4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData4|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData4|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N3
\EX_MEM|RegData4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData4|int_q~q\);

-- Location: LCCOMB_X111_Y40_N4
\EX_MEM|RegData6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData6|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData6|int_q~feeder_combout\);

-- Location: FF_X111_Y40_N5
\EX_MEM|RegData6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData6|int_q~q\);

-- Location: LCCOMB_X111_Y40_N30
\EX_MEM|RegData7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData7|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData7|int_q~feeder_combout\);

-- Location: FF_X111_Y40_N31
\EX_MEM|RegData7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData7|int_q~q\);

-- Location: M9K_X104_Y40_N0
\MEM_RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002A80055",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "data_mem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "data_mem:MEM_RAM|altsyncram:altsyncram_component|altsyncram_72t3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock1",
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
	portawe => \EX_MEM|MemWriteFF|int_q~q\,
	portare => \EX_MEM|MemReadFF|int_q~q\,
	clk0 => \ALT_INV_GClock~input_o\,
	clk1 => \GClock~input_o\,
	clr0 => \ALT_INV_GresetBar~input_o\,
	portadatain => \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM_RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X107_Y40_N11
\MEM_WB|ALU5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU5|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU5|int_q~q\);

-- Location: LCCOMB_X107_Y40_N10
\WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|DataMem5|int_q\)) # (!\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|ALU5|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|DataMem5|int_q\,
	datac => \MEM_WB|ALU5|int_q~q\,
	datad => \MEM_WB|MemtoRegFF|int_q~q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: LCCOMB_X114_Y41_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X114_Y41_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\);

-- Location: FF_X112_Y41_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X110_Y41_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: FF_X110_Y41_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\);

-- Location: FF_X111_Y41_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X110_Y41_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\)) # (!\IF_ID|ibit18|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ & (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\);

-- Location: FF_X109_Y43_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\);

-- Location: FF_X107_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X108_Y43_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X108_Y43_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y43_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\) # (\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\ & ((!\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\);

-- Location: LCCOMB_X106_Y43_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X109_Y43_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\);

-- Location: FF_X110_Y43_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\);

-- Location: FF_X112_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X114_Y43_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X114_Y43_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X113_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X114_Y43_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\);

-- Location: LCCOMB_X114_Y42_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\);

-- Location: FF_X112_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X111_Y42_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X111_Y42_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\);

-- Location: LCCOMB_X113_Y42_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X113_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X114_Y42_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\);

-- Location: LCCOMB_X110_Y42_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\) # (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\)))) # (!\IF_ID|ibit17|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\ & (!\IF_ID|ibit16|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\);

-- Location: LCCOMB_X110_Y42_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\);

-- Location: LCCOMB_X108_Y42_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X108_Y42_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\);

-- Location: FF_X110_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X110_Y42_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\);

-- Location: FF_X107_Y42_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X109_Y42_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X109_Y42_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y42_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\);

-- Location: LCCOMB_X110_Y47_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\);

-- Location: FF_X108_Y47_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y47_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X107_Y47_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X109_Y47_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X109_Y47_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X108_Y47_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\);

-- Location: LCCOMB_X108_Y47_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\);

-- Location: FF_X107_Y45_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\);

-- Location: FF_X109_Y44_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y44_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X107_Y44_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y44_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\);

-- Location: FF_X111_Y45_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X107_Y45_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\);

-- Location: LCCOMB_X110_Y46_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X110_Y46_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X111_Y46_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X111_Y46_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X113_Y46_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X113_Y46_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X112_Y46_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\);

-- Location: LCCOMB_X113_Y46_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\);

-- Location: LCCOMB_X110_Y46_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\);

-- Location: LCCOMB_X109_Y45_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ = (\IF_ID|ibit18|int_q~q\ & (\IF_ID|ibit19|int_q~q\)) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\))) # (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\);

-- Location: LCCOMB_X108_Y45_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\)))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\);

-- Location: LCCOMB_X108_Y45_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\)) # (!\IF_ID|ibit20|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\);

-- Location: LCCOMB_X114_Y40_N20
\ID_EX|READ_DATA2_bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA2_bit5|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA2_bit5|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N21
\ID_EX|READ_DATA2_bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA2_bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit5|int_q~q\);

-- Location: LCCOMB_X106_Y40_N28
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardB[1]~3_combout\ & ((\FWD_UNIT|ForwardB\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardB\(0) & ((\ID_EX|READ_DATA2_bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[1]~3_combout\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datac => \ID_EX|READ_DATA2_bit5|int_q~q\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y40_N14
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\) # ((\EX_MEM|ALU5|int_q~q\ & \FWD_UNIT|ForwardB[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU5|int_q~q\,
	datab => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datad => \FWD_UNIT|ForwardB[1]~3_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\);

-- Location: LCCOMB_X114_Y40_N8
\EX_MEM|RegData5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|RegData5|int_q~feeder_combout\ = \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	combout => \EX_MEM|RegData5|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N9
\EX_MEM|RegData5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|RegData5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|RegData5|int_q~q\);

-- Location: LCCOMB_X110_Y40_N14
\WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|DataMem6|int_q\))) # (!\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|ALU6|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|MemtoRegFF|int_q~q\,
	datac => \MEM_WB|ALU6|int_q~q\,
	datad => \MEM_WB|DataMem6|int_q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X107_Y42_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X107_Y42_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\);

-- Location: FF_X108_Y42_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\);

-- Location: FF_X110_Y42_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X109_Y42_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X109_Y42_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X109_Y42_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\) # (\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\ & ((!\IF_ID|ibit16|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\);

-- Location: LCCOMB_X108_Y42_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\);

-- Location: FF_X110_Y40_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\);

-- Location: FF_X109_Y44_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X107_Y44_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X107_Y44_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X108_Y44_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X108_Y44_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X108_Y44_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\))) # 
-- (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\);

-- Location: LCCOMB_X109_Y44_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\);

-- Location: LCCOMB_X108_Y42_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ = (\IF_ID|ibit19|int_q~q\ & (\IF_ID|ibit18|int_q~q\)) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\)) 
-- # (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\);

-- Location: LCCOMB_X112_Y46_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\);

-- Location: FF_X110_Y46_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X111_Y46_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X111_Y46_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X113_Y46_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X113_Y46_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X111_Y46_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\)) # 
-- (!\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\);

-- Location: LCCOMB_X112_Y46_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\);

-- Location: LCCOMB_X107_Y47_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X107_Y47_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X110_Y47_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\);

-- Location: FF_X109_Y47_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X108_Y47_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X108_Y47_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X108_Y47_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\);

-- Location: LCCOMB_X107_Y47_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\);

-- Location: LCCOMB_X108_Y42_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\)))) # (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\);

-- Location: LCCOMB_X112_Y42_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X112_Y42_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X114_Y42_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X113_Y42_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X113_Y42_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X111_Y42_N14
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X113_Y42_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\)) # 
-- (!\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X113_Y42_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\);

-- Location: LCCOMB_X110_Y43_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X110_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X113_Y43_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X114_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X114_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\);

-- Location: FF_X112_Y43_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X112_Y43_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\))) # 
-- (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\);

-- Location: LCCOMB_X113_Y43_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\);

-- Location: FF_X110_Y41_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\);

-- Location: FF_X109_Y41_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\);

-- Location: FF_X112_Y41_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X111_Y41_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X111_Y41_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X111_Y41_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\) # (\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\ & ((!\IF_ID|ibit19|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\);

-- Location: LCCOMB_X109_Y41_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\);

-- Location: LCCOMB_X110_Y42_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ = (\IF_ID|ibit17|int_q~q\ & (\IF_ID|ibit16|int_q~q\)) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\))) 
-- # (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y43_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X109_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X107_Y43_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X107_Y43_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X106_Y43_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X106_Y43_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~feeder_combout\);

-- Location: FF_X108_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\);

-- Location: LCCOMB_X109_Y43_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\);

-- Location: LCCOMB_X110_Y42_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\);

-- Location: LCCOMB_X109_Y42_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\))) # (!\IF_ID|ibit20|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N12
\ID_EX|READ_DATA2_bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA2_bit6|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA2_bit6|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N13
\ID_EX|READ_DATA2_bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA2_bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit6|int_q~q\);

-- Location: LCCOMB_X109_Y40_N28
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardB[1]~3_combout\ & ((\FWD_UNIT|ForwardB\(0) & ((\WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\))) # (!\FWD_UNIT|ForwardB\(0) & (\ID_EX|READ_DATA2_bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB\(0),
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \ID_EX|READ_DATA2_bit6|int_q~q\,
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X108_Y40_N30
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\) # ((\EX_MEM|ALU6|int_q~q\ & \FWD_UNIT|ForwardB[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU6|int_q~q\,
	datac => \FWD_UNIT|ForwardB[1]~3_combout\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y40_N10
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit6|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|instruction_extend_bit6|int_q~q\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	datad => \ID_EX|ALUOpbit0|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X108_Y41_N28
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\EX_MEM|RegWriteFF|int_q~q\ & (\EX_MEM|ALU5|int_q~q\ & (\FWD_UNIT|Int_ForwardA~3_combout\ & !\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|RegWriteFF|int_q~q\,
	datab => \EX_MEM|ALU5|int_q~q\,
	datac => \FWD_UNIT|Int_ForwardA~3_combout\,
	datad => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y40_N8
\ID_EX|instruction_extend_bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|instruction_extend_bit5|int_q~feeder_combout\ = \IF_ID|ibit5|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|ibit5|int_q~q\,
	combout => \ID_EX|instruction_extend_bit5|int_q~feeder_combout\);

-- Location: FF_X112_Y40_N9
\ID_EX|instruction_extend_bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|instruction_extend_bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|instruction_extend_bit5|int_q~q\);

-- Location: LCCOMB_X109_Y40_N14
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & ((\ID_EX|instruction_extend_bit5|int_q~q\))) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|B_INVERT_CONTR~combout\,
	datab => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datac => \ID_EX|ALUOpbit0|int_q~q\,
	datad => \ID_EX|instruction_extend_bit5|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: LCCOMB_X107_Y42_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\);

-- Location: LCCOMB_X107_Y42_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\);

-- Location: LCCOMB_X108_Y47_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\);

-- Location: LCCOMB_X108_Y47_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~17_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\);

-- Location: LCCOMB_X112_Y46_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit5|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit5|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\);

-- Location: LCCOMB_X111_Y46_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit5|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\);

-- Location: LCCOMB_X109_Y44_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\);

-- Location: LCCOMB_X111_Y45_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\);

-- Location: LCCOMB_X111_Y45_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~13_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~15_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\);

-- Location: LCCOMB_X108_Y45_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~11_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\);

-- Location: LCCOMB_X108_Y43_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\) # ((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & (((!\IF_ID|ibit23|int_q~q\ & 
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit5|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\);

-- Location: LCCOMB_X110_Y41_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\))) # 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit5|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y41_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit5|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\);

-- Location: LCCOMB_X113_Y43_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\)) # 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit5|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit5|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\);

-- Location: LCCOMB_X112_Y42_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\) # (\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\ & ((!\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\);

-- Location: LCCOMB_X113_Y42_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit5|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit5|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\);

-- Location: LCCOMB_X109_Y41_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\)))) # (!\IF_ID|ibit22|int_q~q\ & (!\IF_ID|ibit21|int_q~q\ 
-- & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y41_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\))))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~8_combout\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\);

-- Location: LCCOMB_X108_Y45_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\))) # (!\IF_ID|ibit25|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\);

-- Location: LCCOMB_X109_Y44_N20
\ID_EX|READ_DATA1_bit5|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA1_bit5|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA1_bit5|int_q~feeder_combout\);

-- Location: FF_X109_Y44_N21
\ID_EX|READ_DATA1_bit5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA1_bit5|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit5|int_q~q\);

-- Location: LCCOMB_X109_Y44_N30
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardA\(0) & ((\ID_EX|READ_DATA1_bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA[1]~3_combout\,
	datab => \FWD_UNIT|ForwardA\(0),
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datad => \ID_EX|READ_DATA1_bit5|int_q~q\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\);

-- Location: LCCOMB_X109_Y40_N20
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\) # (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X109_Y40_N18
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\) # (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X108_Y40_N16
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (((\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ $ ((\MAINALU|B_INVERT_CONTR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|B_INVERT_CONTR~combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X106_Y43_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\) # ((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((!\IF_ID|ibit24|int_q~q\ & 
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit6|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\);

-- Location: LCCOMB_X109_Y43_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~7_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit6|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\);

-- Location: LCCOMB_X111_Y43_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\) # ((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\ & !\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\);

-- Location: LCCOMB_X112_Y41_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\) # ((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\ & !\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\);

-- Location: LCCOMB_X110_Y41_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\) # ((!\IF_ID|ibit24|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\ & \IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\);

-- Location: LCCOMB_X110_Y43_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\))) 
-- # (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\);

-- Location: LCCOMB_X114_Y42_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\) # (\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\ & ((!\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X114_Y42_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\);

-- Location: LCCOMB_X110_Y43_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\))))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~8_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\);

-- Location: LCCOMB_X109_Y47_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & ((\IF_ID|ibit22|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\)) # 
-- (!\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\);

-- Location: LCCOMB_X109_Y47_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\);

-- Location: LCCOMB_X111_Y46_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ = (\IF_ID|ibit22|int_q~q\ & (\IF_ID|ibit21|int_q~q\)) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\))) # 
-- (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit6|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\);

-- Location: LCCOMB_X110_Y46_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\);

-- Location: LCCOMB_X107_Y44_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit6|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\);

-- Location: LCCOMB_X107_Y42_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit6|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\);

-- Location: LCCOMB_X110_Y42_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit6|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit6|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\);

-- Location: LCCOMB_X107_Y42_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\) # ((!\IF_ID|ibit21|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\ & \IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit6|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit6|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~12_combout\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\);

-- Location: LCCOMB_X107_Y42_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\);

-- Location: LCCOMB_X110_Y46_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\))))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~18_combout\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\);

-- Location: LCCOMB_X110_Y46_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\)) # (!\IF_ID|ibit25|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\);

-- Location: LCCOMB_X109_Y44_N28
\ID_EX|READ_DATA1_bit6|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA1_bit6|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA1_bit6|int_q~feeder_combout\);

-- Location: FF_X109_Y44_N29
\ID_EX|READ_DATA1_bit6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA1_bit6|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit6|int_q~q\);

-- Location: LCCOMB_X109_Y44_N22
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardA\(0) & ((\ID_EX|READ_DATA1_bit6|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardA[1]~3_combout\,
	datab => \FWD_UNIT|ForwardA\(0),
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datad => \ID_EX|READ_DATA1_bit6|int_q~q\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y41_N20
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\FWD_UNIT|Int_ForwardA~3_combout\ & (!\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) & (\EX_MEM|RegWriteFF|int_q~q\ & \EX_MEM|ALU6|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|Int_ForwardA~3_combout\,
	datab => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	datac => \EX_MEM|RegWriteFF|int_q~q\,
	datad => \EX_MEM|ALU6|int_q~q\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X108_Y40_N28
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & ((\ID_EX|instruction_extend_bit6|int_q~q\))) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \ID_EX|instruction_extend_bit6|int_q~q\,
	datad => \ID_EX|ALUOpbit0|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: LCCOMB_X108_Y40_N18
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ & (((!\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\)) # (!\ALU_CONTRL|ALU_OP_OUT\(1)))) # 
-- (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ & (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ $ (((\ALU_CONTRL|ALU_OP_OUT\(1) & \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X108_Y40_N12
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # 
-- (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & 
-- (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ $ (\ALU_CONTRL|ALU_OP_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X109_Y40_N12
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ & (((!\ALU_CONTRL|ALU_OP_OUT\(1))) # (!\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\))) # 
-- (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ & (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ $ (((\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\ & \ALU_CONTRL|ALU_OP_OUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datac => \ALU_CONTRL|ALU_OP_OUT\(1),
	datad => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X109_Y40_N4
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & ((\ID_EX|instruction_extend_bit5|int_q~q\))) # (!\ID_EX|ALUOpbit0|int_q~q\ & (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datac => \ID_EX|ALUOpbit0|int_q~q\,
	datad => \ID_EX|instruction_extend_bit5|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X109_Y40_N30
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (((\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|B_INVERT_CONTR~combout\ $ 
-- ((\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|B_INVERT_CONTR~combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X109_Y40_N22
\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ 
-- (((\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\) # (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X109_Y41_N4
\MAINALU|ZERO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|ZERO~1_combout\ = (!\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & (!\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & \MAINALU|ZERO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datad => \MAINALU|ZERO~0_combout\,
	combout => \MAINALU|ZERO~1_combout\);

-- Location: LCCOMB_X109_Y41_N20
\MAINALU|RESULT_INV~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RESULT_INV~0_combout\ = (\ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ & (!\MAINALU|B_INVERT_CONTR~0_combout\ & 
-- \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datac => \MAINALU|B_INVERT_CONTR~0_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	combout => \MAINALU|RESULT_INV~0_combout\);

-- Location: LCCOMB_X109_Y41_N18
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((!\MAINALU|ZERO~1_combout\ & \MAINALU|RESULT_INV~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|ZERO~1_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: FF_X109_Y41_N19
\EX_MEM|ALU6|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU6|int_q~q\);

-- Location: LCCOMB_X106_Y40_N4
\WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|DataMem1|int_q\))) # (!\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|ALU1|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|MemtoRegFF|int_q~q\,
	datac => \MEM_WB|ALU1|int_q~q\,
	datad => \MEM_WB|DataMem1|int_q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y47_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\);

-- Location: LCCOMB_X107_Y47_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\);

-- Location: LCCOMB_X108_Y47_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\);

-- Location: LCCOMB_X108_Y42_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit1|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\);

-- Location: LCCOMB_X109_Y42_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\);

-- Location: LCCOMB_X108_Y45_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & ((\IF_ID|ibit22|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\)) # 
-- (!\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit1|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\);

-- Location: LCCOMB_X111_Y45_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\);

-- Location: LCCOMB_X112_Y46_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit1|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\);

-- Location: LCCOMB_X111_Y46_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit1|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\);

-- Location: LCCOMB_X111_Y45_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\);

-- Location: LCCOMB_X111_Y45_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\))))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~18_combout\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\);

-- Location: LCCOMB_X108_Y43_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\)) # 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit1|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N4
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\);

-- Location: LCCOMB_X113_Y41_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\)) # 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X111_Y41_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\);

-- Location: LCCOMB_X112_Y42_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\) # (\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\ & ((!\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\);

-- Location: LCCOMB_X113_Y42_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\);

-- Location: LCCOMB_X113_Y43_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\))) # 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit1|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit1|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\);

-- Location: LCCOMB_X112_Y43_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit1|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit1|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\);

-- Location: LCCOMB_X111_Y45_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\)))) # (!\IF_ID|ibit22|int_q~q\ & (!\IF_ID|ibit21|int_q~q\ 
-- & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\);

-- Location: LCCOMB_X111_Y45_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\))))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~8_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\);

-- Location: LCCOMB_X111_Y45_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\))) # (!\IF_ID|ibit25|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N4
\ID_EX|READ_DATA1_bit1|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA1_bit1|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA1_bit1|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N5
\ID_EX|READ_DATA1_bit1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA1_bit1|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit1|int_q~q\);

-- Location: LCCOMB_X106_Y41_N16
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & ((\WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\))) # (!\FWD_UNIT|ForwardA\(0) & (\ID_EX|READ_DATA1_bit1|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|READ_DATA1_bit1|int_q~q\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardA[1]~3_combout\,
	datad => \FWD_UNIT|ForwardA\(0),
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y41_N22
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit1|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALUOpbit0|int_q~q\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \ID_EX|instruction_extend_bit1|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N4
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ = (\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & (!\FWD_UNIT|ForwardA[1]~3_combout\ & \FWD_UNIT|ForwardA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardA[1]~3_combout\,
	datad => \FWD_UNIT|ForwardA\(0),
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\);

-- Location: LCCOMB_X106_Y41_N20
\MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\ = (\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\) # ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\)))) # 
-- (!\ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ & (((\MAINALU|B_INVERT_CONTR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\,
	datad => \ALU_MUXB|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	combout => \MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X106_Y41_N10
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\) # (\MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\ & (\MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\ & 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datad => \MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X106_Y41_N28
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\) # (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X106_Y43_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X109_Y43_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X109_Y43_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X108_Y43_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X108_Y43_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\);

-- Location: FF_X107_Y43_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X107_Y43_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\);

-- Location: LCCOMB_X106_Y43_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\);

-- Location: LCCOMB_X114_Y40_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\);

-- Location: FF_X111_Y41_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\);

-- Location: FF_X113_Y41_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\);

-- Location: FF_X112_Y41_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X113_Y41_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: LCCOMB_X113_Y41_N10
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\);

-- Location: LCCOMB_X110_Y43_N12
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X110_Y43_N13
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\);

-- Location: FF_X112_Y43_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\);

-- Location: FF_X114_Y43_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X113_Y43_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X113_Y43_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\))) # 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit24|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\);

-- Location: LCCOMB_X112_Y43_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\);

-- Location: LCCOMB_X111_Y42_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X112_Y42_N6
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X112_Y42_N7
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X112_Y42_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\))) # 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit24|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\);

-- Location: LCCOMB_X114_Y42_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\);

-- Location: FF_X113_Y42_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X113_Y42_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\) # ((!\IF_ID|ibit24|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\ & \IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\);

-- Location: LCCOMB_X109_Y46_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\)))) # (!\IF_ID|ibit22|int_q~q\ & (!\IF_ID|ibit21|int_q~q\ 
-- & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y46_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\))))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\);

-- Location: LCCOMB_X110_Y47_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X108_Y47_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X108_Y47_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\);

-- Location: FF_X107_Y47_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\);

-- Location: FF_X109_Y47_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X107_Y47_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\);

-- Location: LCCOMB_X107_Y47_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\);

-- Location: LCCOMB_X112_Y45_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X112_Y45_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\);

-- Location: FF_X111_Y46_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X112_Y46_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X113_Y45_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X113_Y45_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X112_Y46_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ = (\IF_ID|ibit21|int_q~q\ & (\IF_ID|ibit22|int_q~q\)) # (!\IF_ID|ibit21|int_q~q\ & ((\IF_ID|ibit22|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\);

-- Location: LCCOMB_X111_Y46_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\);

-- Location: FF_X111_Y45_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X108_Y45_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X108_Y45_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X107_Y44_N0
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X107_Y44_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X108_Y45_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & ((\IF_ID|ibit22|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\);

-- Location: LCCOMB_X111_Y45_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\);

-- Location: LCCOMB_X111_Y45_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (!\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\);

-- Location: LCCOMB_X107_Y42_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X107_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\);

-- Location: FF_X109_Y42_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\);

-- Location: FF_X110_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\);

-- Location: FF_X108_Y42_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X108_Y42_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\))) # 
-- (!\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\);

-- Location: LCCOMB_X107_Y42_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\);

-- Location: LCCOMB_X111_Y45_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\))))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\);

-- Location: LCCOMB_X109_Y46_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\)) # (!\IF_ID|ibit25|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N10
\ID_EX|READ_DATA1_bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA1_bit3|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA1_bit3|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N11
\ID_EX|READ_DATA1_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA1_bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit3|int_q~q\);

-- Location: LCCOMB_X110_Y40_N20
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardA\(0) & ((\ID_EX|READ_DATA1_bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datab => \FWD_UNIT|ForwardA[1]~3_combout\,
	datac => \FWD_UNIT|ForwardA\(0),
	datad => \ID_EX|READ_DATA1_bit3|int_q~q\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\);

-- Location: LCCOMB_X107_Y40_N22
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\) # 
-- ((\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	datad => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X109_Y40_N2
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (((\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|B_INVERT_CONTR~combout\ $ 
-- ((\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|B_INVERT_CONTR~combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT\(1),
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X109_Y40_N10
\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # 
-- (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & 
-- (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ $ (\ALU_CONTRL|ALU_OP_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X109_Y41_N28
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((\MAINALU|RESULT_INV~0_combout\ & ((\MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\) # 
-- (!\MAINALU|ZERO~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|ZERO~0_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: FF_X109_Y41_N29
\EX_MEM|ALU5|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU5|int_q~q\);

-- Location: FF_X106_Y40_N21
\MEM_WB|ALU3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU3|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU3|int_q~q\);

-- Location: LCCOMB_X106_Y40_N20
\WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|DataMem3|int_q\)) # (!\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|ALU3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|DataMem3|int_q\,
	datac => \MEM_WB|ALU3|int_q~q\,
	datad => \MEM_WB|MemtoRegFF|int_q~q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y44_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~feeder_combout\);

-- Location: FF_X110_Y44_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\);

-- Location: LCCOMB_X107_Y44_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\);

-- Location: LCCOMB_X110_Y44_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\);

-- Location: LCCOMB_X112_Y45_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\) # ((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (((!\IF_ID|ibit16|int_q~q\ & 
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\);

-- Location: LCCOMB_X112_Y45_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\);

-- Location: LCCOMB_X110_Y44_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\) # ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\);

-- Location: LCCOMB_X110_Y42_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\);

-- Location: LCCOMB_X109_Y42_N8
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\);

-- Location: LCCOMB_X109_Y47_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\);

-- Location: LCCOMB_X110_Y47_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\);

-- Location: LCCOMB_X110_Y44_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\)))) # (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~16_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~18_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\);

-- Location: LCCOMB_X112_Y41_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\) # ((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\ & !\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: LCCOMB_X111_Y41_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\);

-- Location: LCCOMB_X107_Y43_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (!\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit3|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\);

-- Location: LCCOMB_X109_Y43_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~7_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\);

-- Location: LCCOMB_X114_Y43_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit3|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit3|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\);

-- Location: LCCOMB_X111_Y42_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit3|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit3|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\);

-- Location: LCCOMB_X114_Y42_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit3|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit3|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\);

-- Location: LCCOMB_X110_Y44_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\) # ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\)))) # (!\IF_ID|ibit17|int_q~q\ & (!\IF_ID|ibit16|int_q~q\ 
-- & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\);

-- Location: LCCOMB_X110_Y44_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~8_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\);

-- Location: LCCOMB_X110_Y44_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\))) # (!\IF_ID|ibit20|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N26
\ID_EX|READ_DATA2_bit3|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA2_bit3|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA2_bit3|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N27
\ID_EX|READ_DATA2_bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA2_bit3|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit3|int_q~q\);

-- Location: LCCOMB_X106_Y40_N18
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardB[1]~3_combout\ & ((\FWD_UNIT|ForwardB\(0) & ((\WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))) # (!\FWD_UNIT|ForwardB\(0) & (\ID_EX|READ_DATA2_bit3|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|READ_DATA2_bit3|int_q~q\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datac => \FWD_UNIT|ForwardB\(0),
	datad => \FWD_UNIT|ForwardB[1]~3_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y40_N24
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\) # ((\FWD_UNIT|ForwardB[1]~3_combout\ & \EX_MEM|ALU3|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \EX_MEM|ALU3|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\);

-- Location: LCCOMB_X107_Y40_N8
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit3|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit3|int_q~q\,
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datac => \MAINALU|B_INVERT_CONTR~combout\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: LCCOMB_X107_Y40_N12
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\ $ (((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\) # 
-- (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))))) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & (((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT\(1),
	datab => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	datad => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X107_Y40_N16
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit3|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|instruction_extend_bit3|int_q~q\,
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X107_Y40_N30
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & ((\MAINALU|B_INVERT_CONTR~combout\ $ 
-- (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT\(1),
	datab => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	datac => \MAINALU|B_INVERT_CONTR~combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X107_Y40_N6
\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # 
-- (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & 
-- (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ $ (\ALU_CONTRL|ALU_OP_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT\(1),
	combout => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X105_Y41_N22
\MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum~combout\ = \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\) # 
-- ((\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\) # (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum~combout\);

-- Location: LCCOMB_X105_Y41_N28
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\MAINALU|RESULT_INV~0_combout\ & ((\MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum~combout\))) # (!\MAINALU|RESULT_INV~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_INV:3:SINGLE_ALUXX|ADDER|o_Sum~combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: FF_X105_Y41_N29
\EX_MEM|ALU3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU3|int_q~q\);

-- Location: FF_X106_Y40_N3
\MEM_WB|ALU2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU2|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU2|int_q~q\);

-- Location: LCCOMB_X106_Y40_N2
\WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|DataMem2|int_q\)) # (!\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|ALU2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|DataMem2|int_q\,
	datac => \MEM_WB|ALU2|int_q~q\,
	datad => \MEM_WB|MemtoRegFF|int_q~q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X107_Y41_N12
\ID_EX|READ_DATA2_bit2|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA2_bit2|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA2_bit2|int_q~feeder_combout\);

-- Location: FF_X107_Y41_N13
\ID_EX|READ_DATA2_bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA2_bit2|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit2|int_q~q\);

-- Location: LCCOMB_X107_Y41_N14
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\FWD_UNIT|ForwardB[1]~3_combout\ & (((\EX_MEM|ALU2|int_q~q\)))) # (!\FWD_UNIT|ForwardB[1]~3_combout\ & (\ID_EX|READ_DATA2_bit2|int_q~q\ & ((!\FWD_UNIT|ForwardB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|READ_DATA2_bit2|int_q~q\,
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \EX_MEM|ALU2|int_q~q\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X107_Y41_N8
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\) # ((\WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & (!\FWD_UNIT|ForwardB[1]~3_combout\ & \FWD_UNIT|ForwardB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datad => \FWD_UNIT|ForwardB\(0),
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\);

-- Location: LCCOMB_X107_Y41_N30
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\ = \MAINALU|B_INVERT_CONTR~combout\ $ (((\ID_EX|ALUOpbit0|int_q~q\ & ((\ID_EX|instruction_extend_bit2|int_q~q\))) # (!\ID_EX|ALUOpbit0|int_q~q\ & 
-- (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|B_INVERT_CONTR~combout\,
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	datad => \ID_EX|instruction_extend_bit2|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N24
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & (((!\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\)) # (!\ALU_CONTRL|ALU_OP_OUT\(1)))) # 
-- (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ $ (((\ALU_CONTRL|ALU_OP_OUT\(1) & \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datad => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X107_Y41_N20
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & ((\ID_EX|instruction_extend_bit2|int_q~q\))) # (!\ID_EX|ALUOpbit0|int_q~q\ & (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|ALUOpbit0|int_q~q\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	datad => \ID_EX|instruction_extend_bit2|int_q~q\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N2
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & ((\MAINALU|B_INVERT_CONTR~combout\ $ 
-- (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datad => \ALU_CONTRL|ALU_OP_OUT\(1),
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X105_Y41_N0
\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # 
-- (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & 
-- (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ $ (\ALU_CONTRL|ALU_OP_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	datac => \ALU_CONTRL|ALU_OP_OUT\(1),
	datad => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X105_Y41_N12
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((\MAINALU|RESULT_INV~0_combout\ & ((\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\) # 
-- (\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: FF_X105_Y41_N13
\EX_MEM|ALU2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU2|int_q~q\);

-- Location: FF_X110_Y40_N31
\MEM_WB|ALU7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU7|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU7|int_q~q\);

-- Location: LCCOMB_X110_Y40_N30
\WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|DataMem7|int_q\)) # (!\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|ALU7|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|DataMem7|int_q\,
	datac => \MEM_WB|ALU7|int_q~q\,
	datad => \MEM_WB|MemtoRegFF|int_q~q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X109_Y43_N26
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X109_Y43_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[31]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X108_Y43_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X108_Y43_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X107_Y43_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X107_Y43_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[19]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X108_Y43_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\)) # 
-- (!\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\);

-- Location: LCCOMB_X106_Y43_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X106_Y43_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X108_Y43_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\);

-- Location: FF_X110_Y41_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[29]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X111_Y41_N4
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X111_Y41_N5
\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\);

-- Location: FF_X113_Y41_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[25]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\);

-- Location: FF_X112_Y41_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y41_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\)) # 
-- (!\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X111_Y41_N30
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X114_Y42_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X114_Y42_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[30]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\);

-- Location: FF_X113_Y42_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[26]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X111_Y42_N28
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X111_Y42_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y42_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X112_Y42_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y42_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\);

-- Location: LCCOMB_X113_Y42_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\);

-- Location: LCCOMB_X113_Y44_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X113_Y44_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[28]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\);

-- Location: FF_X112_Y43_N1
\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[24]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X113_Y43_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X113_Y43_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X114_Y43_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X114_Y43_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X113_Y43_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\)) # 
-- (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\);

-- Location: LCCOMB_X112_Y43_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\);

-- Location: LCCOMB_X113_Y42_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\)) # (!\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\);

-- Location: LCCOMB_X109_Y42_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\))))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\);

-- Location: FF_X107_Y42_N27
\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\);

-- Location: FF_X108_Y42_N29
\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[5]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\);

-- Location: FF_X110_Y42_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X110_Y42_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\)) # 
-- (!\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\);

-- Location: FF_X109_Y42_N15
\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X109_Y42_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\) # ((!\IF_ID|ibit17|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\ & \IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\);

-- Location: LCCOMB_X108_Y47_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X108_Y47_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[14]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X110_Y47_N2
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N3
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X107_Y47_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X107_Y47_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\);

-- Location: FF_X109_Y47_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X107_Y47_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\);

-- Location: LCCOMB_X108_Y47_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\);

-- Location: LCCOMB_X110_Y44_N22
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X110_Y44_N23
\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X108_Y44_N16
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X108_Y44_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[1]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X107_Y44_N20
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X107_Y44_N21
\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X109_Y44_N24
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X109_Y44_N25
\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[2]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X109_Y44_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ = (\IF_ID|ibit16|int_q~q\ & (\IF_ID|ibit17|int_q~q\)) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\);

-- Location: LCCOMB_X108_Y44_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\);

-- Location: FF_X111_Y46_N17
\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y45_N10
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X112_Y45_N11
\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y46_N8
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X112_Y46_N9
\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X113_Y45_N30
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~feeder_combout\);

-- Location: FF_X113_Y45_N31
\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\);

-- Location: LCCOMB_X112_Y46_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\) # ((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & (((!\IF_ID|ibit16|int_q~q\ & 
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\);

-- Location: LCCOMB_X111_Y46_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\);

-- Location: LCCOMB_X109_Y42_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ = (\IF_ID|ibit18|int_q~q\ & (\IF_ID|ibit19|int_q~q\)) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\))) # (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\);

-- Location: LCCOMB_X109_Y42_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\)))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\);

-- Location: LCCOMB_X109_Y42_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\)) # (!\IF_ID|ibit20|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N24
\ID_EX|READ_DATA2_bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA2_bit7|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA2_bit7|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N25
\ID_EX|READ_DATA2_bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA2_bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA2_bit7|int_q~q\);

-- Location: LCCOMB_X109_Y40_N24
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardB[1]~3_combout\ & ((\FWD_UNIT|ForwardB\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardB\(0) & ((\ID_EX|READ_DATA2_bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \FWD_UNIT|ForwardB[1]~3_combout\,
	datac => \FWD_UNIT|ForwardB\(0),
	datad => \ID_EX|READ_DATA2_bit7|int_q~q\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X108_Y40_N22
\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\) # ((\FWD_UNIT|ForwardB[1]~3_combout\ & \EX_MEM|ALU7|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FWD_UNIT|ForwardB[1]~3_combout\,
	datab => \EX_MEM|ALU7|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y40_N20
\ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit7|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|instruction_extend_bit7|int_q~q\,
	datac => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datad => \ID_EX|ALUOpbit0|int_q~q\,
	combout => \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X108_Y40_N26
\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ & ((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # (\MAINALU|B_INVERT_CONTR~combout\ $ 
-- (\ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\)))) # (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ & (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & (\MAINALU|B_INVERT_CONTR~combout\ $ (\ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datab => \MAINALU|B_INVERT_CONTR~combout\,
	datac => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datad => \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0_combout\);

-- Location: LCCOMB_X108_Y40_N8
\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (((!\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\)))) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL1|RESULT~0_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X109_Y41_N0
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\MAINALU|RESULT_INV~0_combout\ & (((!\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & \MAINALU|ZERO~1_combout\)))) # (!\MAINALU|RESULT_INV~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|ZERO~1_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: FF_X109_Y41_N1
\EX_MEM|ALU7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU7|int_q~q\);

-- Location: LCCOMB_X107_Y43_N16
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\) # ((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\ & !\IF_ID|ibit23|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\);

-- Location: LCCOMB_X107_Y43_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\);

-- Location: LCCOMB_X111_Y42_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ = (\IF_ID|ibit24|int_q~q\ & (((\IF_ID|ibit23|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\))) # 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit23|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\);

-- Location: LCCOMB_X111_Y42_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\);

-- Location: LCCOMB_X114_Y43_N2
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\) # ((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\ & !\IF_ID|ibit24|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\);

-- Location: LCCOMB_X113_Y44_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit24|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\);

-- Location: LCCOMB_X110_Y46_N8
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\)))) # (!\IF_ID|ibit22|int_q~q\ & (!\IF_ID|ibit21|int_q~q\ 
-- & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~3_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~5_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\);

-- Location: LCCOMB_X113_Y41_N22
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\IF_ID|ibit23|int_q~q\ & (((\IF_ID|ibit24|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & ((\IF_ID|ibit24|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\))) # 
-- (!\IF_ID|ibit24|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit23|int_q~q\,
	datad => \IF_ID|ibit24|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y41_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit23|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit23|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X110_Y46_N14
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\))))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~8_combout\,
	datab => \IF_ID|ibit21|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\);

-- Location: LCCOMB_X109_Y47_N18
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & ((\IF_ID|ibit21|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\)) # 
-- (!\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit7|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\);

-- Location: LCCOMB_X110_Y47_N12
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\);

-- Location: LCCOMB_X108_Y42_N28
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ = (\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\) # (\IF_ID|ibit22|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\ & ((!\IF_ID|ibit22|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit21|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit22|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\);

-- Location: LCCOMB_X107_Y42_N26
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit22|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit7|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit7|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\);

-- Location: LCCOMB_X107_Y44_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ = (\IF_ID|ibit22|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\) # ((\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\ & !\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit22|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\);

-- Location: LCCOMB_X111_Y44_N30
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\)))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\);

-- Location: LCCOMB_X113_Y45_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ = (\IF_ID|ibit22|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\) # (\IF_ID|ibit21|int_q~q\)))) # (!\IF_ID|ibit22|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\ & ((!\IF_ID|ibit21|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit7|int_q~q\,
	datab => \IF_ID|ibit22|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit7|int_q~q\,
	datad => \IF_ID|ibit21|int_q~q\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\);

-- Location: LCCOMB_X112_Y45_N20
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\ = (\IF_ID|ibit21|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\))))) # (!\IF_ID|ibit21|int_q~q\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit7|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit7|int_q~q\,
	datac => \IF_ID|ibit21|int_q~q\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\);

-- Location: LCCOMB_X111_Y44_N24
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ = (\IF_ID|ibit24|int_q~q\ & ((\IF_ID|ibit23|int_q~q\) # ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\)))) # (!\IF_ID|ibit24|int_q~q\ & 
-- (!\IF_ID|ibit23|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit24|int_q~q\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~15_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~13_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\);

-- Location: LCCOMB_X111_Y44_N6
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\ = (\IF_ID|ibit23|int_q~q\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\))))) # (!\IF_ID|ibit23|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~18_combout\,
	datab => \IF_ID|ibit23|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\);

-- Location: LCCOMB_X110_Y46_N0
\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ = (\IF_ID|ibit25|int_q~q\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\)) # (!\IF_ID|ibit25|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit25|int_q~q\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\);

-- Location: LCCOMB_X110_Y40_N18
\ID_EX|READ_DATA1_bit7|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|READ_DATA1_bit7|int_q~feeder_combout\ = \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	combout => \ID_EX|READ_DATA1_bit7|int_q~feeder_combout\);

-- Location: FF_X110_Y40_N19
\ID_EX|READ_DATA1_bit7|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \ID_EX|READ_DATA1_bit7|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|READ_DATA1_bit7|int_q~q\);

-- Location: LCCOMB_X110_Y40_N16
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (!\FWD_UNIT|ForwardA[1]~3_combout\ & ((\FWD_UNIT|ForwardA\(0) & (\WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\)) # (!\FWD_UNIT|ForwardA\(0) & ((\ID_EX|READ_DATA1_bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \ID_EX|READ_DATA1_bit7|int_q~q\,
	datac => \FWD_UNIT|ForwardA\(0),
	datad => \FWD_UNIT|ForwardA[1]~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X109_Y40_N6
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\) # ((\EX_MEM|ALU7|int_q~q\ & \FWD_UNIT|ForwardA[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|ALU7|int_q~q\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datad => \FWD_UNIT|ForwardA[1]~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X108_Y40_N6
\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\) # 
-- ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\) # (\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))) # (!\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\ & 
-- (\MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\ & ((\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\) # (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	datac => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:5:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\);

-- Location: LCCOMB_X108_Y40_N24
\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\ = \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ $ (\ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ $ (\MAINALU|B_INVERT_CONTR~combout\ $ 
-- (\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datab => \ALU_MUXB|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datac => \MAINALU|B_INVERT_CONTR~combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|ADDER|o_CarryOut~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\);

-- Location: LCCOMB_X108_Y40_N0
\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\ = (\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1_combout\) # ((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) & \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datab => \ALU_CONTRL|ALU_OP_OUT\(1),
	datac => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|ADDER|o_Sum~combout\,
	combout => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X105_Y41_N16
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\ & \MAINALU|RESULT_INV~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: FF_X105_Y41_N17
\EX_MEM|ALU1|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU1|int_q~q\);

-- Location: LCCOMB_X105_Y41_N26
\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\EX_MEM|RegWriteFF|int_q~q\ & (\EX_MEM|ALU1|int_q~q\ & (!\FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0) & \FWD_UNIT|Int_ForwardA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|RegWriteFF|int_q~q\,
	datab => \EX_MEM|ALU1|int_q~q\,
	datac => \FWD_UNIT|Compare_ExMemRd_IdExRs|TEMP\(0),
	datad => \FWD_UNIT|Int_ForwardA~3_combout\,
	combout => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X105_Y41_N24
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ = (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & (((!\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\) # (!\ALU_CONTRL|ALU_OP_OUT\(1))))) # 
-- (!\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ & (\ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ $ (((\ALU_CONTRL|ALU_OP_OUT\(1) & \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datab => \ALU_MUXA|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	datac => \ALU_CONTRL|ALU_OP_OUT\(1),
	datad => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUXB|RESULT~0_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\);

-- Location: LCCOMB_X106_Y41_N30
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ = (\ID_EX|ALUOpbit0|int_q~q\ & (\ID_EX|instruction_extend_bit1|int_q~q\)) # (!\ID_EX|ALUOpbit0|int_q~q\ & ((\ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|ALUOpbit0|int_q~q\,
	datab => \ID_EX|instruction_extend_bit1|int_q~q\,
	datad => \ALU_MUXB1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\);

-- Location: LCCOMB_X106_Y41_N8
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ = (\ALU_CONTRL|ALU_OP_OUT\(1) & (\MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\)) # (!\ALU_CONTRL|ALU_OP_OUT\(1) & 
-- ((\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\ $ (\MAINALU|B_INVERT_CONTR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT\(1),
	datab => \MAINALU|SINGLE_ALU0|ADDER|o_CarryOut~0_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datad => \MAINALU|B_INVERT_CONTR~combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\);

-- Location: LCCOMB_X105_Y41_N10
\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\ALU_CONTRL|ALU_OP_OUT\(1) $ (((\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\) # 
-- (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\))))) # (!\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\ & (\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\ & 
-- (\ALU_CONTRL|ALU_OP_OUT[0]~1_combout\ $ (\ALU_CONTRL|ALU_OP_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_CONTRL|ALU_OP_OUT[0]~1_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~2_combout\,
	datac => \ALU_CONTRL|ALU_OP_OUT\(1),
	datad => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~1_combout\,
	combout => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\);

-- Location: LCCOMB_X109_Y41_N10
\MAINALU|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|ZERO~0_combout\ = (!\MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & (!\MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & 
-- (!\MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ & !\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:1:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datab => \MAINALU|GEN_EIGHT_BIT_REG:2:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:3:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datad => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	combout => \MAINALU|ZERO~0_combout\);

-- Location: LCCOMB_X109_Y41_N26
\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\ $ (((!\MAINALU|ZERO~0_combout\ & \MAINALU|RESULT_INV~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|ZERO~0_combout\,
	datac => \MAINALU|GEN_EIGHT_BIT_REG:4:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	datad => \MAINALU|RESULT_INV~0_combout\,
	combout => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: FF_X109_Y41_N27
\EX_MEM|ALU4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|ALU4|int_q~q\);

-- Location: FF_X110_Y40_N23
\MEM_WB|ALU4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU4|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU4|int_q~q\);

-- Location: LCCOMB_X110_Y40_N22
\WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|DataMem4|int_q\))) # (!\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|ALU4|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|MemtoRegFF|int_q~q\,
	datac => \MEM_WB|ALU4|int_q~q\,
	datad => \MEM_WB|DataMem4|int_q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X110_Y47_N18
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~feeder_combout\ = \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~feeder_combout\);

-- Location: FF_X110_Y47_N19
\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	ena => \REGISTER_FILE|SEL_WRITE|P_OUT[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\);

-- Location: LCCOMB_X108_Y47_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\);

-- Location: LCCOMB_X108_Y47_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\);

-- Location: LCCOMB_X113_Y46_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\) # (\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\ & ((!\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\);

-- Location: LCCOMB_X112_Y46_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~10_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\);

-- Location: LCCOMB_X110_Y45_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\) # ((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\ & !\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\);

-- Location: LCCOMB_X108_Y45_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~14_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\);

-- Location: LCCOMB_X109_Y42_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\) # ((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\ & !\IF_ID|ibit16|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit17|int_q~q\,
	datad => \IF_ID|ibit16|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\);

-- Location: LCCOMB_X108_Y42_N18
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~12_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit4|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\);

-- Location: LCCOMB_X108_Y45_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\) # (\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\ & ((!\IF_ID|ibit19|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~15_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~13_combout\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\);

-- Location: LCCOMB_X108_Y45_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\))))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~18_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~11_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\);

-- Location: LCCOMB_X106_Y43_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit4|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\);

-- Location: LCCOMB_X112_Y43_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\))) # 
-- (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit4|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\);

-- Location: LCCOMB_X113_Y43_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\);

-- Location: LCCOMB_X111_Y41_N24
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit4|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\);

-- Location: LCCOMB_X109_Y41_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\);

-- Location: LCCOMB_X109_Y41_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\) # ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\)))) # (!\IF_ID|ibit16|int_q~q\ & (!\IF_ID|ibit17|int_q~q\ 
-- & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~5_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\);

-- Location: LCCOMB_X113_Y42_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\IF_ID|ibit18|int_q~q\ & (((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & ((\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\))) # 
-- (!\IF_ID|ibit19|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit4|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit4|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y42_N28
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit4|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit4|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\);

-- Location: LCCOMB_X109_Y41_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\))))) # (!\IF_ID|ibit17|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~8_combout\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\);

-- Location: LCCOMB_X108_Y45_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\))) # (!\IF_ID|ibit20|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~19_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~9_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\);

-- Location: LCCOMB_X108_Y45_N10
\Branch_Sig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Branch_Sig~1_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ $ 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\)))) # (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ & (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\ $ (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	combout => \Branch_Sig~1_combout\);

-- Location: LCCOMB_X110_Y46_N10
\Branch_Sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Branch_Sig~0_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ $ 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\)))) # (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ & (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\ $ (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	datad => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	combout => \Branch_Sig~0_combout\);

-- Location: LCCOMB_X110_Y45_N10
\Branch_Sig~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Branch_Sig~3_combout\ = (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ $ 
-- (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\)))) # (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ & (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\ $ (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	combout => \Branch_Sig~3_combout\);

-- Location: LCCOMB_X109_Y46_N18
\HZRD_CNTRL|PC_Stall~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|PC_Stall~0_combout\ = (\IF_ID|ibit28|int_q~q\ & (\Branch_Sig~2_combout\ & (\Branch_Sig~0_combout\ & \Branch_Sig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \Branch_Sig~2_combout\,
	datac => \Branch_Sig~0_combout\,
	datad => \Branch_Sig~3_combout\,
	combout => \HZRD_CNTRL|PC_Stall~0_combout\);

-- Location: LCCOMB_X109_Y46_N24
\HZRD_CNTRL|PC_Stall~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HZRD_CNTRL|PC_Stall~1_combout\ = (\CNTRL|Jump~0_combout\) # (((\Branch_Sig~1_combout\ & \HZRD_CNTRL|PC_Stall~0_combout\)) # (!\HZRD_CNTRL|Int_PC_Stall~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTRL|Jump~0_combout\,
	datab => \HZRD_CNTRL|Int_PC_Stall~3_combout\,
	datac => \Branch_Sig~1_combout\,
	datad => \HZRD_CNTRL|PC_Stall~0_combout\,
	combout => \HZRD_CNTRL|PC_Stall~1_combout\);

-- Location: FF_X107_Y46_N29
\IF_ID|pcbit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \PC_INC|AddGenerator:3:SingleBitAdd|int_CarryOut1~combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|pcbit3|int_q~q\);

-- Location: LCCOMB_X108_Y46_N24
\BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0_combout\ = \IF_ID|pcbit3|int_q~q\ $ (\IF_ID|ibit1|int_q~q\ $ (((\IF_ID|ibit0|int_q~q\ & \IF_ID|pcbit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit0|int_q~q\,
	datab => \IF_ID|pcbit3|int_q~q\,
	datac => \IF_ID|ibit1|int_q~q\,
	datad => \IF_ID|pcbit2|int_q~q\,
	combout => \BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0_combout\);

-- Location: LCCOMB_X108_Y46_N22
\BR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & (\PC_REG|bit2|int_q~q\ $ (((\PC_REG|bit3|int_q~q\))))) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & (((\BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|bit2|int_q~q\,
	datab => \BR_ADD|AddGenerator:3:SingleBitAdd|o_Sum~0_combout\,
	datac => \PC_REG|bit3|int_q~q\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: FF_X108_Y46_N23
\PC_REG|bit3|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit3|int_q~q\);

-- Location: LCCOMB_X111_Y44_N26
\IF_ID|instruction[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(20) = (\MEM_ROM|altsyncram_component|auto_generated|q_a\(20) & (!\CNTRL|Jump~0_combout\ & ((!\Branch_Sig~4_combout\) # (!\IF_ID|ibit28|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(20),
	datab => \CNTRL|Jump~0_combout\,
	datac => \IF_ID|ibit28|int_q~q\,
	datad => \Branch_Sig~4_combout\,
	combout => \IF_ID|instruction\(20));

-- Location: FF_X111_Y44_N27
\IF_ID|ibit20|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(20),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit20|int_q~q\);

-- Location: LCCOMB_X111_Y42_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\) # (\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\ & ((!\IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:18:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:26:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X112_Y42_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\) # ((!\IF_ID|ibit18|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\ & \IF_ID|ibit18|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:30:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:22:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\);

-- Location: LCCOMB_X111_Y43_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\) # ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (!\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \IF_ID|ibit18|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:16:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:24:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\);

-- Location: LCCOMB_X110_Y43_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit18|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:20:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:28:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~4_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\);

-- Location: LCCOMB_X112_Y41_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ = (\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\) # ((\IF_ID|ibit19|int_q~q\)))) # (!\IF_ID|ibit18|int_q~q\ & 
-- (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\ & !\IF_ID|ibit19|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:21:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:17:REGX|bit2|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \IF_ID|ibit19|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\);

-- Location: LCCOMB_X110_Y41_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:25:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:29:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\);

-- Location: LCCOMB_X109_Y46_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\))) # (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~5_combout\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\);

-- Location: LCCOMB_X106_Y43_N26
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit18|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:19:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:23:REGX|bit2|int_q~q\,
	datac => \IF_ID|ibit19|int_q~q\,
	datad => \IF_ID|ibit18|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\);

-- Location: LCCOMB_X108_Y43_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit19|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit19|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:31:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:27:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~7_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\);

-- Location: LCCOMB_X109_Y46_N22
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\)))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~6_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~8_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\);

-- Location: LCCOMB_X113_Y46_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:8:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:9:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\);

-- Location: LCCOMB_X112_Y46_N4
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ & (((\REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\) # (!\IF_ID|ibit17|int_q~q\)))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\ & ((\IF_ID|ibit17|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:10:REGX|bit2|int_q~q\,
	datab => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~10_combout\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:11:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\);

-- Location: LCCOMB_X109_Y47_N14
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ = (\IF_ID|ibit16|int_q~q\ & (\IF_ID|ibit17|int_q~q\)) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:12:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:14:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\);

-- Location: LCCOMB_X110_Y47_N20
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:15:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:13:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~17_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\);

-- Location: LCCOMB_X110_Y42_N12
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ = (\IF_ID|ibit16|int_q~q\ & (((\IF_ID|ibit17|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & ((\IF_ID|ibit17|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\)) # 
-- (!\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:6:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit16|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:4:REGX|bit2|int_q~q\,
	datad => \IF_ID|ibit17|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\);

-- Location: LCCOMB_X108_Y42_N2
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\ = (\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\)))) # (!\IF_ID|ibit16|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit16|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:5:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|GEN_EIGHT_BIT_REG:7:REGX|bit2|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~12_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\);

-- Location: LCCOMB_X110_Y45_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ = (\IF_ID|ibit17|int_q~q\ & (((\IF_ID|ibit16|int_q~q\)))) # (!\IF_ID|ibit17|int_q~q\ & ((\IF_ID|ibit16|int_q~q\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\))) # 
-- (!\IF_ID|ibit16|int_q~q\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|GEN_EIGHT_BIT_REG:0:REGX|bit2|int_q~q\,
	datab => \IF_ID|ibit17|int_q~q\,
	datac => \IF_ID|ibit16|int_q~q\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:1:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\);

-- Location: LCCOMB_X109_Y46_N16
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\ = (\IF_ID|ibit17|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ & (\REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\)) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\ & ((\REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\))))) # (!\IF_ID|ibit17|int_q~q\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit17|int_q~q\,
	datab => \REGISTER_FILE|GEN_EIGHT_BIT_REG:3:REGX|bit2|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~14_combout\,
	datad => \REGISTER_FILE|GEN_EIGHT_BIT_REG:2:REGX|bit2|int_q~q\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\);

-- Location: LCCOMB_X109_Y46_N10
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ = (\IF_ID|ibit19|int_q~q\ & (((\IF_ID|ibit18|int_q~q\)))) # (!\IF_ID|ibit19|int_q~q\ & ((\IF_ID|ibit18|int_q~q\ & 
-- (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\)) # (!\IF_ID|ibit18|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~13_combout\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \IF_ID|ibit18|int_q~q\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~15_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\);

-- Location: LCCOMB_X109_Y46_N0
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\ = (\IF_ID|ibit19|int_q~q\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\))) # 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\)))) # (!\IF_ID|ibit19|int_q~q\ & 
-- (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~11_combout\,
	datab => \IF_ID|ibit19|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~18_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~16_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\);

-- Location: LCCOMB_X109_Y46_N6
\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ = (\IF_ID|ibit20|int_q~q\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\)) # (!\IF_ID|ibit20|int_q~q\ & 
-- ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit20|int_q~q\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~9_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~19_combout\,
	combout => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\);

-- Location: LCCOMB_X109_Y46_N14
\Branch_Sig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Branch_Sig~2_combout\ = (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ $ 
-- (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\)))) # (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ & (!\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\ $ (!\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	datad => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	combout => \Branch_Sig~2_combout\);

-- Location: LCCOMB_X109_Y46_N12
\Branch_Sig~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Branch_Sig~4_combout\ = (\Branch_Sig~2_combout\ & (\Branch_Sig~1_combout\ & (\Branch_Sig~0_combout\ & \Branch_Sig~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~2_combout\,
	datab => \Branch_Sig~1_combout\,
	datac => \Branch_Sig~0_combout\,
	datad => \Branch_Sig~3_combout\,
	combout => \Branch_Sig~4_combout\);

-- Location: LCCOMB_X112_Y40_N24
\IF_ID|instruction[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|instruction\(0) = (!\CNTRL|Jump~0_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(0) & ((!\IF_ID|ibit28|int_q~q\) # (!\Branch_Sig~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Branch_Sig~4_combout\,
	datab => \IF_ID|ibit28|int_q~q\,
	datac => \CNTRL|Jump~0_combout\,
	datad => \MEM_ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \IF_ID|instruction\(0));

-- Location: FF_X112_Y40_N25
\IF_ID|ibit0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|instruction\(0),
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit0|int_q~q\);

-- Location: LCCOMB_X108_Y46_N8
\BR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\HZRD_CNTRL|MuxSelect~0_combout\ & (((!\PC_REG|bit2|int_q~q\)))) # (!\HZRD_CNTRL|MuxSelect~0_combout\ & (\IF_ID|ibit0|int_q~q\ $ ((\IF_ID|pcbit2|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit0|int_q~q\,
	datab => \IF_ID|pcbit2|int_q~q\,
	datac => \PC_REG|bit2|int_q~q\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \BR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: FF_X108_Y46_N9
\PC_REG|bit2|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GClock~input_o\,
	d => \BR_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	ena => \HZRD_CNTRL|PC_Stall~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC_REG|bit2|int_q~q\);

-- Location: LCCOMB_X109_Y47_N20
\IF_ID|ibit31|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|ibit31|int_q~0_combout\ = (\HZRD_CNTRL|PC_Stall~1_combout\ & (\MEM_ROM|altsyncram_component|auto_generated|q_a\(31) & ((\HZRD_CNTRL|IF_ID_Flush~0_combout\)))) # (!\HZRD_CNTRL|PC_Stall~1_combout\ & (((\IF_ID|ibit31|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_ROM|altsyncram_component|auto_generated|q_a\(31),
	datab => \HZRD_CNTRL|PC_Stall~1_combout\,
	datac => \IF_ID|ibit31|int_q~q\,
	datad => \HZRD_CNTRL|IF_ID_Flush~0_combout\,
	combout => \IF_ID|ibit31|int_q~0_combout\);

-- Location: FF_X109_Y47_N21
\IF_ID|ibit31|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \IF_ID|ibit31|int_q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|ibit31|int_q~q\);

-- Location: LCCOMB_X114_Y40_N0
\CLR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\IF_ID|ibit31|int_q~q\ & (!\IF_ID|ibit29|int_q~q\ & \HZRD_CNTRL|MuxSelect~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit31|int_q~q\,
	datac => \IF_ID|ibit29|int_q~q\,
	datad => \HZRD_CNTRL|MuxSelect~0_combout\,
	combout => \CLR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: FF_X114_Y40_N1
\ID_EX|MemReadFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \CLR_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|MemReadFF|int_q~q\);

-- Location: LCCOMB_X114_Y40_N22
\EX_MEM|MemReadFF|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|MemReadFF|int_q~feeder_combout\ = \ID_EX|MemReadFF|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|MemReadFF|int_q~q\,
	combout => \EX_MEM|MemReadFF|int_q~feeder_combout\);

-- Location: FF_X114_Y40_N23
\EX_MEM|MemReadFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \EX_MEM|MemReadFF|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|MemReadFF|int_q~q\);

-- Location: LCCOMB_X107_Y40_N28
\MEM_WB|MemtoRegFF|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|MemtoRegFF|int_q~feeder_combout\ = \EX_MEM|MemReadFF|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|MemReadFF|int_q~q\,
	combout => \MEM_WB|MemtoRegFF|int_q~feeder_combout\);

-- Location: FF_X107_Y40_N29
\MEM_WB|MemtoRegFF|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	d => \MEM_WB|MemtoRegFF|int_q~feeder_combout\,
	clrn => \GresetBar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|MemtoRegFF|int_q~q\);

-- Location: FF_X110_Y40_N1
\MEM_WB|ALU0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~input_o\,
	asdata => \EX_MEM|ALU0|int_q~q\,
	clrn => \GresetBar~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|ALU0|int_q~q\);

-- Location: LCCOMB_X110_Y40_N0
\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\MEM_WB|MemtoRegFF|int_q~q\ & (\MEM_WB|DataMem0|int_q\)) # (!\MEM_WB|MemtoRegFF|int_q~q\ & ((\MEM_WB|ALU0|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|MemtoRegFF|int_q~q\,
	datab => \MEM_WB|DataMem0|int_q\,
	datac => \MEM_WB|ALU0|int_q~q\,
	combout => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\ValueSelect[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(2),
	o => \ValueSelect[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\ValueSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(0),
	o => \ValueSelect[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\ValueSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ValueSelect(1),
	o => \ValueSelect[1]~input_o\);

-- Location: LCCOMB_X106_Y44_N24
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (!\ValueSelect[0]~input_o\ & !\ValueSelect[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X105_Y44_N28
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\ = (\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\)) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & 
-- ((\IF_ID|ibit31|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datab => \ValueSelect[2]~input_o\,
	datac => \IF_ID|ibit31|int_q~q\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N30
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\ = (\ValueSelect[1]~input_o\ & ((\ValueSelect[0]~input_o\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\)) # (!\ValueSelect[0]~input_o\ & 
-- ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	datab => \ValueSelect[1]~input_o\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~20_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y44_N16
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\) # ((\ValueSelect[0]~input_o\ & (\MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\ & !\ValueSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \MAINALU|SINGLE_ALU0|MUX|SEL_RESULT|RESULT~2_combout\,
	datac => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~1_combout\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\);

-- Location: LCCOMB_X105_Y44_N18
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\) # ((!\ValueSelect[2]~input_o\ & \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~0_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~2_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:0:SELX|Q~3_combout\);

-- Location: LCCOMB_X105_Y44_N8
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\ = (\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\)) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & 
-- ((\IF_ID|ibit31|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datab => \ValueSelect[2]~input_o\,
	datac => \IF_ID|ibit31|int_q~q\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N18
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\ = (\ValueSelect[1]~input_o\ & ((\ValueSelect[0]~input_o\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\))) # (!\ValueSelect[0]~input_o\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~20_combout\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y44_N28
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\) # ((\ValueSelect[0]~input_o\ & (!\ValueSelect[1]~input_o\ & \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datac => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~1_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\);

-- Location: LCCOMB_X105_Y44_N22
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\) # ((!\ValueSelect[2]~input_o\ & \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~0_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~2_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:1:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y45_N12
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (((\WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\)))) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\IF_ID|ibit28|int_q~q\ & 
-- (!\IF_ID|ibit31|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|ibit28|int_q~q\,
	datab => \IF_ID|ibit31|int_q~q\,
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N14
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ = (\ValueSelect[0]~input_o\ & ((\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\) # ((\ValueSelect[1]~input_o\)))) # (!\ValueSelect[0]~input_o\ & (((\PC_REG|bit2|int_q~q\ & 
-- !\ValueSelect[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datac => \PC_REG|bit2|int_q~q\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y45_N22
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\ = (\ValueSelect[1]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\)) # 
-- (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\))))) # (!\ValueSelect[1]~input_o\ & (((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	datab => \ValueSelect[1]~input_o\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~20_combout\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~1_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\);

-- Location: LCCOMB_X106_Y45_N8
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\ = (\ValueSelect[2]~input_o\ & (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\)) # (!\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~0_combout\,
	datac => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~2_combout\,
	datad => \ValueSelect[2]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:2:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y44_N8
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ = (\ValueSelect[1]~input_o\ & (((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\) # (\ValueSelect[0]~input_o\)))) # (!\ValueSelect[1]~input_o\ & (\PC_REG|bit3|int_q~q\ & 
-- ((!\ValueSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_REG|bit3|int_q~q\,
	datab => \ValueSelect[1]~input_o\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y44_N26
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ & ((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\) # ((!\ValueSelect[0]~input_o\)))) # 
-- (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\ & (((\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ & \ValueSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~20_combout\,
	datab => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datac => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~1_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\);

-- Location: LCCOMB_X106_Y45_N10
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\)) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (((!\IF_ID|ibit29|int_q~q\ & 
-- \IF_ID|ibit31|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	datab => \IF_ID|ibit29|int_q~q\,
	datac => \IF_ID|ibit31|int_q~q\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y45_N28
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\ = (\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\))) # (!\ValueSelect[2]~input_o\ & (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~2_combout\,
	datab => \ValueSelect[2]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:3:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y45_N2
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\)) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (((!\IF_ID|ibit29|int_q~q\ & 
-- \IF_ID|ibit31|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datab => \IF_ID|ibit29|int_q~q\,
	datac => \IF_ID|ibit31|int_q~q\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N0
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ = (\ValueSelect[0]~input_o\ & (((\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\) # (\ValueSelect[1]~input_o\)))) # (!\ValueSelect[0]~input_o\ & (\PC_REG|bit4|int_q~q\ & 
-- ((!\ValueSelect[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \PC_REG|bit4|int_q~q\,
	datac => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y45_N20
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\ = (\ValueSelect[1]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\)) # 
-- (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\))))) # (!\ValueSelect[1]~input_o\ & (((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~20_combout\,
	datac => \ValueSelect[1]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~1_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\);

-- Location: LCCOMB_X106_Y45_N26
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\ = (\ValueSelect[2]~input_o\ & (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\)) # (!\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~0_combout\,
	datac => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~2_combout\,
	datad => \ValueSelect[2]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:4:SELX|Q~3_combout\);

-- Location: LCCOMB_X105_Y44_N12
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ = (\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & ((\WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\))) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ 
-- & (\CNTRL|Jump~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNTRL|Jump~0_combout\,
	datab => \ValueSelect[2]~input_o\,
	datac => \WB_MUX|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N10
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ = (\ValueSelect[0]~input_o\ & (\ValueSelect[1]~input_o\)) # (!\ValueSelect[0]~input_o\ & ((\ValueSelect[1]~input_o\ & (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\)) # 
-- (!\ValueSelect[1]~input_o\ & ((\PC_REG|bit5|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datac => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	datad => \PC_REG|bit5|int_q~q\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y44_N4
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\) # (!\ValueSelect[0]~input_o\)))) # 
-- (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\ & (\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\ & ((\ValueSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~1_combout\,
	datab => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~20_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\);

-- Location: LCCOMB_X105_Y44_N10
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\) # ((!\ValueSelect[2]~input_o\ & \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~0_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~2_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:5:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y44_N2
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ = (\ValueSelect[0]~input_o\ & ((\ValueSelect[1]~input_o\) # ((\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\)))) # (!\ValueSelect[0]~input_o\ & (!\ValueSelect[1]~input_o\ & 
-- ((\PC_REG|bit6|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \ValueSelect[1]~input_o\,
	datac => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datad => \PC_REG|bit6|int_q~q\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\);

-- Location: LCCOMB_X106_Y45_N18
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ = (\ValueSelect[1]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ & (\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\)) # 
-- (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\ & ((\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\))))) # (!\ValueSelect[1]~input_o\ & (((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~20_combout\,
	datac => \ValueSelect[1]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~1_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\);

-- Location: LCCOMB_X106_Y45_N4
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\ = (\ValueSelect[2]~input_o\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\)) # (!\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & 
-- ((\CNTRL|RegDst~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \WB_MUX|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datac => \CNTRL|RegDst~1_combout\,
	datad => \ValueSelect[2]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y45_N24
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\ = (\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\) # ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\ & !\ValueSelect[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~2_combout\,
	datac => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~0_combout\,
	datad => \ValueSelect[2]~input_o\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:6:SELX|Q~3_combout\);

-- Location: LCCOMB_X106_Y44_N20
\HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ = (\ValueSelect[0]~input_o\ & (((\ValueSelect[1]~input_o\)))) # (!\ValueSelect[0]~input_o\ & ((\ValueSelect[1]~input_o\ & 
-- (\REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\)) # (!\ValueSelect[1]~input_o\ & ((\PC_REG|bit7|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ValueSelect[0]~input_o\,
	datab => \REGISTER_FILE|SEL_R1|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	datac => \PC_REG|bit7|int_q~q\,
	datad => \ValueSelect[1]~input_o\,
	combout => \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\);

-- Location: LCCOMB_X106_Y44_N22
\HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (((\REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\) # (!\ValueSelect[0]~input_o\)))) # 
-- (!\HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & (\MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & ((\ValueSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|RES_SEL|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datac => \REGISTER_FILE|SEL_R2|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~20_combout\,
	datad => \ValueSelect[0]~input_o\,
	combout => \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X105_Y44_N0
\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\ = (\ValueSelect[2]~input_o\ & (\WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\ & ((\HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\)))) # (!\ValueSelect[2]~input_o\ & 
-- (((\HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WB_MUX|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	datab => \HLMUX|SEL1234|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\,
	datac => \ValueSelect[2]~input_o\,
	datad => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~0_combout\,
	combout => \HLMUX|SEL_MAIN|GEN_ONE_BIT_SELECT:7:SELX|Q~1_combout\);

-- Location: LCCOMB_X109_Y41_N30
\MAINALU|ZERO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MAINALU|ZERO~2_combout\ = (\MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\) # ((\MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\) # (!\MAINALU|ZERO~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAINALU|GEN_EIGHT_BIT_REG:7:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~0_combout\,
	datab => \MAINALU|ZERO~1_combout\,
	datad => \MAINALU|GEN_EIGHT_BIT_REG:6:SINGLE_ALUX|MUX|SEL_RESULT|RESULT~3_combout\,
	combout => \MAINALU|ZERO~2_combout\);

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


