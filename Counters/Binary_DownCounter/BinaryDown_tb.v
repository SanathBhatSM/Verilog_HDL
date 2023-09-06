`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:02:23 12/07/2021
// Design Name:   Binary_Down_Counter
// Module Name:   E:/verilog_lab/Counters/BinaryDownCounter/BinaryDown_tb.v
// Project Name:  BinaryDownCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Binary_Down_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BinaryDown_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Binary_Down_Counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);

	always
	#5 clk=~clk;
	

	initial begin
		// Initialize Inputs
		clk = 0;	rst = 0;	#50;
		rst = 1;	#300;
	end
      
endmodule

