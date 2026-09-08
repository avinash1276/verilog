module dff_enable_tb;
reg d,en,clk;
wire q;
dff_enable dut (
    .d(d),
    .en(en),
    .clk(clk),
    .q(q)
);
initial begin
    $dumpfile("dff_enable.vcd");
    $dumpvars(0, dff_enable_tb);
     $monitor("time=%0t,clk=%b,d=%b,en=%b,q=%b",$time,clk,d,en,q);
    clk = 0;
    for(integer i=0;i<4;i=i+1) begin
        {d,en} = i;
        #10;
    end
    $finish;
end
always #5 clk = ~clk;
endmodule
