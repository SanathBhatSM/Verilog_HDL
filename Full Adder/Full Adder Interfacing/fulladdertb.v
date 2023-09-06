`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:27 11/19/2021
// Design Name:   Full_Adder
// Module Name:   E:/verilog_lab/fulladdertb.v
// Project Name:  FullAdderKit
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

module fulladdertb;

	// Inputs
	reg a;
	reg b;
	reg cin;

 	// Outputs
	wire sum;
	wire ca;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.ca(ca)
	);

	initial begin
		// Initialize Inputs
		a = 0;b=0;cin=0;#100;
		a = 0;b=0;cin=1;#100;
		a = 0;b=1;cin=0;#100;
		a = 0;b=1;cin=1;#100;
		a = 1;b=0;cin=0;#100;
		a = 1;b=0;cin=1;#100;
		a = 1;b=1;cin=0;#100;
		a = 1;b=1;cin=1;#100;

		// Wait 100 ns for global reset to fi
        
		// Add stimulus here

	end
      
endmodule

