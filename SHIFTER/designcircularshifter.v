module circularshifter(
    input [3:0] a,
    input [1:0] s,
    input dir,
    output reg [3:0] y
);

always @(*) begin
    if (dir == 0)
        y = (a << s) | (a >> (4-s));  // left rotate
    else
        y = (a >> s) | (a << (4-s));  // right rotate
end

endmodule
