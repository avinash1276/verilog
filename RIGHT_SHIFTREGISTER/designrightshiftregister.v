module rightshiftregister(
    input serialin,
    input clk,
    output reg [3:0]q
);
always @(posedge clk) begin
    q <= {serialin,q[3:1]};
end
endmodule
