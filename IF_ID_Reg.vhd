--------------------------------------------------------------------------------
-- Title         : IF/ID Register
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : IF_ID_Reg.vhd
-- Author        : Spencer Hayes-Laverdiere
-- Created       : 2019/03/27
-------------------------------------------------------------------------------
-- Description : Resister that stores the contents of the instruction fetch
-- stage before they are passed to the instruction decode stage. The contents
-- are the 32-bit instruction, and the 8-bit, incremented PC. 


--Note: Need to re-add flush logic
-------------------------------------------------------------------------------
-- Modification history :

-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IF_ID_Reg IS
	PORT(
		IFFlush, IFStall: IN	STD_LOGIC;
		i_globalResetBar : IN STD_LOGIC;
		i_clock : IN	STD_LOGIC;
		instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		insruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_out : OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END IF_ID_Reg;

ARCHITECTURE rtl OF IF_ID_Reg IS
	SIGNAL d_qBar: STD_LOGIC_VECTOR(39 DOWNTO 0);
	SIGNAL load, resetBar : STD_LOGIC;
	SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL PCinc : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	COMPONENT enARdFF_2
	port(
		i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC
		);
	END COMPONENT;

BEGIN
	
	--Might need to change this later. Right now the flush is asynchronous. 

	ibit31: enARdFF_2 PORT MAP (i_globalResetBar, instruction(31), load, i_clock,insruction_out(31), d_qBar(31));
	ibit30: enARdFF_2 PORT MAP (i_globalResetBar, instruction(30), load, i_clock,insruction_out(30), d_qBar(30));
	ibit29: enARdFF_2 PORT MAP (i_globalResetBar, instruction(29), load, i_clock,insruction_out(29), d_qBar(29));
	ibit28: enARdFF_2 PORT MAP (i_globalResetBar, instruction(28), load, i_clock,insruction_out(28), d_qBar(28));
	ibit27: enARdFF_2 PORT MAP (i_globalResetBar, instruction(27), load, i_clock,insruction_out(27), d_qBar(27));
	ibit26: enARdFF_2 PORT MAP (i_globalResetBar, instruction(26), load, i_clock,insruction_out(26), d_qBar(26));
	ibit25: enARdFF_2 PORT MAP (i_globalResetBar, instruction(25), load, i_clock,insruction_out(25), d_qBar(25));
	ibit24: enARdFF_2 PORT MAP (i_globalResetBar, instruction(24), load, i_clock,insruction_out(24), d_qBar(24));
	ibit23: enARdFF_2 PORT MAP (i_globalResetBar, instruction(23), load, i_clock,insruction_out(23), d_qBar(23));
	ibit22: enARdFF_2 PORT MAP (i_globalResetBar, instruction(22), load, i_clock,insruction_out(22), d_qBar(22));
	ibit21: enARdFF_2 PORT MAP (i_globalResetBar, instruction(21), load, i_clock,insruction_out(21), d_qBar(21));
	ibit20: enARdFF_2 PORT MAP (i_globalResetBar, instruction(20), load, i_clock,insruction_out(20), d_qBar(20));
	ibit19: enARdFF_2 PORT MAP (i_globalResetBar, instruction(19), load, i_clock,insruction_out(19), d_qBar(19));
	ibit18: enARdFF_2 PORT MAP (i_globalResetBar, instruction(18), load, i_clock,insruction_out(18), d_qBar(18));
	ibit17: enARdFF_2 PORT MAP (i_globalResetBar, instruction(17), load, i_clock,insruction_out(17), d_qBar(17));
	ibit16: enARdFF_2 PORT MAP (i_globalResetBar, instruction(16), load, i_clock,insruction_out(16), d_qBar(16));
	ibit15: enARdFF_2 PORT MAP (i_globalResetBar, instruction(15), load, i_clock,insruction_out(15), d_qBar(15));
	ibit14: enARdFF_2 PORT MAP (i_globalResetBar, instruction(14), load, i_clock,insruction_out(14), d_qBar(14));
	ibit13: enARdFF_2 PORT MAP (i_globalResetBar, instruction(13), load, i_clock,insruction_out(13), d_qBar(13));
	ibit12: enARdFF_2 PORT MAP (i_globalResetBar, instruction(12), load, i_clock,insruction_out(12), d_qBar(12));
	ibit11: enARdFF_2 PORT MAP (i_globalResetBar, instruction(11), load, i_clock,insruction_out(11), d_qBar(11));
	ibit10: enARdFF_2 PORT MAP (i_globalResetBar, instruction(10), load, i_clock,insruction_out(10), d_qBar(10));
	ibit9: enARdFF_2 PORT MAP (i_globalResetBar, instruction(9), load, i_clock,insruction_out(9), d_qBar(9));
	ibit8: enARdFF_2 PORT MAP (i_globalResetBar, instruction(8), load, i_clock,insruction_out(8), d_qBar(8));
	ibit7: enARdFF_2 PORT MAP (i_globalResetBar, instruction(7), load, i_clock,insruction_out(7), d_qBar(7));
	ibit6: enARdFF_2 PORT MAP (i_globalResetBar, instruction(6), load, i_clock,insruction_out(6), d_qBar(6));
	ibit5: enARdFF_2 PORT MAP (i_globalResetBar, instruction(5), load, i_clock,insruction_out(5), d_qBar(5));
	ibit4: enARdFF_2 PORT MAP (i_globalResetBar, instruction(4), load, i_clock,insruction_out(4), d_qBar(4));
	ibit3: enARdFF_2 PORT MAP (i_globalResetBar, instruction(3), load, i_clock,insruction_out(3), d_qBar(3));
	ibit2: enARdFF_2 PORT MAP (i_globalResetBar, instruction(2), load, i_clock,insruction_out(2), d_qBar(2));
	ibit1: enARdFF_2 PORT MAP (i_globalResetBar, instruction(1), load, i_clock,insruction_out(1), d_qBar(1));
	ibit0: enARdFF_2 PORT MAP (i_globalResetBar, instruction(0), load, i_clock,insruction_out(0), d_qBar(0));
	
	pcbit7: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(7), load, i_clock,PCinc_out(7), d_qBar(39));
	pcbit6: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(6), load, i_clock,PCinc_out(6), d_qBar(38));
	pcbit5: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(5), load, i_clock,PCinc_out(5), d_qBar(37));
	pcbit4: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(4), load, i_clock,PCinc_out(4), d_qBar(36));
	pcbit3: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(3), load, i_clock,PCinc_out(3), d_qBar(35));
	pcbit2: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(2), load, i_clock,PCinc_out(2), d_qBar(34));
	pcbit1: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(1), load, i_clock,PCinc_out(1), d_qBar(33));
	pcbit0: enARdFF_2 PORT MAP (i_globalResetBar, PCinc_in(0), load, i_clock,PCinc_out(0), d_qBar(32));
	
	
	--Signals
	load <= NOT(IFStall);
	
	instruction(31) <= instruction_in(31) AND NOT(IFFlush);
	instruction(30) <= instruction_in(30) AND NOT(IFFlush);
	instruction(29) <= instruction_in(29) AND NOT(IFFlush);
	instruction(28) <= instruction_in(28) AND NOT(IFFlush);
	instruction(27) <= instruction_in(27) AND NOT(IFFlush);
	instruction(26) <= instruction_in(26) AND NOT(IFFlush);
	instruction(25) <= instruction_in(25) AND NOT(IFFlush);
	instruction(24) <= instruction_in(24) AND NOT(IFFlush);
	instruction(23) <= instruction_in(23) AND NOT(IFFlush);
	instruction(22) <= instruction_in(22) AND NOT(IFFlush);
	instruction(21) <= instruction_in(21) AND NOT(IFFlush);
	instruction(20) <= instruction_in(20) AND NOT(IFFlush);
	instruction(19) <= instruction_in(19) AND NOT(IFFlush);
	instruction(18) <= instruction_in(18) AND NOT(IFFlush);
	instruction(17) <= instruction_in(17) AND NOT(IFFlush);
	instruction(16) <= instruction_in(16) AND NOT(IFFlush);
	instruction(15) <= instruction_in(15) AND NOT(IFFlush);
	instruction(14) <= instruction_in(14) AND NOT(IFFlush);
	instruction(13) <= instruction_in(13) AND NOT(IFFlush);
	instruction(12) <= instruction_in(12) AND NOT(IFFlush);
	instruction(11) <= instruction_in(11) AND NOT(IFFlush);
	instruction(10) <= instruction_in(10) AND NOT(IFFlush);
	instruction(9) <= instruction_in(9) AND NOT(IFFlush);
	instruction(8) <= instruction_in(8) AND NOT(IFFlush);
	instruction(7) <= instruction_in(7) AND NOT(IFFlush);
	instruction(6) <= instruction_in(6) AND NOT(IFFlush);
	instruction(5) <= instruction_in(5) AND NOT(IFFlush);
	instruction(4) <= instruction_in(4) AND NOT(IFFlush);
	instruction(3) <= instruction_in(3) AND NOT(IFFlush);
	instruction(2) <= instruction_in(2) AND NOT(IFFlush);
	instruction(1) <= instruction_in(1) AND NOT(IFFlush);
	instruction(0) <= instruction_in(0) AND NOT(IFFlush);
	
	PCinc(7) <= PCinc_in(7) AND NOT(IFFlush);
	PCinc(6) <= PCinc_in(6) AND NOT(IFFlush);
	PCinc(5) <= PCinc_in(5) AND NOT(IFFlush);
	PCinc(4) <= PCinc_in(4) AND NOT(IFFlush);
	PCinc(3) <= PCinc_in(3) AND NOT(IFFlush);
	PCinc(2) <= PCinc_in(2) AND NOT(IFFlush);
	PCinc(1) <= PCinc_in(1) AND NOT(IFFlush);
	PCinc(0) <= PCinc_in(0) AND NOT(IFFlush);
	
	END RTL;