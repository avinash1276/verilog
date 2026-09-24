module rotaterightsr(
    input clk,
    output reg [3:0] q
);
initial q = 4'b1011;
always @(posedge clk) begin
    q <= {q[0], q[3:1]};
end
endmodule
