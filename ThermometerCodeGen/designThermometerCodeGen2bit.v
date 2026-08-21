module thermometercodegen2bit(
  input [1:0]a, // n
  output reg [2:0]x // 2^n-1
);
  always @(*) begin
    x=3'b000;
    case(a) 
      2'b00: x = 3'b000;
      2'b01: x = 3'b001;
      2'b10: x = 3'b011;
      2'b11: x = 3'b111;
    endcase
  end
endmodule
    
