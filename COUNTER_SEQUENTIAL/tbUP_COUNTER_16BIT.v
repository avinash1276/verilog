module upcounter16_tb();
reg clk;
wire [15:0]q;
upcounter16 dut(.clk(clk),.q(q));
initial begin
    $dumpfile("upcounter16.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #50 $finish;
end
always #1 clk = ~clk;
endmodule
