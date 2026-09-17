module register8dff_shift_tb;
reg clk;
reg serialip;
wire [7:0] q;
register8dff_shift dut(.clk(clk),.serialip(serialip),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("register8dff_shift.vcd");
    $dumpvars(0, register8dff_shift_tb);
    $monitor("time=%0t, clk=%b, serialip=%b, q=%b",
             $time, clk, serialip, q);
    clk = 0;
    for(integer i = 0; i < 8; i = i + 1) begin
        case(i)
            0: serialip = 1;
            1: serialip = 0;
            2: serialip = 1;
            3: serialip = 1;
            4: serialip = 0;
            5: serialip = 0;
            6: serialip = 1;
            7: serialip = 1;
        endcase
        #10;
    end
    $finish;
end
endmodule
