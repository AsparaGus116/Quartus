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
         endcase
       MEMADR:
       MEMREAD:
       EXECUTER:
       EXECUTEI:
       JAL:
       LUI:
       JALR:
       AUIPC:
       default:
     endcase
    
   // output logic
   // assign ALUSrcA, ALUSrcB, ResultSrc, AdrSrc, IRWrite, PCUpdate, RegWrite, MemWrite, ALUOp, Branch
   always @(state)
     case(state)
       FETCH:
       DECODE:
       MEMADR:
       MEMREAD:
       MEMWB:
       MEMWRITE:
       EXECUTER:
       ALUWB:
       EXECUTEI:
       JAL:
       BEQ:
       LUI:
       JALR:
       JALRWB:
       AUIPC:
       default:
     endcase
          
endmodule
