module bcdencoder(
    input [9:0]x,
    output reg [3:0]y
);
integer i;
always @(*) begin
    y=4'b0000;
    for(i=0;i<10;i=i+1) begin
        if(x[i])
        y=i;
    end
end
endmodule
