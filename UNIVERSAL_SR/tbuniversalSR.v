module universalshiftregister_tb();
reg serialin;
reg [3:0]parallelin;
reg clk;
reg [1:0]s;
wire [3:0]q;
universalshiftregister dut(.serialin(serialin),.parallelin(parallelin),.clk(clk),.s(s),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("universalshiftregister.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t serialin=%b parallelin=%b clk=%b s=%b q=%b",$time,serialin,parallelin,clk,s,q);
    clk = 0;
    serialin = 0;
    parallelin = 1101;
    #5;
    s = 2'b00;
    serialin = 1;
    #10;
    s = 2'b01;
    serialin = 1;
    #10;
    s = 2'b10;
    serialin = 0;
    #10;
    s = 2'b11;
    serialin = 1;
    #5 $finish;
end
endmodule
