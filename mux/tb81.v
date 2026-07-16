module mux81_tb();
reg [7:0]a;
reg [2:0]s;
wire y;
mux81 dut(.a(a),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux81.vcd");
    $dumpvars(0,dut);
    $monitor("time=%ot,a=%b,s=%b,y=%b",$time,a,s,y);
    for(i=0;i<2048;i=i+1) begin
        {a,s}=678;
        #5;
    end 
        $finish;
end
endmodule
