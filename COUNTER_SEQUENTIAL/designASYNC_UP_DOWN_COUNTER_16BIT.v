module updowncounter16(
    input clk, en, reset,
  output reg [15:0] q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        if(en)
            q <= 16'd0;   
        else
            q <= 16'b1111111111111111;
    end
    else begin
        if(en)
            q <= q + 1;     
        else
            q <= q - 1;      
end
end
endmodule
