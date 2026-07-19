module demux12(
    input x,
    input s,
    output reg y1,
    output reg y2
);
always @(*) begin
    if(s==1'b0) begin
    y1=x;
    y2=1'b0;
    end
    else begin
    y1=1'b0;
    y2=x;
    end
end
endmodule
