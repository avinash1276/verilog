module mux41(
    input a0,a1,a2,a3,s0,s1,
    output y
);
wire x1,x2,x3,x4,x5,x6;
and and1(x3,a0,x1,x2);
and and2(x4,a1,s0,x2);
and and3(x5,a2,s1,x1);
and and4(x6,a3,s0,s1);
not not1(x1,s0);
not not2(x2,s1);
or or1(y,x3,x4,x5,x6);
endmodule
