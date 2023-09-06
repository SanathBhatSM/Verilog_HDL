`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:43 12/22/2021 
// Design Name: 
// Module Name:    SR_flipflop 
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
module SR_flipflop(q,qb,clk,rst,sr);
input clk,rst;
input [1:0]sr;
output reg q;
output qb;
always @(posedge clk)
begin
if(!rst)
q=1'b0;
else
case(sr)
2'b00:q=q;
2'b01:q=1'b0; 
2'b10:q=1'b1; 
2'b11:q=1'bz;
endcase 
end
assign qb=~q;
endmodule
