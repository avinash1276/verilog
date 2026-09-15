module register4dff_shiftenable_tb;
reg clk;
reg en;
reg serialip;
wire [3:0] q;
register4dff_shiftenable dut(.clk(clk),.en(en),.serialip(serialip),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("register4dff_shiftenable.vcd");
    $dumpvars(0, register4dff_shiftenable_tb);
    $monitor("time=%0t, clk=%b, en=%b, serialip=%b, q=%b",
             $time, clk, en, serialip, q);
    clk = 0;
    for(integer i = 0; i < 8; i = i + 1) begin
        case(i)
            0: begin en = 0; serialip = 0; end
            1: begin en = 1; serialip = 1; end
            2: begin en = 1; serialip = 0; end
            3: begin en = 1; serialip = 1; end
            4: begin en = 0; serialip = 0; end
            5: begin en = 1; serialip = 1; end
            6: begin en = 0; serialip = 1; end
            7: begin en = 1; serialip = 0; end
        endcase
        #10;
    end
    $finish;
end
endmodule
