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
module ripplecounter2(
    input clk,
    output [1:0] q
);
wire d0, d1;
assign d0 = ~q[0];
assign d1 = ~q[1];
dff ff0(.d(d0),.clk(clk),.q(q[0]));
dff ff1(.d(d1),.clk(~q[0]),.q(q[1]));
endmodule
