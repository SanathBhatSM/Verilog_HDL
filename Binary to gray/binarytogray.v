`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:07 11/10/2021 
// Design Name: 
// Module Name:    binarytogray 
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
module binarytogray(
    output [3:0]g,
    input [3:0]b
    );
	 assign g[3]=b[3];
	 //add1 g1(g[2],b[3],b[2]);
	 //add1 g2(g[1],b[2],b[1]);
	 //add1 g3(g[0],b[1],b[0]);
	 
	gtob g1(g[2],b[3],b[2]);
	gtob g2(g[1],b[2],b[1]);
	gtob g3(g[0],b[1],b[0]);
	 
	//sub1 g1(g[2],b[3],b[2]);
	 //sub1 g2(g[1],b[2],b[1]);
	 //sub1 g3(g[0],b[1],b[0]);
endmodule

module add1(
    output s,
    input x,y
    );

	assign s=x^y;
	
endmodule

module sub1(
    output d,
    input x,y
    );
	 assign d=x^y;
endmodule

module gtob(
    output b,
    input x,y
    );
	
	assign b=x^y;
endmodule
