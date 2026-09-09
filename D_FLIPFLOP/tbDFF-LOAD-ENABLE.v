module dff_enable_load_tb;
reg d,en,load,clk;
wire q;
dff_enable_load dut (.d(d),.en(en),.load(load),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("dff_enable_load.vcd");
    $dumpvars(0, dff_enable_load_tb);
    $monitor("time=%0t,clk=%b,load=%b,en=%b,d=%b,q=%b",
             $time,clk,load,en,d,q);
    clk = 0;
    for(integer i=0;i<8;i=i+1) begin
        {d,en,load} = i;
        #10;
    end
    $finish;
end
endmodule

