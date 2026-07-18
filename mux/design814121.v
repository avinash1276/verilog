module mux41(
    input [3:0]a,
    input [1:0]s,
    output reg y
);
integer i;
always @(*) begin
    for(i=0;i<4;i=i+1) begin
        if(s==i)
        y=a[s];
    end
end
endmodule
module mux814121(
    input [7:0]a,
    input [2:0]s,
    output y
);
wire y0,y1;

mux41 m1(.a(a[3:0]),.s(s[1:0]),.y(y0));
mux41 m2(.a(a[7:4]),.s(s[1:0]),.y(y1));
assign y= s[2] ? y1 : y0;
endmodule 
