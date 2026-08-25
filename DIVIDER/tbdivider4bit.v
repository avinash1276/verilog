module divider4bit_tb;
reg  [3:0] a, b;
wire [3:0] quotient, remainder;
divider4bit dut(
    .a(a),
    .b(b),
    .quotient(quotient),
    .remainder(remainder)
);
integer i;
initial begin
    $dumpfile("divider4bit.vcd");
    $dumpvars(0, divider4bit_tb);
    $monitor("time=%0t a=%b(%d), b=%b(%d), quotient=%b(%d), remainder=%b(%d)",
             $time, a,a,b, b,quotient,quotient,remainder, remainder);
    for(i = 0; i < 256; i = i + 1) begin
        {a,b} = i;
        #10;
    end
    $finish;
end
endmodule
