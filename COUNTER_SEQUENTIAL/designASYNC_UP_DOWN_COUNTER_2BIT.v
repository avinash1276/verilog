module updowncounter2(
    input clk,en,reset,
    output reg [1:0] q
);
always @(posedge clk or posedge reset) begin
    if(reset) begin
        if(en)
            q <= 2'b00;
        else
            q <= 2'b11;   
    end
    else begin
        if(en)
            q <= q + 1;    
        else
            q <= q - 1;    
    end
en
endmodule
