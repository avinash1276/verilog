module jklatch(
    input en,j,k,
    output reg q
);
initial q = 0;
always@(*) begin
    if (en)begin
        case({j,k})
            2'b00: q=q;
            2'b01: q=0;
            2'b10: q=1;
            2'b11: q=~q;
        endcase
    end
    else
        q=q;
end
endmodule
