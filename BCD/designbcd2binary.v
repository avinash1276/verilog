module bcd2binary(
input [3:0]a,b,
output reg [6:0]binary // why 7 bits bcoz maximum 2 digit bcd can have value of 99 so to represent this in binary we req 7 bits
);
always @(*) begin
    if ((a <= 4'd9) && (b <= 4'd9)) 
        binary = (a * 10) + b; // eg for 1001 1001 in bcd is 99 it can be rep in binary by (9*10)+9 is 90+9 = 99
    else binary = 7'bxxxxxxx;
end
endmodule
