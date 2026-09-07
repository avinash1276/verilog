module dff_set (
    input d, clk, set,
    output reg q
);
always @(posedge clk) begin
    if (set)
        q <= 1;
    else
        q <= d;
end
endmodule
