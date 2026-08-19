module ALU4bit_tb();

  reg [3:0] a, b;
  reg [1:0] selectlines;
  wire [3:0] x;
  wire carry;
  wire borrow;
  ALU4bit dut(
    .a(a),
    .b(b),
    .selectlines(selectlines),
    .x(x),
    .carry(carry),
    .borrow(borrow)
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
            $display("a=%b, b=%b, selectlines=%b, x=%b ,carry=%b, borrow=%b -> AND",a, b, selectlines, x,carry,borrow);

          2'b01:
            $display("a=%b, b=%b, selectlines=%b, x=%b ,carry=%b, borrow=%b -> OR",a, b, selectlines, x,carry,borrow);

          2'b10:
            $display("a=%b, b=%b, selectlines=%b, x=%b ,carry=%b , borrow=%b -> ADDITION",a, b, selectlines, x,carry,borrow);

          2'b11:
            $display("a=%b, b=%b, selectlines=%b, x=%b, carry=%b, borrow=%B -> SUBTRACTION",a, b, selectlines, x,carry,borrow);

        endcase

      end
    end

    $finish;

  end

endmodule
