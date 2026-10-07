module updowncounter16_tb();
reg clk;
reg en;
reg reset;
wire [15:0] q;
updowncounter16 dut(.clk(clk),.en(en),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("updowncounter16.vcd");
    $dumpvars(0, updowncounter16_tb);
    $monitor("time=%0t clk=%b en=%b reset=%b q=%d",$time, clk, en, reset, q);
    clk = 0;
    en = 1;
    reset = 1;

    #10;
    reset = 0;
    #50;
    en = 0;
    #50;
    reset = 1;
    #10;
    reset = 0;
    #30;
    $finish;
end
endmodule
