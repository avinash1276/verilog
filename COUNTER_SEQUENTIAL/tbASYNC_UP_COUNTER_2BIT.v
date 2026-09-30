module upcounter2_tb();
reg clk;
reg reset;
wire [1:0] q;
upcounter2 dut(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("upcounter2.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b reset=%b q=%b",$time, clk, reset, q);
    clk = 0;
    reset = 1;

    #10;
    reset = 0;
    #40;
    reset = 1;
    #5;
    reset = 0;
    #20;
    $finish;
end
endmodule
