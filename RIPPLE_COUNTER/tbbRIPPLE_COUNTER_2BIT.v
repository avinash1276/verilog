module ripplecounter2_tb();
reg clk;
  wire [1:0] q;
  ripplecounter2 dut(.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("ripplecounter2.vcd");
    $dumpvars(0, ripplecounter2_tb);
    $monitor("time=%0t clk=%b q=%b",$time, clk, q);
    clk = 0;
    #50;
    $finish;
end
endmodule
