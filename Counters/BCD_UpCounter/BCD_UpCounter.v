`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:21 12/01/2021 
// Design Name: 
// Module Name:    BCD_UpCounter 
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
module BCD_UpCounter(clk,rst,q);
input clk,rst;
output reg [3:0]q;
//reg dclk;
//reg [22:0] cnt=23'd0;

always@(posedge clk)
//begin
//cnt=cnt+1;
//dclk=cnt[22];
//end
//always@(posedge dclk)
begin
if(!rst)
	q=4'd0;
else if(q==4'd9)
	q=4'd0;
else
	q=q+1;
end
endmodule
