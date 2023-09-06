`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:32 12/29/2021 
// Design Name: 
// Module Name:    Stepper_Motor 
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
module Stepper_Motor(clk,rst,dout,nplus,nminus,nby2);
input rst,clk,nplus,nminus,nby2;
output reg [3:0]dout=4'b1011; 
reg [23:0]cnt=23'd0;
reg dclk;
integer step=0;
always @(posedge clk)
begin cnt<=cnt+1;
dclk<=cnt[15];
end 
always@(posedge dclk)
begin
if(rst)
begin
step=0;
dout<=4'b1011;
end
else 
begin
	if(nplus)
	  
	      if(step==800)
	        dout<=4'b1111;
	      else
	       begin
		    step=step+1;
	       dout<={dout[0],dout[3:1]};
	       end
   else if(nminus)  
	  		         if(step==800)
	             dout<=4'b1111;
	           else
	           begin
	           step=step+1;
	              dout<={dout[0],dout[3:1]};
        end
 else if(nby2)  
           if(step==400)
	        			  
			  dout<=4'b1111;
	        else
	        begin
	       step=step+1;
	        dout<={dout[0],dout[3:1]};
	        end
     else
	  begin
	    dout<=4'b1011;
		 step=0;
end
end
end

endmodule
