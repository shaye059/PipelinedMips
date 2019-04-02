--------------------------------------------------------------------------------
-- Title         : Clock Inverter
-- Project       : PipelinedMips
-------------------------------------------------------------------------------
-- File          : clockInverter.vhd
-- Author        : Spencer Hayes-Laverdiere
-- Created       : 2019/03/27
-------------------------------------------------------------------------------
-- Description : Inverts the clock to activate memory on the falling edge.
-------------------------------------------------------------------------------
-- Modification history :
-- 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
--
entity clockInverter is
	port(
		GClock : IN STD_LOGIC;
		InvertedClock : OUT STD_LOGIC
		);

	END clockInverter;
		
	architecture RTL of clockInverter is
	
	begin
	
	InvertedClock <= NOT(GClock);
	
	end rtl;
	