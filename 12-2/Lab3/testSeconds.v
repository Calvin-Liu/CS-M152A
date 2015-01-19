`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:41:58 11/17/2014
// Design Name:   seconds
// Module Name:   E:/Lab3/testSeconds.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seconds
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testSeconds;

	// Inputs
	reg clk;
	reg rst;
	reg enable;

	// Outputs
	wire [5:0] count;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	seconds uut (
		.clk(clk), 
		.rst(rst), 
		.enable(enable), 
		.count(count), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		enable = 1;
        
		// Add stimulus here

	end
	
	always begin
		#10 clk = ~clk;
	end
      
endmodule

