module oddparitygenerator(
    input [3:0]x,
    output reg [4:0]y
);
reg oddparity;
always @(*) begin
    oddparity = ~(x[3] ^ x[2] ^ x[1] ^ x[0]);
    y = {x,oddparity};
end
endmodule
