module fulladder_tb();
reg a,b,cin;
wire sum,cout;
fulladder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
    a=0;b=0;cin=0;
    #5;
    a=0;b=0;cin=1;
    #5;
    a=0;b=1;cin=0;
    #5;
    a=0;b=1;cin=1;
    #5;
    a=1;b=0;cin=0;
    #5;
    a=1;b=0;cin=1;
    #5;
    a=1;b=1;cin=0;
    #5;
    a=1;b=1;cin=1;
    #5;
    $finish;
end
endmodule
