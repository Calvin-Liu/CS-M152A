`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:31 11/17/2014
// Design Name:   main
// Module Name:   E:/Lab3/testMain.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMain;

	// Inputs
	reg masterclock;
	reg adj;
	reg sel;

	// Outputs
	wire [5:0] secondsCount;
	wire [6:0] minutesCount;
	
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clock1(clock1),
		.clock2(clock2),
		.masterclock(masterclock), 
		.adj(adj), 
		.sel(sel), 
		.secondsCount(secondsCount), 
		.minutesCount(minutesCount),
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		masterclock = 0;
//		clock1 = 0;
//		clock2 = 0;
		adj = 0;
		sel = 1;
		rst = 1;
		
		#10;
		
		rst = 0;

		// Wait 100 ns for global reset to finish
		#500000000;
		
		// Add stimulus here

	end
	
	always begin
		#1 masterclock = ~masterclock;
	end
      
endmodule

