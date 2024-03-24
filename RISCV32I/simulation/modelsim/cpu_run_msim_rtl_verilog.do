transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/cpu.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/zero_extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/write_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/sign_extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/register_n.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/register_file.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/read_data.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/mux4.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/mux3.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/mux2.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/main_fsm.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/load_store_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/imm_src_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/datapath.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/constant_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/branch_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/ALU_decoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I {C:/Users/gusbr/Desktop/CodingShit/Quartus/RISCV32I/ALU.v}

