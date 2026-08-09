module binary2bcd(
    input [7:0]a,
    output reg [3:0]x,y
);
always @(*) begin
    if(a <= 8'd99) begin
        x = (a / 10); // it will give u quotient eg for 58, 58/10 quotient is 5 and remainder is 8
        y = (a % 10); // remainder 
    end
    else begin
        x = 4'bxxxx;
        y = 4'bxxxx;
    end
end
endmodule
    
    
    
    
    
    
