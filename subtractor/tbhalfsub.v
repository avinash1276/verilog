module halfsubtractor_tb();
reg a,b;
wire difference,borrow;
halfsubtractor dut(.a(a),.b(b),.difference(difference),.borrow(borrow));
integer i;
initial begin
    $dumpfile("halfsubtractor.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,%b,b=%b,difference=%b,borrow=%b",$time,a,b,difference,borrow);
    for(i=0;i<4;i=i+1) begin
    {a,b}= i;
    #5;
    end
    $finish;
end
endmodule
