module mux41(
    input a0,a1,a2,a3,s0,s1,
    output y
);
assign y= (~s1 & ~s0 & a0) |
          (~s1 & s0 & a1) |
          (s1 & ~s0 & a2) |
          (s1 & s0 & a3);
endmodule
