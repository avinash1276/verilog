module mod12counter(
    input clk,
    output reg [3:0] q
);
initial q = 0;
always @(posedge clk) begin
    if (q == 4'b1011)
        q <= 4'b0000;
    else
        q <= q + 1'b1;
end
endmodule
