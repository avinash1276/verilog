module evenparitychecker(
    input [4:0]x,
    output reg even_x
);
reg evenparity;
always @(*) begin
    evenparity = x[4]^x[3]^x[2]^x[1]^x[0];
    if((evenparity) == 1'b0)
        even_x = 1'b0; // no error
        else 
        even_x = 1'd1; // error detected
end
endmodule
