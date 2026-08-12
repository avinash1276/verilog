module oddparitychecker(
    input [4:0] x,
    output reg odd_x
);
reg oddparity;
always @(*) begin
    oddparity = (~(x[4] ^ x[3] ^ x[2] ^ x[1] ^ x[0]));

    if (oddparity == 1'b0)
        odd_x = 1'b0;  // Correct
    else
        odd_x = 1'b1;  // Error
end

endmodule
