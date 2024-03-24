module address_decoder (MemWrite,Addr,RAM_CS,RAM_WE,ROM_CS);

   input MemWrite;
   input [31:0] Addr;
   output reg	RAM_CS;
   output reg	RAM_WE;
   output reg	ROM_CS;
	
	always @(MemWrite, Addr)
	begin
		if(Addr <= 'h3ff)
		begin
			ROM_CS <= 1;
		end else begin
			ROM_CS <= 0;
		end
		if(Addr >= 'h400 && Addr <= 'h4ff)
		begin
			RAM_CS <= 1;
			if (MemWrite)
				RAM_WE <= 1;
			else
				RAM_WE <= 0;
		end else begin
			RAM_CS <= 0;
			RAM_WE <= 0;
		end
		end

   // The memory map has non-volatile ROM (32 bits wide) from 
   // address 'h00000000 to 'h000003FF:
   // Bit number
   // 3    2    2    1    1    1    0    0
   // 1    7    3    9    5    1    7    3
   // 0000 0000 0000 0000 0000 0011 1111 1111 = 'h000003FF

   // The memory map has volatile RAM memory from
   // address 'h00000400 to address 'h0000004FF:
   // Bit number
   // 3    2    2    1    1    1    0    0
   // 1    7    3    9    5    1    7    3
   // 0000 0000 0000 0000 0000 0100 0000 0000 = 'h00000400
   // 0000 0000 0000 0000 0000 0100 1111 1111 = 'h000004FF

endmodule
