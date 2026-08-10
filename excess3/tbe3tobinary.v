module e3tobinary_tb();
reg [3:0]e3;
wire [3:0]binary;
e3tobinary dut(.e3(e3),.binary(binary));
integer i;
initial begin
    $dumpfile("e3tobinary.vcd");
    $dumpvars(0,dut);
    $monitor("e3=%b,binary=%b",e3,binary);
    for(i=0;i<16;i=i+1) begin
        e3 = i;
        #5;
    end
    $finish;
end
endmodule
