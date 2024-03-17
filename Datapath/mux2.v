module mux2
  #(parameter WIDTH = 8)
   (d0,d1,sel,y);

   input [WIDTH-1:0] d0;
   input [WIDTH-1:0] d1;
   input 	     sel;
   output [WIDTH-1:0] y;
	reg [WIDTH-1:0]selected;

	always @(sel, d0, d1)
			begin
				case (sel)
					0: selected <= d0;
					1: selected <= d1;
				endcase
			end

	assign y = selected;
endmodule
