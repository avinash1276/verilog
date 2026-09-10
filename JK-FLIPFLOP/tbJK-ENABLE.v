module jk_enable_tb();
reg j,k,en,clk;
wire q;
jk_enable dut(.j(j),.k(k),.en(en),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("jk_enable.vcd");
    $dumpvars(0,jk_enable_tb);
    $monitor("time=%0t,j=%b,k=%b,en=%b,clk=%b,q=%b",$time,j,k,en,clk,q);
    clk=0;
    for(integer i=0;i<8;i=i+1) begin
        {j,k,en}=i;
        #10;
    end
    $finish;
end
endmodule
