module mod4counter_tb();
  reg clk;
  wire [1:0]q;
  mod4counter dut(.clk(clk),.q(q));
  always #1 clk = ~clk;
  initial begin
    $dumpfile("mod4counter.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk = 0;
    #50 $finish;
  end
endmodule
    
