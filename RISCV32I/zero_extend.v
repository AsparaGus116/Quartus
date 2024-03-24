module zero_extend
  #(parameter WIDTH = 8, ZEROS = 24)
  (a,ZeroExt);

   input [WIDTH-1:0] a;
   output [31:0] ZeroExt;
	
	wire [31:0] Compute = {{(ZEROS){1'b0}}, a};
	assign ZeroExt = Compute;

endmodule
