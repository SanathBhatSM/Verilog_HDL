`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:33 11/09/2021
// Design Name:   Mux_8to1
// Module Name:   E:/verilog_lab/mux_8to1_tb.v
// Project Name:  mux_8to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_8to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_8to1tb;

	// Inputs
	reg [2:0] s;
	reg [7:0] a;
	reg en;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Mux_8to1 uut (
		.y(y), 
		.s(s), 
		.a(a), 
		.en(en)
	);

	initial begin
		// Initialize Inputs and wait for 100ns
		a=8'b10101010;s=3'b000;en=1;#100;
		a=8'b10101010;s=3'b001;en=1;#100;
		a=8'b10101010;s=3'b010;en=1;#100;
		a=8'b10101010;s=3'b011;en=1;#100;
		a=8'b10101010;s=3'b100;en=1;#100;
		a=8'b10101010;s=3'b101;en=1;#100;
		a=8'b10101010;s=3'b110;en=1;#100;
		a=8'b10101010;s=3'b111;en=1;#100;
		a=8'b10101010;s=3'bZ;en=0;#100;
		
		// Add stimulus here

	end
      
endmodule

