`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:54 11/09/2021 
// Design Name: 
// Module Name:    Mux_8to1 
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
module Mux_8to1(
    output reg y,
    input [2:0]s,
    input [7:0]a,
    input en
    );
always@(en,a,s)
begin
if(!en)
	y=1'bX;
else
	case(s)
	3'b000:y=a[7];
	3'b001:y=a[6];
	3'b010:y=a[5];
	3'b011:y=a[4];
	3'b100:y=a[3];
	3'b101:y=a[2];
	3'b110:y=a[1];
	3'b111:y=a[0];
	endcase
end
endmodule
