`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:56 10/27/2021 
// Design Name: 
// Module Name:    Encoder_with_priority 
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
module encoder_with_priority(y,a,en);
    input en;
	 input [7:0]a;
    output reg[2:0]y;
	always@(en,a)
	begin
	if(en==1&a[7]==1)
	y<=3'b111;
	else if(en==1&a[6]==1)
	y<=3'b110;
	else if(en==1&a[5]==1)
	y<=3'b101;
	else if(en==1&a[4]==1)
	y<=3'b100;
	else if(en==1&a[3]==1)
	y<=3'b011;
	else if(en==1&a[2]==1)
	y<=3'b010;
	else if(en==1&a[1]==1)
	y<=3'b001;
	else if(en==1&a[0]==1)
	y<=3'b000;
	else if(en==0)
	y<=3'bZ;
	end
endmodule
