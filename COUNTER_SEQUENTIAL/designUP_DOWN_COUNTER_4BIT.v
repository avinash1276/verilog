module updowncounter4(
    input clk,en,
    output reg [3:0]q
);
initial begin
    if(en)
    q = 4'b0000;
    else
    q = 4'b1111;
end
always @(posedge clk) begin
    if(en)
        q <= q+1;
  else
    q <= q-1;
end
endmodule
