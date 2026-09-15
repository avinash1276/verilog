module dff(
    input d,clk,reset,
    output reg q
);
initial q = 0;
always @(posedge clk) begin
if(reset)
    q <= 1'b0;
else 
    q <= d;
end
endmodule
module register4dff_reset(
    input [3:0]d,
    input reset,
    input clk,
    output [3:0]q
);
dff d1(.d(d[3]),.reset(reset),.clk(clk),.q(q[3]));
dff d2(.d(d[2]),.reset(reset),.clk(clk),.q(q[2]));
dff d3(.d(d[1]),.reset(reset),.clk(clk),.q(q[1]));
dff d4(.d(d[0]),.reset(reset),.clk(clk),.q(q[0]));
endmodule
