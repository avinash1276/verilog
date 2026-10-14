module mod2counter_tb();
  reg d,clk;
  wire q;
  mod2counter dut(.d(d),.clk(clk),.q(q));
  always #5 clk = ~clk;
  initial begin
    $dumpfile("mod2counter.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t d=%b clk=%b q=%b",$time,d,clk,q);
    clk = 0;
    d = 0;
    #100 $finish;
  end
endmodule
