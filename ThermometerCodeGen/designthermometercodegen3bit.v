module thermometercodegen3bit(
    input [2:0] a,
    output reg [6:0] x
);
integer i;
always @(*) begin
    x = 7'b0000000;
    for(i = 0; i < 7; i = i + 1) begin
        if(a > i)
            x[i] = 1'b1;
    end
end
endmodule
