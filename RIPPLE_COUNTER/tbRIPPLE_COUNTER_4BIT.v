module ripplecounter4_tb();
reg clk;
wire [3:0] q;
ripplecounter4 dut(.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("ripplecounter4.vcd");
    $dumpvars(0, ripplecounter4_tb);
    $monitor("time=%0t clk=%b q=%b", $time, clk, q);
    clk = 0;
    #100;
    $finish;
end
endmodule
