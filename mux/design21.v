module mux21(
    input s0,a,b,
    output y
);
wire s1,a1,b1;
and and1(a1,a,s1);
and and2(b1,b,s0);
not n1(s1,s0);
or o1(y,a1,b1);
endmodule
