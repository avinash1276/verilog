module tff_enable(
    input t,en,clk,
    output reg q
);
initial q=0;
always @(posedge clk) begin
    if(en) begin
        if(t)
    q <= ~q;
end
end
endmodule
