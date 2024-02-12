//  A testbench for andMod_Tests_tb
`timescale 1us/1ns

module testbench;
    reg X;
    reg Y;
    wire Z;

  andMod andMod0 (
    .X(X),
    .Y(Y),
    .Z(Z)
  );

    reg [2:0] patterns[0:3];
    integer i;

    initial begin
      patterns[0] = 3'b0_0_0;
      patterns[1] = 3'b0_1_0;
      patterns[2] = 3'b1_0_0;
      patterns[3] = 3'b1_1_1;

      for (i = 0; i < 4; i = i + 1)
      begin
        X = patterns[i][2];
        Y = patterns[i][1];
        #10;
        if (patterns[i][0] !== 1'hx)
        begin
          if (Z !== patterns[i][0])
          begin
            $display("%d:Z: (assertion error). Expected %h, found %h", i, patterns[i][0], Z);
            $finish;
          end
        end
      end

      $display("All tests passed.");
    end
    endmodule
