module evenparitygenerator_tb();
reg [3:0]x;
wire [4:0]y;
evenparitygenerator dut(.x(x),.y(y));
integer i;
initial begin
    $dumpfile("evenparitygenerator.vcd");
    $dumpvars(0,dut);
    $monitor("x=%b,y=%b",x,y);
    for(i=0;i<16;i=i+1) begin
        x = i;
        #5;
    end
    $finish;
end
endmodule
