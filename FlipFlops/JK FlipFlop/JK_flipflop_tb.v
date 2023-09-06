`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:49:29 12/22/2021
// Design Name:   JK_flipflop
// Module Name:   E:/verilog_lab/JK_flipflop/JK_flipflop_tb.v
// Project Name:  JK_flipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_flipflop_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] jk;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	JK_flipflop uut (
		.q(q), 
		.qb(qb), 
		.clk(clk), 
		.rst(rst), 
		.jk(jk)
	);

	always
	#5 clk=~clk;
	
	initial begin
		rst =1'b0;	jk = 2'b00;	clk = 1'b0;	#100;
		rst =1'b1;	jk = 2'b01;	#100;
		rst =1'b1;	jk = 2'b10;	#100;
		rst =1'b1;	jk = 2'b11;	#100;
	end
      
endmodule

