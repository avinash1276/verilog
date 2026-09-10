module tff_reset_tb();
reg t,reset,clk;
wire q;
tff_reset dut(
    .t(t),
    .clk(clk),
    .reset(reset),
    .q(q)
);
initial begin
    $dumpfile("tff_reset.vcd");
    $dumpvars(0,tff_reset_tb);
    $monitor("time=%0t,t=%b,reset=%b,clk=%b,q=%b",
             $time,t,reset,clk,q);
    clk = 0;
   for(integer i=0;i<16;i=i+1) begin
    {t,reset}=i;
    #10;
   end
    $finish;
end
always #5 clk = ~clk;
endmodule
