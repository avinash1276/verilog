module register16dff_shift_tb;
reg clk;
reg serialip;
wire [15:0] q;
register16dff_shift dut(
    .clk(clk),
    .serialip(serialip),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("register16dff_shift.vcd");
    $dumpvars(0, register16dff_shift_tb);
    $monitor("time=%0t, clk=%b, serialip=%b, q=%b",
             $time, clk, serialip, q);
    clk = 0;
    serialip = 0;
    for(integer i = 0; i < 16; i = i + 1) begin
        case(i)
            0:  serialip = 1;
            1:  serialip = 0;
            2:  serialip = 1;
            3:  serialip = 1;
            4:  serialip = 0;
            5:  serialip = 0;
            6:  serialip = 1;
            7:  serialip = 1;
            8:  serialip = 1;
            9:  serialip = 0;
            10: serialip = 1;
            11: serialip = 0;
            12: serialip = 1;
            13: serialip = 1;
            14: serialip = 0;
            15: serialip = 0;
        endcase
        #10;
    end
    $finish;
end
endmodule
