module upcounter8(
    input clk,
    input reset,
    output reg [7:0]q
);
initial q = 0;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 8'b00000000;
    end
    else begin
        q <= q + 1;
    end
end
endmodule
