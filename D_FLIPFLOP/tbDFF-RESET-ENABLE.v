module dff_enable_reset_tb;
reg d, en, reset, clk;
wire q;
dff_enable_reset dut (.d(d),.en(en),.reset(reset),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_enable_reset.vcd");
    $dumpvars(0, dff_enable_reset_tb);
    $monitor("time=%0t,clk=%b,reset=%b,en=%b,d=%b,q=%b",
             $time,clk,reset,en,d,q);
    clk = 0;
    for(integer i=0;i<8;i=i+1) begin
        {d,en,reset} = i;
        #10;
    end
    $finish;
end
endmodule

