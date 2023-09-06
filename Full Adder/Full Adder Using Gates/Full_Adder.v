`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:18:47 11/22/2021 
// Design Name: 
// Module Name:    Full_Adder 
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

module Full_Adder(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire w1,w2,w3,w4,w5,w6,w7,w8;
xnor g1(w1,a,b);
xor g2(w4,a,b);
and g3(w2,w1,cin);
not g4(w3,cin);
and g5(w5,w3,w4);
or g6(s,w2,w5);
and g7(w6,a,b);
and g8(w7,b,cin);
and g9(w8,cin,a);
or g10(c,w6,w7,w8);
endmodule
 




