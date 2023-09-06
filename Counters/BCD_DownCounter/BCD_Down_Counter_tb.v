`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:29:38 12/01/2021
// Design Name:   BCD_Down_Counter
// Module Name:   E:/verilog_lab/Counters/BCD_Down_Counter_tb.v
// Project Name:  BCD_Down_Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_Down_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_Down_Counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	BCD_Down_Counter uut (
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

