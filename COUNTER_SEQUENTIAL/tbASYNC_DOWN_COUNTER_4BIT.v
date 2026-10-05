module downcounter4_tb();
reg clk,reset;
wire [3:0]q;
downcounter4 dut(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("downcounter4.vcd");
    $dumpvars(0, downcounter4_tb);
    $monitor("time=%0t clk=%b reset=%b q=%b",$time,clk,reset,q);
    clk=0;
    reset=1;

    #10;
    reset=0;
    #10;
    reset=1;
    #10;
    reset=0;
    #10 reset=0;
    #10 reset=0;
    #10 $finish;
end
endmodule
