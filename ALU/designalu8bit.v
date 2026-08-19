module ALU8bit(
    input [7:0] a, b,
    input [2:0] s,
  output reg [7:0] x,
  output reg carry,
  output reg borrow
);

always @(*) begin
  carry = 0;
  borrow = 0;
    case(s)
        3'd0: x = a & b;  // AND
        3'd1: x = a | b;  // OR
        3'd2: {carry,x} = a + b;  // ADDITION
        3'd3: begin
          x = a - b;  // SUBTRACTION
          borrow = (a<b);
        end
        3'd4: x = a ^ b;  // XOR
        3'd5: x = ~a;     // NOT A
        3'd6: {carry,x} = a + 1;  // INCREMENT A
        3'd7: {carry,x} = b + 1;  // INCREMENT B
    endcase
end

endmodule
