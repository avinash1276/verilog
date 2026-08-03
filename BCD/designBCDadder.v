module BCDadder(
    input [3:0]a,b,
    input cin,
    output reg [3:0]sum,
    output reg cout
);
reg [4:0]temp;
always @(*) begin
    temp= a + b + cin;
    if(temp <= 9) begin
        sum= temp[3:0];
        cout= 1'b0;
    end
    else begin
        temp= temp[3:0] + 6;
        sum= temp[3:0]; 
        cout= 1'b1;
    end
end
endmodule
