module updowncounter4(
    input clk, en, reset,
    output reg [3:0] q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        if(en)
            q <= 4'b0000;   
        else
            q <= 4'b1111;  
    end
    else begin
        if(en)
            q <= q + 1;     
        else
            q <= q - 1;      
end
endmodule
