`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:10 10/27/2021 
// Design Name: 
// Module Name:    Encoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Encoder(y,a,en);
input [7:0]a;
input en;
output reg[2:0]y;
always @(a,en)
begin
if(!en)
y<=3'bXXX;
else
case(a)
8'b00000001:y<=3'b000;
8'b00000010:y<=3'b001;
8'b00000100:y<=3'b010;
8'b00001000:y<=3'b011;
8'b00010000:y<=3'b100;
8'b00100000:y<=3'b101;
8'b01000000:y<=3'b110;
8'b10000000:y<=3'b111;
endcase
end
endmodule
