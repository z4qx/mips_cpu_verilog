`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:28 01/16/2016 
// Design Name: 
// Module Name:    alu_test 
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


module alu_test();

reg clk;
reg [3:0]  alu_ctrl;
reg [31:0] r_data1;
reg [31:0] r_data2;

wire [31:0] alu_result; 
wire alu_overflow;
wire alu_zero;

integer i;
initial begin
	alu_ctrl <= 32'b0;
	r_data1 <= 32'b0;
	r_data2 <= 32'b0;
	clk <= 0;
	r_data1 <= 1;
	r_data2 <= 1;
	alu_ctrl <= 0;//add test
	#500
	clk <= 1;
	r_data1 <= 7;
	r_data2 <= 3;
	alu_ctrl <=0;
	#500
	clk <= 0;
	alu_ctrl <= 0;
	r_data1 <= 2;
	r_data2 <= 3;
	#500
	clk <= 1;
	alu_ctrl <= 0;
	r_data1 <= 3;
	r_data2 <= 3;
end

alu alu(
//input
.clk(clk),
.control(alu_ctrl), 
.oper1(r_data1), 
.oper2(r_data2), 
//output
.result(alu_result), 
.overflow(alu_overflow), 
.zero(alu_zero)
);


endmodule