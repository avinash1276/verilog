module upcounter2_tb();
reg clk;
wire [1:0]q;
upcounter2 dut(.clk(clk),.q(q));
always #1 clk = ~clk;
initial begin
    $dumpfile("upcounter2.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #20 $finish;
end
endmodule
