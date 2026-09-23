module bidirsr_tb();
reg serialin;
reg clk,dir;
wire [3:0]q;
bidirsr dut(.serialin(serialin),.clk(clk),.dir(dir),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("bidirsr.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t serialin=%b clk=%b  dir=%b q=%b",$time,serialin,clk,dir,q);
    serialin = 0;
    clk = 0;
    dir = 0;

    #5;
    dir = 0;
    serialin = 1;
    #10;
    dir = 1;
    serialin = 1;
    #10;
    dir = 1;
    serialin = 0;
    #10;
    dir = 0;
    serialin = 1;
    #5 $finish;
end
endmodule
