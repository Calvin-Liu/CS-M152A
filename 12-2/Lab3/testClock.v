`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:46:27 11/17/2014
// Design Name:   clock
// Module Name:   E:/Lab3/testClock.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testClock;

	// Inputs
	reg masterclock;

	// Outputs
	wire clock1;
	wire clock2;
	wire clock3;
	wire clock4;

	// Instantiate the Unit Under Test (UUT)
	clock uut (
		.masterclock(masterclock), 
		.clock1(clock1), 
		.clock2(clock2), 
		.clock3(clock3), 
		.clock4(clock4)
	);

	initial begin
		// Initialize Inputs
		masterclock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#1 masterclock = ~masterclock;
	end
      
endmodule

