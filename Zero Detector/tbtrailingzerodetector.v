module TZD_tb();
reg [3:0] a;
wire [2:0] x;
TZD dut(
    .a(a),
    .x(x)
);
integer i;
initial begin
    $dumpfile("TZD.vcd");
    $dumpvars(0,dut);
  $monitor("a=%b,x=%b",a,x);
    for(i = 0; i < 16; i = i + 1) begin
        a = i;
        #10;
    end
    $finish;
end

endmodule
