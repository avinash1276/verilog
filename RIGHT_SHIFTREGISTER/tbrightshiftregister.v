module rightshiftregister_tb();
reg serialin;
reg clk;
wire [3:0]q;
rightshiftregister dut(.serialin(serialin),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("rightshiftregister.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t serialin=%b clk=%B q=%b",$time,serialin,clk,q);
    clk = 0;
    
    #10;
    serialin = 1;
    #10;
    serialin = 1;
    #10;
    serialin = 0;
    #10;
    serialin = 1;
    #10;
    serialin = 0;
    #5 $finish;
end
endmodule
