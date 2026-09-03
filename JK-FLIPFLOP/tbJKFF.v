module JKFF_tb();
reg j,k,clk;
wire q;
JKFF dut(.j(j),.k(k),.clk(clk),.q(q));
initial begin
    $dumpfile("JKFF.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,j=%b,k=%b,clk=%b,q=%b",$time,j,k,clk,q);
    clk=0;
    for(integer i=0;i<4;i=i+1) begin
        {j,k}=i;
        #10;
    end 
    $finish;
end
    always #5 clk = ~clk;
endmodule
