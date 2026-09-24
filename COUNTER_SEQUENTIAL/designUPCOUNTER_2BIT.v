module upcounter2(
    input clk,
    output reg [1:0]q
);
initial q = 0;
always @(posedge clk) begin
  q <= q+1;
end
endmodule
