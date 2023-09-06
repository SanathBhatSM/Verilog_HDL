`timescale 1us / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:41 12/08/2021
// Design Name:   Clock_Div
// Module Name:   E:/verilog_lab/ClockDivisionUsingCounter/Clock_Div_tb.v
// Project Name:  Clock_Div
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock_Div
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clock_Div_tb;

	// Inputs
	reg clk;

	// Outputs
	wire clkdiv2;
	wire clkdiv4;
	wire clkdiv8;
	wire clkdiv16;

	// Instantiate the Unit Under Test (UUT)
	Clock_Div uut (
		.clkdiv2(clkdiv2), 
		.clkdiv4(clkdiv4), 
		.clkdiv8(clkdiv8), 
		.clkdiv16(clkdiv16), 
		.clk(clk)
	);
	always
	#0.05 clk=~clk;
	
	initial begin 
		clk=1'b0;#20;
	end
      
endmodule

