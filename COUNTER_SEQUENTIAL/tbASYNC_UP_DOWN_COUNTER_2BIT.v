module updowncounter2_tb();
reg clk, en, reset;
wire [1:0] q;
updowncounter2 dut(.clk(clk),.en(en),.reset(reset),.q(q));
always #5 clk = ~clk;
initial begin
    $dumpfile("updowncounter2.vcd");
    $dumpvars(0, updowncounter2_tb);
  $monitor("time=%0t clk=%b en=%b reset=%b q=%b",$time,clk,en,reset,q);

    clk = 0;
    en = 0;
    reset = 0;

    #10 en=1; reset=1;
    #10 en=0; reset=0;
    #10 en=1; reset=1;
    #10 en=0; reset=1;
    #10 en=1; reset=0;

    #10 $finish;
end
endmodule
