module dff(
    input d,clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    q <= d;
end
endmodule
module register16dff(
    input [15:0]d,
    input clk,
    output [15:0]q
);
dff d1(.d(d[15]),.clk(clk),.q(q[15]));
dff d2(.d(d[14]),.clk(clk),.q(q[14]));
dff d3(.d(d[13]),.clk(clk),.q(q[13]));
dff d4(.d(d[12]),.clk(clk),.q(q[12]));
dff d5(.d(d[11]),.clk(clk),.q(q[11]));
dff d6(.d(d[10]),.clk(clk),.q(q[10]));
dff d7(.d(d[9]),.clk(clk),.q(q[9]));
dff d8(.d(d[8]),.clk(clk),.q(q[8]));
dff d9(.d(d[7]),.clk(clk),.q(q[7]));
dff d10(.d(d[6]),.clk(clk),.q(q[6]));
dff d11(.d(d[5]),.clk(clk),.q(q[5]));
dff d12(.d(d[4]),.clk(clk),.q(q[4]));
dff d13(.d(d[3]),.clk(clk),.q(q[3]));
dff d14(.d(d[2]),.clk(clk),.q(q[2]));
dff d15(.d(d[1]),.clk(clk),.q(q[1]));
dff d16(.d(d[0]),.clk(clk),.q(q[0]));
endmodule
