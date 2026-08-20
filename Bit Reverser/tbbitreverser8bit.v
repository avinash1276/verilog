module Bitreverser8bit_tb();
  reg [7:0]a;
  wire [7:0]x;
  Bitreverser8bit dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("Bitreverser8bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<256;i=i+1) begin
      a = i;
      #5;
    end
    $finish;
  end
endmodule
