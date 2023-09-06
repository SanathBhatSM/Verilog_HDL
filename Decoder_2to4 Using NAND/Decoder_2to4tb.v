`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:16 11/09/2021
// Design Name:   Decoder_2to4
// Module Name:   E:/verilog_lab/Decoder_2to4/Decoder_2to4tb.v
// Project Name:  Decoder_2to4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_2to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_2to4tb;

	// Inputs
	reg [1:0] i;
	reg en;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	Decoder_2to4 uut (
		.y(y), 
		.i(i), 
		.en(en)
	);

	initial begin
		// Initialize Inputs and wait 100 ns for global reset to finish
		en=1;i=2'b00;#100;
		en=1;i=2'b01;#100;
		en=1;i=2'b10;#100;
		en=1;i=2'b11;#100;
		en=0;i=2'bXX;#100;
		// Add stimulus here

	end
      
endmodule

