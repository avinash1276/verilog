module dff_enable_set (
    input d,
    input en,
    input set,
    input clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    if (set)
        q <= 1'b1;       
    else if (en)
        q <= d;       
    else
        q <= q;     
end
endmodule
