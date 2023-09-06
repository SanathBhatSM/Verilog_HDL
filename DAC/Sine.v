`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:12:44 02/04/2022 
// Design Name: 
// Module Name:    Sine 
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
module sine(dout,clk);
input clk;
output reg[7:0]dout;
reg [32:0]count;
wire[7:0]state[100:0];
wire dclk;
integer i=0;
assign state[0]=127;
assign state[1]=149;
assign state[2]=170;
assign state[3]=191;
assign state[4]=209;
assign state[5]=224; 
assign state[6]=237;
assign state[7]=246;
assign state[8]=252;
assign state[9]=254;

assign state[10]=252;
assign state[11]=246;
assign state[12]=237;
assign state[13]=224;
assign state[14]=209;
assign state[15]=191;
assign state[16]=170;
assign state[17]=149;
assign state[18]=127;

assign state[19]=105;
assign state[20]=84;
assign state[21]=64;
assign state[22]=45;
assign state[23]=30;
assign state[24]=17;
assign state[25]=8;
assign state[26]=2;
assign state[27]=0;

assign state[28]=2;
assign state[29]=8;
assign state[30]=17;
assign state[31]=30;
assign state[32]=45;
assign state[33]=64;
assign state[34]=84;
assign state[35]=105;
assign state[36]=127;

always @(posedge clk)
begin
count=count+1;
end

assign dclk=count[5];
always@(posedge dclk)
begin
i=i+1;
if(i<37)
dout=state[i];
else
i=0;
end 

endmodule
