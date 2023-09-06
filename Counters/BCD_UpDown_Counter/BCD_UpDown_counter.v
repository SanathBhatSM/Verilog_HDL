`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:50 12/07/2021 
// Design Name: 
// Module Name:    Binary_UpDown_counter 
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
module BCD_UpDown_counter(clk,rst,q,ctrl);
input clk,rst,ctrl;
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
if(ctrl==1)
begin
if(!rst)
	q=4'd0;
else if(q==4'd9)
	q=4'd0;
else
	q=q+1;
end
if(ctrl==0)
begin
if(!rst)
	q=4'd0;
else if(q==4'd0)
	q=4'd9;
else
	q=q-1;
end
end
endmodule
