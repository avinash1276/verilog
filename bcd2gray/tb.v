module BCDtoGray_tb;

reg  [3:0] bcd;
wire [3:0] gray;

BCDtoGray dut (
    .bcd(bcd),
    .gray(gray)
);

integer i;

initial begin
    $dumpfile("BCDtoGray.vcd");
    $dumpvars(0,dut);

    $monitor("time=%0t,bcd=%b,gray=%b",$time,bcd,gray);

    for(i = 0; i <= 9; i = i + 1) begin
        bcd = i;
        #5;
    end
    $finish;
end

endmodule
