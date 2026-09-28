module downcounter16(
    input clk,
    output reg [15:0]q
);
initial q = 16'd65535;
always @(posedge clk) begin
  q <= q-1;
end
endmodule
