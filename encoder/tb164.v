module encoder164_tb();
reg [15:0]x;
wire [3:0]y;
encoder164 dut(.x(x),.y(y));
integer i;
initial begin 
    $dumpfile("encoder164.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,y=%b",$time,x,y);
    for(i=0;i<16;i=i+1) begin
        x = ( 16'b0000000000000001 << i);
        #5;
    end
    $finish;
end
endmodule
