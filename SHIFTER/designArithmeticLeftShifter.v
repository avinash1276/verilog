module ArithmeticLeftShifter(
  input [4:0]a,
  output [4:0]x
);
  assign x = (a <<< 1); 
endmodule
