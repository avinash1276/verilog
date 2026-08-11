module paritygenerator_tb();
reg [3:0]d;
wire [4:0]even_x;
wire [4:0]odd_x;
paritygenerator dut(.d(d),.even_x(even_x),.odd_x(odd_x));
integer i;
initial begin
    $dumpfile("paritygenertor.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,even_x=%b,odd_x=%b",d,even_x,odd_x);
    for(i=0;i<16;i=i+1) begin
        d = i;
        #5;
    end
    $finish;
end
endmodule
