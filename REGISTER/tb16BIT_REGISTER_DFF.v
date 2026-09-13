module register16dff_tb();
reg [15:0]d;
reg clk;
wire [15:0]q;
register16dff dut(.d(d),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("regiter16dff.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b clk=%b q=%b",d,clk,q);
    clk=0;
    for(integer i=0;i<16;i=i+1) begin
        d = i;
        #10;
    end
  #20;  $finish;
end
endmodule
