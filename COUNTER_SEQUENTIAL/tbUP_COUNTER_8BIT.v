module upcounter8_tb();
reg clk;
wire [7:0]q;
upcounter8 dut(.clk(clk),.q(q));
initial begin
    $dumpfile("upcounter8.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #510 $finish;
end
always #1 clk = ~clk;
endmodule
