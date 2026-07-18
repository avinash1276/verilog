module mux81(
    input [7:0]a,
    input [2:0]s,
    output reg y
);
assign y=a[s];
endmodule
module mux1618121(
    input [15:0]a,
    input [3:0]s,
    output y
);
wire y0,y1;
mux81 m1(.a(a[7:0]),.s(s[2:0]),.y(y0));
mux81 m2(.a(a[15:8]),.s(s[2:0]),.y(y1));
assign y= s[3] ? y1 : y0;
endmodule
