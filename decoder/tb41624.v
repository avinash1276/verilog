module decoder41624_tb();
reg [3:0]x;
wire [15:0]y;
decoder41624 dut(.x(x),.y(y));
integer i;
initial begin
    $dumpfile("decoder41624.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,y=%b",$time,x,y);
    for(i=0;i<16;i=i+1) begin
        x=i;
        #5;
    end
    $finish;
end
endmodule
