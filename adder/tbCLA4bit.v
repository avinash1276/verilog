module CLA4bit_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
CLA4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
integer i;
integer j;
initial begin
    $dumpfile("CLA4bit.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
    for(i=0;i<256;i=i+1) begin
        for(j=0;j<2;j=j+1) begin
            {a,b} = 34;
            cin = 1;
            #5;
        end
    end
    $finish;
end
endmodule
