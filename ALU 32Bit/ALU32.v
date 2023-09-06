`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:08:21 11/24/2021 
// Design Name: 
// Module Name:    ALU32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU32(Result,A,B,opcode,enable);
    input enable;
	 input [31:0]A,B;
	 output reg [31:0]Result=32'd0;
	 input [2:0]opcode;
	 reg Ack=1'b0;
	 always@(A,B,opcode,enable,Ack)
	 if(!enable)
	 begin
	 Result=32'dz;
	 Ack=1'b0;
	 end
	 else
	 case(opcode)
	 3'b000: begin Result=A+B; Ack=1'b1; end
	 3'b001: begin Result=A-B; Ack=1'b1; end
	 3'b010: begin Result=A+1; Ack=1'b1; end
	 3'b011: begin Result=A-1; Ack=1'b1; end
	 3'b100: begin Result=A; Ack=1'b1; end
	 3'b101: begin Result=~A; Ack=1'b1; end
	 3'b110: begin Result=A|B; Ack=1'b1; end
	 3'b111: begin Result=A&B; Ack=1'b1; end
	 default: begin Result=32'dx; Ack=1'b0; end
	endcase

endmodule
