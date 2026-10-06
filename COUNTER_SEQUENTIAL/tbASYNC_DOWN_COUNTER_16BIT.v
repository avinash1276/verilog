module downcounter16_tb();
reg clk,reset;
wire [15:0]q;
downcounter16 dut(.clk(clk),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("downcounter16.vcd");
    $dumpvars(0, downcounter16_tb);
    $monitor("time=%0t clk=%b reset=%b q=%b",$time,clk,reset,q);
    clk=0;
    reset=1;

    #10;
    reset=0;
    #10;
    reset=1;
    #10;
    reset=0;
    #100 reset=0;
    #100 reset=0;
    #10 $finish;
end
endmodule
