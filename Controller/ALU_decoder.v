module ALU_decoder(opb5,funct3,funct7b5,ALUOp,ALUControl);

   input opb5;
   input [2:0] funct3;
   input       funct7b5;
   input [1:0] ALUOp;
   output reg [3:0] ALUControl;
	
	always@(ALUOp, opb5, funct3, funct7b5)
	begin
		case(ALUOp)
			0: ALUControl <= 0;
			1: ALUControl <= 1;
			2: 
			begin
				
			end
		endcase
	end
	
   
endmodule
