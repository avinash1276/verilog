module updowncounter4_tb();
reg clk, en, reset;
wire [3:0] q;
updowncounter4 dut(.clk(clk),.en(en),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("updowncounter4.vcd");
    $dumpvars(0, updowncounter4_tb);
    $monitor("time=%0t clk=%b en=%b reset=%b q=%b",$time,clk,en,reset,q);

    clk = 0;
    en = 0;
    reset = 0;
  
    #10 en=0; reset=1;
    #10 reset=0;
    #40 en=1; reset=1;
    #10 reset=0;
    #40 en=0; reset=1;
    #10 reset=0;
    #40 en=1; reset=1;
    #10 reset=0;

    #30 $finish;
end
endmodule
