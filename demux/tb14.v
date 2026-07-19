module demux24_tb();
reg x;
reg [1:0]s;
wire y0,y1,y2,y3;
demux24 dut(.x(x),.s(s),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
    $dumpfile("demux24.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,s=%b,y0=%b,y1=%b,y2=%b,y3=%b",$time,x,s,y0,y1,y2,y3);
    x=0;s=2'b00;
    #5;
    x=0;s=2'b01;
    #5;
    x=0;s=2'b10;
    #5;
    x=0;s=2'b11;
    #5;
    x=1;s=2'b00;
    #5;
    x=1;s=2'b01;
    #5;
    x=1;s=2'b10;
    #5;
    x=1;s=2'b11;
    #5;
    $finish;
end
endmodule














