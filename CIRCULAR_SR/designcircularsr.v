module circularsr(
    input clk,en,
    output reg [3:0]q
);
initial q = 4'b1010;
always @(posedge clk) begin
    if(en) 
    q <= {q[2:0],q[3]};
    else
    q <= {q[0],q[3:1]};
end
endmodule
