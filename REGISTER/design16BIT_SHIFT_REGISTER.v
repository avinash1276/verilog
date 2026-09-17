module dff(
    input d,
    input clk,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    q <= d;
end
endmodule
module register16dff_shift(
    input clk,
    input serialip,
    output [15:0] q
);
dff d1 (.d(serialip),.clk(clk),.q(q[15]));
dff d2 (.d(q[15]),.clk(clk),.q(q[14]));
dff d3 (.d(q[14]),.clk(clk),.q(q[13]));
dff d4 (.d(q[13]),.clk(clk),.q(q[12]));
dff d5 (.d(q[12]),.clk(clk),.q(q[11]));
dff d6 (.d(q[11]),.clk(clk),.q(q[10]));
dff d7 (.d(q[10]),.clk(clk),.q(q[9]));
dff d8 (.d(q[9]),.clk(clk),.q(q[8]));
dff d9 (.d(q[8]),.clk(clk),.q(q[7]));
dff d10(.d(q[7]),.clk(clk),.q(q[6]));
dff d11(.d(q[6]),.clk(clk),.q(q[5]));
dff d12(.d(q[5]),.clk(clk),.q(q[4]));
dff d13(.d(q[4]),.clk(clk),.q(q[3]));
dff d14(.d(q[3]),.clk(clk),.q(q[2]));
dff d15(.d(q[2]),.clk(clk),.q(q[1]));
dff d16(.d(q[1]),.clk(clk),.q(q[0]));
endmodule
