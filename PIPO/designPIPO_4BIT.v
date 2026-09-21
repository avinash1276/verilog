module PIPO_4BIT( // load all bits and keep them
    input [3:0]parallelin,
    input clk,load,
    output reg [3:0]parallelout
);
always @(posedge clk) begin
    if(load)
    parallelout <= parallelin;
end
endmodule
