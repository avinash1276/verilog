module bcd2binary_tb();
reg [3:0]a,b;
wire [6:0]binary;
bcd2binary dut(.a(a),.b(b),.binary(binary));
integer i,j;
initial begin
    $dumpfile("bcd2binary.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,binary=%b",$time,a,b,binary);
    for(i=0;i<16;i=i+1) begin
        for(j=0;j<16;j=j+1) begin
        a = i;
        b=j;
        #5;
    end
    end
    $finish;
end
endmodule
