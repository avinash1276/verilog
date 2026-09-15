module register4dff_load_tb();
reg [3:0]d;
reg load,clk;
wire [3:0]q;
register4dff_load dut(.d(d),.load(load),.clk(clk),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("register4dff_load.vcd");
    $dumpvars(0,register4dff_load_tb);
    $monitor("d=%b load=%b clk=%b q=%b",d,load,clk,q);
    clk = 0;
    for(integer i=0;i<16;i=i+1) begin
        d = i;
        for(integer j=0;j<2;j=j+1) begin
            load=j;
            #10;
        end
    end
    $finish;
end
endmodule
