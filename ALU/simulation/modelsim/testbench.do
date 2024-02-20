vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Downloads {C:/Users/gusbr/Downloads/testbench.v}

vsim work.testbench

add wave -position insertpoint  \
sim:/testbench/A \
sim:/testbench/B \
sim:/testbench/ALUcontrol \
sim:/testbench/result \
sim:/testbench/flags
run 120 ns