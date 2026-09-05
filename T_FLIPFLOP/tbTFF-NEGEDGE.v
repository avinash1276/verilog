module tffnegedge_tb();
reg t, clk;
wire q;
tffnegedge dut(
    .t(t),
    .clk(clk),
    .q(q)
);
initial begin
    $dumpfile("tfnegedgef.vcd");
    $dumpvars(0, dut);
    $monitor("time=%0t, t=%b, clk=%b, q=%b",
             $time, t, clk, q);
    clk = 0;
    t = 0;
    #5  t = 0;
    #5  t = 1;
    #5  t = 1;
    #10 $finish;
end
always #5 clk = ~clk;
endmodule
