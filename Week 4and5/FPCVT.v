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
	reg [6:0] lastindex;
	reg add1 = 1;

	// calculate E
	
	// first get number of leading zeros
	// 8 - (number of leading zeros) = exponent
	// number is 4 bits after the leading zeros
	
	integer count = 0;
	
	always @* begin
		S = D[11];
	
		if (D[11] == 0) begin
			count = count+1;
			if (D[10] == 0) begin
				count = count+1;
				if (D[9] == 0) begin
					count = count+1;
					if (D[8] == 0) begin
						count = count+1;
						if (D[7] == 0) begin
							count = count+1;
							if (D[6] == 0) begin
								count = count+1;
								if (D[5] == 0) begin
									count = count+1;
									if (D[4] == 0) begin
										count = count+1;
										if (D[3] == 0) begin
											count = count+1;
										end
									end
								end
							end
						end
					end
				end
			end
		end
		
		E = 8 - count;
		
		lastindex =  11-count-4;
		F = (D >> (8 - count));
		
		if (lastindex >= 0) begin
			temp = D[lastindex];
			if (temp == 1) begin
				F = F+add1;
			end
			if (F == ) begin //4b'1111
				E = E+add1;
			end
		end
	end
endmodule
