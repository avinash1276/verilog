module TZD(
    input [3:0] a,
    output reg [2:0] x
);

always @(*) begin
    if (a[0])
        x = 3'd0;
    else if (a[1])
        x = 3'd1;
    else if (a[2])
        x = 3'd2;
    else if (a[3])
        x = 3'd3;
    else
        x = 3'd4;
end

endmodule
