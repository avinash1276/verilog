module dff_reset_async_tb;
reg d, clk, reset;
wire q;
dff_reset_async dut (.d(d),.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_reset_async.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t, reset=%b, d=%b, clk=%b, q=%b",
             $time, reset, d, clk, q);
    clk = 0;
    for (integer i = 0; i < 4; i = i + 1) begin
        {reset, d} = i;
        #10;
    end
    $finish;
end
endmodule
