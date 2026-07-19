module demux24(
input x,
input [1:0]s,
output reg y0,y1,y2,y3
);
always @(*) begin
    if(s==2'b00) begin
        y0=x;
        {y1,y2,y3}=3'b000;
    end
    else if(s==2'b01) begin
        y1=x;
        {y0,y2,y3}=3'b000;
    end
     else if(s==2'b10) begin
        y2=x;
        {y0,y1,y3}=3'b000;
    end
     else if(s==2'b11) begin
        y3=x;
        {y0,y1,y2}=3'b000;
    end
end
endmodule
