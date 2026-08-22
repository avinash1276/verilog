module populationcounter4bit( // actually counts no 1's in the ip
  input [3:0]a,
  output reg [2:0]x
);
  always @(*) begin
    x = a[0]+a[1]+a[2]+a[3] ;
  end
endmodule
