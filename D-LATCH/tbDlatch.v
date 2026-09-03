module Dlatch_tb();
reg d,en;
wire q;
Dlatch dut(.d(d),.en(en),.q(q));
initial begin
    $dumpfile("Dlatch.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t,d=%b,en=%b,q=%b",$time,d,en,q);
    en = 0;
    for(integer i=0;i<2;i=i+1) begin
        d = i;
        #10;
    end
    en =1;
    for(integer i=0;i<2;i=i+1) begin
        d = i;
        #10;
    end
    $finish;
end
endmodule
