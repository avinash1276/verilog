module minfinder(
  input [3:0] a,b,c,
  output reg [3:0] y
);
  always @(*) begin
    if(a <= b && a <= c)
      y = a;
    else if(b <= a && b <= c)
      y = b;
    else
      y = c;
  end
endmodule
