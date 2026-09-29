module updowncounter2(
    input clk,en,
    output reg [1:0]q
);
initial begin
    if(en)
    q = 2'b00;
    else
    q = 2'b11;
end
always @(posedge clk) begin
    if(en)
        q <= q+1;
  else
    q <= q-1;
end
endmodule
