module dff_set_reset_tb;
reg d, clk,set,reset;
wire q;
dff_set_reset dut (
    .d(d),
    .clk(clk),
    .set(set),
    .reset(reset),
    .q(q)
);
integer i;
initial begin
    $dumpfile("dff_set_reset.vcd");
    $dumpvars(0, dff_set_reset_tb);
     $monitor("time=%0t,clk=%b,d=%b,set=%b,reset=%b,q=%b", 
             $time,clk,d,set,reset,q);
    clk = 0;
    d=0;
    set=0;
    reset=0;
    for(i=0;i<8;i=i+1) begin
        ({d,set,reset})=i;
        #10;
    end
    #5 $finish;
end
always #5 clk = ~clk;
endmodule

