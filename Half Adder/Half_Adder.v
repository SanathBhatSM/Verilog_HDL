`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:28:26 11/19/2021 
// Design Name: 
// Module Name:    Half_Adder 
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
module Half_Adder(a,b,sum,ca);
input a,b;
output sum,ca;
myxor2 X1(sum,a,b);
myand2 A2(ca,a,b);
endmodule
module myxor2(y,a,b);
input a,b;
output y;
assign y=a^b;
endmodule
module myand2(y,a,b);
input a,b;
output y;
assign y=a&b;
endmodule


