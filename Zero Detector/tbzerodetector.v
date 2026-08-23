module zerodetector_tb();
  reg [3:0]a;
  wire x;
  zerodetector dut(.a(a),.x(x));
  integer i;
  initial begin
    $dumpfile("zerodetector.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,x=%b",a,x);
    for(i=0;i<16;i=i+1) begin
      a = i;
      #5;
    end
  $finish;
  end
endmodule
