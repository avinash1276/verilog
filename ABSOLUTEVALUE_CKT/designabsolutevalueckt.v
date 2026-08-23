module absolutevalueckt( //works on signed numbers, takes magnitude for negative numbers and make it as positive
  input [3:0]a, //most common way to rep signed number is 2's complement
  output reg [3:0]x // 2's complement for 4 bit is +7 to -8
);
  always @(*) begin
    if(a[3] == 0)
      x = a;
    else
      x = ~a + 1;
  end
endmodule
  
