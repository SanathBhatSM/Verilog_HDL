`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:23 12/22/2021 
// Design Name: 
// Module Name:    JK_flipflop 
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
module JK_flipflop(q,qb,clk,rst,jk);
input clk,rst;
input [1:0]jk;
output reg q;
output qb;
//reg [23:0]cnt;
//reg clk;
//always @(posedge clk)
//begin
//cnt=cnt+1;
//dclk=cnt[23]   
always @(posedge clk)
begin
if(!rst)
q=1'b0;
else
case(jk)
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1; 
2'b11:q=~q;
endcase 
end
assign qb=~q;

endmodule
