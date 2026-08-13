module priorityencoder83_tb();
reg [7:0]a;
wire [2:0]x;
priorityencoder83 dut(.a(a),.x(x));
integer i;
initial begin
    $dumpfile("priorityencoder83.vcd");
    $dumpvars(0,dut);
    $monitor ("a=%b,x=%b",a,x);
        for(i=0;i<256;i=i+1) begin
            a = i;
        #5;
    end
    $finish;
end
endmodule
