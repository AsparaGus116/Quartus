transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus {C:/Users/gusbr/Desktop/CodingShit/Quartus/d_ff.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus {C:/Users/gusbr/Desktop/CodingShit/Quartus/counter.v}

