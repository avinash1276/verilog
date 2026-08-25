module divider8bit_tb;
reg  [7:0] a, b;
wire [7:0] quotient, remainder;
divider8bit dut(
    .a(a),
    .b(b),
    .quotient(quotient),
    .remainder(remainder)
);
integer i;
initial begin
    $dumpfile("divider8bit.vcd");
    $dumpvars(0, divider8bit_tb);
    $monitor("time=%0t, a=%b(%d), b=%b(%d), quotient=%b(%d), remainder=%b(%d)",
             $time, a,a,b,b,quotient, quotient, remainder,remainder);
    for(i = 0; i < 65536; i = i + 1) begin
        {a,b} = 777;
        #10;
    end
    $finish;
end
endmodule
