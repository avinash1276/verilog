module decoder24_tb();
reg a,b;
wire [3:0]y;
decoder24 dut(.a(a),.b(b),.y(y));
integer i;
initial begin
    $dumpfile("decoder24.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
        for(i=0;i<4;i=i+1) begin
        {a,b}=i;
        #5;
    end
    $finish;
end
endmodule
