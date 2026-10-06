module downcounter16(
    input clk,reset,
    output reg [15:0]q
);
initial q = 16'd0;
always @(posedge clk or posedge reset) begin
    if(reset)
        q <= 16'd0;
    else
        q <= q-1;
end
endmodule
