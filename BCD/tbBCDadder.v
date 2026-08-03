module BCDadder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
reg [4:0]temp;
BCDadder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
integer i;
integer j;
integer k;
initial begin
    $dumpfile("BCDadder.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
    for(i=0;i<=9;i=i+1) begin
        for(j=0;j<=9;j=j+1) begin
            for(k=0;k<=1;k=k+1) begin
        a = i;
        b = j;
        cin = k;
        #5;
    end
    end
    end

    $finish;
    end
    endmodule
