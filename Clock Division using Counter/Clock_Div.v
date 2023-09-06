`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:29 12/08/2021 
// Design Name: 
// Module Name:    Clock_Div 
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
module Clock_Div(clkdiv2,clkdiv4,clkdiv8,clkdiv16,clk);
input clk;
output clkdiv2,clkdiv4,clkdiv8,clkdiv16;
reg [3:0]cnt=4'd0;
always@(posedge clk)
cnt=cnt+1;
assign clkdiv2=cnt[0];
assign clkdiv4=cnt[1];
assign clkdiv8=cnt[2];
assign clkdiv16=cnt[3];
endmodule
