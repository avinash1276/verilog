module majoritycircuit3bit_tb();
reg [2:0] a;
wire x;
majoritycircuit3bit dut (
    .a(a),
    .x(x)
);
integer i;
initial begin
    $dumpfile("majoritycircuit3bit.vcd");
    $dumpvars(0, majoritycircuit3bit_tb);
    $monitor("a=%b, x=%b", a, x);
    for(i = 0; i < 8; i = i + 1) begin
        a = i;
        #10;
    end
    $finish;
end
endmodule
