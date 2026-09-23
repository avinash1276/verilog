module rotatelesftsr_tb();
reg clk;
wire [3:0] q;
rotatelesftsr dut(.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("rotatelesftsr.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b q=%b",$time, clk, q);
    clk = 0;
    #50 $finish;
end
endmodule
