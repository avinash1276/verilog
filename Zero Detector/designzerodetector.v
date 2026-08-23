module zerodetector(
  input [3:0]a,
  output reg x
);
  always @(*) begin
    if(a == 0)
      x = 1'b1;
    else
      x = 1'b0;
  end
endmodule
  
