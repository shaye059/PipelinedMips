library ieee;
use ieee.std_logic_1164.all;

entity Ex_Mem_Buffer is
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
end Ex_Mem_Buffer;


Architecture Structual of Ex_Mem_Buffer is 
	
	SIGNAL d_qBar: STD_LOGIC_VECTOR(24 DOWNTO 0); --32 bits long
	SIGNAL load : STD_LOGIC;
	
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
	
	--Control bits
	MemtoRegFF: enARdFF_2 PORT MAP (resetBar, MemtoReg_In, load, Clock, MemtoReg_Out, d_qBar(24));
	RegWriteFF: enARdFF_2 PORT MAP (resetBar, RegWrite_In, load, Clock, RegWrite_Out, d_qBar(23));
	MemWriteFF: enARdFF_2 PORT MAP (resetBar, MemWrite_In, load, Clock, MemWrite_Out, d_qBar(22));
	MemReadFF: enARdFF_2 PORT MAP (resetBar, MemtoReg_In, load, Clock, MemRead_Out, d_qBar(21));
	
	--ALU
	ALU7: enARdFF_2 PORT MAP (resetBar, ALU_In(7), load, Clock, ALU_Out(7), d_qBar(20));      
	ALU6: enARdFF_2 PORT MAP (resetBar, ALU_In(6), load, Clock, ALU_Out(6), d_qBar(19));
	ALU5: enARdFF_2 PORT MAP (resetBar, ALU_In(5), load, Clock, ALU_Out(5), d_qBar(18));
	ALU4: enARdFF_2 PORT MAP (resetBar, ALU_In(4), load, Clock, ALU_Out(4), d_qBar(17));
	ALU3: enARdFF_2 PORT MAP (resetBar, ALU_In(3), load, Clock, ALU_Out(3), d_qBar(16));
	ALU2: enARdFF_2 PORT MAP (resetBar, ALU_In(2), load, Clock, ALU_Out(2), d_qBar(15));
	ALU1: enARdFF_2 PORT MAP (resetBar, ALU_In(1), load, Clock, ALU_Out(1), d_qBar(14));
	ALU0: enARdFF_2 PORT MAP (resetBar, ALU_In(0), load, Clock, ALU_Out(0), d_qBar(13));
	
	--Mux
	Mux4: enARdFF_2 PORT MAP (resetBar, Mux_In(4), load, Clock, Mux_Out(4), d_qBar(12));
	Mux3: enARdFF_2 PORT MAP (resetBar, Mux_In(3), load, Clock, Mux_Out(3), d_qBar(11));
	Mux2: enARdFF_2 PORT MAP (resetBar, Mux_In(2), load, Clock, Mux_Out(2), d_qBar(10));
	Mux1: enARdFF_2 PORT MAP (resetBar, Mux_In(1), load, Clock, Mux_Out(1), d_qBar(9));
	Mux0: enARdFF_2 PORT MAP (resetBar, Mux_In(0), load, Clock, Mux_Out(0), d_qBar(8));
	
	--ReadReg2
	RegData7: enARdFF_2 PORT MAP (resetBar, RegData_In(7), load, Clock, RegData_Out(7), d_qBar(7));
	RegData6: enARdFF_2 PORT MAP (resetBar, RegData_In(6), load, Clock, RegData_Out(6), d_qBar(6));
	RegData5: enARdFF_2 PORT MAP (resetBar, RegData_In(5), load, Clock, RegData_Out(5), d_qBar(5));
	RegData4: enARdFF_2 PORT MAP (resetBar, RegData_In(4), load, Clock, RegData_Out(4), d_qBar(4));
	RegData3: enARdFF_2 PORT MAP (resetBar, RegData_In(3), load, Clock, RegData_Out(3), d_qBar(3));
	RegData2: enARdFF_2 PORT MAP (resetBar, RegData_In(2), load, Clock, RegData_Out(2), d_qBar(2));
	RegData1: enARdFF_2 PORT MAP (resetBar, RegData_In(1), load, Clock, RegData_Out(1), d_qBar(1));
	RegData0: enARdFF_2 PORT MAP (resetBar, RegData_In(0), load, Clock, RegData_Out(0), d_qBar(0));
	
END Structual;
	
	
	
	
	
	
		
		
		
		