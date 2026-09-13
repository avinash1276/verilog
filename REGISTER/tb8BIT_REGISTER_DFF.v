module register8dff_tb();
reg [7:0]d;
reg clk;
wire [7:0]q;
register8dff dut(.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("regiter8dff.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b q=%b",d,clk,q);
    clk=0;
    for(integer i=0;i<8;i=i+1) begin
        d = i;
        #10;
    end
  #20;  $finish;
end
endmodule
