module MSJKFF_tb();
reg j,k,clk;
wire q;
MSJKFF dut(.j(j),.k(k),.clk(clk),.q(q));
initial begin
    $dumpfile("MSJKFF.vcd");
    $dumpvars(0,dut);
    $monitor("j=%b,k=%b,clk=%b,master=%b,slave=%b,q=%b",j,k,clk,dut .master,dut .slave,q);
    clk = 1;
    for(integer i=0;i<4;i=i+1) begin
        {j,k}=i;
        #10;
    end
$finish;
end
always #5 clk = ~clk;
endmodule
