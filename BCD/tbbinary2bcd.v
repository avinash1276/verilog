module binary2bcd_tb();
reg [7:0]a;
wire [3:0]x,y;
binary2bcd dut(.a(a),.x(x),.y(y));
integer i;
initial begin
    $dumpfile("binary2bcd.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,x=%b,y=%b",$time,a,x,y);
    for(i=0;i<256;i=i+1) begin
        a = i;
        #5;
    end
    $finish;
end
endmodule
    
