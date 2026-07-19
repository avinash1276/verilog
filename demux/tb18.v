module demux18_tb();
reg x;
reg [2:0]s;
wire [7:0]y;
demux18 dut(.x(x),.s(s),.y(y));
integer i,j;
initial begin
    $dumpfile("demux18.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,s=%b,y=%b",$time,x,s,y);
    for (j=0;j<2;j=j+1)begin
        x=j;
    for (i=0;i<8;i=i+1) begin
        s=i;
        #5;
    end
    end
    $finish;
end
endmodule
