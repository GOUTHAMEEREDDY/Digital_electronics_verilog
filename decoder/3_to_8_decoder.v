module decoder(
input [2:0]a,
input e,
output reg [7:0]D);
always @(*) begin
  if (e==1)
case({a})
  3'b000: D=8'b00000001;
  3'b001: D=8'b00000010;
  3'b010: D=8'b00000100;
  3'b011: D=8'b00001000;
  3'b100: D=8'b00010000;
  3'b101: D=8'b00100000;
  3'b110: D=8'b01000000;
  3'b111: D=8'b10000000;
  default:D=8'b00000000;
endcase
else 
 D=8'b00000000;
end
endmodule
