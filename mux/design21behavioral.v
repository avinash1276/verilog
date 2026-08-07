module mux21(
    input a,b,
    input s,
    output reg y
);
 always @(*) begin
    if(s==0)
    y = a;
    else
    y = b;
 end
endmodule
