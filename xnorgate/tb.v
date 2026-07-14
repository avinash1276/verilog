module xnorgate_tb();
reg a,b;
wire y;
xnorgate dut(.a(a),.b(b),.y(y));
initial begin
    $dumpfile("xnorgate.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);
    a=0;b=0;
    #5;
    a=0;b=1;
    #5;
    a=1;b=0;
    #5;
    a=1;b=1;
    $finish;
end
endmodule
