module downcounter16_tb();
reg clk;
wire [15:0]q;
downcounter16 dut(.clk(clk),.q(q));
always #1 clk = ~clk;
initial begin
    $dumpfile("downcounter16.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #50 $finish;
end
endmodule
