module tff_reset(
    input t,reset,clk,
    output reg q
);
initial q=0;
always @(posedge clk) begin
    if(reset) 
        q <= 1'b0;
        else if(t)
    q <= ~q;
end
endmodule
