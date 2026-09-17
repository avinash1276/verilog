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
module register8dff_shift(
    input clk,
    input serialip,
    output [7:0] q
);
dff d1(.d(serialip),.clk(clk),.q(q[7]));
dff d2(.d(q[7]),.clk(clk),.q(q[6]));
dff d3(.d(q[6]),.clk(clk),.q(q[5]));
dff d4(.d(q[5]),.clk(clk),.q(q[4]));
dff d5(.d(q[4]),.clk(clk),.q(q[3]));
dff d6(.d(q[3]),.clk(clk),.q(q[2]));
dff d7(.d(q[2]),.clk(clk),.q(q[1]));
dff d8(.d(q[1]),.clk(clk),.q(q[0]));
endmodule
