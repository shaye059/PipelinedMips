transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/MultiCycleProc.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_EIGHT_TO_ONE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/Mem_Wb_Buffer.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/FIVE_BIT_TWO_TO_ONE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ONE_BIT_ALU.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ONE_BIT_4_TO_1.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ONE_BIT_2_TO_1.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/MAIN_ALU.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ALU_CONTROL.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ID_EX_BUFFER.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/Hazard_Control_Unit.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/Forwarding_Unit.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/Ex_Mem_Buffer.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/CONTROL_UNIT.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/FOUR_MULTIPLIER.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_SIXTEEN_TO_ONE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_FOUR_TO_ONE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_TWO_TO_ONE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ONE_BIT_1_TO_32.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_32_TO_1.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/clockInverter.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/REG_FILE.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/OneBitAdder.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/ONE_BIT_SELECT.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/enardFF_2.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/PC_Adder.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/EIGHT_BIT_REG.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/instruction_mem.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/IF_ID_Reg.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/equalTest.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/equalTestFiveBit.vhd}
vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/PipelinedMips/data_mem.vhd}

