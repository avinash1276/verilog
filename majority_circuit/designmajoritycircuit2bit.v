module majoritycircuit2bit(
    input [1:0] a,
    output x
);

assign x = a[0] & a[1];

endmodule
