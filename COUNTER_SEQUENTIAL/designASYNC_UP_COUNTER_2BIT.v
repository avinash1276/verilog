module upcounter2(
    input clk,reset,
    output reg [1:0]q
);
initial q = 0;
always @(posedge clk or posedge reset) begin
    if(reset) begin
        q<= 2'b00;
    end
    else begin
        q <= q+1;
    end
end
endmodule
