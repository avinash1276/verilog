module halfadder(
    input a,b,
    output sum,carry
);
xor x1(sum,a,b);
and a1(carry,a,b);
endmodule
module fulladder(
    input a,b,cin,
    output sum,cout
);
wire sum1,carry1,carry2;
halfadder ha1(.a(a),.b(b),.sum(sum1),.carry(carry1));
halfadder ha2(.a(sum1),.b(cin),.sum(sum),.carry(carry2));
or o1(cout,carry2,carry1);
endmodule
