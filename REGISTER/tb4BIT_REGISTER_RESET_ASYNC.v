module register4dff_resetasync_tb;
reg [3:0]d;
reg clk, reset;
wire [3:0]q;
register4dff_resetasync dut (.d(d),.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("register4dff_resetasync.vcd");
    $dumpvars(0, register4dff_resetasync_tb);
    $monitor("time=%0t, reset=%b, d=%b, clk=%b, q=%b",
             $time, reset, d, clk, q);
    clk = 0;
    for (integer i = 0; i < 4; i = i + 1) begin
         d = i;
    for(integer j=0;j<2;j=j+1) begin
        reset = j;
        #10;
    end
    end
    $finish;
end
endmodule
