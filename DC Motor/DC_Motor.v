`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:33 12/29/2021 
// Design Name: 
// Module Name:    DC_Motor 
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
module DC_Motor(
output reg pdcm,
input[1:0]psw,
input clk );
reg[7:0]count;
reg[11:0]sclkdiv=12'd0;
reg dclk;
always @ (posedge clk)
begin
count<=count+1;
dclk<=count[7];
end
always @(posedge dclk)
begin
sclkdiv=sclkdiv+1;
end
always @(posedge dclk)
begin
if(sclkdiv==000000000000)
pdcm=1;
else if(psw==00 && sclkdiv==12'd500)
pdcm=0;
else if(psw==01 && sclkdiv==12'd1000)
pdcm=0;
else if(psw==10 && sclkdiv==12'd1500)
pdcm=0;
else if(psw==11 && sclkdiv==12'd2000)
pdcm=0;
end
endmodule
