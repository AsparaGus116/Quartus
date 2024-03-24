module extend(Instr,ImmSrc,ImmExt);

   input [31:0] Instr;
   input [2:0] 	ImmSrc;
   output reg [31:0] ImmExt;
	
	always @(Instr, ImmSrc) begin
	case (ImmSrc)
		0: ImmExt = {{20{Instr[31]}}, Instr[31:20]};
		1: ImmExt = {{20{Instr[31]}}, Instr[31:25], Instr[11:7]};
		2: ImmExt = {{19{Instr[31]}}, Instr[31], Instr[7], Instr[30:25], Instr[11:8], 1'b0};
		3: ImmExt = {{12{Instr[31]}}, Instr[19:12], Instr[20], Instr[30:21], 1'b0};
		4: ImmExt = {{{Instr[31:12]}}, 12'b0};
		
		default: ImmExt = 32'b0;
	
		endcase
	end
   
endmodule
