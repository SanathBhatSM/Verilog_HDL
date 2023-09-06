`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:31:41 12/22/2021
// Design Name:   T_flipflop
// Module Name:   E:/verilog_lab/T_flipflop_tb.v
// Project Name:  T_flipflop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_flipflop_tb;

	// Inputs
	reg clk;
	reg rst;
	reg T;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	T_flipflop uut (
		.q(q), 
		.qb(qb), 
		.clk(clk), 
		.rst(rst), 
		.T(T)
	);
always
	#5 clk=~clk;
	
	initial begin
		rst =1'b0;	T=1'b0;	clk = 1'b0;	#100;
		rst =1'b1;	T=1'b0;	#100;
		rst =1'b1;	T=1'b1;	#100;
	end 
      
endmodule

