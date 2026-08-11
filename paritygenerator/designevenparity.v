module evenparitygenerator(
    input [3:0]x,
    output reg [4:0]y
);
reg evenparity;
always @(*) begin
    evenparity = x[3] ^ x[2] ^ x[1] ^ x[0];
    y = {x,evenparity};
end
endmodule
