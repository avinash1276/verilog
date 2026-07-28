module encoder83_tb();
reg [7:0]x;
wire [2:0]y;
encoder83 dut(.x(x),.y(y));
integer i;
initial begin
    $dumpfile("encoder83.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,y=%b",$time,x,y);
    for(i=0;i<8;i=i+1) begin
        x = (8'b00000001 << i);
        #5;
    end
    $finish;
end
endmodule
