`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:34:15 11/19/2021
// Design Name:   Half_Adder
// Module Name:   E:/verilog_lab/Halfaddertb.v
// Project Name:  Half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Half_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Halfaddertb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire ca;

	// Instantiate the Unit Under Test (UUT)
	Half_Adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.ca(ca)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;#100
		a = 0;b = 1;#100
		a = 1;b = 0;#100
		a = 1;b = 1;#100
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

