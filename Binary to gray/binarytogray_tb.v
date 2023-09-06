`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:35:57 11/10/2021
// Design Name:   binarytogrey
// Module Name:   E:/verilog_lab/binarytogray_tb.v
// Project Name:  binarytogrey
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binarytogrey
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module binarytogray_tb;

	// Inputs
	reg [3:0] b;

	// Outputs
	wire [3:0] g;

	// Instantiate the Unit Under Test (UUT)
	binarytogray uut (
		.g(g), 
		.b(b)
	);

	initial begin
		// Initialize Inputs and Wait 100 ns for global reset to finish
		b=4'b0000;#10;
		b=4'b0001;#10;
		b=4'b0010;#10;
		b=4'b0011;#10;
		b=4'b0100;#10;
		b=4'b0101;#10;
		b=4'b0110;#10;
		b=4'b0111;#10;
		b=4'b1000;#10;
		b=4'b1001;#10;
		b=4'b1010;#10;
		b=4'b1011;#10;
		b=4'b1100;#10;
		b=4'b1101;#10;
		b=4'b1110;#10;
		b=4'b1111;#10;

	 
		
        
		// Add stimulus here

	end
      
endmodule

