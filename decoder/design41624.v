module decoder24(
    input [1:0]x,
    output reg [3:0]y,
    input en
);
integer i;
always @(*) begin
    y=4'b0000;
    for(i=0;i<4;i=i+1) begin
        if(en && x==i)
        y[i]=1'b1;
    end
end
endmodule
module decoder41624(
    input [3:0]x,
    output [15:0]y
);
wire [3:0]en;
decoder24 d1(.x(x[3:2]),.en(1'b1),.y(en));
decoder24 d2(.x(x[1:0]),.en(en[0]),.y(y[3:0]));
decoder24 d3(.x(x[1:0]),.en(en[1]),.y(y[7:4]));
decoder24 d4(.x(x[1:0]),.en(en[2]),.y(y[11:8]));
decoder24 d5(.x(x[1:0]),.en(en[3]),.y(y[15:12]));
endmodule
