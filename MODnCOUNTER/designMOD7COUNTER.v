module mod7counter(
    input clk,
    output reg [2:0] q
);
initial q = 0;
always @(posedge clk) begin
    if (q == 3'b110)
        q <= 3'b000;
    else
        q <= q + 1'b1;
end
endmodule
