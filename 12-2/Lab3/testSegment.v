`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:43 11/20/2014
// Design Name:   sevenSegment
// Module Name:   C:/Users/152/Desktop/12-2/testSegment.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sevenSegment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testSegment;

	// Inputs
	reg clk;
	reg btnR;
	reg btnS;
	reg btn2;
	reg btnMid;

	// Outputs
	wire [7:0] seg;
	wire [3:0] an;

	// Instantiate the Unit Under Test (UUT)
	sevenSegment uut (
		.clk(clk), 
		.btnR(btnR), 
		.btnS(btnS), 
		.btn2(btn2), 
		.btnMid(btnMid),
		.seg(seg), 
		.an(an)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		btnR = 0;
		btnS = 0;
		btn2 = 0;
		btnMid = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
//		// test for blinking lights
//		
//		// turn on ADJ
//		btn2 = 1;
//		
//		#1000;
//		
//		// turn off ADJ
//		btn2 = 0;

//		// test for pause button
//		
//		#10000;
//
//		btnMid = 1;
//		#10;
//		btnMid = 0;
//		
//		#10000;
//		
//		btnMid = 1;
        
		// Add stimulus here

	end
	
	always begin
		#1 clk = ~clk;
	end
      
endmodule

