`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:04:56 11/10/2014 
// Design Name: 
// Module Name:    Stopwatch 
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
module seconds(clk, rst, enable, count, overflow
	);
	
	input clk, rst, enable;
	output [5:0] count;
	output overflow;
	reg overflow;
	
	reg [5:0] count;
	

		always @(posedge clk)
		begin
			if(rst || count == 60) 
			begin
				overflow = 1;
				count <= 6'b000000;
			end
			else if(enable)
			begin
				overflow = 0;
				count <= count + 1;
			end
		end
	
endmodule

module minutes(clkmin, rstmin, enablemin, countmin, overflow
	);
	input clkmin, rstmin, enablemin, overflow;
	output [6:0] countmin;

	reg [6:0] countmin;
	integer overflow;
	
	always @(posedge clkmin)
	begin
		if(rstmin || countmin == 100)
			countmin <= 7'b0000000;
		else if(enablemin || overflow == 1)
			countmin <= countmin + 1;
	end
endmodule

module clock(masterclock, adj, sel, clock1, clock2, clock3, clock4
	);
	input masterclock, adj, sel;
	output clock1, clock2, clock3, clock4;
	
	integer overflow;
	//clock_in = ajd ? 2hzclock : 1hzclock;
	integer enableSeconds1 = 0;
	integer enableSeconds2 = 0;
	integer enableMinutes1 = 0;
	integer enableMinutes2 = 0;
	reg Hz1;
	reg Hz2;
	reg add1 = 1;
	
	
	seconds secondsCounter1Hz(clock1, 0, enableSeconds1, overflow);
	seconds secondsCounter2Hz(clock2, 0, enableSeconds2, overflow);
	minutes minutesCounter1Hz(clock1, 0, enableMinutes1, overflow);
	minutes minutesCounter2Hz(clock2, 0, enableMinutes2, overflow);
	
	always @(posedge masterclock)
	begin
		//////////////Clock Adjustments//////////////////
		if(Hz1 == 100000000)
			Hz1 = 0;
		else
			Hz1 = Hz1 + add1; //need to toggle up and down
			
		if(Hz2 == 50000000)
			Hz2 = 0;
		else
			Hz2 = Hz2 + add1;
		////////////////////////////////////////////////

	
		if(adj == 0)
		begin
			enableSeconds1 = 1;
			enableMinutes1 = 0;
		end
		else if(adj == 1)
		begin
			if(sel == 0)
			begin
				enableSeconds2 = 1;
				enableMinutes2 = 0;
			end
			else if(sel == 1)
			begin
				enableSeconds = 0;
				enableMinutes2 = 1;
			end
		end
		
	end

endmodule

//module Stopwatch(
//	input clk, rst, enable,
//	output count,
//    );
//	 
//	 reg [5:0] count;
//
//	always @(posedge clk)
//	begin
//		
//	end
//
//endmodule
