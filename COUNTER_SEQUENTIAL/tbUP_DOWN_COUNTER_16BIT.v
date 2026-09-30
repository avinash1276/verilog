module updowncounter16_tb();
reg clk;
reg en;
reg up_down;
wire [15:0] q;
updowncounter16 dut(.clk(clk),.en(en),.up_down(up_down),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("updowncounter16.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t clk=%b en=%b up_down=%b q=%d (%b)",$time, clk, en, up_down, q, q);
    clk = 0;
    en = 1;
    up_down = 1;       
    #50;
    up_down = 0;       
    #50;
    en = 0;
    #20;
    $finish;
end
endmodule
