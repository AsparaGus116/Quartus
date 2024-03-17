module mux4
  #(parameter WIDTH = 8)
   (d0,d1,d2,d3,sel,y);

   input [WIDTH-1:0] d0;
   input [WIDTH-1:0] d1;
   input [WIDTH-1:0] d2;
   input [WIDTH-1:0] d3;
   input [1:0]	     sel;
   output [WIDTH-1:0] y;
	reg [WIDTH - 1:0] selected;

	always @(sel, d0, d1, d2, d3)
			begin
				case (sel)
					0: selected <= d0;
					1: selected <= d1;
					2: selected <= d2;
					3: selected <= d3;
				endcase
			end

	assign y = selected;
endmodule
