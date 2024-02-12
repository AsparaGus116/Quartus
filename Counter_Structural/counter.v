module counter(reset, clock, s0, s1, q0, q1);

	input reset, clock, s0, s1;
	wire d0, d1;
	output q0, q1;
	
	d_ff d_ff0(.reset(reset), .clock(clock), .D(d0), .Q(q0));
	d_ff d_ff1(.reset(reset), .clock(clock), .D(d1), .Q(q1));
	
	assign d0 = (~s1 & ~q0) | (s0 & q1 & ~q0) | (~s0 & ~q1 & ~q0);
	assign d1 = (s0 & ~q1 & ~q0) | (~s0 & ~q1 & q0) | (~s1 & s0 & q1 & q0) | (~s1 & ~s0 & q1 & ~q0);
	
endmodule
