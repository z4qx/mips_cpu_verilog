`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:25 01/14/2016 
// Design Name: 
// Module Name:    PC 
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
module PC(clk,in_addr,out_addr,hold);
	 
	 input clk;
	 input [31:0] in_addr;
	 input hold;
	 output reg[31:0] out_addr;
	 
		initial begin  
		  out_addr = 0;
		end

		always @(posedge clk)
		begin
				if(hold==0) begin
					out_addr <= in_addr+4;
				end
				$display("PC: Curr_addr: %d",out_addr) ;
		end
	
endmodule
