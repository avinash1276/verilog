module dff_set_reset ( 
    input d,clk,set,reset,
    output reg q
);
always @(posedge clk) begin //synchronous dff
    if (set)
        q <= 1;
    else if(reset)
        q <= 0;
    else
        q <= d;
end
endmodule
