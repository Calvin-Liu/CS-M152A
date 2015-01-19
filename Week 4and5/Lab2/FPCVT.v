`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:06 10/29/2014 
// Design Name: 
// Module Name:    FPCVT 
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
module FPCVT(D, S, E, F);

	//1011111 = -33
	//
	

	// 000 110100110
	// 8-3 = 5
	// (1101) * 2^5 -> 110100000 ~= 110100110
	
	input [11:0] D; 
	output S;
	output [2:0] E;
	output [3:0] F;
	
	reg S;
	reg [2:0] E;
	reg [3:0] F;
	
	reg temp;
	reg [11:0] flipRegister;
	reg [6:0] lastindex;
	reg add1 = 1;

	// calculate E
	
	// first get number of leading zeros
	// 8 - (number of leading zeros) = exponent
	// number is 4 bits after the leading zeros
	
	integer count = 0;
	
	always @* begin
		S = D[11];
		
		//for negatives
		if(D[11] == 1) begin
			flipRegister = ~D;
			flipRegister  = flipRegister + add1;
		end
		else begin
				flipRegister = D;
		end
		
		if (flipRegister[11] == 0) begin
			count = 1;
			if (flipRegister[10] == 0) begin
				count = 2;
				if (flipRegister[9] == 0) begin
					count = 3;
					if (flipRegister[8] == 0) begin
						count = 4;
						if (flipRegister[7] == 0) begin
							count = 5;
							if (flipRegister[6] == 0) begin
								count = 6;
								if (flipRegister[5] == 0) begin
									count = 7;
									if (flipRegister[4] == 0) begin
										count = 8;
									end
								end
							end
						end
					end
				end
			end
		end
		
		//$display("%d", count);
		
		E = 8 - count;
		
		lastindex =  11-count-4;
		
		F = (flipRegister >> (8 - count));
		//$display("%d", count);
		//$display("%d", E);

		if (lastindex >= 0) begin
			temp = flipRegister[lastindex];
			if (temp == 1) begin
				if (F == 4'b1111) begin //4b'1111
					F = 4'b0111;
					E = E+add1;
				end
				F = F+add1;
			end
		end
	end
endmodule
