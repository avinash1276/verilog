module barrelshifter_tb();
  reg [3:0]a;
  reg [3:0]s;
  wire [3:0]x;
  barrelshifter dut(.a(a),.s(s),.x(x));
  integer i;
  initial begin
    $dumpfile("barrelshifter.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,s=%b,x=%b",a,s,x);
    
       a = 4'b1011;

    s = 4'b0000; #5;  // Logical left shift
    s = 4'b0001; #5;  // Logical right shift
    s = 4'b0010; #5;  // Arithmetic right shift
    s = 4'b0100; #5;  // Rotate right
    s = 4'b1000; #5;  // Rotate left
 
    $finish;

  end
endmodule
