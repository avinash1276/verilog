module evenparitychecker_tb();
reg [4:0]x;
wire even_x;
evenparitychecker dut(.x(x),.even_x(even_x));
integer i;
initial begin
    $dumpfile("evenparitychecker.vcd");
    $dumpvars(0,dut);
    for(i=0;i<32;i=i+1) begin
        x=i;
        #5;
        if(even_x == 1'b0) 
            $display("x=%b,even_x=%b -> COERRECT",x,even_x);
            else
            $display("x=%b,even_x=%b -> FALSE",x,even_x);
    end
    $finish;
end
endmodule
