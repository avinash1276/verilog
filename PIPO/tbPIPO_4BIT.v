module PIPO_4BIT_tb();
reg [3:0] parallelin;
reg clk, load;
wire [3:0] parallelout;
PIPO_4BIT dut(.parallelin(parallelin),.clk(clk),.load(load),.parallelout(parallelout));
always #5 clk = ~clk;
initial begin
    $dumpfile("PIPO_4BIT.vcd");
    $dumpvars(0, PIPO_4BIT_tb);
    $monitor("time=%0t clk=%b load=%b parallelin=%b parallelout=%b",$time, clk, load, parallelin, parallelout);
    clk = 0;
    load = 0;
    parallelin = 4'b0000;
    #10;
    parallelin = 4'b1010;
    load = 1;
    #10;
    load = 0;
    parallelin = 4'b1100;
    #10;
    parallelin = 4'b0011;
    #10;
    $finish;
end
endmodule
