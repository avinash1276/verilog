module rca4bit_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry4;
rca4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry4(carry4));
integer i;
initial begin
    $dumpfile("rca4bit.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,carry4=%b",$time,a,b,cin,sum,carry4);
    for(i=0;i<512;i=i+1) begin
        {a,b,cin} = 76;
        #5;
    end
    $finish;
end
endmodule
