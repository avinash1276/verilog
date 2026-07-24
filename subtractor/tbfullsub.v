module fullsub_tb();
reg a,b,bin;
wire difference,borrow;
fullsub dut(.a(a),.b(b),.bin(bin),.difference(difference),.borrow(borrow));
integer i;
initial begin
  $dumpfile("fullsub.vcd");
  $dumpvars(0,dut);
  $monitor("time=%0t,a=%b,b=%b,bin=%b,difference=%b,borrow=%b",$time,a,b,bin,difference,borrow);  
    for(i=0;i<8;i=i+1) begin
    {a,b,bin}=i;
    #5;
    end
$finish;
end
endmodule
