module d_ff(reset, clock, D, Q);

	input reset, clock;
	input D;
	output reg Q;
	
	always @(posedge reset, posedge clock)
		begin
			if (reset == 1)
				Q <= 0;
			else
				Q <= D;
				
		end
		
endmodule