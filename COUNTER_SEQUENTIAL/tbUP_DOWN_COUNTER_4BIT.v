module updowncounter4_tb();
reg clk,en;
wire [3:0]q;
updowncounter4 dut(.clk(clk),.en(en),.q(q));
initial begin
    $dumpfile("updowncounter4.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b en=%b q=%b",$time,clk,en,q);
    clk=1;
    en=1;
    #50 en=0;
    #50 en=1;
    #25 en=0;
    #25 en=1;
    $finish;
end
always #5  clk = ~clk;
endmodule
