module thermometercodegen2bit_tb();
  reg [1:0]a;
  wire [2:0]x;
  thermometercodegen2bit dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("thermometercodegen.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<4;i=i+1) begin
      a = i;
      #5;
    end
    $finish;
  end
endmodule
      
