module sign_extend
  #(parameter WIDTH = 8, SIGNS = 24)
  (a,SignExt);

   input [WIDTH-1:0] a;
   output [31:0] SignExt;
	
	
	wire [31:0] Compute = {{(SIGNS){a[WIDTH - 1]}}, a};
	
	assign SignExt = Compute;

endmodule
