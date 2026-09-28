module downcounter2_tb();
reg clk;
wire [1:0]q;
downcounter2 dut(.clk(clk),.q(q));
always #1 clk = ~clk;
initial begin
    $dumpfile("downcounter2.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    clk=0;
    #10 $finish;
end
endmodule
