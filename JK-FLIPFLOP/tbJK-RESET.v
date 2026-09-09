module jk_reset_tb();
reg j,k,reset,clk;
wire q;
jk_reset dut(.j(j),.k(k),.reset(reset),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("jk_reset.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,j=%b,k=%b,reset=%b,clk=%b,q=%b",$time,j,k,reset,clk,q);
    clk=0;
    for(integer i=0;i<8;i=i+1) begin
        {j,k,reset}=i;
        #10;
    end
    $finish;
end
endmodule
