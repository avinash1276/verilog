module dff_enable_set_tb;
reg d,en,set,clk;
wire q;
dff_enable_set dut (.d(d),.en(en),.set(set),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_enable_set.vcd");
    $dumpvars(0, dff_enable_set_tb);
    $monitor("time=%0t,clk=%b,set=%b,en=%b,d=%b,q=%b",
             $time,clk,set,en,d,q);
    clk = 0;
    for(integer i=0;i<8;i=i+1) begin
        {d,en,set} = i;
        #10;
    end
    $finish;
end
endmodule

