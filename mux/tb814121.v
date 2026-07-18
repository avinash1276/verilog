module mux814121_tb();
reg [7:0]a;
reg [2:0]s;
wire y;
mux814121 dut(.a(a),.s(s),.y(y));
initial begin
    $dumpfile("mux814121.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,s=%b,y=%b",$time,a,s,y);
    a=8'b01010110;
    s=3'b001;
    #5;
$finish;
end
endmodule
