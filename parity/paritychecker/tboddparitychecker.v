module oddparitychecker_tb();
reg [4:0]x;
wire odd_x;
oddparitychecker dut(.x(x),.odd_x(odd_x));
integer i;
initial begin
    $dumpfile("oddparitychecker.vcd");
    $dumpvars(0,dut);
    for(i=0;i<32;i=i+1) begin
        x=i;
        #5;
        if(odd_x == 1'b0) 
            $display("x=%b,odd_x=%b -> COERRECT",x,odd_x);
            else
            $display("x=%b,odd_x=%b -> FALSE",x,odd_x);
    end
    $finish;
end
endmodule
