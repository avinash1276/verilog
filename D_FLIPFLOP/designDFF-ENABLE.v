module dff_enable(
    input d,
    input en,
    input clk,
    output reg q
);
always @(posedge clk) begin
    if(en)
    q <= d;
end
endmodule
