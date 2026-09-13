module dff(
    input d,clk,en,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
if(en)
    q <= d;
end
endmodule
module register4dff_enable(
    input [3:0]d,
    input en,
    input clk,
    output [3:0]q
);
dff d1(.d(d[3]),.en(en),.clk(clk),.q(q[3]));
dff d2(.d(d[2]),.en(en),.clk(clk),.q(q[2]));
dff d3(.d(d[1]),.en(en),.clk(clk),.q(q[1]));
dff d4(.d(d[0]),.en(en),.clk(clk),.q(q[0]));
endmodule
