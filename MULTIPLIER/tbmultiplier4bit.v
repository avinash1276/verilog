module multiplier4bit_tb;
reg  [3:0] a, b;
wire [7:0] product;
multiplier4bit dut(
    .a(a),
    .b(b),
    .product(product)
);
integer i;
initial begin
    $dumpfile("multiplier4bit.vcd");
    $dumpvars(0, multiplier4bit_tb);
    $monitor("time=%0t a=%b (%d), b=%b (%d), product=%b (%d)",
             $time, a, a, b, b, product, product);
   for(i=0;i<256;i=i+1) begin
    {a,b}=i;
    #10;
   end
    $finish;
end
endmodule
