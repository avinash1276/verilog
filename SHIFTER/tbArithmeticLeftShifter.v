module ArithmeticLeftShifter_tb();
  reg [4:0]a;
  wire [4:0]x;
  ArithmeticLeftShifter dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("ArithmeticLeftShifter.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<32;i=i+1) begin
      a = i;
      #5;
    end
  $finish;
  end
endmodule
