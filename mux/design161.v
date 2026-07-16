module mux161(
    input [15:0]a,
    input [3:0]s,
    output reg y
);
integer i;
always @(*) begin
    for(i=0;i<16;i=i+1) begin
        if(s==i)
        y=a[s];
    end
end
endmodule
        
