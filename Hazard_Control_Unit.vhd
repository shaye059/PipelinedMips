library ieee;
use ieee.std_logic_1164.all;

entity Hazard_Control is
	port(
	
			--Control Signal
			ID_EX_MemRead: IN STD_LOGIC;
			Branch: IN STD_LOGIC;
			
			--Register Inputs
			IF_ID_Rt: IN STD_LOGIC_VECTOR (7 downto 0);
			IF_ID_Rs: IN STD_LOGIC_VECTOR (7 downto 0);
			ID_EX_Rt: IN STD_LOGIC_VECTOR (7 downto 0);
			ID_EX_Rs: IN STD_LOGIC_VECTOR (7 downto 0);
			
			--Output signals
			PC_Stall: Out std_logic;
			IF_ID_Flush: Out std_logic;
			MuxSelect: out std_logic
			
		);
end Hazard_Control;


architecture structual of Hazard_Control is

	Signal IfIdRs_IdExRt_notEqual: std_logic;
	Signal IfIdRt_IdExRt_notEqual: std_logic;

	Signal Int_PC_Stall: std_logic;
	
	Component EightBitComparator
		port (
			
			i_Ai, i_Bi			: IN	STD_LOGIC_VECTOR(7 downto 0);
			o_LT		: OUT	STD_LOGIC
		);
	end Component;
	
BEGIN

	Compare_IfIdRs_IdExRt: EightBitComparator port map (IF_ID_Rs, ID_EX_Rt, IfIdRs_IdExRt_notEqual); 

	Compare_IfIdRt_IdExRt: EightBitComparator port map (IF_ID_Rt, ID_EX_Rt, IfIdRt_IdExRt_notEqual); 

	
	Int_PC_Stall <= ID_EX_MemRead and (not IfIdRs_IdExRt_notEqual or not IfIdRt_IdExRt_notEqual);
	
	--Outputs
	IF_ID_Flush <= Branch;
	MuxSelect <= Branch or Int_PC_Stall;
	PC_Stall <= Int_PC_Stall;
	
	
end structual;
	

	