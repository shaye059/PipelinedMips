transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/spenc/Uni Third Year/CEG3156/Labs/Lab3/equalTest.vhd}

