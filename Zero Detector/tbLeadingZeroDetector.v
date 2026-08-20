module LZD_tb();
  reg [3:0]a;
  wire [2:0]x;
  LZD dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("LZD.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<16;i=i+1) begin
      a=i;
      #5;
    end
    $finish;
  end
endmodule
