module register_file(reset,clock,we3,a1,a2,a3,wd3,rd1,rd2);
   
   input reset;
   input clock;
   input we3; // write-enable
   input [4:0] a1; // register address 1
   input [4:0] a2; // register address 2
   input [4:0] a3; // register address 3
   input [31:0] wd3; // write data
   output reg [31:0] rd1; // read register 1
   output reg [31:0] rd2; // read register 2
	
	reg[31:0] Q[0:31];
	reg [6:0] i;
	
	always @(posedge clock or posedge reset)
	begin
		i = 0;
		if (reset) begin
		 for(i = 0; i < 32; i = i + 1) begin
			Q[i] <= 0;
			end
			i = 0;
			end else begin
		if (we3) begin
			Q[a3] <= wd3;
		end
		if (a1 != 0) begin
			rd1 = Q[a1];
		end else begin
			rd1 = 0;
		end
		if (a2 != 0) begin
			rd2 = Q[a2];
		end else begin
			rd2 = 0;
		end
		end
	end
	
   
endmodule
