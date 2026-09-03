module SRlatch(
    input s,r,
    output reg q
);
initial q = 0;
always @(*) begin
    case({s,r})
    2'b00: q <= q;
    2'b10: q <= 1;
    2'b01: q <= 0;
    2'b11: q <= 1'bx;
    endcase
end
endmodule
