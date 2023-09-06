`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:40:42 11/24/2021
// Design Name:   ALU32
// Module Name:   E:/verilog_lab/ALU32_tb.v
// Project Name:  ALU_32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU32_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] opcode;
	reg enable;

	// Outputs
	wire [31:0] Result;

	// Instantiate the Unit Under Test (UUT)
	ALU32 uut (
		.Result(Result), 
		.A(A), 
		.B(B), 
		.opcode(opcode), 
		.enable(enable)
	);

	initial begin
		// Initialize Inputs
		enable = 0;A = 0;B = 0;opcode = 0;#100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b000; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b001; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b010; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b011; #100;
		enable=0; A=32'd15; B=32'd15; opcode=3'b100; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b100; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b101; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b110; #100;
		enable=1; A=32'd15; B=32'd15; opcode=3'b111; #100;
		
        
	end
      
endmodule

