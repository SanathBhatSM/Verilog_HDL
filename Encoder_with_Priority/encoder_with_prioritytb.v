`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:19 10/27/2021
// Design Name:   Encoder_with_priority
// Module Name:   E:/verilog_lab/encoder_with_prioritytb.v
// Project Name:  Encoder_with_priority
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder_with_priority
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_with_prioritytb;

	// Inputs
	reg [7:0] a;
	reg en;

	// Outputs
	wire [2:0] y;

	// Instantiate the Unit Under Test (UUT)
	encoder_with_priority uut (
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
		a=8'bX;en=0;#100;
        
		// Add stimulus here

	end
      
endmodule

