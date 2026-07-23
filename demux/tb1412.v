module demux1412_tb();
reg x;
reg [1:0]s;
wire [3:0]y;
demux1412 dut(.x(x),.s(s),.y(y));
initial begin
    $dumpfile("demux1412.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,s=%b,y=%b",$time,x,s,y);
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














