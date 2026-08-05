module sub4bit(
    input [3:0]a,b,
    input bin,
    output [3:0]d,
    output bout
);
assign {bout,d}= a - b - bin;
endmodule
            
