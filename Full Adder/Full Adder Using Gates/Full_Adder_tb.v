`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:26:23 11/22/2021
// Design Name:   Full_Adder
// Module Name:   E:verilog_lab/Full_Adder_tb.v
// Project Name:  Full_Adder_using_gates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.s(s), 
		.c(c), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs and wait 100 ns for global reset to finish
		a = 0;b=0;cin=0;#100;
		a = 0;b=0;cin=1;#100;
		a = 0;b=1;cin=0;#100;
		a = 0;b=1;cin=1;#100;
		a = 1;b=0;cin=0;#100;
		a = 1;b=0;cin=1;#100;
		a = 1;b=1;cin=0;#100;
		a = 1;b=1;cin=1;#100;


	end
      
endmodule

