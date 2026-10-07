module updowncounter32(
    input clk, en, reset,
    output reg [31:0] q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        if(en)
            q <= 32'd0;
        else
            q <= 32'b11111111111111111111111111111111;
    end
    else begin
        if(en)
            q <= q + 1;
        else
            q <= q - 1;
    end
end
endmodule
