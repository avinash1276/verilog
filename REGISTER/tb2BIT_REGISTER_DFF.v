module register2_dff_tb();
reg [1:0]d;
reg clk;
wire [1:0]q;
register2_dff dut(.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("register2_dff.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,d=%b,clk=%b,q=%b",$time,d,clk,q);
    clk=0;
    for(integer i=0;i<4;i=i+1) begin
        d = i;
        #10;
    end
    $finish;
end
endmodule
