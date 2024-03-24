module imm_src_decoder (op,ImmSrc);

   input [6:0] op;
   output reg [2:0] ImmSrc;
	
	always@(op)
	begin
		case(op)
			3: ImmSrc <= 0;
			19: ImmSrc <= 0;
			103: ImmSrc <= 0;
			35: ImmSrc <= 1;
			99: ImmSrc <= 2;
			111: ImmSrc <= 3;
			23: ImmSrc <= 4;
			55: ImmSrc <= 4;
			default: ImmSrc <= 7;
		endcase
		
	end
   
endmodule
