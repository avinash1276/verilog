module thermometercodegen4bit(
  input [3:0]a,
  output reg [14:0]x
);
  integer i;
  always @(*) begin
    for(i=0;i<15;i=i+1) begin
      if(a > i)
        x[i]=1'b1;
      else
        x[i]=1'b0;
    end
  end
endmodule
