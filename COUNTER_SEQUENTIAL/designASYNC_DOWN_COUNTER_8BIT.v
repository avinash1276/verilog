module downcounter8(
    input clk,reset,
    output reg [7:0]q
);
initial q = 8'd0;
always @(posedge clk or posedge reset) begin
    if(reset)
        q <= 8'd0;
    else
        q <= q-1;
end
endmodule
