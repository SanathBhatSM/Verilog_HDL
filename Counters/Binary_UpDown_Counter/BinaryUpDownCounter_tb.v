`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:50:35 12/07/2021
// Design Name:   BinaryUpDownCounter
// Module Name:   E:/verilog_lab/Counters/BinaryUpDownCounter/BinaryUpDownCounter_tb.v
// Project Name:  BinaryUpDownCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BinaryUpDownCounter
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
	BinaryUpDownCounter uut (
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
		rst = 1; ctrl=0;	#175;	
		rst = 1; ctrl=1;	#175;	
		end



      
endmodule

