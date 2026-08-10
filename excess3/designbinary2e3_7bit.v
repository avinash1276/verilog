module binary2e3_7bit(
    input [6:0]binary,
    output reg [3:0]x,y
);
always @(*) begin
    if(binary <= 7'd99) begin
        x = (binary / 10) + 4'b0011;
        y = (binary % 10) + 4'b0011;
    end
    else begin
        x = 4'bxxxx;
        y = 4'bxxxx;
    end
end
endmodule
