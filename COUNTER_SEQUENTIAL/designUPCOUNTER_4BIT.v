module upcounter4(
    input clk,
    output reg [3:0]q
);
initial q = 0;
always @(posedge clk) begin
  q <= q+1;
end
endmodule
