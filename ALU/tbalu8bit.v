module ALU8bit_tb();

  reg [7:0] a, b;
  reg [2:0] s;
  wire [7:0] x;
  wire carry;
  wire borrow;
  ALU8bit dut(
    .a(a),
    .b(b),
    .s(s),
    .x(x),
    .carry(carry),
    .borrow(borrow)
  );
  integer i, j;
  initial begin
    $dumpfile("ALU8bit.vcd");
    $dumpvars(0, dut);
    $monitor("a=%b, b=%b, s=%b, x=%b, carry=%b,borrow=%b",a, b, s, x,carry,borrow);
    for (j = 0; j < 8; j = j + 1) begin
      s = 3;
      for (i = 0; i < 65536; i = i + 1) begin
        {a, b} = 77;
        #5;
      end
    end
    $finish;
  end
endmodule
