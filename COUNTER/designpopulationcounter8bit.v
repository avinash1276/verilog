module populationcounter8bit(
  input [7:0]a,
  output reg [3:0]x
);
  integer i;
  always @(*) begin
    x=4'b0000;
    for(i=0;i<8;i=i+1) begin
      if(a[i])
        x = x + 1;
  end
  end
endmodule
