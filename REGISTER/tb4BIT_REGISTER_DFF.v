module register4dff_tb();
reg [3:0]d;
reg clk;
wire [3:0]q;
register4dff dut(.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("regiter4dff.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b q=%b",d,clk,q);
    clk=0;
    for(integer i=0;i<16;i=i+1) begin
        d = i;
        #10;
    end
    $finish;
end
endmodule
