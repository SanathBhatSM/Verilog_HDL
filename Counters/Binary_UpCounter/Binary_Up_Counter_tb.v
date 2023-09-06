`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:46 12/01/2021
// Design Name:   BInary_Up_Counter
// Module Name:   E:/verilog_lab/Counters/Binary_Up_Counter/Binary_Up_Counter_tb.v
// Project Name:  Binary_Up_Counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BInary_Up_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Binary_Up_Counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [22:0] q;

	// Instantiate the Unit Under Test (UUT)
	BInary_Up_Counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
	always
	#5 clk=~clk;
	

	initial begin
		// Initialize Inputs
		clk = 0;	rst = 0;	#100;
		rst = 1;	#300;
        
		// Add stimulus here

	end
      
endmodule

