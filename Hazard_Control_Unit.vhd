library ieee;
use ieee.std_logic_1164.all;

entity Hazard_Control_Unit is
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
end Hazard_Control_Unit;


architecture structual of Hazard_Control_Unit is

	Signal IfIdRs_IdExRt_Equal: std_logic;
	Signal IfIdRt_IdExRt_Equal: std_logic;

	Signal Int_PC_Stall: std_logic;
	signal IF_ID_Flush_Sig: std_logic;
	
	Component equalTestFiveBit
	PORT(
		numA, numB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		brSig : OUT STD_LOGIC
	);
	end Component;
	
BEGIN

	Compare_IfIdRs_IdExRt: equalTestFiveBit port map (IF_ID_Rs, ID_EX_Rt, IfIdRs_IdExRt_Equal); 

	Compare_IfIdRt_IdExRt: equalTestFiveBit port map (IF_ID_Rt, ID_EX_Rt, IfIdRt_IdExRt_Equal); 

	
	Int_PC_Stall <= ID_EX_MemRead and (IfIdRs_IdExRt_Equal or IfIdRt_IdExRt_Equal);
	
	--Outputs
	IF_ID_Flush_Sig <= Branch OR Jump;
	MuxSelect <= IF_ID_Flush_Sig or Int_PC_Stall;
	PC_Stall <= Int_PC_Stall and not(Jump or Branch);
	
	IF_ID_Flush <= IF_ID_Flush_Sig;
	
	
end structual;
	

	