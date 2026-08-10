module e3tobinary(
    input [3:0]e3,
    output reg [3:0]binary
);
always @(*) begin
    if(e3 >= 4'd3 && e3 <= 4'd12) 
        binary  = e3 - 4'b0011;
    else
        binary = 4'bxxxx;
end
endmodule
