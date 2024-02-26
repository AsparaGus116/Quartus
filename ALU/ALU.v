module ALU(A,B,ALUcontrol,result,flags);

   input [31:0] A;
   input [31:0] B;
   input [3:0] 	ALUcontrol;
   output reg [31:0] result;
   output [3:0] flags;
	
	reg [31:0] sum;
	reg [31:0] sub;
	reg [31:0] negB;
	reg [32:0] coutCalc;
	reg [32:0] addCout;
	reg cout;
	
	reg v;
	
	reg v1;
	reg v2;
	reg v3;
	
	reg z;
	reg n;
	
	
	always @(A, B, ALUcontrol, sum, sub, v, v1, v2, v3, cout) begin
		sum = A + B;
		negB = ~B + 1;
		coutCalc = A + negB;
		addCout = A + B;
		sub = A + ~B + 1;
		v1 = ((~ALUcontrol[3])&(~ALUcontrol[2])&(~ALUcontrol[1]))|((~ALUcontrol[3])&(~ALUcontrol[1])&(ALUcontrol[0]));
		v2 = A[31] ^ sum[31];
		v3 = ~(A[31] ^ B[31] ^ ALUcontrol[0]);
	
		v = v1 & v2 & v3;
		
		case(ALUcontrol)
			4'b0000: 
				begin
					result = A + B;
					cout = addCout[32];
				end
			4'b0001:
				begin
					result = A + ~B + 1;
					cout = coutCalc[32];
				end
			4'b0010:
				begin
					result = A & B;
					cout = 0;
				end
			4'b0011:
				begin
					result = A | B;
					cout = 0;
				end
			4'b0100:
				begin
					result = A ^ B;
					cout = 0;
				end
			4'b0101:
				begin
					result = sub[31] ^ v;
					cout = coutCalc[32];
				end
			4'b0110:
				begin
					result = A << B[4:0];
					cout = 0;
				end
			4'b0111:
				begin
					result = A >> B[4:0];
					cout = 0;
				end
			4'b1000:
				begin
					result = $signed(A) >>> B[4:0];
					cout = 0;
				end
			4'b1001:
				begin
					result = {31'h00000000, ~cout};
					cout = coutCalc[32];
				end
		default: begin result = 32'b0; cout = 0; end
		endcase
		
		z = result == 0 ? 1 : 0;
		n = result[31];
		
		
	end
	assign flags = {v, cout, n, z};
   
endmodule
