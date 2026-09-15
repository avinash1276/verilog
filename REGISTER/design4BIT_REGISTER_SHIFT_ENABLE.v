module dff(
    input d,
    input clk,
    input en,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
    if(en)
        q <= d;
end
endmodule
module register4dff_shiftenable(
    input clk,
    input en,
    input serialip,
    output [3:0] q
);
dff d1(.d(serialip),.clk(clk),.en(en),.q(q[3]));
dff d2(.d(q[3]),.clk(clk),.en(en),.q(q[2]));
dff d3(.d(q[2]),.clk(clk),.en(en),.q(q[1]));
dff d4(.d(q[1]),.clk(clk),.en(en),.q(q[0]));
endmodule
