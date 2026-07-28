module encoder83(
    input [7:0]x,
    output reg [2:0]y
);
integer i;
always @(*) begin
    y=3'b000;
    for(i=0;i<8;i=i+1) begin
        if(x[i])
        y=i;
    end
end
endmodule
