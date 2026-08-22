module populationcounter16bit(
  input [15:0]a,
  output reg [4:0]x
);
  integer i;
  always @(*) begin
    x = 5'b0000;
    for(i=0;i<16;i=i+1) begin
      if(a[i])
        x = x+1;
      
    end
  end
endmodule
  
