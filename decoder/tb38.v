module decoder38_tb();
reg a,b,c;
wire [7:0]y;
decoder38 dut(.a(a),.b(b),.c(c),.y(y));
integer i;
initial begin
    $dumpfile("decoder38.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
    for(i=0;i<8;i=i+1) begin
        {a,b,c}=i;
        #5;
    end
    $finish;
end
endmodule
