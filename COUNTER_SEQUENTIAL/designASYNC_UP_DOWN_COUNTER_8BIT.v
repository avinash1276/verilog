module updowncounter8(
    input clk, en, reset,
  output reg [7:0] q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        if(en)
            q <= 8'd0;   
        else
            q <= 8'b11111111;
    end
    else begin
        if(en)
            q <= q + 1;     
        else
            q <= q - 1;      
end
end
endmodule
