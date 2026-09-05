module tffnegedge(
    input t, clk,
    output reg q
);
initial q = 0;
always @(negedge clk) begin
    if(t)
        q <= ~q; // when t is 1 q toggles
        else
        q <= q; // when t is 0 q holds
end

endmodule
