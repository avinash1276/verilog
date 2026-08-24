module multiplier8bit_tb;
reg  [7:0] a, b;
wire [15:0] product;
multiplier8bit dut(
    .a(a),
    .b(b),
    .product(product)
);
integer i;
initial begin
    $dumpfile("multiplier8bit.vcd");
    $dumpvars(0, multiplier8bit_tb);
    $monitor("time=%0t a=%b (%d), b=%b (%d), product=%b (%d)",
             $time, a, a, b, b, product, product);
    for(i = 0; i < 65536; i = i + 1) begin
        {a,b} =7888;
        #10;
    end
    $finish;
end
endmodule
