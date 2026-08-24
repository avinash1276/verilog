module ArithmeticRightShifter(
  input signed [4:0]a,
  output[4:0]x
);
  assign x= (a >>> 2);
endmodule
