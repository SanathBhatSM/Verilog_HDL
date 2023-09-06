`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:58:28 12/22/2021
// Design Name:   D_Flipflop
// Module Name:   E:/verilog_lab/D_FlipFlop/D_Flipflop_tb.v
// Project Name:  D_FlipFlop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_Flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_Flipflop_tb;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	D_flipflop uut (
		.q(q), 
		.qb(qb), 
		.clk(clk), 
		.rst(rst), 
		.d(d)
	);

	always
	#5 clk=~clk;
	
	initial begin
		rst =1'b0;	d=1'b0;	clk = 1'b0;	#100;
		rst =1'b1;	d=1'b0;	#100;
		rst =1'b1;	d=1'b1;	#100;
	end
       
endmodule

