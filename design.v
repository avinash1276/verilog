module mux21(
    input [1:0]x,
    input selectline,
    output reg y
);
always @(*) begin
  if(selectline==1)
    y = x[1];
    else
    y = x[0];
end
endmodule
module carryskipadder(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout
);
wire [3:0]p,g;
wire c1,c2,c3,c4;
wire s;
assign p = a ^ b;
assign g = a & b;
assign sum[0] = p[0] ^ cin;
assign c1 = g[0] | (p[0] & cin);
assign sum[1] = p[1] ^ c1;
assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
assign sum[2] = p[2] ^ c2;
assign c3 = g[2] | (p[2] & g[1]) | (p[1] & p[2] & g[0]) | (p[0] & p[1] & p[2] & cin);
assign sum[3] = p[3] ^ c3;
assign c4 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
and a1(s,p[0],p[1],p[2],p[3]);
  mux21 m1(.x({cin,c4}),.selectline(s),.y(cout));
endmodule
