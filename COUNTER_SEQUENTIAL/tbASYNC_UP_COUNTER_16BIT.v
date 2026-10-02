module upcounter16_tb();
reg clk;
reg reset;
wire [15:0] q;
upcounter16 dut(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("upcounter16.vcd");
    $dumpvars(0,upcounter16_tb);
    $monitor("time=%0t clk=%b reset=%b q=%b",$time, clk, reset, q);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end
endmodule
