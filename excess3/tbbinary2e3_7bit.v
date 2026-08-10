module binary2e3_7bit_tb();
reg [6:0]binary;
wire [3:0]x,y;
binary2e3_7bit dut(.binary(binary),.x(x),.y(y));
integer i;
initial begin
    $dumpfile("binary2e3_7bit_tb.vcd");
    $dumpvars(0,dut);
    $monitor("binary=%b,x=%b,y=%b",binary,x,y);
    for(i=0;i<128;i=i+1) begin
        binary = i;
        #5;
    end
    $finish;
end
endmodule
