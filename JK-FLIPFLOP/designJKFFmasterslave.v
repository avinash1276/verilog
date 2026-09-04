module MSJKFF(
    input j,k,clk,
    output q
);
reg master,slave;
initial begin
        master = 0;
        slave = 0;
end
always @(posedge clk) begin // MASTER
    case({j,k}) 
    2'b00: master <= q;
    2'b01: master <= 0;
    2'b10: master <= 1;
    2'b11: master <= ~q;
    endcase
end
always @(negedge clk) begin // SLAVE
    slave <= master;
end
assign q = slave;
endmodule
