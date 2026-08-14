module ALU4bit_tb();

  reg [3:0] a, b;
  reg [1:0] selectlines;
  wire [3:0] x;

  ALU4bit dut(
    .a(a),
    .b(b),
    .selectlines(selectlines),
    .x(x)
  );

  integer i, j;

  initial begin

    $dumpfile("ALU4bit.vcd");
    $dumpvars(0, dut);

    for(i = 0; i < 256; i = i + 1) begin
      for(j = 0; j < 4; j = j + 1) begin

        {a,b} = i;
        selectlines = j;

        #5;

        case(selectlines)

          2'b00:
            $display("a=%b, b=%b, selectlines=%b, x=%b -> AND",
                     a, b, selectlines, x);

          2'b01:
            $display("a=%b, b=%b, selectlines=%b, x=%b -> OR",
                     a, b, selectlines, x);

          2'b10:
            $display("a=%b, b=%b, selectlines=%b, x=%b -> ADDITION",
                     a, b, selectlines, x);

          2'b11:
            $display("a=%b, b=%b, selectlines=%b, x=%b -> SUBTRACTION",
                     a, b, selectlines, x);

        endcase

      end
    end

    $finish;

  end

endmodule
