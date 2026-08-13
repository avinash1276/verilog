module majoritycircuit2bit_tb();

reg [1:0] a;
wire x;
integer i;

majoritycircuit2bit dut(
    .a(a),
    .x(x)
);

initial begin

    $dumpfile("majoritycircuit2bit.vcd");
    $dumpvars(0, majoritycircuit2bit_tb);

    $monitor("a=%b, x=%b", a, x);

    for(i = 0; i < 4; i = i + 1) begin
        a = i;
        #5;
    end

    $finish;

end

endmodule
