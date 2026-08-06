module GraytoBinary_tb;

reg  [3:0] gray;
wire [3:0] binary;

GraytoBinary dut (
    .binary(binary),
    .gray(gray)
);

integer i;

initial begin
    $dumpfile("GraytoBinary.vcd");
    $dumpvars(0,dut);

    $monitor("time=%0t,gray=%b,binary=%b",$time,gray,binary);

    for(i = 0; i < 16; i = i + 1) begin
        gray = i;
        #5;
    end
    $finish;
end

endmodule
