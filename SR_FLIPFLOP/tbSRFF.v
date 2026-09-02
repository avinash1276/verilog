module SRff_tb();
reg s,r,clk;
wire q;
SRff dut(.s(s),.r(r),.clk(clk),.q(q));
initial begin
    $dumpfile("SRff.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,s=%b,r=%b,clk=%b,q=%b",$time,s,r,clk,q);
    clk=0;
    for(integer i=0;i<4;i=i+1) begin
        {s,r}=i;
        #10;
    end 
    $finish;
end
    always #5 clk = ~clk;
endmodule
