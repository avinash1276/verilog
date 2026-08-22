module populationcounter16bit_tb();
  reg [15:0]a;
  wire [4:0]x;
  populationcounter16bit dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("populationcounter16bit.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<65535;i=i+1) begin
      a=729;
      #5;
    end
  $finish;
  end
endmodule
