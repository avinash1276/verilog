module register4dff_enable_tb;
reg [3:0]d;
reg en,clk;
wire [3:0]q;
register4dff_enable dut (
    .d(d),
    .en(en),
    .clk(clk),
    .q(q)
);
initial begin
    $dumpfile("register4dff_enable.vcd");
    $dumpvars(0, register4dff_enable_tb);
     $monitor("time=%0t,clk=%b,d=%b,en=%b,q=%b",$time,clk,d,en,q);
    clk = 0;
    d=0;
    en=0;

    for(integer i=0;i<4;i=i+1) begin
        d = i;
    for(integer j=0;j<2;j=j+1) begin
        en = j;
        #10;
    end
    end
    $finish;
end
always #5 clk = ~clk;
endmodule
