module dff_reset_tb;
reg d, clk, reset;
wire q;
dff_reset dut (.d(d),.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_reset.vcd");
    $dumpvars(0, dff_reset_tb);
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
