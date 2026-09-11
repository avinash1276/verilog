module dff(
    input d,clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    q <= d;
end
endmodule
module register4dff(
    input [3:0]d,
    input clk,
    output [3:0]q
);
dff d1(.d(d[3]),.clk(clk),.q(q[3]));
dff d2(.d(d[2]),.clk(clk),.q(q[2]));
dff d3(.d(d[1]),.clk(clk),.q(q[1]));
dff d4(.d(d[0]),.clk(clk),.q(q[0]));
endmodule
