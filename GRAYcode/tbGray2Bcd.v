module GraytoBcd_tb;

reg  [3:0] gray;
wire [3:0] bcd;

GraytoBcd dut (
    .gray(gray),
    .bcd(bcd)
);

integer i;

initial begin
    $dumpfile("GraytoBcd.vcd");
    $dumpvars(0,dut);

    $monitor("time=%0t,gray=%b,bcd=%b",$time,gray,bcd);

    for(i = 0; i <16; i = i + 1) begin
        gray = i;
        #5;
    end
    $finish;
end

endmodule
