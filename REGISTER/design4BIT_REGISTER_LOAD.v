module dff(
    input d,clk,load,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
if(load)
    q <= d;
end
endmodule
module register4dff_load( // parallel load
    input [3:0]d,
    input load,
    input clk,
    output [3:0]q
);
dff d1(.d(d[3]),.load(load),.clk(clk),.q(q[3]));
dff d2(.d(d[2]),.load(load),.clk(clk),.q(q[2]));
dff d3(.d(d[1]),.load(load),.clk(clk),.q(q[1]));
dff d4(.d(d[0]),.load(load),.clk(clk),.q(q[0]));
endmodule
