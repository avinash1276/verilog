module PISO_4BIT(
    input [3:0]parallelin,
    input clk,load,
    output reg serialout
);
reg [3:0]q;
initial {q,serialout} = 0;
always @(posedge clk) begin
    if(load)
    q <= parallelin;
else begin
    serialout <= q[0]; // LSB
    q <= q >> 1;
end
end
endmodule
    
