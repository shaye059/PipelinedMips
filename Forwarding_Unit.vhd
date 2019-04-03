--------------------------------------------------------------------------------
-- Title         : Forwarding Unit
-- Project       : PipelinedMips
-------------------------------------------------------------------------------
-- File          : Forwarding_Unit.vhd
-- Author        : William Stewart
-- Created       : 2019/04/02
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------
-- Modification history :
-- 2019/04/02	Swapped out faulty EightBitComparator for equalTest (Spencer)
-- 2019/04/03	Changed inputs to 5 bit for register addresses
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Forwarding_Unit is
	port(
	
		--Input from regisrers: 
		ID_EX_Rs: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ID_EX_Rt: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		
		EX_MEM_Rd: in std_logic_vector (4 downto 0);
		MEM_WB_Rd: in std_logic_vector (4 downto 0);
		
			
		--Control inputs: 
		EX_MEM_RegWrite: in std_logic;
		MEM_WB_RegWrite: in std_logic;
		
		--Mux control outputs: 
		ForwardA: out std_logic_vector (1 downto 0);
		ForwardB: out std_logic_vector (1 downto 0)
		
	);
End Forwarding_Unit;
	
architecture structual of Forwarding_Unit is

	--Signals
	Signal EX_MEM_Rd_Zero: std_logic; 
	signal MEM_WB_Rd_Zero: std_logic;
	Signal ExM_Rd_Rs_Equal: std_logic; 	
	Signal ExM_Rd_Rt_Equal: std_logic;
	Signal MW_Rd_Rt_Equal: std_logic;
	Signal MW_Rd_Rs_Equal: std_logic;
	
	Signal Five_Bit_Zero: std_logic_vector (4 downto 0);

	Signal Int_ForwardA: std_logic_vector (1 downto 0);
	Signal Int_ForwardB: std_logic_vector (1 downto 0);
	
	Component equalTestFiveBit
		PORT(
			numA, numB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			brSig : OUT STD_LOGIC
	);
	end Component;

	
BEGIN	

	Five_Bit_Zero <= "00000";
	--Forwarding signals set to '00' by defau;t
--	Int_ForwardA <= "00";
--	Int_ForwardB <= "00";
	
	
	--Comparison
	Compare_ExMemRd_IdExRs: equalTestFiveBit port map (EX_MEM_Rd, ID_EX_Rs, ExM_Rd_Rs_Equal); 
	
	Compare_EXMEM_Rd_Zero: equalTestFiveBit port map (EX_MEM_Rd, Five_Bit_Zero, EX_MEM_Rd_Zero); 
	
	Compare_ExMemRd_IdExRt: equalTestFiveBit port map (EX_MEM_Rd, ID_EX_Rt, ExM_Rd_Rt_Equal);
	
	Compare_MemWb_Rd_Zero: equalTestFiveBit port map (MEM_WB_Rd, Five_Bit_Zero, MEM_WB_Rd_Zero); 
	
	Compare_MemWbRd_IdExRt: equalTestFiveBit port map (MEM_WB_Rd, ID_Ex_Rt, MW_Rd_Rt_Equal); 
	
	Compare_MemWbRd_IdExRs: equalTestFiveBit port map (MEM_WB_Rd, ID_Ex_Rs, MW_Rd_Rs_Equal);
	

	
--	--Ex Hazard: 
	Int_ForwardA(1) <= EX_MEM_RegWrite and not(EX_MEM_Rd_Zero) and ExM_Rd_Rs_Equal;
	Int_ForwardB(1) <= EX_MEM_RegWrite and not(EX_MEM_Rd_Zero) and ExM_Rd_Rt_Equal;
	
	
	--Mem Hazard: 
	Int_ForwardA(0) <= MEM_WB_RegWrite and not(MEM_WB_Rd_Zero) and not(MEM_WB_RegWrite and not(EX_MEM_Rd_Zero) and ExM_Rd_Rs_Equal) and MW_Rd_Rs_Equal;
	Int_ForwardB(0) <= MEM_WB_RegWrite and not(MEM_WB_Rd_Zero) and not(MEM_WB_RegWrite and not(EX_MEM_Rd_Zero) and ExM_Rd_Rt_Equal) and MW_Rd_Rt_Equal;
	
	-- Could simplify not(MEM_WB_RegWrite and not(EX_MEM_Rd_Zero) and ExM_Rd_Rs_Equal) to just not(Int_ForwardA(1)) and same with that section
	-- of Int_ForwardB(0)
	
	
	--Output
	ForwardA <= Int_ForwardA;
	ForwardB <= Int_ForwardB;

end structual;
	
	
	
	
	
	
	