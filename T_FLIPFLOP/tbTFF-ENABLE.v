module tff_enable_tb();
reg t,en,clk;
wire q;
tff_enable dut(
    .t(t),
    .clk(clk),
    .en(en),
    .q(q)
);
initial begin
    $dumpfile("tff_enable.vcd");
    $dumpvars(0,tff_enable_tb);
    $monitor("time=%0t,t=%b,en=%b,clk=%b,q=%b",
             $time,t,en,clk,q);
    clk = 0;
   for(integer i=0;i<4;i=i+1) begin
    {t,en}=i;
    #10;
   end
    $finish;
end
always #5 clk = ~clk;
endmodule
