--------------------------------------------------------------------------------
-- Title         : Multi Cycle Processor
-- Project       : PipelinedMips
-------------------------------------------------------------------------------
-- File          : MultiCycleProc.vhd
-- Author        : Spencer Hayes-Laverdiere
-- Created       : 2019/03/27
-------------------------------------------------------------------------------
-- Description : Top level module of the Multi Cycle Processor.
-- Note: The branch offset is the 6 least significant bits of instruction. It is
-- represented in signed 2's complement. For example, -3 would be 111101. The
-- offset represents the jump in instructions, and will therefore be multiplied
-- by 4 in order to increase PC by the proper # of bytes. 
-------------------------------------------------------------------------------
-- Modification history :
-- 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
--
entity MultiCycleProc is
	port(
		ValueSelect : IN STD_LOGIC_VECTOR(2 DOWNTO 0); --InstrSelect
		GClock, GresetBar : IN STD_LOGIC;
		MuxOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		InstructionOut: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		BranchOut, ZeroOut, MemWriteOut, RegWriteOut: OUT STD_LOGIC
		);

	END MultiCycleProc;
		
	architecture RTL of MultiCycleProc is
-------------------------------------------------------------------------------
--  Signals
-------------------------------------------------------------------------------
	signal PC_IN, PC_OUT, PC_INC_OUT, REG_READ1, REG_READ2, PC_ADD2, 
		PC_BRANCH_ADR, IF_ID_PC, MEM_WB_WRITE_DATA_IN, CLR_MUX_IN, CNTRL_OUT, ID_EX_READ_DATA1_out,
		ID_EX_READ_DATA2_out, EX_MEM_ALU_RESULT_OUT, ALU_IN_A, ALU_IN_B, ALU_B1_MUX, ID_EX_insruction_out_extend, 
		EX_MEM_ALU_RESULT_IN, MEM_WB_READ_DATA, MEM_WB_ALU_RESULT_OUT, MEM_WB_READ_DATA_OUT, EX_MEM_ALU_B1_MUX_OUT,
		LAST_MUX_INPUT: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	signal INSTRUCTION_OUT, IF_ID_INSTRUCTION : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	signal IF_ID_Rt_OUT, IF_ID_Rs_OUT, ID_EX_Rt_OUT, ID_EX_Rs_OUT, ID_EX_Rd_OUT, EX_MEM_Rd, 
		MEM_WB_Rd, EX_MEM_WRITE_REG_IN : STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	signal ALU_CONTROL_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	signal RegDst, RegWrite, ALUSrc, MemWrite, Jump, MemToReg, BRANCH, MemRead, InvertedClock, IFFlush, BR_EQUAL_SIG,
	HazardClr,PC_Stall_Sig, PC_Stall, Branch_Sig, ID_EX_MemtoReg_Out, ID_EX_RegWrite_Out, ID_EX_MemWrite_Out, ID_EX_MemRead_Out, ID_EX_ALUSrc_Out, 
	ID_EX_RegDst_Out, ID_EX_Clear, ZERO, MEM_WB_RegWrite, EX_MEM_MemToReg_Out, EX_MEM_RegWrite_Out, EX_MEM_MemWrite_Out, 
	EX_MEM_MemRead_Out, MEM_WB_MemToReg : STD_LOGIC;
	
	signal ALUOp, ID_EX_ALUOp_Out, ForwardA, ForwardB : STD_LOGIC_VECTOR(1 DOWNTO 0);
	
	
	
-------------------------------------------------------------------------------
--  Component Declaration
-------------------------------------------------------------------------------

	component EIGHT_BIT_REG
			PORT(
		load, resetBar: IN	STD_LOGIC;
		i_clock : IN	STD_LOGIC;
		i_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		o_q : OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component instruction_mem
		PORT(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock	: IN STD_LOGIC  := '1';
		q	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	component EIGHT_BIT_TWO_TO_ONE
		port(
		A,B : IN std_logic_vector(7 DOWNTO 0);
		SEL : IN STD_logic;
		Q : OUT STD_logic_vector(7 DOWNTO 0)
		);
	end component;
	
	component PC_Adder
		PORT(
		CarryIn		: in std_logic;
		A, B		: in std_logic_vector(7 downto 0);
		Sum	: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component IF_ID_Reg
		PORT(
		IFFlush, IFStall: IN	STD_LOGIC;
		i_globalResetBar : IN STD_LOGIC;
		i_clock : IN	STD_LOGIC;
		instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		insruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_out : OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component REG_FILE
		port(
		READ_REG1, READ_REG2, WRITE_REG: IN std_logic_vector(4 DOWNTO 0);
		WRITE_DATA: IN std_logic_vector(7 DOWNTO 0);
		REG_WRITE_SIG, CLOCK, G_RESETBAR  : IN STD_logic;
		READ_DATA1, READ_DATA2 : OUT STD_logic_vector(7 DOWNTO 0)
		);
	end component;
	
	component equalTest
		PORT(
		numA, numB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		brSig : OUT STD_LOGIC
		);
	end component;
	
	component CONTROL_UNIT
		port(
		OPCODE_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		RegDst, Jump, Branch, MemToReg, MemWrite, ALUSrc, RegWrite, MemRead : OUT STD_LOGIC;
		ALUOp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);

	end component;
	
	component FOUR_MULTIPLIER
		port(
		BYTE_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		PRODUCT_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);

	end component;
	
	component Hazard_Control_Unit
		port(
	
			--Control Signal
			ID_EX_MemRead: IN STD_LOGIC;
			Branch: IN STD_LOGIC;
			Jump: IN STD_LOGIC;
			
			--Register Inputs
			IF_ID_Rt: IN STD_LOGIC_VECTOR (4 downto 0);
			IF_ID_Rs: IN STD_LOGIC_VECTOR (4 downto 0);
			ID_EX_Rt: IN STD_LOGIC_VECTOR (4 downto 0);
			ID_EX_Rs: IN STD_LOGIC_VECTOR (4 downto 0);
			
			--Output signals
			PC_Stall: Out std_logic;
			IF_ID_Flush: Out std_logic;
			MuxSelect: out std_logic
			
		);

	end component;
	
	component ID_EX_BUFFER
		PORT(	
		Clock : IN	STD_LOGIC;
		G_reset: IN STD_LOGIC;
		
		
		--control
		MemToReg: IN STD_LOGIC;
		RegWrite: IN STD_LOGIC;
		MemWrite: IN STD_LOGIC;
		MemRead: IN STD_LOGIC;
		ALUSrc: IN STD_LOGIC;
		ALUOp: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		RegDst: IN STD_LOGIC;
		
		MemtoReg_Out: out std_logic;
		RegWrite_Out: out std_logic;
		MemWrite_Out: out std_logic;
		MemRead_Out: out std_logic;
		ALUSrc_Out: Out STD_LOGIC;
		ALUOp_Out: Out STD_LOGIC_VECTOR(1 DOWNTO 0);
		RegDst_Out: Out STD_LOGIC;
		
		
		instruction_in_extend : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		READ_DATA1, READ_DATA2 : IN STD_logic_vector(7 DOWNTO 0);
		
		instruction_in_20_16 :IN STD_LOGIC_VECTOR(4 DOWNTO 0); --reg2
		instruction_in_25_21 :IN STD_LOGIC_VECTOR(4 DOWNTO 0); --reg1
		instruction_in_15_11 :IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		
		
		
		instruction_out_15_11 :OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		instruction_out_25_21 :OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		instruction_out_20_16 :OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		instruction_out_extend : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		READ_DATA1_out, READ_DATA2_out : OUT STD_logic_vector(7 DOWNTO 0)
		
		);

	end component;
	
	component EIGHT_BIT_FOUR_TO_ONE
		port(
		P1,P2,P3,P4 : IN std_logic_vector(7 DOWNTO 0);
		SEL : IN STD_logic_vector(1 DOWNTO 0);
		Q : OUT STD_logic_vector(7 DOWNTO 0)
		);
	end component;
	
	component MAIN_ALU
		port(
		A_IN, B_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		OPERATION : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		ZERO : OUT STD_LOGIC;
		RESULT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	end component;
	
	component ALU_CONTROL
		port(
		ALUOp_IN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		INSTRUCTION_OP: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		ALU_OP_OUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	end component;
	
	component Forwarding_Unit
		PORT(
		ID_EX_Rs: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ID_EX_Rt: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		EX_MEM_Rd: in std_logic_vector (4 downto 0);
		MEM_WB_Rd: in std_logic_vector (4 downto 0); 
		EX_MEM_RegWrite: in std_logic;
		MEM_WB_RegWrite: in std_logic;
		ForwardA: out std_logic_vector (1 downto 0);
		ForwardB: out std_logic_vector (1 downto 0)
		
	);
	end component;
	
	component FIVE_BIT_TWO_TO_ONE
		port(
		A,B : IN std_logic_vector(4 DOWNTO 0);
		SEL : IN STD_logic;
		Q : OUT STD_logic_vector(4 DOWNTO 0)
		);
	end component;
	
	component Ex_Mem_Buffer
		port(
		
		--Clock & Reset
		Clock, resetBar: in std_logic;
		
		--Control Signals
		MemtoReg_In: in std_logic;
		RegWrite_In: in std_logic;
		MemWrite_In: in std_logic;
		MemRead_In: in std_logic;
		
		MemtoReg_Out: out std_logic;
		RegWrite_Out: out std_logic;
		MemWrite_Out: out std_logic;
		MemRead_Out: out std_logic;
	
		
		--Components
		ALU_In: in std_logic_vector (7 downto 0);
		ALU_Out: out std_logic_vector (7 downto 0);
		
		Mux_In: in std_logic_vector(4 downto 0);
		Mux_Out: out std_logic_vector(4 downto 0);
		
		RegData_In: in std_logic_vector(7 downto 0);
		RegData_Out: out std_logic_vector(7 downto 0)
		
		);
	end component;
	
	component data_mem
		PORT(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	end component;
	
		component Mem_Wb_Buffer
		port(
		
		--Clock
		Clock: in std_logic;
		
		--Reset
		G_reset: IN STD_LOGIC;
		
		--Control Signals
		MemtoReg_In: in std_logic;
		RegWrite_In: in std_logic;
		
		MemtoReg_Out: out std_logic;
		RegWrite_Out: out std_logic;
		
		--Component Outputs
		ALU_In: in std_logic_vector (7 downto 0);
		ALU_Out: out std_logic_vector (7 downto 0); 
	
		DataMem_In: in std_logic_vector (7 downto 0); 
		DataMem_Out: out std_logic_vector (7 downto 0);
		
		Mux_In: in std_logic_vector(4 downto 0);
		Mux_Out: out std_logic_vector(4 downto 0)
	);
	end component;
	
	component EIGHT_BIT_EIGHT_TO_ONE
		port(
		P0,P1,P2,P3,P4,P5,P6,P7 : IN std_logic_vector(7 DOWNTO 0);
		SEL : IN STD_logic_vector(2 DOWNTO 0);
		Q : OUT STD_logic_vector(7 DOWNTO 0)
		);
	end component;
	
	component clockInverter
	port(
		GClock : IN STD_LOGIC;
		InvertedClock : OUT STD_LOGIC
		);

	END component;
	
	begin
	
-------------------------------------------------------------------------------
--  Stage 1
-------------------------------------------------------------------------------
	
	--Program Counter
	PC_REG : EIGHT_BIT_REG port map(PC_Stall_Sig, GresetBar, InvertedClock,PC_IN, PC_OUT);
	
	
	--PC Incrementer
	PC_INC : PC_Adder port map('0', PC_OUT, "00000100", PC_INC_OUT);

	--Instruction Memeory
	MEM_ROM : instruction_mem port map(PC_OUT, GClock, INSTRUCTION_OUT);
	
	--Branch Decision Mux
	BR_MUX  : EIGHT_BIT_TWO_TO_ONE port map(PC_INC_OUT, PC_BRANCH_ADR, HazardClr, PC_IN);
	
	--IF/ID Register
	IF_ID : IF_ID_Reg port map(IFFlush, PC_Stall,GResetBar, GClock,INSTRUCTION_OUT, PC_INC_OUT, IF_ID_INSTRUCTION, IF_ID_PC);
	
	
-------------------------------------------------------------------------------
--  Stage 2
-------------------------------------------------------------------------------
	
	--Register File
	REGISTER_FILE : REG_FILE port map(IF_ID_INSTRUCTION(25 DOWNTO 21), IF_ID_INSTRUCTION(20 DOWNTO 16), MEM_WB_Rd, MEM_WB_WRITE_DATA_IN,
	MEM_WB_RegWrite, GClock, GresetBar, REG_READ1, REG_READ2);
	
	--Equal Test
	EQTEST : equalTest port map(REG_READ1, REG_READ2, BR_EQUAL_SIG);
	
	--Branch Offset Multiplier
	BR_MULT : FOUR_MULTIPLIER port map(IF_ID_INSTRUCTION(5 DOWNTO 0), PC_ADD2);
	
	--Branch Offset Adder
	BR_ADD : PC_Adder port map('0', IF_ID_PC, PC_ADD2, PC_BRANCH_ADR);
	
	--Control Unit
	CNTRL : CONTROL_UNIT port map(IF_ID_INSTRUCTION(31 DOWNTO 26), regDst, Jump, BRANCH, MemToReg, MemWrite, ALUSrc, RegWrite, MemRead, ALUOp);
	
	--Flush/Stall Multiplexer
	CLR_MUX  : EIGHT_BIT_TWO_TO_ONE port map(CLR_MUX_IN, "00000000", ID_EX_Clear, CNTRL_OUT);
	
	--Hazard Control Unit
	HZRD_CNTRL: Hazard_Control_Unit port map(ID_EX_MemRead_Out, Branch_Sig, Jump, IF_ID_INSTRUCTION(20 DOWNTO 16), IF_ID_INSTRUCTION(20 DOWNTO 16),
	ID_EX_Rt_OUT, ID_EX_Rs_OUT, PC_Stall, IFFlush, HazardClr);
		
	--ID/EX Buffer
	ID_EX : ID_EX_BUFFER port map(GClock, GResetBar, CNTRL_OUT(6), CNTRL_OUT(7), CNTRL_OUT(4), CNTRL_OUT(5), CNTRL_OUT(0), CNTRL_OUT(2 DOWNTO 1),
		CNTRL_OUT(3), ID_EX_MemtoReg_Out, ID_EX_RegWrite_Out, ID_EX_MemWrite_Out, ID_EX_MemRead_Out, ID_EX_ALUSrc_Out, ID_EX_ALUOp_Out, 
		ID_EX_RegDst_Out, IF_ID_INSTRUCTION(7 DOWNTO 0), REG_READ1, REG_READ2, IF_ID_INSTRUCTION(20 DOWNTO 16), IF_ID_INSTRUCTION(25 DOWNTO 21),
		IF_ID_INSTRUCTION(15 DOWNTO 11), ID_EX_Rd_OUT,ID_EX_Rs_OUT,ID_EX_Rt_OUT,ID_EX_insruction_out_extend,
		ID_EX_READ_DATA1_out, ID_EX_READ_DATA2_out);
	
	
-------------------------------------------------------------------------------
--  Stage 3
-------------------------------------------------------------------------------
	
	--ALU Input A
	ALU_MUXA : EIGHT_BIT_FOUR_TO_ONE port map(ID_EX_READ_DATA1_out, MEM_WB_WRITE_DATA_IN, EX_MEM_ALU_RESULT_OUT, EX_MEM_ALU_RESULT_OUT, 
	ForwardA, ALU_IN_A);
	
	--ALU PreInput B
	ALU_MUXB1 : EIGHT_BIT_FOUR_TO_ONE port map(ID_EX_READ_DATA2_out, MEM_WB_WRITE_DATA_IN, EX_MEM_ALU_RESULT_OUT, EX_MEM_ALU_RESULT_OUT, 
	ForwardB, ALU_B1_MUX);
	
	--ALU Input B
	ALU_MUXB : EIGHT_BIT_TWO_TO_ONE port map(ALU_B1_MUX, ID_EX_insruction_out_extend, ID_EX_ALUSrc_Out, ALU_IN_B);
	
	--Main ALU
	MAINALU : MAIN_ALU port map(ALU_IN_A, ALU_IN_B, ALU_CONTROL_OUT, ZERO, EX_MEM_ALU_RESULT_IN);
	
	--ALU Control Unit
	ALU_CONTRL : ALU_CONTROL port map(ID_EX_ALUOp_Out, ID_EX_insruction_out_extend(5 DOWNTO 0), ALU_CONTROL_OUT);
	
	--Forwarding Unit
	FWD_UNIT : Forwarding_Unit port map(ID_EX_Rs_OUT, ID_EX_Rt_OUT, EX_MEM_Rd, MEM_WB_Rd, EX_MEM_RegWrite_Out, MEM_WB_RegWrite, ForwardA, ForwardB);
	
	--RegDst Mux
	DST_MUX : FIVE_BIT_TWO_TO_ONE port map(ID_EX_Rt_OUT,ID_EX_Rd_OUT, ID_EX_RegDst_Out, EX_MEM_WRITE_REG_IN);
	
	--EX/MEM Buffer
	EX_MEM : Ex_Mem_Buffer port map(GClock, GResetBar, ID_EX_MemToReg_Out, ID_EX_RegWrite_Out, ID_EX_MemWrite_Out, ID_EX_MemRead_Out, 
		EX_MEM_MemToReg_Out, EX_MEM_RegWrite_Out, EX_MEM_MemWrite_Out, EX_MEM_MemRead_Out, EX_MEM_ALU_RESULT_IN, EX_MEM_ALU_RESULT_OUT,
		EX_MEM_WRITE_REG_IN, EX_MEM_Rd, ALU_B1_MUX, EX_MEM_ALU_B1_MUX_OUT);
	
	
-------------------------------------------------------------------------------
--  Stage 4
-------------------------------------------------------------------------------
	
	--Data Memory
	MEM_RAM : data_mem port map(EX_MEM_ALU_RESULT_OUT, InvertedClock, EX_MEM_ALU_B1_MUX_OUT, EX_MEM_MemRead_Out, EX_MEM_MemWrite_Out, 
		MEM_WB_READ_DATA);
	
	--MEM/WB Buffer
	MEM_WB : Mem_Wb_Buffer port map(GClock, GResetBar, EX_MEM_MemToReg_Out, EX_MEM_RegWrite_Out, MEM_WB_MemToReg, MEM_WB_RegWrite,
		EX_MEM_ALU_RESULT_OUT, MEM_WB_ALU_RESULT_OUT, MEM_WB_READ_DATA, MEM_WB_READ_DATA_OUT, EX_MEM_Rd, MEM_WB_Rd);
		
		
-------------------------------------------------------------------------------
--  Stage 5
-------------------------------------------------------------------------------	
		
	WB_MUX : EIGHT_BIT_TWO_TO_ONE port map(MEM_WB_ALU_RESULT_OUT, MEM_WB_READ_DATA_OUT, MEM_WB_MemToReg, MEM_WB_WRITE_DATA_IN);
	
	

	--Clock Inverter
	CLK_INV : clockInverter port map(GClock, InvertedClock);
		
	
	--Output Mux
	HLMUX : EIGHT_BIT_EIGHT_TO_ONE port map(PC_OUT, EX_MEM_ALU_RESULT_IN, REG_READ1, REG_READ2, MEM_WB_WRITE_DATA_IN,LAST_MUX_INPUT,
 LAST_MUX_INPUT,LAST_MUX_INPUT, ValueSelect, MuxOut);
	
	



	--Signals
	CLR_MUX_IN(7) <= RegWrite;
	CLR_MUX_IN(6) <= MemToReg;
	CLR_MUX_IN(5) <= MemRead;
	CLR_MUX_IN(4) <= MemWrite;
	CLR_MUX_IN(3) <= RegDst;
	CLR_MUX_IN(2 DOWNTO 1) <= ALUOp;
	CLR_MUX_IN(0) <= ALUSrc;
	
	PC_Stall_Sig <= not(PC_Stall);
	Branch_Sig <= BRANCH AND BR_EQUAL_SIG;
	IF_ID_Rs_OUT <= IF_ID_INSTRUCTION(25 DOWNTO 21);
	IF_ID_Rt_OUT <= IF_ID_INSTRUCTION(20 DOWNTO 16);
	ID_EX_Clear <= IFFlush or HazardClr;
	
	
	
	
	
	LAST_MUX_INPUT(7) <= '0';
	LAST_MUX_INPUT(6) <= RegDST;
	LAST_MUX_INPUT(5) <= Jump;
	LAST_MUX_INPUT(4) <= MemRead;
	LAST_MUX_INPUT(3) <= MemToReg;
	LAST_MUX_INPUT(2 DOWNTO 1) <= ALUOp;
	LAST_MUX_INPUT(0) <= ALUSrc;
	BranchOut <= BRANCH;
	ZeroOut <= ZERO;
	
	InstructionOut <= INSTRUCTION_OUT;
	MemWriteOut <= EX_MEM_MemWrite_Out;
	RegWriteOut <= MEM_WB_RegWrite;

	
	


	end RTL;