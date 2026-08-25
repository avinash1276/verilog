module divider4bit(
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] quotient,
    output [3:0] remainder
);

assign quotient  = (b != 0) ? (a / b) : 4'b0000; //it gives quotient
assign remainder = (b != 0) ? (a % b) : 4'b0000; //it gives remainder

endmodule
