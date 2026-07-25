module decoder416(
    input a,b,c,d,
    output reg [15:0]y
);
integer i;
always @(*) begin
    for(i=0;i<16;i=i+1) begin
        if({a,b,c,d}==i)
        y[i]=1'b1;
        else
        y[i]=1'b0;
    end
end
endmodule
