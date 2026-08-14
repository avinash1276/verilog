module ALU4bit(
    input [3:0] a, b,
    input [1:0] selectlines,
    output reg [3:0] x
);

always @(*) begin
    case(selectlines)
        2'b00: x = a & b;   
        2'b01: x = a | b; 
        2'b10: x = a + b;   
        2'b11: x = a - b;  
    endcase
end

endmodule
