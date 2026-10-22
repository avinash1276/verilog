module mod11counter_tb;
reg clk;
wire [3:0] q;
mod11counter dut(.clk(clk),.q(q));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    $dumpfile("mod11counter.vcd");
    $dumpvars(0, mod11counter_tb);
    $monitor("time=%0t clk=%b q=%04b (%0d)",$time, clk, q, q);
    #120 $finish;
end
endmodule
