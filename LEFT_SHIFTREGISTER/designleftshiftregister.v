module leftshiftregister(
    input serialin,
    input clk,
    output reg [3:0]q
);
always @(posedge clk) begin
    q <= {q[2:0],serialin};
end
endmodule
