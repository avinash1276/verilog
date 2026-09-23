module bidirsr(
    input serialin,
    input clk,dir,
    output reg [3:0]q
);
always @(posedge clk) begin
    if(dir) 
    q <= {serialin,q[3:1]};
    else
    q <= {q[2:0],serialin};
end
endmodule
