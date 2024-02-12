vlog -vlog01compat -work work +incdir+C:/users/gusbr/Desktop/CodingShit/Quartus/Counter_Behavioral {C:/Users/gusbr/Desktop/CodingShit/Quartus/Counter_Behavioral/testbench.v}

vsim work.testbench

add wave -position insertpoint \
sim:/testbench/q0 \
sim:/testbench/q1 \
sim:/testbench/s0 \
sim:/testbench/s1 \
sim:/testbench/reset \
sim:/testbench/clock