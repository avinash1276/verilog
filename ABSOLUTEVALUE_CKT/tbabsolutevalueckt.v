module absolutevalueckt_tb();

  reg [3:0] a;
  wire [3:0] x;

  absolutevalueckt dut(
    .a(a),
    .x(x)
  );

  integer i;

  initial begin
    $dumpfile("absolutevalueckt.vcd");
    $dumpvars(0, absolutevalueckt_tb);

    $monitor("time=%0t, a=%b, x=%b", $time, a, x);

    for(i = 0; i < 16; i = i + 1) begin
      a = i;
      #5;
    end

    $finish;
  end

endmodule
