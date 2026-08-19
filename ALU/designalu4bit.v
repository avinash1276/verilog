module ALU4bit(
    input [3:0] a, b,
    input [1:0] selectlines,
  output reg [3:0] x,
  output reg carry,
  output reg borrow
);

always @(*) begin
  carry = 0;
  borrow = 0;
    case(selectlines)
        2'b00: x = a & b;   
        2'b01: x = a | b; 
      2'b10: {carry,x} = a + b;   
        2'b11: begin
          x = a - b; 
          borrow = (a<b);
        end
    endcase
end

endmodule
