module load_store_unit(funct3,LoadType,StoreType);

   input [2:0] funct3;
   output reg [2:0] LoadType;
   output reg [1:0] StoreType;

		always@(funct3)
		begin
			case(funct3)
				2:
				begin
					LoadType <= 0;
					StoreType <= 0;
				end
				4: 
				begin
					LoadType <= 1;
					StoreType <= 3;
				end
				0:
				begin
					LoadType <= 2;
					StoreType <= 1;
				end
				5: 
				begin
					LoadType <= 4;
					StoreType <= 3;
				end
				1:
				begin
					LoadType <= 5;
					StoreType <= 2;
				end
				default:
					begin
					LoadType <= 7;
					StoreType <= 3;
					end
			endcase
			
		end
endmodule
