module paritygenerator(
    input [3:0]d,
    output reg [4:0]even_x,
    output reg [4:0]odd_x
);
reg evenparity,oddparity;
always @(*) begin
    evenparity = d[3] ^ d[2] ^ d[1] ^ d[0];
    oddparity = ~(d[3] ^ d[2] ^ d[1] ^ d[0]);
    even_x = {d,evenparity};
    odd_x = {d,oddparity};
end
endmodule
