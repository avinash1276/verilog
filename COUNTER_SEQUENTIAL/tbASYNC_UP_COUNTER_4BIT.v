module upcounter4_tb();
reg clk;
reg reset;
wire [3:0]q;
upcounter4 dut(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("upcounter4.vcd");
    $dumpvars(0,upcounter4_tb);
    $monitor("time=%0t clk=%b reset=%b q=%b",$time, clk, reset, q);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end
endmodule
