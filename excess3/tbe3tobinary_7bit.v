module e3tobinary_7bit_tb();
reg [3:0]x,y;
wire [6:0] binary;
e3tobinary_7bit dut(.x(x),.y(y),.binary(binary));
integer i,j;
initial begin
    $dumpfile("e3tobinary_7bit_tb.vcd");
    $dumpvars(0,dut);
    $monitor("x=%b,y=%b,binary=%b",x,y,binary);
    for(i=0;i<16;i=i+1) begin
        for(j=0;j<16;j=j+1) begin
            x=i;
            y=j;
            #5;
        end
    end
    $finish;
end 
endmodule
