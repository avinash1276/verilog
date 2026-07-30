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
module rca4bit(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output carry4
);
wire carry1,carry2,carry3;
fulladder f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(carry1));
fulladder f2(.a(a[1]),.b(b[1]),.cin(carry1),.sum(sum[1]),.carry(carry2));
fulladder f3(.a(a[2]),.b(b[2]),.cin(carry2),.sum(sum[2]),.carry(carry3));
fulladder f4(.a(a[3]),.b(b[3]),.cin(carry3),.sum(sum[3]),.carry(carry4));
endmodule
