module dff_reset_async (
    input d, clk, reset,
    output reg q
);
always @(posedge clk or posedge reset) begin //ASYNCHRONOUS RESET
    if (reset)
        q <= 0;
    else
        q <= d;
end
endmodule
