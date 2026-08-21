module thermometercodegen3bit_tb();
  reg [2:0]a;
  wire [6:0]x;
  thermometercodegen3bit dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("thermometercodegen3bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<8;i=i+1) begin
      a=i;
      #5;
    end
    $finish;
  end
endmodule
