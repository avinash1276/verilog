module SRlatch_tb;
reg s, r;
wire q;
SRlatch dut(.s(s),.r(r),.q(q));
initial begin
    $dumpfile("SRlatch.vcd");
    $dumpvars(0, SRlatch_tb);
    $monitor("time=%0t, s=%b, r=%b, q=%b", $time, s, r, q);
    for (integer i = 0; i < 4; i = i + 1) begin
        {s,r} = i;
        #10;
    end
    $finish;
end
endmodule
