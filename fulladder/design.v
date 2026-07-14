module fulladder(
    input a,b,cin,
    output sum,carry
);
wire sum1,sum2,carry1;
xor x1(sum1,a,b);
and a1(carry1,a,b);
xor x2(sum,sum1,cin);
and a2(sum2,sum1,cin);
or o1(carry,sum2,carry1);
endmodule
