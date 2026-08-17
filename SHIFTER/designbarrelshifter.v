module barrelshifter(
  input signed [3:0]a,//assigned as signed because arithmetic right shift operation will be work only on signed numbers
  input [3:0]s,
  output reg [3:0]x
);
  always @(*) begin
    case(s) 
      4'b0000: x = ( a << 2);//logical left shift
      4'b0001: x = ( a >> 2);//logical right shif
      4'b0010: x = ( a >>> 2);//arithmetic right shift
      4'b0100: x = {a[0],a[3:1]};//rotate right
      4'b1000: x = {a[2:0],a[3]};//rotate left
    endcase
  end
endmodule
 
  
