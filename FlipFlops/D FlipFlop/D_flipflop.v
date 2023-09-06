`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:14 12/22/2021 
// Design Name: 
// Module Name:    D_flipflop 
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
module D_flipflop(q,qb,clk,rst,d);
input d,clk,rst;
output reg q;
output qb;
always@(posedge clk)
begin
if(!rst)
q=1'b0; 
else 
q=d;
end
assign qb=~q;
endmodule
