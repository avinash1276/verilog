module mux21_tb();
reg a,b;
reg s;
wire y;
mux21 dut(.a(a),.b(b),.s(s),.y(y));
integer i,j;
initial begin
    $dumpfile("mux21.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,s=%b,y=%b",$time,a,b,s,y);
    for(i=0;i<4;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
        {a,b} = i;
        s = j;
        #5;
    end
    end
    $finish;
end
endmodule
