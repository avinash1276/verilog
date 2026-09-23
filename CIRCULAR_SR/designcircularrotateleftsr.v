module rotatelesftsr(
    input clk,
    output reg [3:0]q
);
initial q = 1110;
always @(posedge clk) begin
    q <= {q[2:0],q[3]};
end
endmodule
