transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/And2 {C:/Users/gusbr/Desktop/CodingShit/Quartus/And2/andMod.v}

