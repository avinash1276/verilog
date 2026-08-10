module e3tobinary_7bit(
    input [3:0] x, y,
    output reg [6:0] binary
);

reg [3:0] tens, ones;

always @(*) begin
    if (x >= 4'd3 && x <= 4'd12 &&
        y >= 4'd3 && y <= 4'd12) begin

        tens = x - 4'd3;
        ones = y - 4'd3;
        binary = (tens * 10) + ones;

    end
    else begin
        binary = 7'bxxxxxxx;
    end
end

endmodule
