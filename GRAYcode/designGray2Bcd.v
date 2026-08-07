module GraytoBcd(
    input  [3:0] gray,
    output reg [3:0] bcd
);
wire [3:0]binary;
assign binary[3] = gray[3];
assign binary[2] = binary[3] ^ gray[2];
assign binary[1] = binary[2] ^ gray[1];
assign binary[0] = binary[1] ^ gray[0];
always @(*) begin
if(binary <= 4'd9)
    bcd = binary;
    else
    bcd = 4'bxxxx;
end
endmodule
