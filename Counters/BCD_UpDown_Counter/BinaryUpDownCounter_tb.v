`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:20:48 12/07/2021
// Design Name:   Binary_UpDown_counter
// Module Name:   E:/verilog_lab/Counters/BInaryUpDownCounter/BinaryUpDownCounter_tb.v
// Project Name:  BInaryUpDownCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Binary_UpDown_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BinaryUpDownCounter_tb;

	// Inputs
	reg clk;
	reg rst;
	reg ctrl;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	Binary_UpDown_counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.ctrl(ctrl)
	);

	always
	#5 clk=~clk;
	

	initial begin
		// Initialize Inputs
		clk = 0;	rst=0; ctrl=1;	#10;
		rst = 1; ctrl=0;	#150;	
		rst = 1; ctrl=1;	#150;	
		end
      
endmodule

