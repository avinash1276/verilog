module mod9counter_tb;
reg clk;
wire [3:0] q;
mod9counter dut(.clk(clk),.q(q));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    $dumpfile("mod9counter.vcd");
    $dumpvars(0, mod9counter_tb);
    $monitor("time=%0t clk=%b q=%04b (%0d)",$time, clk, q, q);
    #100 $finish;
end
endmodule
