module logicalleftshifter4bit(
input [3:0]a,
output [3:0]x
);
  assign x = (a << 1);//a << no of positions
endmodule

      
