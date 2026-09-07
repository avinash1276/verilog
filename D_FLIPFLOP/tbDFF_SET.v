module dff_set_tb;
reg d, clk, set;
wire q;
dff_set dut (.d(d),.clk(clk),.set(set),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_set.vcd");
    $dumpvars(0, dff_set_tb);
    $monitor("time=%0t, set=%b, d=%b, clk=%b, q=%b",
             $time, set, d, clk, q);
    clk = 0;
    for (integer i = 0; i < 4; i = i + 1) begin
        {set, d} = i;
        #10;
    end
    $finish;
end
endmodule
