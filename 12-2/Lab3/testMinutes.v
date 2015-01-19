`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:38 11/17/2014
// Design Name:   minutes
// Module Name:   C:/Users/D_2/Dropbox/M152a/Lab 3/Lab3 updated/testMinutes.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: minutes
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMinutes;

	// Inputs
	reg clkmin;
	reg rstmin;
	reg enablemin;
	reg overflow;

	// Outputs
	wire [6:0] countmin;

	// Instantiate the Unit Under Test (UUT)
	minutes uut (
		.clkmin(clkmin), 
		.rstmin(rstmin), 
		.enablemin(enablemin), 
		.countmin(countmin), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		clkmin = 0;
		rstmin = 1;
		enablemin = 0;
		overflow = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rstmin = 0;
		enablemin = 0; // enable is off so countmin is 0 here
		
		#1000;
		
		overflow = 1; // overflow is on so countmin starts increasing
		
		#1000;
		
		overflow = 0; // overflow is off so countmin stops
		
		#1000;
        
		// Add stimulus here

	end
	
	always begin
		#10 clkmin = ~clkmin;
	end
      
endmodule

