vlog -vlog01compat -work work +incdir+C:/Users/gusbr/Downloads/Confirm/src {C:/Users/gusbr/Desktop/CodingShit/Quartus/testbench.v}

vsim work.testbench

add wave -position insertpoint  \
sim:/testbench/q0 \
sim:/testbench/q1 \
sim:/testbench/s0 \
sim:/testbench/s1 \
sim:/testbench/reset \
sim:/testbench/clock