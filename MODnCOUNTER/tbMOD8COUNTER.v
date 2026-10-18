module mod8counter_tb;
reg clk;
wire [2:0] q;
mod8counter dut(.clk(clk),.q(q));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    $dumpfile("mod8counter.vcd");
    $dumpvars(0, mod8counter_tb);
    $monitor("time=%0t clk=%b q=%03b (%0d)",$time, clk, q, q);
    #90 $finish;
end
endmodule
