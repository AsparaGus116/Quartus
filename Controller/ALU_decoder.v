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
				if(~opb5) begin
					if(funct3 == 0)
						ALUControl <= 0;
					else if(funct3 == 1 && funct7b5 == 0)
						ALUControl <= 6;
					else if(funct3 == 2)
						ALUControl <= 5;
					else if(funct3 == 3)
						ALUControl <= 9;
					else if(funct3 == 4)
						ALUControl <= 4;
					else if(funct3 == 5 && ~funct7b5)
						ALUControl <= 7;
					else if(funct3 == 5 && funct7b5)
						ALUControl <= 8;
					else if(funct3 == 6)
						ALUControl <= 3;
					else if(funct3 == 7)
						ALUControl <= 2;
					else
						ALUControl <= 0;
				end else begin
					if(funct3 == 0 && funct7b5 == 0)
						ALUControl <= 0;
					else if(funct3 == 0 && funct7b5 == 1)
						ALUControl <= 1;
					else if(funct3 == 1 && funct7b5 == 0)
						ALUControl <= 6;
					else if(funct3 == 2 && funct7b5 == 0)
						ALUControl <= 5;
					else if(funct3 == 3 && funct7b5 == 0)
						ALUControl <= 9;
					else if(funct3 == 4 && funct7b5 == 0)
						ALUControl <= 4;
					else if(funct3 == 5 && ~funct7b5)
						ALUControl <= 7;
					else if(funct3 == 5 && funct7b5)
						ALUControl <= 8;
					else if(funct3 == 6 && funct7b5 == 0)
						ALUControl <= 3;
					else if(funct3 == 7 && funct7b5 == 0)
						ALUControl <= 2;
					else
						ALUControl <= 0;
				end
			end
			default:
				ALUControl <= 0;
		endcase
	end
	
   
endmodule
