`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:14:22 11/03/2014
// Design Name:   FPCVT
// Module Name:   C:/Users/152/Desktop/Week 4/Lab2/Lab2.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPCVT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Lab2;

	// Inputs
	reg [11:0] D;

	// Outputs
	wire S;
	wire [2:0] E;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	FPCVT uut (
		.D(D), 
		.S(S), 
		.E(E), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		D = 0;

		// Wait 100 ns for global reset to finish
		#100 
		//round up SOL: [0 010 1011] 
		D = 12'b000000101110;
		//round down SOL: 0 010 1011
		//D = 12'b000000101101;
		//overflow SOL: 0110 1000
		//D = 12'b000111110011; 
		//negatives no rounding SOL: 1111 1110
		//D = 12'b100011101010;
		//negative round up SOL: 1111 1110
		//D = 12'b100100011110;
		//negative F overflow SOL: 1111 1000
		//D = 12'b110000000011;
		//rounding with overflow SOL: 0100 1000 
		//D = 12'b000001111100;
		//Normalized respresentation 
		//D = 12'b000000111000;
		//More than 8 0s
		D = 12'b00000000111;
		//-40 
		//D = 12'b111111011000;
		
		
        
		// Add stimulus here

	end
      
endmodule

