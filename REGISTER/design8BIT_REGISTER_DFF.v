module dff(
    input d,clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    q <= d;
end
endmodule
module register8dff(
    input [7:0]d,
    input clk,
    output [7:0]q
);
dff d1(.d(d[7]),.clk(clk),.q(q[7]));
dff d2(.d(d[6]),.clk(clk),.q(q[6]));
dff d3(.d(d[5]),.clk(clk),.q(q[5]));
dff d4(.d(d[4]),.clk(clk),.q(q[4]));
dff d5(.d(d[3]),.clk(clk),.q(q[3]));
dff d6(.d(d[2]),.clk(clk),.q(q[2]));
dff d7(.d(d[1]),.clk(clk),.q(q[1]));
dff d8(.d(d[0]),.clk(clk),.q(q[0]));
endmodule
