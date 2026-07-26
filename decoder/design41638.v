module decoder38(
    input [2:0]x,
    output reg [7:0]y,
    input en
);
integer i;
always @(*) begin
    for(i=0;i<8;i=i+1) begin
        if(en && x == i) 
            y[i]=1'b1;
            else
            y[i]=1'b0;
    end
end
endmodule
module decoder41638(
    input [3:0]x,
    output [15:0]y
);
decoder38 d1(.x(x[2:0]),.en(~x[3]),.y(y[7:0]));
decoder38 d2(.x(x[2:0]),.en(x[3]),.y(y[15:8]));
endmodule
