`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:01:57 10/27/2021
// Design Name:   Encoder
// Module Name:   E:/verilog_lab/encoder_tb.v
// Project Name:  Encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_tb;

	// Inputs
	reg [7:0] a;
	reg en;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	Encoder uut (
		.y(y), 
		.a(a), 
		.en(en)
	);

	initial begin
		a=8'b00000001;en=1;#100;
		a=8'b00000010;en=1;#100;
		a=8'b00000100;en=1;#100;
		a=8'b00001000;en=1;#100;
		a=8'b00010000;en=1;#100;
		a=8'b00100000;en=1;#100;
		a=8'b01000000;en=1;#100;
		a=8'b10000000;en=1;#100;
		a=8'bXXXXXXXX;en=0;#100;
        
		// Add stimulus here

	end
      
endmodule

