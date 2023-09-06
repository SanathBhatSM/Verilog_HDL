`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:04 12/01/2021 
// Design Name: 
// Module Name:    BInary_Up_Counter 
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
module Binary_Up_Counter(clk,rst,q);
input clk,rst;
output reg [3:0]q;
always@(posedge clk)
begin
if(!rst)
	q=4'd0;
else
	q=q+1;
end
endmodule
