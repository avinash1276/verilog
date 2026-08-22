module populationcounter8bit_tb();
  reg [7:0]a;
  wire [3:0]x;
  populationcounter8bit dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("populationcounter8bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<256;i=i+1) begin
      a=234;
      #5;
    end
  $finish;
  end
endmodule
