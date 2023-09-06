`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:58 11/17/2021 
// Design Name: 
// Module Name:    FullAdderKit 
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
module Full_Adder(a,b,cin,sum,ca);
input a,b,cin;
output sum,ca;
wire w1,w2,w3;
myxor3 x1(sum,a,b,cin);
myand2 a1(w1,a,b);
myand2 a2(w2,b,cin);
myand2 a3(w3,cin,a);
myor3 O1(ca,w1,w2,w3);
endmodule
module myxor3(y,a,b,c);
output y;
input a,b,c;
assign y=a^b^c;
endmodule
module myand2(y,a,b);
input a,b;
output y;
assign y=a&b;
endmodule
module myor3(y,a,b,c);
input a,b,c;
output y;
assign y=a|b|c;
endmodule
 



