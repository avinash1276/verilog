module decoder24(
    input a,b,
    input en,
    output reg [3:0]y
);
integer i;
always @(*) begin
    for(i=0;i<4;i=i+1) begin
        if(en && {a,b}==i)
        y[i]=1'b1;
        else
        y[i]=1'b0;
    end
end
endmodule
module decoder3824(
    input a,b,c,
    input en,
    output [7:0]y
);
decoder24 d1(.a(b),.b(c),.en(~a),.y(y[3:0]));
decoder24 d2(.a(b),.b(c),.en(a),.y(y[7:4]));
endmodule
