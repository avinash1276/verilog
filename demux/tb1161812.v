module demux1161812_tb();
reg x;
reg [3:0]s;
wire [15:0]y;
demux1161812 dut(.x(x),.s(s),.y(y));
integer i,j;
initial begin
    $dumpfile("demux1161812.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,s=%b,y=%b",$time,x,s,y);
    for(i=0;i<2;i=i+1) begin
        x=i;
        for(j=0;j<16;j=j+1) begin
            s=j;
            #5;
        end
    end
    $finish;
end
endmodule
