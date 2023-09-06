`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:22:48 12/22/2021 
// Design Name: 
// Module Name:    T_flipflop 
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
module T_flipflop(q,qb,clk,rst,T);
input T,clk,rst;
output reg q;
output qb;
reg [23:0]cnt=23'd0;
reg dclk;
always@(posedge clk)
begin
cnt=cnt+1;
dclk=cnt[23];
end
always@(posedge dclk)
begin 
if(!rst)
	q=1'b0;
else if(T==1'b1)
	q=~q;
else 
q=1'b0;
end 
assign qb=~q;

endmodule
