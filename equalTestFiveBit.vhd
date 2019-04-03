--------------------------------------------------------------------------------
-- Title         : Equal Test Five Bit
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : equalTestFiveBit.vhd
-- Author        : Spencer Hayes-Laverdiere
-- Created       : 2019/04/03
-------------------------------------------------------------------------------
-- Description : Compares two 5 but numbers, outputs a 1 if they're equal and 0
-- otherwise. 
-------------------------------------------------------------------------------
-- Modification history :

-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY equalTestFiveBit IS
	PORT(
	numA, numB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	brSig : OUT STD_LOGIC
	);
	
	END equalTestFiveBit;
		
	architecture RTL of equalTestFiveBit is
-------------------------------------------------------------------------------
--  Signals
-------------------------------------------------------------------------------
	signal TEMP  : STD_LOGIC_VECTOR(4 DOWNTO 0);
	
	begin
	
	TEMP(4) <= numA(4) XOR numB(4);
	TEMP(3) <= numA(3) XOR numB(3);
	TEMP(2) <= numA(2) XOR numB(2);
	TEMP(1) <= numA(1) XOR numB(1);
	TEMP(0) <= numA(0) XOR numB(0);
	
	brSig <= NOT(TEMP(4) OR TEMP(3) OR TEMP(2) OR TEMP(1) OR TEMP(0));
	
	end RTL;