`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:59 11/09/2021 
// Design Name: 
// Module Name:    Decoder_2to4 
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
module Decoder_2to4(output [3:0]y,
    input [1:0]i,
    input en
    );
	 wire w1,w2,w3,w4,w5,w6;
	 mynand2 n1(w1,i[1],i[1]);
	 mynand2 n2(w2,i[0],i[0]);
	 mynand3 n3(w3,w1,w2,en);
	 mynand2 n4(y[0],w3,w3);
 	 mynand3 n5(w4,w1,i[0],en);
	 mynand2 n6(y[1],w4,w4);
	 mynand3 n7(w5,w2,i[1],en);
	 mynand2 n8(y[2],w5,w5);
	 mynand3 n9(w6,i[1],i[0],en);
	 mynand2 n10(y[3],w6,w6);
	

endmodule
module mynand2(output o,
    input x,y
    );
	 assign o=~(x&y);
endmodule
	 
module mynand3(output o,
    input x,y,z
    
    );
	 assign o=~(x&y&z);
endmodule
