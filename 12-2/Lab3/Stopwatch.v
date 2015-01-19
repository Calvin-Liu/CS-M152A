`timescale 1ns / 1ps

//`include "rst/nexys3.v"
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
	
	reg [5:0] count = 0;
	integer overflow;
	
	always @(posedge clk, posedge rst)
	begin
		if (rst)
		begin
			count <= 6'b000000;
		end
		else if(count == 58) 
		begin
			count <= 59;
			overflow <= 1;
		end
		else if(count == 59)
		begin
			overflow <= 0;
			count <= 6'b000000;
		end
		else if(enable)
		begin
			overflow <= 0;
			count <= count + 1;
		end
	end
endmodule

module minutes(clkmin, rstmin, enablemin, countmin, overflow
	);
	input clkmin, rstmin, enablemin, overflow;
	output [6:0] countmin;

	reg [6:0] countmin = 0;
	wire overflow;
	
	always @(posedge clkmin, posedge rstmin)
	begin
		if(rstmin || countmin == 100)
			countmin <= 7'b0000000;
		else if(enablemin || overflow == 1)
			countmin <= countmin + 1;
	end
endmodule

module clock(masterclock, clock1, clock2, clock3, clock4
	);
	input masterclock;
	output clock1, clock2, clock3, clock4;
	
	integer Hz1 = 0;
	integer Hz2 = 0;
	integer Hz3 = 0;
	integer Hz4 = 0;
	reg add1 = 1;
	
	reg clock1 = 0;
	reg clock2 = 0;
	reg clock3 = 0;
	reg clock4 = 0;
	
	always @(posedge masterclock)
	begin
		//////////////Clock Adjustments//////////////////
		if(Hz1 == 50000000)
//		if (Hz1 == 500)
		begin
			Hz1 <= 0;
			clock1 <= ~clock1; // toggle clock
		end
		else
		begin
			Hz1 <= Hz1 + add1;
		end
		///////////////2 Hz////////////////////////////
		if(Hz2 == 25000000)
//		if (Hz2 == 250)
		begin
			Hz2 <= 0;
			clock2 <= ~clock2;
		end
		else
		begin
			Hz2 <= Hz2 + add1;
		end
		///////////////////500Hz//////////////////////
		if(Hz3 == 100000)
//		if(Hz3 == 10)
		begin
			Hz3 <= 0;
			clock3 <= ~clock3;
		end
		else
		begin
			Hz3 <= Hz3 + add1;
		end
		//////////////////Blinking 5Hz/////////////////
		if(Hz4 == 10000000)
//		if(Hz4 == 100)
		begin
			Hz4 <= 0;
			clock4 <= ~clock4;
		end
		else
		begin
			Hz4 <= Hz4 + add1;
		end
	end
endmodule

module main(masterclock, clock1, clock2, adj, sel, rst, btn3, secondsCount, minutesCount);
	input masterclock, adj, sel, rst, clock1, btn3, clock2;
	output secondsCount, minutesCount;

	wire overflow;
	wire [5:0] _secondsCount;
	wire [6:0] _minutesCount;
	
	reg clock_in = 0;
	reg enableSeconds = 0;
	reg enableMinutes = 0;
	reg enableMaster = 1;

	reg [5:0] secondsCount = 0;
	reg [6:0] minutesCount = 0;
	
	seconds secondsCounter1Hz(clock_in, rst, enableSeconds, _secondsCount, overflow);
	minutes minutesCounter1Hz(clock_in, rst, enableMinutes, _minutesCount, overflow);
	
//	always @(posedge btnMid)
//	begin
//		enableMaster = !enableMaster;
//	end
	
	always @(posedge masterclock)
	begin
		if(btn3)
		begin
			enableMaster <= !enableMaster;
		end
	end
	
	always @(posedge masterclock) 
	begin
		if(enableMaster)
		begin
			secondsCount <= _secondsCount;
			minutesCount <= _minutesCount;
			if(adj == 0)
			begin
				clock_in <= clock1;
				enableSeconds <= 1;
				enableMinutes <= 0;
			end
			else if(adj == 1)
			begin
				clock_in <= clock2;
				if(sel == 0)
				begin
					enableSeconds <= 0;
					enableMinutes <= 1;
				end
				else if(sel == 1)
				begin
					enableSeconds <= 1;
					enableMinutes <= 0;
				end
			end
		end
		else
		begin
			enableSeconds <= 0;
			enableMinutes <= 0;
		end
	end
endmodule

module sevenSegment(
	//R = reset S = SEL	2 = ADJ  MID = btn3
	input clk, btnR, btnS, btn2, btn3, 
	output [7:0] seg,
	output [3:0] an
    );
	 
	wire clock1, clock2, clock3, clock4;
	wire [5:0] secondsCount;
	wire [6:0] minutesCount;
	
	integer debounceCount = 0;
	reg enableDebounce = 0;
	
	
	reg [3:0] an;
	reg [7:0] seg = 8'b11000000;
	
	integer sseg_num;
	integer caseStatements = 0;

//	always @(posedge btnS or posedge btnR or posedge btnMid or posedge btn2)
//	begin	
//		enableDebounce <= 1;
//	end

	reg btnADJ = 0;
	reg btnSEL = 0;
	reg btnRST = 0;
	reg btnPAUSE = 0;
	
	clock c(clk, clock1, clock2, clock3, clock4);
//	main M(clk, clock1, clock2, btn2, btnS, btnR, btn3, secondsCount, minutesCount);
	main M(clk, clock1, clock2, btnADJ, btnSEL, btnRST, btnPAUSE, secondsCount, minutesCount);
	
	reg [3:0] ten = 10;
	reg enableBlink = 0;
	reg enableLight = 1;
	reg [5:0] secondsCountReg;
	reg [6:0] minutesCountReg;
	
	integer seconds1, seconds2, minutes1, minutes2;
	
	always @(posedge clk)
	begin
		secondsCountReg = secondsCount;
		minutesCountReg = minutesCount;
		seconds1 = secondsCountReg % ten;
		seconds2 = secondsCountReg / ten;
		minutes1 = minutesCountReg % ten;
		minutes2 = minutesCountReg / ten;
		if(enableDebounce)
		begin
			debounceCount <= debounceCount + 1;
			if(debounceCount == 100000)
			begin
				btnADJ = btn2;
				btnSEL = btnS;
				btnRST = btnR;
				btnPAUSE = btn3;
				
				debounceCount <= 0;
				enableDebounce <= 0;
			end
		end
		if(btnS || btnR || btn3 || btn2)
		begin
			enableDebounce <= 1;
		end
	end
	
	always @(posedge clock3)
	begin
		//Seven segment mutiplexing
		if(caseStatements == 3)
		begin
			caseStatements <= 0;
		end
		else
		begin
			caseStatements <= caseStatements + 1;
		end
	end
	
	always @(*) 
	begin
		if (btn2)
		begin
			enableBlink <= 1;
		end
		else
		begin
			enableBlink <= 0;
		end
	end
	
	always @(posedge clock4) 
	begin
		if (enableBlink)
		begin
			enableLight <= !enableLight;
		end
		else
		begin
			enableLight <= 1;
		end
	end
	
	// runs after caseStatements changes
	always @(caseStatements)
	begin
		// if light is enabled show the right sseg_num otherwise don't show anything
		if(enableLight)
		begin
			case(caseStatements)
			0:
				begin
					sseg_num = seconds1;
					an = 4'b1110;
				end
			1:
				begin
					sseg_num = seconds2;
					an = 4'b1101;
				end
			2:
				begin
					sseg_num = minutes1;
					an = 4'b1011;
				end
			3:
				begin
					sseg_num = minutes2;
					an = 4'b0111;
				end
			endcase
		end
		else
		begin
			sseg_num = 10;
			an = 4'b1111;
		end
	end
	
	always @(*)
	begin
		case (sseg_num)
			0: seg = 8'b11000000;
			1: seg = 8'b11111001;
			2: seg = 8'b10100100;
			3: seg = 8'b10110000;
			4: seg = 8'b10011001;
			5: seg = 8'b10010010;
			6: seg = 8'b10000010;
			7: seg = 8'b11111000;
			8: seg = 8'b10000000;
			9: seg = 8'b10010000;
			default: seg = 8'b11111111;
			//default: seg = 8'b10111111;
		endcase
	end
	
endmodule
