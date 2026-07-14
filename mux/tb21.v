module mux21_tb();
reg s0,a,b;
wire y;
mux21 dut(.s0(s0),.a(a),.b(b),.y(y));
initial begin 
    $dumpfile("mux21.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,s0=%b,a=%b,b=%b,y=%b",$time,s0,a,b,y);
    s0=0;a=0;b=0;
    #5;
    s0=0;a=0;b=1;
    #5;
    s0=0;a=1;b=0;
    #5;
    s0=0;a=1;b=1;
    #5;
    s0=1;a=0;b=0;
    #5;
    s0=1;a=0;b=1;
    #5;
    s0=1;a=1;b=0;
    #5;
    s0=1;a=1;b=1;
    $finish;
end
endmodule
