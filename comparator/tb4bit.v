module comparator4bit_tb();
reg [3:0]a,b;
wire x,y,z;
comparator dut(.a(a),.b(b),.x(x),.y(y),.z(z));
integer i;
initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,x=%b,y=%b,z=%b",$time,a,b,x,y,z);
    for(i=0;i<16;i=i+1) begin
        {a,b} = i;
        #5;
    end
    $finish;
end
endmodule
