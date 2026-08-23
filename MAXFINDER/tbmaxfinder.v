module maxfinder_tb();
  reg [3:0] a,b,c;
  wire [3:0] y;
  maxfinder dut(.a(a), .b(b), .c(c), .y(y));
  initial begin
    $dumpfile("maxfinder.vcd");
    $dumpvars(0,dut);
    a = 4'd13;
    b = 4'd5;
    c = 4'd15;
    #5;
    if (y == a)
      $display("a=%b, b=%b, c=%b, y=%b -> a is maximum", a,b,c,y);
    else if (y == b)
      $display("a=%b, b=%b, c=%b, y=%b -> b is maximum", a,b,c,y);
    else
      $display("a=%b, b=%b, c=%b, y=%b -> c is maximum", a,b,c,y);
    $finish;
  end

endmodule
