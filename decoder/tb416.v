module decoder416_tb();
reg a,b,c,d;
wire [15:0]y;
decoder416 dut(.a(a),.b(b),.c(c),.d(d),.y(y));
integer i;
initial begin
    $dumpfile("decoder416.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,c=%b,d=%b,y=%b",$time,a,b,c,d,y);
    for(i=0;i<16;i=i+1) begin
        {a,b,c,d}=i;
        #5;
    end
    $finish;
end
endmodule
