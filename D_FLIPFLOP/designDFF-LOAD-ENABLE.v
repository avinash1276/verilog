module dff_enable_load (
    input d,
    input en,
    input load,
    input clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    if (load)
        q <= d;
    else if (en)
        q <= d;
    else
        q <= q;
end
endmodule
