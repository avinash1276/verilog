module divider8bit(
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] quotient,
    output [7:0] remainder
);

assign quotient  = (b != 0) ? (a / b) : 8'b00000000;
assign remainder = (b != 0) ? (a % b) : 8'b00000000;

endmodule
