module demux12(
    input x,
    input s,
    output reg [1:0]y
);
always @(*) begin
    case(s)
    1'b0: y={1'b0,x};
    1'b1: y={x,1'b0};
    endcase
end
endmodule
module demux18(
    input x,
    input [2:0]s,
    output reg [7:0]y
);
integer i;
always @(*) begin
    y=8'b00000000;
        y[s]=x;
end
endmodule
module demux1161812(
    input x,
    input [3:0]s,
    output [15:0]y
);
wire y15,y14;
demux12 dm1(.x(x),.s(s[3]),.y({y14,y15}));
demux18 dm2(.x(y15),.s(s[2:0]),.y(y[7:0]));
demux18 dm3(.x(y14),.s(s[2:0]),.y(y[15:8]));
endmodule
