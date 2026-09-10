module jk_enable(
    input j,k,
    input en,
    input clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    if(en) begin
    if(j==0 && k==0)
        q <= q;
    else if(j==0 && k==1)
        q <= 0;
    else if(j==1 && k==0)
        q <= 1;
    else if(j==1 && k==1)
        q <= ~q;
    end
end
endmodule
