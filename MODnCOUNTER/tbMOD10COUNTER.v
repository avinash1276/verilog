module mod10counter_tb;
reg clk;
wire [3:0] q;
mod10counter dut(.clk(clk),.q(q));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    $dumpfile("mod10counter.vcd");
    $dumpvars(0, mod10counter_tb);
    $monitor("time=%0t clk=%b q=%04b (%0d)",$time, clk, q, q);
    #110 $finish;
end
endmodule
