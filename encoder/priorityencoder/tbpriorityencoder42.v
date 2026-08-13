module priorityencoder42_tb();
reg [3:0]a;
wire [1:0]y;
priorityencoder42 dut(.a(a),.y(y));
integer i;
initial begin
    $dumpfile("priorityencoder42.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,a=%b,y=%b",$time,a,y);
    for(i=0;i<4;i=i+1) begin
        {a}=(4'b0001 << i);
        #5;
    end
    $finish;
end
endmodule
