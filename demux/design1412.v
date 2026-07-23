module demux12(
    input x,
    input s,
    output reg y0,
    output reg y1
);
always @(*) begin
    if(s==1'b0) begin
    y0=x;
    y1=1'b0;
    end
    else begin
    y1=x;
    y0=1'b0;
    end
end
endmodule
module demux1412(
    input x,
    input [1:0]s,
    output [3:0]y
);
wire y0,y1;
demux12 dm1(.x(x),.s(s[1]),.y0(y0),.y1(y1));
demux12 dm2(.x(y0),.s(s[0]),.y0(y[0]),.y1(y[1]));
demux12 dm3(.x(y1),.s(s[0]),.y0(y[2]),.y1(y[3]));
endmodule
