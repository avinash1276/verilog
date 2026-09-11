module dff(
    input d,clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    q <= d;
end
endmodule
module register2_dff(
    input [1:0]d,
    input clk,
    output [1:0]q
);
dff d1(.d(d[0]),.clk(clk),.q(q[0]));
dff d2(.d(d[1]),.clk(clk),.q(q[1]));
endmodule
