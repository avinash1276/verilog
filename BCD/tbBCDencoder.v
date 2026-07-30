module bcdencoder_tb();
reg [9:0]x;
wire [3:0]y;
bcdencoder dut(.x(x),.y(y));
integer i;
initial begin
    $dumpfile("bcdencoder.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,x=%b,y=%b",$time,x,y);
    for(i=0;i<10;i=i+1) begin
        x=(10'b0000000001 << i);
        #5;
    end
    $finish;
end
endmodule
