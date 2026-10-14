module mod2counter(
  input d,clk,
  output reg q
);
  initial q = 0;
always @(posedge clk) begin
  q <= ~q;
end
endmodule
