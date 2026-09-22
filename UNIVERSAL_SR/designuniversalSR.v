module universalshiftregister(
    input serialin,
    input [3:0]parallelin,
    input clk,
    input [1:0]s,
    output reg  [3:0]q
);
initial  q = 4'b0110;
always @(posedge clk) begin
  case(s) 
    2'b00: q <= q;
    2'b01: q <= {serialin,q[3:1]};
    2'b10: q <= {q[2:0],serialin};
    2'b11: q <= parallelin;
    endcase
end
endmodule
