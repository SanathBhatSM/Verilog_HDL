`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:27:25 12/22/2021
// Design Name:   SR_flipflop
// Module Name:   E:/verilog_lab/SR_Flipflop_tb.v
// Project Name:  SR_FlipFlop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_Flipflop_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] sr;

	// Outputs
	wire q;
	wire qb;
	
	// Instantiate the Unit Under Test (UUT)
	SR_flipflop uut (
		.q(q), 
		.qb(qb), 
		.clk(clk), 
		.rst(rst), 
		.sr(sr)
	);
	always
	#5 clk=~clk;
	
	initial begin
		rst =1'b0;	sr = 2'b00;	clk = 1'b0;	#100;
		rst =1'b1;	sr = 2'b01;	#100;
		rst =1'b1;	sr = 2'b10;	#100;
		rst =1'b1;	sr = 2'b11;	#100;
        

	end
      
endmodule

