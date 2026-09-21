module PISO_4BIT_tb();
reg [3:0]parallelin;
reg clk,load;
wire serialout;
PISO_4BIT dut(.parallelin(parallelin),.clk(clk),.load(load),.serialout(serialout));
always #5 clk = ~clk;
initial  begin
   $dumpfile("PISO_4BIT.vcd");
   $dumpvars(0,dut);
   $monitor("time=%0t load=%b clk=%b parallelin=%b q=%b serialout=%b",$time,load,clk,parallelin,dut. q,serialout);
   parallelin = 4'b1010;
   clk = 0;
   load = 1;
   #10;
   load = 0;
   #40;
 $finish;
end
endmodule
