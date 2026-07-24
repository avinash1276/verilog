module demux12(
    input x,
    input s,
    output reg [1:0]y
);
always @(*) begin
    case(s)
    1'b0: begin
        y[0]=x;
        y[1]=1'b0;
    end
        1'b1: begin
        y[0]=1'b0;
        y[1]=x;
        end
    endcase
end
endmodule
module demux14(
    input x,
    input [1:0]s,
    output reg [3:0]y
);
always @(*) begin
    case(s)
    2'b00: y={x,1'b0,1'b0,1'b0};
    2'b01: y={1'b0,x,1'b0,1'b0};
    2'b10: y={1'b0,1'b0,x,1'b0};
    2'b11: y={1'b0,1'b0,1'b0,x};
    endcase
end
endmodule
module demux181412(
    input x,
    input [2:0]s,
    output [7:0]y
);
wire y0,y1;
demux12 dm1(.x(x),.s(s[2]),.y({y1,y0}));
demux14 dm2(.x(y0),.s(s[1:0]),.y(y[3:0]));
demux14 dm3(.x(y1),.s(s[1:0]),.y(y[7:4]));
endmodule

