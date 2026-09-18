module siso_4bit_tb;
reg serialin;
reg clk;
wire serialout;
siso_4bit dut(.serialin(serialin),.clk(clk),.serialout(serialout));
always #5 clk = ~clk;
initial begin
    $dumpfile("siso_4bit.vcd");
    $dumpvars(0, siso_4bit_tb);
    $monitor("time=%0t,serialin=%b,clk=%b,serialout=%b,q=%b",
             $time,serialin,clk,serialout,dut.q);
    clk = 0;
    serialin = 0;

    serialin = 1;
    #10;
    serialin = 0;
    #10;
    serialin = 1;
    #10;
    serialin = 1;
    #10;

    #20;
    $finish;
end
endmodule
