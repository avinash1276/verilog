module dff(
    input d,
    input clk,
    output reg q
);
initial begin
    q = 0;
end
always @(posedge clk) begin
    q <= d;
end
endmodule
module ripplecounter4(
    input clk,
    output [3:0] q
);
wire d0, d1, d2, d3;
assign d0 = ~q[0];
assign d1 = ~q[1];
assign d2 = ~q[2];
assign d3 = ~q[3];
dff ff0(.d(d0),.clk(clk),.q(q[0]));
dff ff1(.d(d1),.clk(~q[0]),.q(q[1]));
dff ff2(.d(d2),.clk(~q[1]),.q(q[2]));
dff ff3(.d(d3),.clk(~q[2]),.q(q[3]));
endmodule
