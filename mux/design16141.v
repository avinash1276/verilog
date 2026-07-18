module mux41(
    input [3:0]a,
    input [1:0]s,
    output y
);
assign y=a[s];
endmodule
module mux16141(
    input [15:0]a,
    input [3:0]s,
    output y
);
wire y0,y1,y2,y3;
integer i;
mux41 m1(.a(a[3:0]),.s(s[1:0]),.y(y0));
mux41 m2(.a(a[7:4]),.s(s[1:0]),.y(y1));
mux41 m3(.a(a[11:8]),.s(s[1:0]),.y(y2));
mux41 m4(.a(a[15:12]),.s(s[1:0]),.y(y3));
mux41 m5(.a({y0,y1,y2,y3}),.s(s[3:2]),.y(y));
endmodule
