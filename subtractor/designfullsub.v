module halfsub(
    input a,b,
    output difference,borrow
);
assign difference= a ^ b;
assign borrow= (~a) & b;
endmodule
module fullsub(
    input a,b,bin,
    output difference,borrow
);
halfsub hs1(.a(a),.b(b),.difference(d1),.borrow(b1));
halfsub hs2(.a(d1),.b(bin),.difference(difference),.borrow(b2));
or o1(borrow,b1,b2);
endmodule
