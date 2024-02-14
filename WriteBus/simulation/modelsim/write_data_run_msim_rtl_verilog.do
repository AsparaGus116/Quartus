transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus {C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus/write_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus {C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus/mux4.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus {C:/Users/gusbr/Desktop/CodingShit/Quartus/WriteBus/mux2.v}

