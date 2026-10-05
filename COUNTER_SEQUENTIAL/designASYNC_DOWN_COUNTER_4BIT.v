module downcounter4(
    input clk,reset,
    output reg [3:0]q
);
initial q = 4'd16;
always @(posedge clk or posedge reset) begin
    if(reset)
        q <= 4'd0;
    else
        q <= q-1;
end
endmodule
