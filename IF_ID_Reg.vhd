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
-------------------------------------------------------------------------------
-- Modification history :

-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IF_ID_Reg IS
	PORT(
		IFFlush, IFStall: IN	STD_LOGIC;
		i_clock : IN	STD_LOGIC;
		insruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		insruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		PCinc_out : OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END IF_ID_Reg;

ARCHITECTURE rtl OF IF_ID_Reg IS
	SIGNAL d_qBar: STD_LOGIC_VECTOR(39 DOWNTO 0);
	SIGNAL load, resetBar : STD_LOGIC;
	
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

	load <= NOT(IFFlush OR IFStall);
	
	--Might need to change this later. Right now the flush is asynchronous. 
	resetBar <= NOT(IFFlush);

	ibit31: enARdFF_2 PORT MAP (resetBar, insruction_in(31), load, i_clock,insruction_out(31), d_qBar(31));
	ibit30: enARdFF_2 PORT MAP (resetBar, insruction_in(30), load, i_clock,insruction_out(30), d_qBar(30));
	ibit29: enARdFF_2 PORT MAP (resetBar, insruction_in(29), load, i_clock,insruction_out(29), d_qBar(29));
	ibit28: enARdFF_2 PORT MAP (resetBar, insruction_in(28), load, i_clock,insruction_out(28), d_qBar(28));
	ibit27: enARdFF_2 PORT MAP (resetBar, insruction_in(27), load, i_clock,insruction_out(27), d_qBar(27));
	ibit26: enARdFF_2 PORT MAP (resetBar, insruction_in(26), load, i_clock,insruction_out(26), d_qBar(26));
	ibit25: enARdFF_2 PORT MAP (resetBar, insruction_in(25), load, i_clock,insruction_out(25), d_qBar(25));
	ibit24: enARdFF_2 PORT MAP (resetBar, insruction_in(24), load, i_clock,insruction_out(24), d_qBar(24));
	ibit23: enARdFF_2 PORT MAP (resetBar, insruction_in(23), load, i_clock,insruction_out(23), d_qBar(23));
	ibit22: enARdFF_2 PORT MAP (resetBar, insruction_in(22), load, i_clock,insruction_out(22), d_qBar(22));
	ibit21: enARdFF_2 PORT MAP (resetBar, insruction_in(21), load, i_clock,insruction_out(21), d_qBar(21));
	ibit20: enARdFF_2 PORT MAP (resetBar, insruction_in(20), load, i_clock,insruction_out(20), d_qBar(20));
	ibit19: enARdFF_2 PORT MAP (resetBar, insruction_in(19), load, i_clock,insruction_out(19), d_qBar(19));
	ibit18: enARdFF_2 PORT MAP (resetBar, insruction_in(18), load, i_clock,insruction_out(18), d_qBar(18));
	ibit17: enARdFF_2 PORT MAP (resetBar, insruction_in(17), load, i_clock,insruction_out(17), d_qBar(17));
	ibit16: enARdFF_2 PORT MAP (resetBar, insruction_in(16), load, i_clock,insruction_out(16), d_qBar(16));
	ibit15: enARdFF_2 PORT MAP (resetBar, insruction_in(15), load, i_clock,insruction_out(15), d_qBar(15));
	ibit14: enARdFF_2 PORT MAP (resetBar, insruction_in(14), load, i_clock,insruction_out(14), d_qBar(14));
	ibit13: enARdFF_2 PORT MAP (resetBar, insruction_in(13), load, i_clock,insruction_out(13), d_qBar(13));
	ibit12: enARdFF_2 PORT MAP (resetBar, insruction_in(12), load, i_clock,insruction_out(12), d_qBar(12));
	ibit11: enARdFF_2 PORT MAP (resetBar, insruction_in(11), load, i_clock,insruction_out(11), d_qBar(11));
	ibit10: enARdFF_2 PORT MAP (resetBar, insruction_in(10), load, i_clock,insruction_out(10), d_qBar(10));
	ibit9: enARdFF_2 PORT MAP (resetBar, insruction_in(9), load, i_clock,insruction_out(9), d_qBar(9));
	ibit8: enARdFF_2 PORT MAP (resetBar, insruction_in(8), load, i_clock,insruction_out(8), d_qBar(8));
	ibit7: enARdFF_2 PORT MAP (resetBar, insruction_in(7), load, i_clock,insruction_out(7), d_qBar(7));
	ibit6: enARdFF_2 PORT MAP (resetBar, insruction_in(6), load, i_clock,insruction_out(6), d_qBar(6));
	ibit5: enARdFF_2 PORT MAP (resetBar, insruction_in(5), load, i_clock,insruction_out(5), d_qBar(5));
	ibit4: enARdFF_2 PORT MAP (resetBar, insruction_in(4), load, i_clock,insruction_out(4), d_qBar(4));
	ibit3: enARdFF_2 PORT MAP (resetBar, insruction_in(3), load, i_clock,insruction_out(3), d_qBar(3));
	ibit2: enARdFF_2 PORT MAP (resetBar, insruction_in(2), load, i_clock,insruction_out(2), d_qBar(2));
	ibit1: enARdFF_2 PORT MAP (resetBar, insruction_in(1), load, i_clock,insruction_out(1), d_qBar(1));
	ibit0: enARdFF_2 PORT MAP (resetBar, insruction_in(0), load, i_clock,insruction_out(0), d_qBar(0));
	
	pcbit7: enARdFF_2 PORT MAP (resetBar, PCinc_in(7), load, i_clock,PCinc_out(7), d_qBar(39));
	pcbit6: enARdFF_2 PORT MAP (resetBar, PCinc_in(6), load, i_clock,PCinc_out(6), d_qBar(38));
	pcbit5: enARdFF_2 PORT MAP (resetBar, PCinc_in(5), load, i_clock,PCinc_out(5), d_qBar(37));
	pcbit4: enARdFF_2 PORT MAP (resetBar, PCinc_in(4), load, i_clock,PCinc_out(4), d_qBar(36));
	pcbit3: enARdFF_2 PORT MAP (resetBar, PCinc_in(3), load, i_clock,PCinc_out(3), d_qBar(35));
	pcbit2: enARdFF_2 PORT MAP (resetBar, PCinc_in(2), load, i_clock,PCinc_out(2), d_qBar(34));
	pcbit1: enARdFF_2 PORT MAP (resetBar, PCinc_in(1), load, i_clock,PCinc_out(1), d_qBar(33));
	pcbit0: enARdFF_2 PORT MAP (resetBar, PCinc_in(0), load, i_clock,PCinc_out(0), d_qBar(32));
	
	END RTL;