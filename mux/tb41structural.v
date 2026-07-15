module mux41_tb();
reg a0,a1,a2,a3,s0,s1;
wire y;
mux41 dut(.a0(a0),.a1(a1),.a2(a2),.a3(a3),.s0(s0),.s1(s1),.y(y));
integer i;
initial begin
    $dumpfile("mux41.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a0=%b,a1=%b,a2=%b,a3=%b,s0=%b,s1=%b,y=%b",$time,a0,a1,a2,a3,s0,s1,y);
    for (i=0;i<64;i=i+1) begin
        {a0,a1,a2,a3,s0,s1}=i;
        #5;
    end
     $finish;
end
endmodule
         
