module andgate_tb();
reg a,b;
wire ab;
andgate dut(.a(a),.b(b),.ab(ab));
initial begin
    $dumpfile("andgate.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,ab=%b",$time,a,b,ab);
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