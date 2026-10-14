module mod3counter(
  input clk,
  output reg [1:0]q
);
  initial q = 0;
  always @(posedge clk) begin
    if( q == 2'b10)
      q<=2'b00;
    else
      q <= q+1'b1;
  end
endmodule
    
