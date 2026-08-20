module Bitreverser4bit(
  input [3:0]a,
  output [3:0]x
);
  assign x = {a[0],a[1],a[2],a[3]};
endmodule
