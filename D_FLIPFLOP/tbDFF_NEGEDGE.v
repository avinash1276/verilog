module dffnegedge_tb;
reg d, clk;
wire q;
dffnegedge dut (
    .d(d),
    .clk(clk),
    .q(q)
);
initial begin
  $dumpfile("dffnegedge.vcd");
    $dumpvars(0, dff_tb);
     $monitor("time=%0t, clk=%b, d=%b, q=%b", 
             $time, clk, d, q);
    clk = 0;
    d = 0;
    #5  d = 1;
    #5  d = 0;
    #5  d = 1;
    #5  d = 0;
    #5  $finish;
end
always #5 clk = ~clk;
endmodule
