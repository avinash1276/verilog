module updowncounter16(
    input clk,
    input en,
    input up_down,
    output reg [15:0] q
);
initial q = 16'd0;
always @(posedge clk) begin
    if (en) begin
        if (up_down)
            q <= q + 1;   
        else
            q <= q - 1;
    end
end
endmodule
