module majoritycircuit3bit(
    input [2:0] a,
    output x
);

assign x = (a[2] & a[1]) |
           (a[1] & a[0]) |
           (a[2] & a[0]);

endmodule
