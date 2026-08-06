module BinarytoGray_tb;

reg  [3:0] binary;
wire [3:0] gray;

BinarytoGray dut (
    .binary(binary),
    .gray(gray)
);

integer i;

initial begin
    $dumpfile("BinarytoGray.vcd");
    $dumpvars(0,dut);

    $monitor("time=%0t,binary=%b,gray=%b",$time,binary,gray);

    for(i = 0; i < 16; i = i + 1) begin
        binary = i;
        #5;
    end
    $finish;
end

endmodule
