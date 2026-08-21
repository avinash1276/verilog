module circularshifter_tb();
  reg [3:0]a;
  reg [1:0]s;
  reg dir;
  wire [3:0]y;
  circularshifter dut(.a(a),.s(s),.dir(dir),.y(y));
  integer i;
  initial begin
    $dumpfile("circularshifter.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,dir=%b,y=%b",a,s,dir,y);
    a = 4'b0101;
    dir = 0;
    for(i=0;i<4;i=i+1) begin
      s=i;
      #5;
    end
    dir = 1;
    for(i=0;i<4;i=i+1) begin
      s=i;
      #5;
    end
    $finish;
  end
endmodule
      
