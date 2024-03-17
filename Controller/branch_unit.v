module branch_unit(Branch,flags,funct3,taken);

   input [3:0] flags;
   input [2:0] funct3;
   input Branch;
   output reg taken;
	// flags takes form v c n z
	always@(Branch, flags, funct3)
	begin
		case(funct3)
			0: taken <= (flags[3] & Branch);
			1: taken <= (~flags[3] & Branch);
			4: taken <= ((flags[0] ^ flags[2]) & Branch);
			5: taken <= (~(flags[0] ^ flags[2]) & Branch);
			6: taken <= ~flags[1] & Branch;
			7: taken <= flags[1] & Branch;
			default: taken <= 0;
		endcase
		
	end
   
endmodule
