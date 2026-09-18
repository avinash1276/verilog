module siso_4bit (
    input serialin,
    input clk,
    output serialout
);
    reg [3:0] q;
    initial q = 4'b0000;
    always @(posedge clk) begin
        q <= {q[2:0], serialin};
    end
    assign serialout = q[3];
endmodule
