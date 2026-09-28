module downcounter8(
    input clk,
    output reg [7:0]q
);
initial q = 8'b11111111;
always @(posedge clk) begin
  q <= q-1;
end
endmodule
