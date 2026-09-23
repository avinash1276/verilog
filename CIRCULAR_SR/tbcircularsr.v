module circularsr_tb();
reg clk,en;
wire [3:0]q;
circularsr dut(.clk(clk),.en(en),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("circularsr.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b en=%b q=%b",$time,clk,en,q);
    clk=0;
    
    #5;
    en=0;
    #10;
    en=1;
    #10;
    en=1;
    $finish;
end
endmodule
