module encoder42_tb();
reg [3:0]x;
wire [1:0]y;
encoder42 dut(.x(x),.y(y));
integer i;
initial begin
    $dumpfile("encoder24.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,y=%b",$time,x,y);
    for(i=0;i<4;i=i+1) begin
        x=(4'b0001 << i);
        #5;
    end
    $finish;
end
endmodule
