module CLA4bit(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout
);
wire [3:0]g,p;
wire c1,c2,c3;
assign g = a & b;
assign p = a ^ b;
assign sum[0] = p[0] ^ cin;
assign c1 = g[0] | (p[0] & cin);
assign sum[1] = p[1] ^ c1;
assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
assign sum[2] = p[2] ^ c2;
assign c3 = g[2] | (p[2] & g[1]) | (p[1] & p[2] & g[0]) | (p[0] & p[1] & p[2] & cin);
assign sum[3] = p[3] ^ c3;
assign cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);
endmodule

    
