module mux16141_tb();
reg [15:0]a;
reg [3:0]s;
wire y;
mux16141 dut(.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux16141.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,s=%b,y=%b",$time,a,s,y);
    for(i=0;i<1048576;i=i+1) begin
    {a,s}=10756;
    #5;
    end
    $finish;
end
endmodule

