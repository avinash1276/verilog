module notgate_tb();
reg a;
wire y;
notgate dut(.a(a),.y(y));
initial begin
    $dumpfile("notgate.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,y=%b",$time,a,y);
    a=0;
    #5;;
    a=1;
    $finish;
end
endmodule
