module demux12_tb();
reg x,s;
wire y1,y2;
demux12 dut(.x(x),.s(s),.y1(y1),.y2(y2));
initial begin
    $dumpfile("demux12.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,s=%b,y1=%b,y2=%b",$time,x,s,y1,y2);
    x=0;s=0;
    #5;
    x=1;s=0;
    #5;
    x=0;s=1;
    #5;
    x=1;s=1;
    #5;
    $finish;
end
endmodule
