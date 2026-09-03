module SRgatedlatch_tb;
reg s,r,en;
wire q;
SRgatedlatch dut(.s(s),.r(r),.en(en),.q(q));
initial begin
    $dumpfile("SRgatedlatch.vcd");
    $dumpvars(0, SRgatedlatch_tb);
    $monitor("time=%0t, s=%b, r=%b, en=%b, q=%b", $time, s, r, en, q);
    en = 0;
    for (integer i = 0; i < 4; i = i + 1) begin
        {s,r} = i;
        #10;
    end
      en = 1;
    for (integer i = 0; i < 4; i = i + 1) begin
        {s,r} = i;
        #10;
    end
    $finish;
end
endmodule
