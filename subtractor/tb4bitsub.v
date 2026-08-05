module sub4bit_tb();
reg [3:0]a,b;
reg bin;
wire [3:0]d;
wire bout;
sub4bit dut(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
integer i,j;
initial begin
    $dumpfile("sub4bit.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,bin=%b,d=%b,bout=%b",$time,a,b,bin,d,bout);
    for(i=0;i<256;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            {a,b} = 54;
            bin = 1;
            #5;
        end
    end
    $finish;
end
endmodule
