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
module ripplecounter8(
    input clk,
    output [7:0] q
);
wire d0, d1, d2, d3, d4, d5, d6, d7;
assign d0 = ~q[0];
assign d1 = ~q[1];
assign d2 = ~q[2];
assign d3 = ~q[3];
assign d4 = ~q[4];
assign d5 = ~q[5];
assign d6 = ~q[6];
assign d7 = ~q[7];
dff ff0(.d(d0), .clk(clk),   .q(q[0]));
dff ff1(.d(d1), .clk(~q[0]), .q(q[1]));
dff ff2(.d(d2), .clk(~q[1]), .q(q[2]));
dff ff3(.d(d3), .clk(~q[2]), .q(q[3]));
dff ff4(.d(d4), .clk(~q[3]), .q(q[4]));
dff ff5(.d(d5), .clk(~q[4]), .q(q[5]));
dff ff6(.d(d6), .clk(~q[5]), .q(q[6]));
dff ff7(.d(d7), .clk(~q[6]), .q(q[7]));
endmodule
