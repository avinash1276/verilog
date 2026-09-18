module sipo_4bit_tb();
reg serialin,clk;
wire [3:0]parallelout;
sipo_4bit dut(.serialin(serialin),.clk(clk),.parallelout(parallelout));
always #5 clk = ~ clk;
initial begin
    $dumpfile("sipo_4bit.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t clk=%b serialin=%b parallelout=%b q=%b",$time,clk,serialin,parallelout,dut.q);
    clk = 0;
    serialin=0;
    for(integer i=0;i<2;i=i+1) begin
        serialin = i;
        #10;
    end
    #20;
    $finish;
end
endmodule
