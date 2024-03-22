module main_fsm(reset,clock,op,
	       ALUSrcA,ALUSrcB,ResultSrc,AdrSrc,
	       IRWrite,PCUpdate,RegWrite, MemWrite,
               ALUOp,Branch);

   input reset;
   input clock;
   input [6:0] op;
   output reg [1:0] ALUSrcA;
   output reg [1:0] ALUSrcB;
   output reg [1:0] ResultSrc;
   output reg	AdrSrc;
   output reg	IRWrite;
   output reg	PCUpdate;
   output reg	RegWrite;
   output reg	MemWrite;
   output reg [1:0] ALUOp;
   output reg	Branch;

   parameter FETCH = 0, DECODE = 1, MEMADR = 2, MEMREAD = 3, MEMWB = 4,
     MEMWRITE = 5, EXECUTER = 6, ALUWB = 7, EXECUTEI = 8, JAL = 9,
     BEQ = 10, LUI = 11, JALR = 12, JALRWB = 13, AUIPC = 14;
   
   reg [3:0] 	state, nextstate;
  
   // current state
   always @(posedge reset, posedge clock)
     begin
	if (reset == 1)
	  state <= FETCH;
	else
	  state <= nextstate;
     end
  
   // next state logic
   always @(state,op)
     case(state)
       FETCH: nextstate <= DECODE;
       DECODE: // Decode the opcode, op, to determine the next state
	 case(op)
		3: nextstate <= MEMADR;
		19: nextstate <= EXECUTEI;
		23: nextstate <= AUIPC;
		35: nextstate <= MEMADR;
		51: nextstate <= EXECUTER;
		55: nextstate <= LUI;
		99: nextstate <= BEQ;
		103: nextstate <= JALR;
		111: nextstate <= JAL;
		default: nextstate <= FETCH;
         endcase
       MEMADR: nextstate <= op[5] ? MEMWRITE : MEMREAD;
       MEMREAD: nextstate <= MEMWB;
       EXECUTER: nextstate <= ALUWB;
       EXECUTEI: nextstate <= ALUWB;
       JAL: nextstate <= ALUWB;
       LUI: nextstate <= ALUWB;
       JALR: nextstate <= JALRWB;
       AUIPC: nextstate <= ALUWB;
       default:
		 nextstate <= FETCH;
     endcase
    
   // output logic
   // assign ALUSrcA, ALUSrcB, ResultSrc, AdrSrc, IRWrite, PCUpdate, RegWrite, MemWrite, ALUOp, Branch
   always @(state)
     case(state)
       FETCH:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 2;
			ResultSrc <= 2;
			AdrSrc <= 0;
			IRWrite <= 1;
			PCUpdate <= 1;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       DECODE:
		 begin
			ALUSrcA <= 1;
			ALUSrcB <= 1;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       MEMADR:
		 begin
			ALUSrcA <= 2;
			ALUSrcB <= 1;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       MEMREAD:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 1;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       MEMWB:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 0;
			ResultSrc <= 1;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 1;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       MEMWRITE:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 1;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 1;
			ALUOp <= 0;
			Branch <= 0;
		 end
       EXECUTER:
		 begin
			ALUSrcA <= 2;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 2;
			Branch <= 0;
		 end
       ALUWB:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 1;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       EXECUTEI:
		 begin
			ALUSrcA <= 2;
			ALUSrcB <= 1;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 2;
			Branch <= 0;
		 end
       JAL:
		 begin
			ALUSrcA <= 1;
			ALUSrcB <= 2;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 1;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       BEQ:
		 begin
			ALUSrcA <= 2;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 1;
			Branch <= 1;
		 end
       LUI:
		 begin
			ALUSrcA <= 3;
			ALUSrcB <= 1;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       JALR:
		 begin
			ALUSrcA <= 2;
			ALUSrcB <= 1;
			ResultSrc <= 2;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 1;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       JALRWB:
		 begin
			ALUSrcA <= 1;
			ALUSrcB <= 2;
			ResultSrc <= 2;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 1;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       AUIPC:
		 begin
			ALUSrcA <= 1;
			ALUSrcB <= 1;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
       default:
		 begin
			ALUSrcA <= 0;
			ALUSrcB <= 0;
			ResultSrc <= 0;
			AdrSrc <= 0;
			IRWrite <= 0;
			PCUpdate <= 0;
			RegWrite <= 0;
			MemWrite <= 0;
			ALUOp <= 0;
			Branch <= 0;
		 end
     endcase
          
endmodule
