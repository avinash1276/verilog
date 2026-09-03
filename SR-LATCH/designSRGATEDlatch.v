module SRgatedlatch(
    input s, r, en,
    output reg q
);
initial q = 0;
always @(*) begin
    if(en)
    case ({s,r})
        2'b00: q <= q;       
        2'b10: q <= 1'b1;    
        2'b01: q <= 1'b0;   
        2'b11: q <= 1'bx;   
    endcase
end

endmodule
