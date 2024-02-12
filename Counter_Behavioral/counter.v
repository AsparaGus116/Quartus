module counter(reset, clock, s0, s1, q0, q1);

	input reset, clock, s0, s1;
	reg[1:0] count;
	reg[1:0] count_next;
	output wire q0, q1;
	
	always @(posedge reset, posedge clock)
		begin
			if (reset == 1) count <= 2'b0;
			else count <= count_next;
		end

	
		always @(s0, s1, count)
			begin
				case ({s1, s0})
					0: count_next <= count + 2'b1;
					1: count_next <= count - 2'b1;
					2: if (count  == 2'd2) count_next <= 0;
						else count_next <= count + 2'b1;
					3: if (count == 2'd0) count_next <= 2;
						else count_next <= count - 2'b1;
				endcase
			end
			
		assign q1 = count[1];
		assign q0 = count[0];
	
	endmodule