module rotateleftshifter(
  input [3:0]a,
  output [3:0]x
);
  assign x = {a[2:0],a[3]};
endmodule
