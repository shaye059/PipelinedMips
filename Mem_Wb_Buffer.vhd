library ieee;
use ieee.std_logic_1164.all;

entity Mem_Wb_Buffer is
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
end Mem_Wb_Buffer; 

Architecture structual of Mem_Wb_Buffer is 

	SIGNAL d_qBar: STD_LOGIC_VECTOR(22 DOWNTO 0); --22 bits long (2 control signals + 8-bit ALU + 8-bit Data Memeory + 5-bit Mux)
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

	load <= '1'; --Load is always active
	resetBar <= G_reset;  	--asynchronous FLUSH.

	--Control bits
	MemtoRegFF: enARdFF_2 PORT MAP (resetBar, MemtoReg_In, load, Clock, MemtoReg_Out, d_qBar(22));
	RegWriteFF: enARdFF_2 PORT MAP (resetBar, RegWrite_In, load, Clock, RegWrite_Out, d_qBar(21));
	
	--Mux
	Mux4: enARdFF_2 PORT MAP (resetBar, Mux_In(4), load, Clock, Mux_Out(4), d_qBar(20));
	Mux3: enARdFF_2 PORT MAP (resetBar, Mux_In(3), load, Clock, Mux_Out(3), d_qBar(19));
	Mux2: enARdFF_2 PORT MAP (resetBar, Mux_In(2), load, Clock, Mux_Out(2), d_qBar(18));
	Mux1: enARdFF_2 PORT MAP (resetBar, Mux_In(1), load, Clock, Mux_Out(1), d_qBar(17));
	Mux0: enARdFF_2 PORT MAP (resetBar, Mux_In(0), load, Clock, Mux_Out(0), d_qBar(16));
	
	
	--ALU
	ALU7: enARdFF_2 PORT MAP (resetBar, ALU_In(7), load, Clock, ALU_Out(7), d_qBar(15));      
	ALU6: enARdFF_2 PORT MAP (resetBar, ALU_In(6), load, Clock, ALU_Out(6), d_qBar(14));
	ALU5: enARdFF_2 PORT MAP (resetBar, ALU_In(5), load, Clock, ALU_Out(5), d_qBar(13));
	ALU4: enARdFF_2 PORT MAP (resetBar, ALU_In(4), load, Clock, ALU_Out(4), d_qBar(12));
	ALU3: enARdFF_2 PORT MAP (resetBar, ALU_In(3), load, Clock, ALU_Out(3), d_qBar(11));
	ALU2: enARdFF_2 PORT MAP (resetBar, ALU_In(2), load, Clock, ALU_Out(2), d_qBar(10));
	ALU1: enARdFF_2 PORT MAP (resetBar, ALU_In(1), load, Clock, ALU_Out(1), d_qBar(9));
	ALU0: enARdFF_2 PORT MAP (resetBar, ALU_In(0), load, Clock, ALU_Out(0), d_qBar(8));
	
	
	--Data Memeory
	DataMem7: enARdFF_2 PORT MAP (resetBar, DataMem_In(7), load, Clock, DataMem_Out(7), d_qBar(7));
	DataMem6: enARdFF_2 PORT MAP (resetBar, DataMem_In(6), load, Clock, DataMem_Out(6), d_qBar(6));
	DataMem5: enARdFF_2 PORT MAP (resetBar, DataMem_In(5), load, Clock, DataMem_Out(5), d_qBar(5));
	DataMem4: enARdFF_2 PORT MAP (resetBar, DataMem_In(4), load, Clock, DataMem_Out(4), d_qBar(4));
	DataMem3: enARdFF_2 PORT MAP (resetBar, DataMem_In(3), load, Clock, DataMem_Out(3), d_qBar(3));
	DataMem2: enARdFF_2 PORT MAP (resetBar, DataMem_In(2), load, Clock, DataMem_Out(2), d_qBar(2));
	DataMem1: enARdFF_2 PORT MAP (resetBar, DataMem_In(1), load, Clock, DataMem_Out(1), d_qBar(1));
	DataMem0: enARdFF_2 PORT MAP (resetBar, DataMem_In(0), load, Clock, DataMem_Out(0), d_qBar(0));

End structual;

		