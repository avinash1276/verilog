module upcounter16(
    input clk,
    input reset,
    output reg [15:0] q
);
initial q = 0;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 16'b0000000000000000;
    end
    else begin
        q <= q + 1;
    end
end
endmodule
