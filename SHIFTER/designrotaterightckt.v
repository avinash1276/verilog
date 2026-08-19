module rotaterightshifter(
  input [3:0]a,
  output [3:0]x
);
  assign x = {a[0],a[3:1]};
endmodule
