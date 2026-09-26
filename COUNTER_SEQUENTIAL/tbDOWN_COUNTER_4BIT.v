module downcounter4_tb();
reg clk;
wire [3:0]q;
downcounter4 dut(.clk(clk),.q(q));
always #1 clk = ~clk;
initial begin
    $dumpfile("downcounter4.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #16 $finish;
end
endmodule
