module dff_enable_reset (
    input d,
    input en,
    input reset,
    input clk,
    output reg q
);
always @(posedge clk) begin
    if (reset)
        q <= 1'b0;       
    else if (en)
        q <= d;       
    else
        q <= q;     
end
endmodule
