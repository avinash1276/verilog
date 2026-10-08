module ripplecounter8_tb();
reg clk;
wire [7:0] q;
ripplecounter8 dut(.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("ripplecounter8.vcd");
    $dumpvars(0, ripplecounter8_tb);
    $monitor("time=%0t clk=%b q=%b", $time, clk, q);
    clk = 0;
    #300;
    $finish;
end
endmodule
