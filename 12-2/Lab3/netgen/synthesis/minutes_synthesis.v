////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: minutes_synthesis.v
// /___/   /\     Timestamp: Mon Nov 24 13:44:09 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim sevenSegment.ngc minutes_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: sevenSegment.ngc
// Output file	: C:\Users\152\Desktop\12-2\netgen\synthesis\minutes_synthesis.v
// # of Modules	: 1
// Design Name	: sevenSegment
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module sevenSegment (
  clk, btnR, btnS, btn2, btn3, seg, an
);
  input clk;
  input btnR;
  input btnS;
  input btn2;
  input btn3;
  output [7 : 0] seg;
  output [3 : 0] an;
  wire clk_BUFGP_0;
  wire btnR_IBUF_1;
  wire btnS_IBUF_2;
  wire btn2_IBUF_3;
  wire btn3_IBUF_4;
  wire \c/clock1_5 ;
  wire \c/clock2_6 ;
  wire \c/clock3_BUFG_7 ;
  wire \c/clock4_8 ;
  wire enableDebounce_37;
  wire btnADJ_38;
  wire btnSEL_39;
  wire btnRST_40;
  wire btnPAUSE_41;
  wire btnS_btn2_OR_35_o;
  wire enableLight_99;
  wire \secondsCount[5]_PWR_1_o_mod_1_OUT<3> ;
  wire \secondsCount[5]_PWR_1_o_mod_1_OUT<2> ;
  wire \secondsCount[5]_PWR_1_o_mod_1_OUT<1> ;
  wire \secondsCount[5]_PWR_1_o_div_2_OUT<2> ;
  wire \secondsCount[5]_PWR_1_o_div_2_OUT<0> ;
  wire \minutesCount[6]_PWR_1_o_mod_3_OUT<3> ;
  wire \minutesCount[6]_PWR_1_o_mod_3_OUT<2> ;
  wire \minutesCount[6]_PWR_1_o_mod_3_OUT<1> ;
  wire \minutesCount[6]_PWR_1_o_div_4_OUT<3> ;
  wire \minutesCount[6]_PWR_1_o_div_4_OUT<1>_109 ;
  wire \minutesCount[6]_PWR_1_o_div_4_OUT<0>_110 ;
  wire _n0326;
  wire sseg_num_2_112;
  wire sseg_num_1_113;
  wire sseg_num_0_114;
  wire an_3_115;
  wire an_2_116;
  wire an_1_117;
  wire an_0_118;
  wire sseg_num_3_119;
  wire _n0188;
  wire _n0290;
  wire _n0240;
  wire _n0178;
  wire \caseStatements[31]_GND_1_o_equal_26_o ;
  wire seg_7_OBUF_125;
  wire seg_6_OBUF_126;
  wire seg_5_OBUF_127;
  wire seg_4_OBUF_128;
  wire seg_3_OBUF_129;
  wire seg_2_OBUF_130;
  wire seg_1_OBUF_131;
  wire seg_0_OBUF_132;
  wire btn2_inv;
  wire enableLight_inv;
  wire \secondsCount[5]_PWR_1_o_mod_1/BUS_0006_INV_52_o ;
  wire \minutesCount[6]_PWR_1_o_mod_3/BUS_0006_INV_175_o ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \Result<20>1 ;
  wire \Result<21>1 ;
  wire \Result<22>1 ;
  wire \Result<23>1 ;
  wire \Result<24>1 ;
  wire \Result<25>1 ;
  wire \Result<26>1 ;
  wire \Result<27>1 ;
  wire \Result<28>1 ;
  wire \Result<29>1 ;
  wire \Result<30>1 ;
  wire \Result<31>1 ;
  wire Mram__n0354;
  wire Mram__n03541;
  wire Mram__n03542;
  wire Mram__n03543;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>1 ;
  wire \c/Result<25>3 ;
  wire \c/Result<24>3 ;
  wire \c/Result<23>3 ;
  wire \c/Result<22>3 ;
  wire \c/Result<21>3 ;
  wire \c/Result<20>3 ;
  wire \c/Result<19>3 ;
  wire \c/Result<18>3 ;
  wire \c/Result<17>3 ;
  wire \c/Result<16>3 ;
  wire \c/Result<15>3 ;
  wire \c/Result<14>3 ;
  wire \c/Result<13>3 ;
  wire \c/Result<12>3 ;
  wire \c/Result<11>3 ;
  wire \c/Result<10>3 ;
  wire \c/Result<9>3 ;
  wire \c/Result<8>3 ;
  wire \c/Result<7>3 ;
  wire \c/Result<6>3 ;
  wire \c/Result<5>3 ;
  wire \c/Result<4>3 ;
  wire \c/Result<3>3 ;
  wire \c/Result<2>3 ;
  wire \c/Result<1>3 ;
  wire \c/Result<0>3 ;
  wire \c/Result<16>2 ;
  wire \c/Result<15>2 ;
  wire \c/Result<14>2 ;
  wire \c/Result<13>2 ;
  wire \c/Result<12>2 ;
  wire \c/Result<11>2 ;
  wire \c/Result<10>2 ;
  wire \c/Result<9>2 ;
  wire \c/Result<8>2 ;
  wire \c/Result<7>2 ;
  wire \c/Result<6>2 ;
  wire \c/Result<5>2 ;
  wire \c/Result<4>2 ;
  wire \c/Result<3>2 ;
  wire \c/Result<2>2 ;
  wire \c/Result<1>2 ;
  wire \c/Result<0>2 ;
  wire \c/Result<23>1 ;
  wire \c/Result<22>1 ;
  wire \c/Result<21>1 ;
  wire \c/Result<20>1 ;
  wire \c/Result<19>1 ;
  wire \c/Result<18>1 ;
  wire \c/Result<17>1 ;
  wire \c/Result<16>1 ;
  wire \c/Result<15>1 ;
  wire \c/Result<14>1 ;
  wire \c/Result<13>1 ;
  wire \c/Result<12>1 ;
  wire \c/Result<11>1 ;
  wire \c/Result<10>1 ;
  wire \c/Result<9>1 ;
  wire \c/Result<8>1 ;
  wire \c/Result<7>1 ;
  wire \c/Result<6>1 ;
  wire \c/Result<5>1 ;
  wire \c/Result<4>1 ;
  wire \c/Result<3>1 ;
  wire \c/Result<2>1 ;
  wire \c/Result<1>1 ;
  wire \c/Result<0>1 ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o ;
  wire \M/minutesCounter1Hz/Mcount_countmin_xor<0>111 ;
  wire \M/minutesCounter1Hz/Mcount_countmin_xor<5>111 ;
  wire \M/minutesCounter1Hz/Mcount_countmin6 ;
  wire \M/minutesCounter1Hz/Mcount_countmin5 ;
  wire \M/minutesCounter1Hz/Mcount_countmin4 ;
  wire \M/minutesCounter1Hz/Mcount_countmin3 ;
  wire \M/minutesCounter1Hz/Mcount_countmin2 ;
  wire \M/minutesCounter1Hz/Mcount_countmin1 ;
  wire \M/minutesCounter1Hz/Mcount_countmin ;
  wire \M/minutesCounter1Hz/_n0021_inv_541 ;
  wire \M/enableMaster_inv ;
  wire \M/clock_in_clock1_MUX_58_o ;
  wire \M/enableMinutes_558 ;
  wire \M/enableSeconds_559 ;
  wire \M/enableMaster_560 ;
  wire \M/clock_in_561 ;
  wire \M/secondsCounter1Hz/_n0047_inv11 ;
  wire \M/secondsCounter1Hz/_n0043_inv ;
  wire \M/secondsCounter1Hz/_n0047_inv1 ;
  wire \M/secondsCounter1Hz/N11 ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<0> ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<1> ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<2> ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<3> ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<4> ;
  wire \M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<5> ;
  wire \M/secondsCounter1Hz/_n0036 ;
  wire \debounceCount[31]_GND_1_o_equal_7_o<31> ;
  wire \debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ;
  wire \debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ;
  wire \debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>11_577 ;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>12_578 ;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>13_579 ;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>14_580 ;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>15_581 ;
  wire \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1_582 ;
  wire \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2_583 ;
  wire \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3_584 ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o<31> ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o<31>1_586 ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o<31>2_587 ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o<31>3_588 ;
  wire \c/Hz4[31]_GND_2_o_equal_11_o<31> ;
  wire \c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ;
  wire \c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ;
  wire \c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ;
  wire \c/Hz3[31]_GND_2_o_equal_8_o<31> ;
  wire \c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ;
  wire \c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ;
  wire \c/Hz2[31]_GND_2_o_equal_5_o<31> ;
  wire \c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ;
  wire \c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ;
  wire \c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ;
  wire N41;
  wire N45;
  wire \M/enableMinutes_glue_set_619 ;
  wire \M/enableSeconds_glue_set_620 ;
  wire \Mcount_caseStatements_cy<1>_rt_621 ;
  wire \Mcount_caseStatements_cy<2>_rt_622 ;
  wire \Mcount_caseStatements_cy<3>_rt_623 ;
  wire \Mcount_caseStatements_cy<4>_rt_624 ;
  wire \Mcount_caseStatements_cy<5>_rt_625 ;
  wire \Mcount_caseStatements_cy<6>_rt_626 ;
  wire \Mcount_caseStatements_cy<7>_rt_627 ;
  wire \Mcount_caseStatements_cy<8>_rt_628 ;
  wire \Mcount_caseStatements_cy<9>_rt_629 ;
  wire \Mcount_caseStatements_cy<10>_rt_630 ;
  wire \Mcount_caseStatements_cy<11>_rt_631 ;
  wire \Mcount_caseStatements_cy<12>_rt_632 ;
  wire \Mcount_caseStatements_cy<13>_rt_633 ;
  wire \Mcount_caseStatements_cy<14>_rt_634 ;
  wire \Mcount_caseStatements_cy<15>_rt_635 ;
  wire \Mcount_caseStatements_cy<16>_rt_636 ;
  wire \Mcount_caseStatements_cy<17>_rt_637 ;
  wire \Mcount_caseStatements_cy<18>_rt_638 ;
  wire \Mcount_caseStatements_cy<19>_rt_639 ;
  wire \Mcount_caseStatements_cy<20>_rt_640 ;
  wire \Mcount_caseStatements_cy<21>_rt_641 ;
  wire \Mcount_caseStatements_cy<22>_rt_642 ;
  wire \Mcount_caseStatements_cy<23>_rt_643 ;
  wire \Mcount_caseStatements_cy<24>_rt_644 ;
  wire \Mcount_caseStatements_cy<25>_rt_645 ;
  wire \Mcount_caseStatements_cy<26>_rt_646 ;
  wire \Mcount_caseStatements_cy<27>_rt_647 ;
  wire \Mcount_caseStatements_cy<28>_rt_648 ;
  wire \Mcount_caseStatements_cy<29>_rt_649 ;
  wire \Mcount_caseStatements_cy<30>_rt_650 ;
  wire \Mcount_debounceCount_cy<1>_rt_651 ;
  wire \Mcount_debounceCount_cy<2>_rt_652 ;
  wire \Mcount_debounceCount_cy<3>_rt_653 ;
  wire \Mcount_debounceCount_cy<4>_rt_654 ;
  wire \Mcount_debounceCount_cy<5>_rt_655 ;
  wire \Mcount_debounceCount_cy<6>_rt_656 ;
  wire \Mcount_debounceCount_cy<7>_rt_657 ;
  wire \Mcount_debounceCount_cy<8>_rt_658 ;
  wire \Mcount_debounceCount_cy<9>_rt_659 ;
  wire \Mcount_debounceCount_cy<10>_rt_660 ;
  wire \Mcount_debounceCount_cy<11>_rt_661 ;
  wire \Mcount_debounceCount_cy<12>_rt_662 ;
  wire \Mcount_debounceCount_cy<13>_rt_663 ;
  wire \Mcount_debounceCount_cy<14>_rt_664 ;
  wire \Mcount_debounceCount_cy<15>_rt_665 ;
  wire \Mcount_debounceCount_cy<16>_rt_666 ;
  wire \Mcount_debounceCount_cy<17>_rt_667 ;
  wire \Mcount_debounceCount_cy<18>_rt_668 ;
  wire \Mcount_debounceCount_cy<19>_rt_669 ;
  wire \Mcount_debounceCount_cy<20>_rt_670 ;
  wire \Mcount_debounceCount_cy<21>_rt_671 ;
  wire \Mcount_debounceCount_cy<22>_rt_672 ;
  wire \c/Mcount_Hz1_cy<24>_rt_673 ;
  wire \c/Mcount_Hz1_cy<23>_rt_674 ;
  wire \c/Mcount_Hz1_cy<22>_rt_675 ;
  wire \c/Mcount_Hz1_cy<21>_rt_676 ;
  wire \c/Mcount_Hz1_cy<20>_rt_677 ;
  wire \c/Mcount_Hz1_cy<19>_rt_678 ;
  wire \c/Mcount_Hz1_cy<18>_rt_679 ;
  wire \c/Mcount_Hz1_cy<17>_rt_680 ;
  wire \c/Mcount_Hz1_cy<16>_rt_681 ;
  wire \c/Mcount_Hz1_cy<15>_rt_682 ;
  wire \c/Mcount_Hz1_cy<14>_rt_683 ;
  wire \c/Mcount_Hz1_cy<13>_rt_684 ;
  wire \c/Mcount_Hz1_cy<12>_rt_685 ;
  wire \c/Mcount_Hz1_cy<11>_rt_686 ;
  wire \c/Mcount_Hz1_cy<10>_rt_687 ;
  wire \c/Mcount_Hz1_cy<9>_rt_688 ;
  wire \c/Mcount_Hz1_cy<8>_rt_689 ;
  wire \c/Mcount_Hz1_cy<7>_rt_690 ;
  wire \c/Mcount_Hz1_cy<6>_rt_691 ;
  wire \c/Mcount_Hz1_cy<5>_rt_692 ;
  wire \c/Mcount_Hz1_cy<4>_rt_693 ;
  wire \c/Mcount_Hz1_cy<3>_rt_694 ;
  wire \c/Mcount_Hz1_cy<2>_rt_695 ;
  wire \c/Mcount_Hz1_cy<1>_rt_696 ;
  wire \c/Mcount_Hz3_cy<15>_rt_697 ;
  wire \c/Mcount_Hz3_cy<14>_rt_698 ;
  wire \c/Mcount_Hz3_cy<13>_rt_699 ;
  wire \c/Mcount_Hz3_cy<12>_rt_700 ;
  wire \c/Mcount_Hz3_cy<11>_rt_701 ;
  wire \c/Mcount_Hz3_cy<10>_rt_702 ;
  wire \c/Mcount_Hz3_cy<9>_rt_703 ;
  wire \c/Mcount_Hz3_cy<8>_rt_704 ;
  wire \c/Mcount_Hz3_cy<7>_rt_705 ;
  wire \c/Mcount_Hz3_cy<6>_rt_706 ;
  wire \c/Mcount_Hz3_cy<5>_rt_707 ;
  wire \c/Mcount_Hz3_cy<4>_rt_708 ;
  wire \c/Mcount_Hz3_cy<3>_rt_709 ;
  wire \c/Mcount_Hz3_cy<2>_rt_710 ;
  wire \c/Mcount_Hz3_cy<1>_rt_711 ;
  wire \c/Mcount_Hz4_cy<22>_rt_712 ;
  wire \c/Mcount_Hz4_cy<21>_rt_713 ;
  wire \c/Mcount_Hz4_cy<20>_rt_714 ;
  wire \c/Mcount_Hz4_cy<19>_rt_715 ;
  wire \c/Mcount_Hz4_cy<18>_rt_716 ;
  wire \c/Mcount_Hz4_cy<17>_rt_717 ;
  wire \c/Mcount_Hz4_cy<16>_rt_718 ;
  wire \c/Mcount_Hz4_cy<15>_rt_719 ;
  wire \c/Mcount_Hz4_cy<14>_rt_720 ;
  wire \c/Mcount_Hz4_cy<13>_rt_721 ;
  wire \c/Mcount_Hz4_cy<12>_rt_722 ;
  wire \c/Mcount_Hz4_cy<11>_rt_723 ;
  wire \c/Mcount_Hz4_cy<10>_rt_724 ;
  wire \c/Mcount_Hz4_cy<9>_rt_725 ;
  wire \c/Mcount_Hz4_cy<8>_rt_726 ;
  wire \c/Mcount_Hz4_cy<7>_rt_727 ;
  wire \c/Mcount_Hz4_cy<6>_rt_728 ;
  wire \c/Mcount_Hz4_cy<5>_rt_729 ;
  wire \c/Mcount_Hz4_cy<4>_rt_730 ;
  wire \c/Mcount_Hz4_cy<3>_rt_731 ;
  wire \c/Mcount_Hz4_cy<2>_rt_732 ;
  wire \c/Mcount_Hz4_cy<1>_rt_733 ;
  wire \c/Mcount_Hz2_cy<23>_rt_734 ;
  wire \c/Mcount_Hz2_cy<22>_rt_735 ;
  wire \c/Mcount_Hz2_cy<21>_rt_736 ;
  wire \c/Mcount_Hz2_cy<20>_rt_737 ;
  wire \c/Mcount_Hz2_cy<19>_rt_738 ;
  wire \c/Mcount_Hz2_cy<18>_rt_739 ;
  wire \c/Mcount_Hz2_cy<17>_rt_740 ;
  wire \c/Mcount_Hz2_cy<16>_rt_741 ;
  wire \c/Mcount_Hz2_cy<15>_rt_742 ;
  wire \c/Mcount_Hz2_cy<14>_rt_743 ;
  wire \c/Mcount_Hz2_cy<13>_rt_744 ;
  wire \c/Mcount_Hz2_cy<12>_rt_745 ;
  wire \c/Mcount_Hz2_cy<11>_rt_746 ;
  wire \c/Mcount_Hz2_cy<10>_rt_747 ;
  wire \c/Mcount_Hz2_cy<9>_rt_748 ;
  wire \c/Mcount_Hz2_cy<8>_rt_749 ;
  wire \c/Mcount_Hz2_cy<7>_rt_750 ;
  wire \c/Mcount_Hz2_cy<6>_rt_751 ;
  wire \c/Mcount_Hz2_cy<5>_rt_752 ;
  wire \c/Mcount_Hz2_cy<4>_rt_753 ;
  wire \c/Mcount_Hz2_cy<3>_rt_754 ;
  wire \c/Mcount_Hz2_cy<2>_rt_755 ;
  wire \c/Mcount_Hz2_cy<1>_rt_756 ;
  wire \Mcount_caseStatements_xor<31>_rt_757 ;
  wire \Mcount_debounceCount_xor<23>_rt_758 ;
  wire \c/Mcount_Hz1_xor<25>_rt_759 ;
  wire \c/Mcount_Hz3_xor<16>_rt_760 ;
  wire \c/Mcount_Hz4_xor<23>_rt_761 ;
  wire \c/Mcount_Hz2_xor<24>_rt_762 ;
  wire \c/clock4_rstpot_763 ;
  wire \c/clock3_rstpot_764 ;
  wire \c/clock2_rstpot_765 ;
  wire \c/clock1_rstpot_766 ;
  wire \M/enableMaster_rstpot_767 ;
  wire enableDebounce_rstpot_768;
  wire N47;
  wire N48;
  wire N52;
  wire caseStatements_0_rstpot_772;
  wire N54;
  wire caseStatements_1_rstpot_774;
  wire caseStatements_2_rstpot_775;
  wire caseStatements_3_rstpot_776;
  wire caseStatements_4_rstpot_777;
  wire caseStatements_5_rstpot_778;
  wire caseStatements_6_rstpot_779;
  wire caseStatements_7_rstpot_780;
  wire caseStatements_8_rstpot_781;
  wire caseStatements_9_rstpot_782;
  wire caseStatements_10_rstpot_783;
  wire caseStatements_11_rstpot_784;
  wire caseStatements_12_rstpot_785;
  wire caseStatements_13_rstpot_786;
  wire caseStatements_14_rstpot_787;
  wire caseStatements_15_rstpot_788;
  wire caseStatements_16_rstpot_789;
  wire caseStatements_17_rstpot_790;
  wire caseStatements_18_rstpot_791;
  wire caseStatements_19_rstpot_792;
  wire caseStatements_20_rstpot_793;
  wire caseStatements_21_rstpot_794;
  wire caseStatements_22_rstpot_795;
  wire caseStatements_23_rstpot_796;
  wire debounceCount_0_rstpot_797;
  wire debounceCount_1_rstpot_798;
  wire debounceCount_2_rstpot_799;
  wire debounceCount_3_rstpot_800;
  wire debounceCount_4_rstpot_801;
  wire debounceCount_5_rstpot_802;
  wire debounceCount_6_rstpot_803;
  wire debounceCount_7_rstpot_804;
  wire debounceCount_8_rstpot_805;
  wire debounceCount_9_rstpot_806;
  wire debounceCount_10_rstpot_807;
  wire debounceCount_11_rstpot_808;
  wire debounceCount_12_rstpot_809;
  wire debounceCount_13_rstpot_810;
  wire debounceCount_14_rstpot_811;
  wire debounceCount_15_rstpot_812;
  wire debounceCount_16_rstpot_813;
  wire debounceCount_17_rstpot_814;
  wire debounceCount_18_rstpot_815;
  wire debounceCount_19_rstpot_816;
  wire debounceCount_20_rstpot_817;
  wire debounceCount_21_rstpot_818;
  wire debounceCount_22_rstpot_819;
  wire debounceCount_23_rstpot_820;
  wire btnADJ_dpot_821;
  wire btnPAUSE_dpot_822;
  wire btnRST_dpot_823;
  wire btnSEL_dpot_824;
  wire caseStatements_24_rstpot_825;
  wire caseStatements_25_rstpot_826;
  wire \c/Hz1_25_rstpot_827 ;
  wire \c/Hz1_24_rstpot_828 ;
  wire \c/Hz1_23_rstpot_829 ;
  wire \c/Hz1_22_rstpot_830 ;
  wire \c/Hz1_21_rstpot_831 ;
  wire \c/Hz1_20_rstpot_832 ;
  wire \c/Hz1_19_rstpot_833 ;
  wire \c/Hz1_18_rstpot_834 ;
  wire \c/Hz1_17_rstpot_835 ;
  wire \c/Hz1_16_rstpot_836 ;
  wire \c/Hz1_15_rstpot_837 ;
  wire \c/Hz1_14_rstpot_838 ;
  wire \c/Hz1_13_rstpot_839 ;
  wire \c/Hz1_12_rstpot_840 ;
  wire \c/Hz1_11_rstpot_841 ;
  wire \c/Hz1_10_rstpot_842 ;
  wire \c/Hz1_9_rstpot_843 ;
  wire \c/Hz1_8_rstpot_844 ;
  wire \c/Hz1_7_rstpot_845 ;
  wire \c/Hz1_6_rstpot_846 ;
  wire \c/Hz1_5_rstpot_847 ;
  wire \c/Hz1_4_rstpot_848 ;
  wire \c/Hz1_3_rstpot_849 ;
  wire \c/Hz1_2_rstpot_850 ;
  wire \c/Hz1_1_rstpot_851 ;
  wire \c/Hz1_0_rstpot_852 ;
  wire caseStatements_26_rstpot_853;
  wire \c/Hz2_24_rstpot_854 ;
  wire \c/Hz2_23_rstpot_855 ;
  wire \c/Hz2_22_rstpot_856 ;
  wire \c/Hz2_21_rstpot_857 ;
  wire \c/Hz2_20_rstpot_858 ;
  wire \c/Hz2_19_rstpot_859 ;
  wire \c/Hz2_18_rstpot_860 ;
  wire \c/Hz2_17_rstpot_861 ;
  wire \c/Hz2_16_rstpot_862 ;
  wire \c/Hz2_15_rstpot_863 ;
  wire \c/Hz2_14_rstpot_864 ;
  wire \c/Hz2_13_rstpot_865 ;
  wire \c/Hz2_12_rstpot_866 ;
  wire \c/Hz2_11_rstpot_867 ;
  wire \c/Hz2_10_rstpot_868 ;
  wire \c/Hz2_9_rstpot_869 ;
  wire \c/Hz2_8_rstpot_870 ;
  wire \c/Hz2_7_rstpot_871 ;
  wire \c/Hz2_6_rstpot_872 ;
  wire \c/Hz2_5_rstpot_873 ;
  wire \c/Hz2_4_rstpot_874 ;
  wire \c/Hz2_3_rstpot_875 ;
  wire \c/Hz2_2_rstpot_876 ;
  wire \c/Hz2_1_rstpot_877 ;
  wire \c/Hz2_0_rstpot_878 ;
  wire caseStatements_27_rstpot_879;
  wire caseStatements_28_rstpot_880;
  wire caseStatements_29_rstpot_881;
  wire caseStatements_30_rstpot_882;
  wire caseStatements_31_rstpot_883;
  wire \caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ;
  wire \c/Hz4_23_rstpot_885 ;
  wire \c/Hz4_22_rstpot_886 ;
  wire \c/Hz4_21_rstpot_887 ;
  wire \c/Hz4_20_rstpot_888 ;
  wire \c/Hz4_19_rstpot_889 ;
  wire \c/Hz4_18_rstpot_890 ;
  wire \c/Hz4_17_rstpot_891 ;
  wire \c/Hz4_16_rstpot_892 ;
  wire \c/Hz4_15_rstpot_893 ;
  wire \c/Hz4_14_rstpot_894 ;
  wire \c/Hz4_13_rstpot_895 ;
  wire \c/Hz4_12_rstpot_896 ;
  wire \c/Hz4_11_rstpot_897 ;
  wire \c/Hz4_10_rstpot_898 ;
  wire \c/Hz4_9_rstpot_899 ;
  wire \c/Hz4_8_rstpot_900 ;
  wire \c/Hz4_7_rstpot_901 ;
  wire \c/Hz4_6_rstpot_902 ;
  wire \c/Hz4_5_rstpot_903 ;
  wire \c/Hz4_4_rstpot_904 ;
  wire \c/Hz4_3_rstpot_905 ;
  wire \c/Hz4_2_rstpot_906 ;
  wire \c/Hz4_1_rstpot_907 ;
  wire \c/Hz4_0_rstpot_908 ;
  wire \c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ;
  wire _n03261_910;
  wire \c/Hz3_16_rstpot_911 ;
  wire \c/Hz3_15_rstpot_912 ;
  wire \c/Hz3_14_rstpot_913 ;
  wire \c/Hz3_13_rstpot_914 ;
  wire \c/Hz3_12_rstpot_915 ;
  wire \c/Hz3_11_rstpot_916 ;
  wire \c/Hz3_10_rstpot_917 ;
  wire \c/Hz3_9_rstpot_918 ;
  wire \c/Hz3_8_rstpot_919 ;
  wire \c/Hz3_7_rstpot_920 ;
  wire \c/Hz3_6_rstpot_921 ;
  wire \c/Hz3_5_rstpot_922 ;
  wire \c/Hz3_4_rstpot_923 ;
  wire \c/Hz3_3_rstpot_924 ;
  wire \c/Hz3_2_rstpot_925 ;
  wire \c/Hz3_1_rstpot_926 ;
  wire \c/Hz3_0_rstpot_927 ;
  wire \c/clock3_928 ;
  wire [5 : 0] \M/secondsCount ;
  wire [6 : 0] \M/minutesCount ;
  wire [3 : 0] seconds1;
  wire [3 : 0] minutes1;
  wire [3 : 0] minutes2;
  wire [2 : 0] seconds2;
  wire [23 : 0] debounceCount;
  wire [31 : 0] caseStatements;
  wire [23 : 0] Result;
  wire [0 : 0] Mcount_caseStatements_lut;
  wire [30 : 0] Mcount_caseStatements_cy;
  wire [0 : 0] Mcount_debounceCount_lut;
  wire [22 : 0] Mcount_debounceCount_cy;
  wire [24 : 0] \c/Mcount_Hz1_cy ;
  wire [0 : 0] \c/Mcount_Hz1_lut ;
  wire [15 : 0] \c/Mcount_Hz3_cy ;
  wire [0 : 0] \c/Mcount_Hz3_lut ;
  wire [22 : 0] \c/Mcount_Hz4_cy ;
  wire [0 : 0] \c/Mcount_Hz4_lut ;
  wire [23 : 0] \c/Mcount_Hz2_cy ;
  wire [0 : 0] \c/Mcount_Hz2_lut ;
  wire [24 : 0] \c/Result ;
  wire [26 : 0] \c/Hz1 ;
  wire [23 : 0] \c/Hz4 ;
  wire [16 : 0] \c/Hz3 ;
  wire [24 : 0] \c/Hz2 ;
  wire [6 : 0] \M/minutesCounter1Hz/countmin ;
  wire [0 : 0] \M/secondsCounter1Hz/overflow ;
  wire [5 : 0] \M/secondsCounter1Hz/count ;
  VCC   XST_VCC (
    .P(seg_7_OBUF_125)
  );
  GND   XST_GND (
    .G(\c/Hz1 [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  btnADJ (
    .C(clk_BUFGP_0),
    .CE(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .D(btnADJ_dpot_821),
    .Q(btnADJ_38)
  );
  FDE #(
    .INIT ( 1'b0 ))
  btnSEL (
    .C(clk_BUFGP_0),
    .CE(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .D(btnSEL_dpot_824),
    .Q(btnSEL_39)
  );
  FDE #(
    .INIT ( 1'b0 ))
  btnRST (
    .C(clk_BUFGP_0),
    .CE(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .D(btnRST_dpot_823),
    .Q(btnRST_40)
  );
  FDE #(
    .INIT ( 1'b0 ))
  btnPAUSE (
    .C(clk_BUFGP_0),
    .CE(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .D(btnPAUSE_dpot_822),
    .Q(btnPAUSE_41)
  );
  FDS #(
    .INIT ( 1'b1 ))
  enableLight (
    .C(\c/clock4_8 ),
    .D(enableLight_inv),
    .S(btn2_inv),
    .Q(enableLight_99)
  );
  FD   seconds1_0 (
    .C(clk_BUFGP_0),
    .D(\M/secondsCount [0]),
    .Q(seconds1[0])
  );
  FD   seconds1_1 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_mod_1_OUT<1> ),
    .Q(seconds1[1])
  );
  FD   seconds1_2 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_mod_1_OUT<2> ),
    .Q(seconds1[2])
  );
  FD   seconds1_3 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_mod_1_OUT<3> ),
    .Q(seconds1[3])
  );
  FD   minutes1_0 (
    .C(clk_BUFGP_0),
    .D(\M/minutesCount [0]),
    .Q(minutes1[0])
  );
  FD   minutes1_1 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_mod_3_OUT<1> ),
    .Q(minutes1[1])
  );
  FD   minutes1_2 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_mod_3_OUT<2> ),
    .Q(minutes1[2])
  );
  FD   minutes1_3 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_mod_3_OUT<3> ),
    .Q(minutes1[3])
  );
  FD   minutes2_0 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_div_4_OUT<0>_110 ),
    .Q(minutes2[0])
  );
  FD   minutes2_1 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_div_4_OUT<1>_109 ),
    .Q(minutes2[1])
  );
  FD   minutes2_2 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_mod_3/BUS_0006_INV_175_o ),
    .Q(minutes2[2])
  );
  FD   minutes2_3 (
    .C(clk_BUFGP_0),
    .D(\minutesCount[6]_PWR_1_o_div_4_OUT<3> ),
    .Q(minutes2[3])
  );
  FD   seconds2_0 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_div_2_OUT<0> ),
    .Q(seconds2[0])
  );
  FD   seconds2_1 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_mod_1/BUS_0006_INV_52_o ),
    .Q(seconds2[1])
  );
  FD   seconds2_2 (
    .C(clk_BUFGP_0),
    .D(\secondsCount[5]_PWR_1_o_div_2_OUT<2> ),
    .Q(seconds2[2])
  );
  LDP   an_3 (
    .D(Mram__n03543),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(an_3_115)
  );
  LDP   an_2 (
    .D(Mram__n03541),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(an_2_116)
  );
  LDP   an_1 (
    .D(Mram__n0354),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(an_1_117)
  );
  LDP   an_0 (
    .D(Mram__n03542),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(an_0_118)
  );
  LDC   sseg_num_0 (
    .CLR(enableLight_inv),
    .D(_n0178),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .Q(sseg_num_0_114)
  );
  LDC   sseg_num_2 (
    .CLR(enableLight_inv),
    .D(_n0290),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .Q(sseg_num_2_112)
  );
  LDP   sseg_num_1 (
    .D(_n0240),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(sseg_num_1_113)
  );
  LDP   sseg_num_3 (
    .D(_n0188),
    .G(\caseStatements[31]_GND_1_o_equal_26_o<31>1 ),
    .PRE(enableLight_inv),
    .Q(sseg_num_3_119)
  );
  MUXCY   \Mcount_caseStatements_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(Mcount_caseStatements_lut[0]),
    .O(Mcount_caseStatements_cy[0])
  );
  XORCY   \Mcount_caseStatements_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(Mcount_caseStatements_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<1>  (
    .CI(Mcount_caseStatements_cy[0]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<1>_rt_621 ),
    .O(Mcount_caseStatements_cy[1])
  );
  XORCY   \Mcount_caseStatements_xor<1>  (
    .CI(Mcount_caseStatements_cy[0]),
    .LI(\Mcount_caseStatements_cy<1>_rt_621 ),
    .O(\Result<1>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<2>  (
    .CI(Mcount_caseStatements_cy[1]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<2>_rt_622 ),
    .O(Mcount_caseStatements_cy[2])
  );
  XORCY   \Mcount_caseStatements_xor<2>  (
    .CI(Mcount_caseStatements_cy[1]),
    .LI(\Mcount_caseStatements_cy<2>_rt_622 ),
    .O(\Result<2>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<3>  (
    .CI(Mcount_caseStatements_cy[2]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<3>_rt_623 ),
    .O(Mcount_caseStatements_cy[3])
  );
  XORCY   \Mcount_caseStatements_xor<3>  (
    .CI(Mcount_caseStatements_cy[2]),
    .LI(\Mcount_caseStatements_cy<3>_rt_623 ),
    .O(\Result<3>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<4>  (
    .CI(Mcount_caseStatements_cy[3]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<4>_rt_624 ),
    .O(Mcount_caseStatements_cy[4])
  );
  XORCY   \Mcount_caseStatements_xor<4>  (
    .CI(Mcount_caseStatements_cy[3]),
    .LI(\Mcount_caseStatements_cy<4>_rt_624 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<5>  (
    .CI(Mcount_caseStatements_cy[4]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<5>_rt_625 ),
    .O(Mcount_caseStatements_cy[5])
  );
  XORCY   \Mcount_caseStatements_xor<5>  (
    .CI(Mcount_caseStatements_cy[4]),
    .LI(\Mcount_caseStatements_cy<5>_rt_625 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<6>  (
    .CI(Mcount_caseStatements_cy[5]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<6>_rt_626 ),
    .O(Mcount_caseStatements_cy[6])
  );
  XORCY   \Mcount_caseStatements_xor<6>  (
    .CI(Mcount_caseStatements_cy[5]),
    .LI(\Mcount_caseStatements_cy<6>_rt_626 ),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<7>  (
    .CI(Mcount_caseStatements_cy[6]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<7>_rt_627 ),
    .O(Mcount_caseStatements_cy[7])
  );
  XORCY   \Mcount_caseStatements_xor<7>  (
    .CI(Mcount_caseStatements_cy[6]),
    .LI(\Mcount_caseStatements_cy<7>_rt_627 ),
    .O(\Result<7>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<8>  (
    .CI(Mcount_caseStatements_cy[7]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<8>_rt_628 ),
    .O(Mcount_caseStatements_cy[8])
  );
  XORCY   \Mcount_caseStatements_xor<8>  (
    .CI(Mcount_caseStatements_cy[7]),
    .LI(\Mcount_caseStatements_cy<8>_rt_628 ),
    .O(\Result<8>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<9>  (
    .CI(Mcount_caseStatements_cy[8]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<9>_rt_629 ),
    .O(Mcount_caseStatements_cy[9])
  );
  XORCY   \Mcount_caseStatements_xor<9>  (
    .CI(Mcount_caseStatements_cy[8]),
    .LI(\Mcount_caseStatements_cy<9>_rt_629 ),
    .O(\Result<9>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<10>  (
    .CI(Mcount_caseStatements_cy[9]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<10>_rt_630 ),
    .O(Mcount_caseStatements_cy[10])
  );
  XORCY   \Mcount_caseStatements_xor<10>  (
    .CI(Mcount_caseStatements_cy[9]),
    .LI(\Mcount_caseStatements_cy<10>_rt_630 ),
    .O(\Result<10>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<11>  (
    .CI(Mcount_caseStatements_cy[10]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<11>_rt_631 ),
    .O(Mcount_caseStatements_cy[11])
  );
  XORCY   \Mcount_caseStatements_xor<11>  (
    .CI(Mcount_caseStatements_cy[10]),
    .LI(\Mcount_caseStatements_cy<11>_rt_631 ),
    .O(\Result<11>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<12>  (
    .CI(Mcount_caseStatements_cy[11]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<12>_rt_632 ),
    .O(Mcount_caseStatements_cy[12])
  );
  XORCY   \Mcount_caseStatements_xor<12>  (
    .CI(Mcount_caseStatements_cy[11]),
    .LI(\Mcount_caseStatements_cy<12>_rt_632 ),
    .O(\Result<12>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<13>  (
    .CI(Mcount_caseStatements_cy[12]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<13>_rt_633 ),
    .O(Mcount_caseStatements_cy[13])
  );
  XORCY   \Mcount_caseStatements_xor<13>  (
    .CI(Mcount_caseStatements_cy[12]),
    .LI(\Mcount_caseStatements_cy<13>_rt_633 ),
    .O(\Result<13>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<14>  (
    .CI(Mcount_caseStatements_cy[13]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<14>_rt_634 ),
    .O(Mcount_caseStatements_cy[14])
  );
  XORCY   \Mcount_caseStatements_xor<14>  (
    .CI(Mcount_caseStatements_cy[13]),
    .LI(\Mcount_caseStatements_cy<14>_rt_634 ),
    .O(\Result<14>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<15>  (
    .CI(Mcount_caseStatements_cy[14]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<15>_rt_635 ),
    .O(Mcount_caseStatements_cy[15])
  );
  XORCY   \Mcount_caseStatements_xor<15>  (
    .CI(Mcount_caseStatements_cy[14]),
    .LI(\Mcount_caseStatements_cy<15>_rt_635 ),
    .O(\Result<15>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<16>  (
    .CI(Mcount_caseStatements_cy[15]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<16>_rt_636 ),
    .O(Mcount_caseStatements_cy[16])
  );
  XORCY   \Mcount_caseStatements_xor<16>  (
    .CI(Mcount_caseStatements_cy[15]),
    .LI(\Mcount_caseStatements_cy<16>_rt_636 ),
    .O(\Result<16>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<17>  (
    .CI(Mcount_caseStatements_cy[16]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<17>_rt_637 ),
    .O(Mcount_caseStatements_cy[17])
  );
  XORCY   \Mcount_caseStatements_xor<17>  (
    .CI(Mcount_caseStatements_cy[16]),
    .LI(\Mcount_caseStatements_cy<17>_rt_637 ),
    .O(\Result<17>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<18>  (
    .CI(Mcount_caseStatements_cy[17]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<18>_rt_638 ),
    .O(Mcount_caseStatements_cy[18])
  );
  XORCY   \Mcount_caseStatements_xor<18>  (
    .CI(Mcount_caseStatements_cy[17]),
    .LI(\Mcount_caseStatements_cy<18>_rt_638 ),
    .O(\Result<18>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<19>  (
    .CI(Mcount_caseStatements_cy[18]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<19>_rt_639 ),
    .O(Mcount_caseStatements_cy[19])
  );
  XORCY   \Mcount_caseStatements_xor<19>  (
    .CI(Mcount_caseStatements_cy[18]),
    .LI(\Mcount_caseStatements_cy<19>_rt_639 ),
    .O(\Result<19>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<20>  (
    .CI(Mcount_caseStatements_cy[19]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<20>_rt_640 ),
    .O(Mcount_caseStatements_cy[20])
  );
  XORCY   \Mcount_caseStatements_xor<20>  (
    .CI(Mcount_caseStatements_cy[19]),
    .LI(\Mcount_caseStatements_cy<20>_rt_640 ),
    .O(\Result<20>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<21>  (
    .CI(Mcount_caseStatements_cy[20]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<21>_rt_641 ),
    .O(Mcount_caseStatements_cy[21])
  );
  XORCY   \Mcount_caseStatements_xor<21>  (
    .CI(Mcount_caseStatements_cy[20]),
    .LI(\Mcount_caseStatements_cy<21>_rt_641 ),
    .O(\Result<21>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<22>  (
    .CI(Mcount_caseStatements_cy[21]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<22>_rt_642 ),
    .O(Mcount_caseStatements_cy[22])
  );
  XORCY   \Mcount_caseStatements_xor<22>  (
    .CI(Mcount_caseStatements_cy[21]),
    .LI(\Mcount_caseStatements_cy<22>_rt_642 ),
    .O(\Result<22>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<23>  (
    .CI(Mcount_caseStatements_cy[22]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<23>_rt_643 ),
    .O(Mcount_caseStatements_cy[23])
  );
  XORCY   \Mcount_caseStatements_xor<23>  (
    .CI(Mcount_caseStatements_cy[22]),
    .LI(\Mcount_caseStatements_cy<23>_rt_643 ),
    .O(\Result<23>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<24>  (
    .CI(Mcount_caseStatements_cy[23]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<24>_rt_644 ),
    .O(Mcount_caseStatements_cy[24])
  );
  XORCY   \Mcount_caseStatements_xor<24>  (
    .CI(Mcount_caseStatements_cy[23]),
    .LI(\Mcount_caseStatements_cy<24>_rt_644 ),
    .O(\Result<24>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<25>  (
    .CI(Mcount_caseStatements_cy[24]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<25>_rt_645 ),
    .O(Mcount_caseStatements_cy[25])
  );
  XORCY   \Mcount_caseStatements_xor<25>  (
    .CI(Mcount_caseStatements_cy[24]),
    .LI(\Mcount_caseStatements_cy<25>_rt_645 ),
    .O(\Result<25>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<26>  (
    .CI(Mcount_caseStatements_cy[25]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<26>_rt_646 ),
    .O(Mcount_caseStatements_cy[26])
  );
  XORCY   \Mcount_caseStatements_xor<26>  (
    .CI(Mcount_caseStatements_cy[25]),
    .LI(\Mcount_caseStatements_cy<26>_rt_646 ),
    .O(\Result<26>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<27>  (
    .CI(Mcount_caseStatements_cy[26]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<27>_rt_647 ),
    .O(Mcount_caseStatements_cy[27])
  );
  XORCY   \Mcount_caseStatements_xor<27>  (
    .CI(Mcount_caseStatements_cy[26]),
    .LI(\Mcount_caseStatements_cy<27>_rt_647 ),
    .O(\Result<27>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<28>  (
    .CI(Mcount_caseStatements_cy[27]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<28>_rt_648 ),
    .O(Mcount_caseStatements_cy[28])
  );
  XORCY   \Mcount_caseStatements_xor<28>  (
    .CI(Mcount_caseStatements_cy[27]),
    .LI(\Mcount_caseStatements_cy<28>_rt_648 ),
    .O(\Result<28>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<29>  (
    .CI(Mcount_caseStatements_cy[28]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<29>_rt_649 ),
    .O(Mcount_caseStatements_cy[29])
  );
  XORCY   \Mcount_caseStatements_xor<29>  (
    .CI(Mcount_caseStatements_cy[28]),
    .LI(\Mcount_caseStatements_cy<29>_rt_649 ),
    .O(\Result<29>1 )
  );
  MUXCY   \Mcount_caseStatements_cy<30>  (
    .CI(Mcount_caseStatements_cy[29]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_caseStatements_cy<30>_rt_650 ),
    .O(Mcount_caseStatements_cy[30])
  );
  XORCY   \Mcount_caseStatements_xor<30>  (
    .CI(Mcount_caseStatements_cy[29]),
    .LI(\Mcount_caseStatements_cy<30>_rt_650 ),
    .O(\Result<30>1 )
  );
  XORCY   \Mcount_caseStatements_xor<31>  (
    .CI(Mcount_caseStatements_cy[30]),
    .LI(\Mcount_caseStatements_xor<31>_rt_757 ),
    .O(\Result<31>1 )
  );
  MUXCY   \Mcount_debounceCount_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(Mcount_debounceCount_lut[0]),
    .O(Mcount_debounceCount_cy[0])
  );
  XORCY   \Mcount_debounceCount_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(Mcount_debounceCount_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_debounceCount_cy<1>  (
    .CI(Mcount_debounceCount_cy[0]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<1>_rt_651 ),
    .O(Mcount_debounceCount_cy[1])
  );
  XORCY   \Mcount_debounceCount_xor<1>  (
    .CI(Mcount_debounceCount_cy[0]),
    .LI(\Mcount_debounceCount_cy<1>_rt_651 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_debounceCount_cy<2>  (
    .CI(Mcount_debounceCount_cy[1]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<2>_rt_652 ),
    .O(Mcount_debounceCount_cy[2])
  );
  XORCY   \Mcount_debounceCount_xor<2>  (
    .CI(Mcount_debounceCount_cy[1]),
    .LI(\Mcount_debounceCount_cy<2>_rt_652 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_debounceCount_cy<3>  (
    .CI(Mcount_debounceCount_cy[2]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<3>_rt_653 ),
    .O(Mcount_debounceCount_cy[3])
  );
  XORCY   \Mcount_debounceCount_xor<3>  (
    .CI(Mcount_debounceCount_cy[2]),
    .LI(\Mcount_debounceCount_cy<3>_rt_653 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_debounceCount_cy<4>  (
    .CI(Mcount_debounceCount_cy[3]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<4>_rt_654 ),
    .O(Mcount_debounceCount_cy[4])
  );
  XORCY   \Mcount_debounceCount_xor<4>  (
    .CI(Mcount_debounceCount_cy[3]),
    .LI(\Mcount_debounceCount_cy<4>_rt_654 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_debounceCount_cy<5>  (
    .CI(Mcount_debounceCount_cy[4]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<5>_rt_655 ),
    .O(Mcount_debounceCount_cy[5])
  );
  XORCY   \Mcount_debounceCount_xor<5>  (
    .CI(Mcount_debounceCount_cy[4]),
    .LI(\Mcount_debounceCount_cy<5>_rt_655 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_debounceCount_cy<6>  (
    .CI(Mcount_debounceCount_cy[5]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<6>_rt_656 ),
    .O(Mcount_debounceCount_cy[6])
  );
  XORCY   \Mcount_debounceCount_xor<6>  (
    .CI(Mcount_debounceCount_cy[5]),
    .LI(\Mcount_debounceCount_cy<6>_rt_656 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_debounceCount_cy<7>  (
    .CI(Mcount_debounceCount_cy[6]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<7>_rt_657 ),
    .O(Mcount_debounceCount_cy[7])
  );
  XORCY   \Mcount_debounceCount_xor<7>  (
    .CI(Mcount_debounceCount_cy[6]),
    .LI(\Mcount_debounceCount_cy<7>_rt_657 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_debounceCount_cy<8>  (
    .CI(Mcount_debounceCount_cy[7]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<8>_rt_658 ),
    .O(Mcount_debounceCount_cy[8])
  );
  XORCY   \Mcount_debounceCount_xor<8>  (
    .CI(Mcount_debounceCount_cy[7]),
    .LI(\Mcount_debounceCount_cy<8>_rt_658 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_debounceCount_cy<9>  (
    .CI(Mcount_debounceCount_cy[8]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<9>_rt_659 ),
    .O(Mcount_debounceCount_cy[9])
  );
  XORCY   \Mcount_debounceCount_xor<9>  (
    .CI(Mcount_debounceCount_cy[8]),
    .LI(\Mcount_debounceCount_cy<9>_rt_659 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_debounceCount_cy<10>  (
    .CI(Mcount_debounceCount_cy[9]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<10>_rt_660 ),
    .O(Mcount_debounceCount_cy[10])
  );
  XORCY   \Mcount_debounceCount_xor<10>  (
    .CI(Mcount_debounceCount_cy[9]),
    .LI(\Mcount_debounceCount_cy<10>_rt_660 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_debounceCount_cy<11>  (
    .CI(Mcount_debounceCount_cy[10]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<11>_rt_661 ),
    .O(Mcount_debounceCount_cy[11])
  );
  XORCY   \Mcount_debounceCount_xor<11>  (
    .CI(Mcount_debounceCount_cy[10]),
    .LI(\Mcount_debounceCount_cy<11>_rt_661 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_debounceCount_cy<12>  (
    .CI(Mcount_debounceCount_cy[11]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<12>_rt_662 ),
    .O(Mcount_debounceCount_cy[12])
  );
  XORCY   \Mcount_debounceCount_xor<12>  (
    .CI(Mcount_debounceCount_cy[11]),
    .LI(\Mcount_debounceCount_cy<12>_rt_662 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_debounceCount_cy<13>  (
    .CI(Mcount_debounceCount_cy[12]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<13>_rt_663 ),
    .O(Mcount_debounceCount_cy[13])
  );
  XORCY   \Mcount_debounceCount_xor<13>  (
    .CI(Mcount_debounceCount_cy[12]),
    .LI(\Mcount_debounceCount_cy<13>_rt_663 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_debounceCount_cy<14>  (
    .CI(Mcount_debounceCount_cy[13]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<14>_rt_664 ),
    .O(Mcount_debounceCount_cy[14])
  );
  XORCY   \Mcount_debounceCount_xor<14>  (
    .CI(Mcount_debounceCount_cy[13]),
    .LI(\Mcount_debounceCount_cy<14>_rt_664 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_debounceCount_cy<15>  (
    .CI(Mcount_debounceCount_cy[14]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<15>_rt_665 ),
    .O(Mcount_debounceCount_cy[15])
  );
  XORCY   \Mcount_debounceCount_xor<15>  (
    .CI(Mcount_debounceCount_cy[14]),
    .LI(\Mcount_debounceCount_cy<15>_rt_665 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_debounceCount_cy<16>  (
    .CI(Mcount_debounceCount_cy[15]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<16>_rt_666 ),
    .O(Mcount_debounceCount_cy[16])
  );
  XORCY   \Mcount_debounceCount_xor<16>  (
    .CI(Mcount_debounceCount_cy[15]),
    .LI(\Mcount_debounceCount_cy<16>_rt_666 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_debounceCount_cy<17>  (
    .CI(Mcount_debounceCount_cy[16]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<17>_rt_667 ),
    .O(Mcount_debounceCount_cy[17])
  );
  XORCY   \Mcount_debounceCount_xor<17>  (
    .CI(Mcount_debounceCount_cy[16]),
    .LI(\Mcount_debounceCount_cy<17>_rt_667 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_debounceCount_cy<18>  (
    .CI(Mcount_debounceCount_cy[17]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<18>_rt_668 ),
    .O(Mcount_debounceCount_cy[18])
  );
  XORCY   \Mcount_debounceCount_xor<18>  (
    .CI(Mcount_debounceCount_cy[17]),
    .LI(\Mcount_debounceCount_cy<18>_rt_668 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_debounceCount_cy<19>  (
    .CI(Mcount_debounceCount_cy[18]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<19>_rt_669 ),
    .O(Mcount_debounceCount_cy[19])
  );
  XORCY   \Mcount_debounceCount_xor<19>  (
    .CI(Mcount_debounceCount_cy[18]),
    .LI(\Mcount_debounceCount_cy<19>_rt_669 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_debounceCount_cy<20>  (
    .CI(Mcount_debounceCount_cy[19]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<20>_rt_670 ),
    .O(Mcount_debounceCount_cy[20])
  );
  XORCY   \Mcount_debounceCount_xor<20>  (
    .CI(Mcount_debounceCount_cy[19]),
    .LI(\Mcount_debounceCount_cy<20>_rt_670 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_debounceCount_cy<21>  (
    .CI(Mcount_debounceCount_cy[20]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<21>_rt_671 ),
    .O(Mcount_debounceCount_cy[21])
  );
  XORCY   \Mcount_debounceCount_xor<21>  (
    .CI(Mcount_debounceCount_cy[20]),
    .LI(\Mcount_debounceCount_cy<21>_rt_671 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_debounceCount_cy<22>  (
    .CI(Mcount_debounceCount_cy[21]),
    .DI(\c/Hz1 [26]),
    .S(\Mcount_debounceCount_cy<22>_rt_672 ),
    .O(Mcount_debounceCount_cy[22])
  );
  XORCY   \Mcount_debounceCount_xor<22>  (
    .CI(Mcount_debounceCount_cy[21]),
    .LI(\Mcount_debounceCount_cy<22>_rt_672 ),
    .O(Result[22])
  );
  XORCY   \Mcount_debounceCount_xor<23>  (
    .CI(Mcount_debounceCount_cy[22]),
    .LI(\Mcount_debounceCount_xor<23>_rt_758 ),
    .O(Result[23])
  );
  XORCY   \c/Mcount_Hz1_xor<25>  (
    .CI(\c/Mcount_Hz1_cy [24]),
    .LI(\c/Mcount_Hz1_xor<25>_rt_759 ),
    .O(\c/Result<25>3 )
  );
  XORCY   \c/Mcount_Hz1_xor<24>  (
    .CI(\c/Mcount_Hz1_cy [23]),
    .LI(\c/Mcount_Hz1_cy<24>_rt_673 ),
    .O(\c/Result<24>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<24>  (
    .CI(\c/Mcount_Hz1_cy [23]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<24>_rt_673 ),
    .O(\c/Mcount_Hz1_cy [24])
  );
  XORCY   \c/Mcount_Hz1_xor<23>  (
    .CI(\c/Mcount_Hz1_cy [22]),
    .LI(\c/Mcount_Hz1_cy<23>_rt_674 ),
    .O(\c/Result<23>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<23>  (
    .CI(\c/Mcount_Hz1_cy [22]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<23>_rt_674 ),
    .O(\c/Mcount_Hz1_cy [23])
  );
  XORCY   \c/Mcount_Hz1_xor<22>  (
    .CI(\c/Mcount_Hz1_cy [21]),
    .LI(\c/Mcount_Hz1_cy<22>_rt_675 ),
    .O(\c/Result<22>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<22>  (
    .CI(\c/Mcount_Hz1_cy [21]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<22>_rt_675 ),
    .O(\c/Mcount_Hz1_cy [22])
  );
  XORCY   \c/Mcount_Hz1_xor<21>  (
    .CI(\c/Mcount_Hz1_cy [20]),
    .LI(\c/Mcount_Hz1_cy<21>_rt_676 ),
    .O(\c/Result<21>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<21>  (
    .CI(\c/Mcount_Hz1_cy [20]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<21>_rt_676 ),
    .O(\c/Mcount_Hz1_cy [21])
  );
  XORCY   \c/Mcount_Hz1_xor<20>  (
    .CI(\c/Mcount_Hz1_cy [19]),
    .LI(\c/Mcount_Hz1_cy<20>_rt_677 ),
    .O(\c/Result<20>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<20>  (
    .CI(\c/Mcount_Hz1_cy [19]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<20>_rt_677 ),
    .O(\c/Mcount_Hz1_cy [20])
  );
  XORCY   \c/Mcount_Hz1_xor<19>  (
    .CI(\c/Mcount_Hz1_cy [18]),
    .LI(\c/Mcount_Hz1_cy<19>_rt_678 ),
    .O(\c/Result<19>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<19>  (
    .CI(\c/Mcount_Hz1_cy [18]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<19>_rt_678 ),
    .O(\c/Mcount_Hz1_cy [19])
  );
  XORCY   \c/Mcount_Hz1_xor<18>  (
    .CI(\c/Mcount_Hz1_cy [17]),
    .LI(\c/Mcount_Hz1_cy<18>_rt_679 ),
    .O(\c/Result<18>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<18>  (
    .CI(\c/Mcount_Hz1_cy [17]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<18>_rt_679 ),
    .O(\c/Mcount_Hz1_cy [18])
  );
  XORCY   \c/Mcount_Hz1_xor<17>  (
    .CI(\c/Mcount_Hz1_cy [16]),
    .LI(\c/Mcount_Hz1_cy<17>_rt_680 ),
    .O(\c/Result<17>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<17>  (
    .CI(\c/Mcount_Hz1_cy [16]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<17>_rt_680 ),
    .O(\c/Mcount_Hz1_cy [17])
  );
  XORCY   \c/Mcount_Hz1_xor<16>  (
    .CI(\c/Mcount_Hz1_cy [15]),
    .LI(\c/Mcount_Hz1_cy<16>_rt_681 ),
    .O(\c/Result<16>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<16>  (
    .CI(\c/Mcount_Hz1_cy [15]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<16>_rt_681 ),
    .O(\c/Mcount_Hz1_cy [16])
  );
  XORCY   \c/Mcount_Hz1_xor<15>  (
    .CI(\c/Mcount_Hz1_cy [14]),
    .LI(\c/Mcount_Hz1_cy<15>_rt_682 ),
    .O(\c/Result<15>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<15>  (
    .CI(\c/Mcount_Hz1_cy [14]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<15>_rt_682 ),
    .O(\c/Mcount_Hz1_cy [15])
  );
  XORCY   \c/Mcount_Hz1_xor<14>  (
    .CI(\c/Mcount_Hz1_cy [13]),
    .LI(\c/Mcount_Hz1_cy<14>_rt_683 ),
    .O(\c/Result<14>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<14>  (
    .CI(\c/Mcount_Hz1_cy [13]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<14>_rt_683 ),
    .O(\c/Mcount_Hz1_cy [14])
  );
  XORCY   \c/Mcount_Hz1_xor<13>  (
    .CI(\c/Mcount_Hz1_cy [12]),
    .LI(\c/Mcount_Hz1_cy<13>_rt_684 ),
    .O(\c/Result<13>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<13>  (
    .CI(\c/Mcount_Hz1_cy [12]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<13>_rt_684 ),
    .O(\c/Mcount_Hz1_cy [13])
  );
  XORCY   \c/Mcount_Hz1_xor<12>  (
    .CI(\c/Mcount_Hz1_cy [11]),
    .LI(\c/Mcount_Hz1_cy<12>_rt_685 ),
    .O(\c/Result<12>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<12>  (
    .CI(\c/Mcount_Hz1_cy [11]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<12>_rt_685 ),
    .O(\c/Mcount_Hz1_cy [12])
  );
  XORCY   \c/Mcount_Hz1_xor<11>  (
    .CI(\c/Mcount_Hz1_cy [10]),
    .LI(\c/Mcount_Hz1_cy<11>_rt_686 ),
    .O(\c/Result<11>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<11>  (
    .CI(\c/Mcount_Hz1_cy [10]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<11>_rt_686 ),
    .O(\c/Mcount_Hz1_cy [11])
  );
  XORCY   \c/Mcount_Hz1_xor<10>  (
    .CI(\c/Mcount_Hz1_cy [9]),
    .LI(\c/Mcount_Hz1_cy<10>_rt_687 ),
    .O(\c/Result<10>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<10>  (
    .CI(\c/Mcount_Hz1_cy [9]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<10>_rt_687 ),
    .O(\c/Mcount_Hz1_cy [10])
  );
  XORCY   \c/Mcount_Hz1_xor<9>  (
    .CI(\c/Mcount_Hz1_cy [8]),
    .LI(\c/Mcount_Hz1_cy<9>_rt_688 ),
    .O(\c/Result<9>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<9>  (
    .CI(\c/Mcount_Hz1_cy [8]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<9>_rt_688 ),
    .O(\c/Mcount_Hz1_cy [9])
  );
  XORCY   \c/Mcount_Hz1_xor<8>  (
    .CI(\c/Mcount_Hz1_cy [7]),
    .LI(\c/Mcount_Hz1_cy<8>_rt_689 ),
    .O(\c/Result<8>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<8>  (
    .CI(\c/Mcount_Hz1_cy [7]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<8>_rt_689 ),
    .O(\c/Mcount_Hz1_cy [8])
  );
  XORCY   \c/Mcount_Hz1_xor<7>  (
    .CI(\c/Mcount_Hz1_cy [6]),
    .LI(\c/Mcount_Hz1_cy<7>_rt_690 ),
    .O(\c/Result<7>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<7>  (
    .CI(\c/Mcount_Hz1_cy [6]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<7>_rt_690 ),
    .O(\c/Mcount_Hz1_cy [7])
  );
  XORCY   \c/Mcount_Hz1_xor<6>  (
    .CI(\c/Mcount_Hz1_cy [5]),
    .LI(\c/Mcount_Hz1_cy<6>_rt_691 ),
    .O(\c/Result<6>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<6>  (
    .CI(\c/Mcount_Hz1_cy [5]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<6>_rt_691 ),
    .O(\c/Mcount_Hz1_cy [6])
  );
  XORCY   \c/Mcount_Hz1_xor<5>  (
    .CI(\c/Mcount_Hz1_cy [4]),
    .LI(\c/Mcount_Hz1_cy<5>_rt_692 ),
    .O(\c/Result<5>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<5>  (
    .CI(\c/Mcount_Hz1_cy [4]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<5>_rt_692 ),
    .O(\c/Mcount_Hz1_cy [5])
  );
  XORCY   \c/Mcount_Hz1_xor<4>  (
    .CI(\c/Mcount_Hz1_cy [3]),
    .LI(\c/Mcount_Hz1_cy<4>_rt_693 ),
    .O(\c/Result<4>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<4>  (
    .CI(\c/Mcount_Hz1_cy [3]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<4>_rt_693 ),
    .O(\c/Mcount_Hz1_cy [4])
  );
  XORCY   \c/Mcount_Hz1_xor<3>  (
    .CI(\c/Mcount_Hz1_cy [2]),
    .LI(\c/Mcount_Hz1_cy<3>_rt_694 ),
    .O(\c/Result<3>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<3>  (
    .CI(\c/Mcount_Hz1_cy [2]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<3>_rt_694 ),
    .O(\c/Mcount_Hz1_cy [3])
  );
  XORCY   \c/Mcount_Hz1_xor<2>  (
    .CI(\c/Mcount_Hz1_cy [1]),
    .LI(\c/Mcount_Hz1_cy<2>_rt_695 ),
    .O(\c/Result<2>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<2>  (
    .CI(\c/Mcount_Hz1_cy [1]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<2>_rt_695 ),
    .O(\c/Mcount_Hz1_cy [2])
  );
  XORCY   \c/Mcount_Hz1_xor<1>  (
    .CI(\c/Mcount_Hz1_cy [0]),
    .LI(\c/Mcount_Hz1_cy<1>_rt_696 ),
    .O(\c/Result<1>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<1>  (
    .CI(\c/Mcount_Hz1_cy [0]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz1_cy<1>_rt_696 ),
    .O(\c/Mcount_Hz1_cy [1])
  );
  XORCY   \c/Mcount_Hz1_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(\c/Mcount_Hz1_lut [0]),
    .O(\c/Result<0>3 )
  );
  MUXCY   \c/Mcount_Hz1_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(\c/Mcount_Hz1_lut [0]),
    .O(\c/Mcount_Hz1_cy [0])
  );
  XORCY   \c/Mcount_Hz3_xor<16>  (
    .CI(\c/Mcount_Hz3_cy [15]),
    .LI(\c/Mcount_Hz3_xor<16>_rt_760 ),
    .O(\c/Result<16>2 )
  );
  XORCY   \c/Mcount_Hz3_xor<15>  (
    .CI(\c/Mcount_Hz3_cy [14]),
    .LI(\c/Mcount_Hz3_cy<15>_rt_697 ),
    .O(\c/Result<15>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<15>  (
    .CI(\c/Mcount_Hz3_cy [14]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<15>_rt_697 ),
    .O(\c/Mcount_Hz3_cy [15])
  );
  XORCY   \c/Mcount_Hz3_xor<14>  (
    .CI(\c/Mcount_Hz3_cy [13]),
    .LI(\c/Mcount_Hz3_cy<14>_rt_698 ),
    .O(\c/Result<14>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<14>  (
    .CI(\c/Mcount_Hz3_cy [13]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<14>_rt_698 ),
    .O(\c/Mcount_Hz3_cy [14])
  );
  XORCY   \c/Mcount_Hz3_xor<13>  (
    .CI(\c/Mcount_Hz3_cy [12]),
    .LI(\c/Mcount_Hz3_cy<13>_rt_699 ),
    .O(\c/Result<13>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<13>  (
    .CI(\c/Mcount_Hz3_cy [12]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<13>_rt_699 ),
    .O(\c/Mcount_Hz3_cy [13])
  );
  XORCY   \c/Mcount_Hz3_xor<12>  (
    .CI(\c/Mcount_Hz3_cy [11]),
    .LI(\c/Mcount_Hz3_cy<12>_rt_700 ),
    .O(\c/Result<12>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<12>  (
    .CI(\c/Mcount_Hz3_cy [11]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<12>_rt_700 ),
    .O(\c/Mcount_Hz3_cy [12])
  );
  XORCY   \c/Mcount_Hz3_xor<11>  (
    .CI(\c/Mcount_Hz3_cy [10]),
    .LI(\c/Mcount_Hz3_cy<11>_rt_701 ),
    .O(\c/Result<11>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<11>  (
    .CI(\c/Mcount_Hz3_cy [10]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<11>_rt_701 ),
    .O(\c/Mcount_Hz3_cy [11])
  );
  XORCY   \c/Mcount_Hz3_xor<10>  (
    .CI(\c/Mcount_Hz3_cy [9]),
    .LI(\c/Mcount_Hz3_cy<10>_rt_702 ),
    .O(\c/Result<10>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<10>  (
    .CI(\c/Mcount_Hz3_cy [9]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<10>_rt_702 ),
    .O(\c/Mcount_Hz3_cy [10])
  );
  XORCY   \c/Mcount_Hz3_xor<9>  (
    .CI(\c/Mcount_Hz3_cy [8]),
    .LI(\c/Mcount_Hz3_cy<9>_rt_703 ),
    .O(\c/Result<9>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<9>  (
    .CI(\c/Mcount_Hz3_cy [8]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<9>_rt_703 ),
    .O(\c/Mcount_Hz3_cy [9])
  );
  XORCY   \c/Mcount_Hz3_xor<8>  (
    .CI(\c/Mcount_Hz3_cy [7]),
    .LI(\c/Mcount_Hz3_cy<8>_rt_704 ),
    .O(\c/Result<8>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<8>  (
    .CI(\c/Mcount_Hz3_cy [7]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<8>_rt_704 ),
    .O(\c/Mcount_Hz3_cy [8])
  );
  XORCY   \c/Mcount_Hz3_xor<7>  (
    .CI(\c/Mcount_Hz3_cy [6]),
    .LI(\c/Mcount_Hz3_cy<7>_rt_705 ),
    .O(\c/Result<7>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<7>  (
    .CI(\c/Mcount_Hz3_cy [6]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<7>_rt_705 ),
    .O(\c/Mcount_Hz3_cy [7])
  );
  XORCY   \c/Mcount_Hz3_xor<6>  (
    .CI(\c/Mcount_Hz3_cy [5]),
    .LI(\c/Mcount_Hz3_cy<6>_rt_706 ),
    .O(\c/Result<6>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<6>  (
    .CI(\c/Mcount_Hz3_cy [5]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<6>_rt_706 ),
    .O(\c/Mcount_Hz3_cy [6])
  );
  XORCY   \c/Mcount_Hz3_xor<5>  (
    .CI(\c/Mcount_Hz3_cy [4]),
    .LI(\c/Mcount_Hz3_cy<5>_rt_707 ),
    .O(\c/Result<5>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<5>  (
    .CI(\c/Mcount_Hz3_cy [4]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<5>_rt_707 ),
    .O(\c/Mcount_Hz3_cy [5])
  );
  XORCY   \c/Mcount_Hz3_xor<4>  (
    .CI(\c/Mcount_Hz3_cy [3]),
    .LI(\c/Mcount_Hz3_cy<4>_rt_708 ),
    .O(\c/Result<4>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<4>  (
    .CI(\c/Mcount_Hz3_cy [3]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<4>_rt_708 ),
    .O(\c/Mcount_Hz3_cy [4])
  );
  XORCY   \c/Mcount_Hz3_xor<3>  (
    .CI(\c/Mcount_Hz3_cy [2]),
    .LI(\c/Mcount_Hz3_cy<3>_rt_709 ),
    .O(\c/Result<3>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<3>  (
    .CI(\c/Mcount_Hz3_cy [2]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<3>_rt_709 ),
    .O(\c/Mcount_Hz3_cy [3])
  );
  XORCY   \c/Mcount_Hz3_xor<2>  (
    .CI(\c/Mcount_Hz3_cy [1]),
    .LI(\c/Mcount_Hz3_cy<2>_rt_710 ),
    .O(\c/Result<2>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<2>  (
    .CI(\c/Mcount_Hz3_cy [1]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<2>_rt_710 ),
    .O(\c/Mcount_Hz3_cy [2])
  );
  XORCY   \c/Mcount_Hz3_xor<1>  (
    .CI(\c/Mcount_Hz3_cy [0]),
    .LI(\c/Mcount_Hz3_cy<1>_rt_711 ),
    .O(\c/Result<1>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<1>  (
    .CI(\c/Mcount_Hz3_cy [0]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz3_cy<1>_rt_711 ),
    .O(\c/Mcount_Hz3_cy [1])
  );
  XORCY   \c/Mcount_Hz3_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(\c/Mcount_Hz3_lut [0]),
    .O(\c/Result<0>2 )
  );
  MUXCY   \c/Mcount_Hz3_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(\c/Mcount_Hz3_lut [0]),
    .O(\c/Mcount_Hz3_cy [0])
  );
  XORCY   \c/Mcount_Hz4_xor<23>  (
    .CI(\c/Mcount_Hz4_cy [22]),
    .LI(\c/Mcount_Hz4_xor<23>_rt_761 ),
    .O(\c/Result<23>1 )
  );
  XORCY   \c/Mcount_Hz4_xor<22>  (
    .CI(\c/Mcount_Hz4_cy [21]),
    .LI(\c/Mcount_Hz4_cy<22>_rt_712 ),
    .O(\c/Result<22>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<22>  (
    .CI(\c/Mcount_Hz4_cy [21]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<22>_rt_712 ),
    .O(\c/Mcount_Hz4_cy [22])
  );
  XORCY   \c/Mcount_Hz4_xor<21>  (
    .CI(\c/Mcount_Hz4_cy [20]),
    .LI(\c/Mcount_Hz4_cy<21>_rt_713 ),
    .O(\c/Result<21>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<21>  (
    .CI(\c/Mcount_Hz4_cy [20]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<21>_rt_713 ),
    .O(\c/Mcount_Hz4_cy [21])
  );
  XORCY   \c/Mcount_Hz4_xor<20>  (
    .CI(\c/Mcount_Hz4_cy [19]),
    .LI(\c/Mcount_Hz4_cy<20>_rt_714 ),
    .O(\c/Result<20>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<20>  (
    .CI(\c/Mcount_Hz4_cy [19]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<20>_rt_714 ),
    .O(\c/Mcount_Hz4_cy [20])
  );
  XORCY   \c/Mcount_Hz4_xor<19>  (
    .CI(\c/Mcount_Hz4_cy [18]),
    .LI(\c/Mcount_Hz4_cy<19>_rt_715 ),
    .O(\c/Result<19>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<19>  (
    .CI(\c/Mcount_Hz4_cy [18]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<19>_rt_715 ),
    .O(\c/Mcount_Hz4_cy [19])
  );
  XORCY   \c/Mcount_Hz4_xor<18>  (
    .CI(\c/Mcount_Hz4_cy [17]),
    .LI(\c/Mcount_Hz4_cy<18>_rt_716 ),
    .O(\c/Result<18>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<18>  (
    .CI(\c/Mcount_Hz4_cy [17]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<18>_rt_716 ),
    .O(\c/Mcount_Hz4_cy [18])
  );
  XORCY   \c/Mcount_Hz4_xor<17>  (
    .CI(\c/Mcount_Hz4_cy [16]),
    .LI(\c/Mcount_Hz4_cy<17>_rt_717 ),
    .O(\c/Result<17>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<17>  (
    .CI(\c/Mcount_Hz4_cy [16]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<17>_rt_717 ),
    .O(\c/Mcount_Hz4_cy [17])
  );
  XORCY   \c/Mcount_Hz4_xor<16>  (
    .CI(\c/Mcount_Hz4_cy [15]),
    .LI(\c/Mcount_Hz4_cy<16>_rt_718 ),
    .O(\c/Result<16>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<16>  (
    .CI(\c/Mcount_Hz4_cy [15]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<16>_rt_718 ),
    .O(\c/Mcount_Hz4_cy [16])
  );
  XORCY   \c/Mcount_Hz4_xor<15>  (
    .CI(\c/Mcount_Hz4_cy [14]),
    .LI(\c/Mcount_Hz4_cy<15>_rt_719 ),
    .O(\c/Result<15>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<15>  (
    .CI(\c/Mcount_Hz4_cy [14]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<15>_rt_719 ),
    .O(\c/Mcount_Hz4_cy [15])
  );
  XORCY   \c/Mcount_Hz4_xor<14>  (
    .CI(\c/Mcount_Hz4_cy [13]),
    .LI(\c/Mcount_Hz4_cy<14>_rt_720 ),
    .O(\c/Result<14>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<14>  (
    .CI(\c/Mcount_Hz4_cy [13]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<14>_rt_720 ),
    .O(\c/Mcount_Hz4_cy [14])
  );
  XORCY   \c/Mcount_Hz4_xor<13>  (
    .CI(\c/Mcount_Hz4_cy [12]),
    .LI(\c/Mcount_Hz4_cy<13>_rt_721 ),
    .O(\c/Result<13>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<13>  (
    .CI(\c/Mcount_Hz4_cy [12]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<13>_rt_721 ),
    .O(\c/Mcount_Hz4_cy [13])
  );
  XORCY   \c/Mcount_Hz4_xor<12>  (
    .CI(\c/Mcount_Hz4_cy [11]),
    .LI(\c/Mcount_Hz4_cy<12>_rt_722 ),
    .O(\c/Result<12>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<12>  (
    .CI(\c/Mcount_Hz4_cy [11]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<12>_rt_722 ),
    .O(\c/Mcount_Hz4_cy [12])
  );
  XORCY   \c/Mcount_Hz4_xor<11>  (
    .CI(\c/Mcount_Hz4_cy [10]),
    .LI(\c/Mcount_Hz4_cy<11>_rt_723 ),
    .O(\c/Result<11>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<11>  (
    .CI(\c/Mcount_Hz4_cy [10]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<11>_rt_723 ),
    .O(\c/Mcount_Hz4_cy [11])
  );
  XORCY   \c/Mcount_Hz4_xor<10>  (
    .CI(\c/Mcount_Hz4_cy [9]),
    .LI(\c/Mcount_Hz4_cy<10>_rt_724 ),
    .O(\c/Result<10>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<10>  (
    .CI(\c/Mcount_Hz4_cy [9]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<10>_rt_724 ),
    .O(\c/Mcount_Hz4_cy [10])
  );
  XORCY   \c/Mcount_Hz4_xor<9>  (
    .CI(\c/Mcount_Hz4_cy [8]),
    .LI(\c/Mcount_Hz4_cy<9>_rt_725 ),
    .O(\c/Result<9>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<9>  (
    .CI(\c/Mcount_Hz4_cy [8]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<9>_rt_725 ),
    .O(\c/Mcount_Hz4_cy [9])
  );
  XORCY   \c/Mcount_Hz4_xor<8>  (
    .CI(\c/Mcount_Hz4_cy [7]),
    .LI(\c/Mcount_Hz4_cy<8>_rt_726 ),
    .O(\c/Result<8>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<8>  (
    .CI(\c/Mcount_Hz4_cy [7]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<8>_rt_726 ),
    .O(\c/Mcount_Hz4_cy [8])
  );
  XORCY   \c/Mcount_Hz4_xor<7>  (
    .CI(\c/Mcount_Hz4_cy [6]),
    .LI(\c/Mcount_Hz4_cy<7>_rt_727 ),
    .O(\c/Result<7>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<7>  (
    .CI(\c/Mcount_Hz4_cy [6]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<7>_rt_727 ),
    .O(\c/Mcount_Hz4_cy [7])
  );
  XORCY   \c/Mcount_Hz4_xor<6>  (
    .CI(\c/Mcount_Hz4_cy [5]),
    .LI(\c/Mcount_Hz4_cy<6>_rt_728 ),
    .O(\c/Result<6>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<6>  (
    .CI(\c/Mcount_Hz4_cy [5]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<6>_rt_728 ),
    .O(\c/Mcount_Hz4_cy [6])
  );
  XORCY   \c/Mcount_Hz4_xor<5>  (
    .CI(\c/Mcount_Hz4_cy [4]),
    .LI(\c/Mcount_Hz4_cy<5>_rt_729 ),
    .O(\c/Result<5>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<5>  (
    .CI(\c/Mcount_Hz4_cy [4]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<5>_rt_729 ),
    .O(\c/Mcount_Hz4_cy [5])
  );
  XORCY   \c/Mcount_Hz4_xor<4>  (
    .CI(\c/Mcount_Hz4_cy [3]),
    .LI(\c/Mcount_Hz4_cy<4>_rt_730 ),
    .O(\c/Result<4>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<4>  (
    .CI(\c/Mcount_Hz4_cy [3]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<4>_rt_730 ),
    .O(\c/Mcount_Hz4_cy [4])
  );
  XORCY   \c/Mcount_Hz4_xor<3>  (
    .CI(\c/Mcount_Hz4_cy [2]),
    .LI(\c/Mcount_Hz4_cy<3>_rt_731 ),
    .O(\c/Result<3>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<3>  (
    .CI(\c/Mcount_Hz4_cy [2]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<3>_rt_731 ),
    .O(\c/Mcount_Hz4_cy [3])
  );
  XORCY   \c/Mcount_Hz4_xor<2>  (
    .CI(\c/Mcount_Hz4_cy [1]),
    .LI(\c/Mcount_Hz4_cy<2>_rt_732 ),
    .O(\c/Result<2>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<2>  (
    .CI(\c/Mcount_Hz4_cy [1]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<2>_rt_732 ),
    .O(\c/Mcount_Hz4_cy [2])
  );
  XORCY   \c/Mcount_Hz4_xor<1>  (
    .CI(\c/Mcount_Hz4_cy [0]),
    .LI(\c/Mcount_Hz4_cy<1>_rt_733 ),
    .O(\c/Result<1>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<1>  (
    .CI(\c/Mcount_Hz4_cy [0]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz4_cy<1>_rt_733 ),
    .O(\c/Mcount_Hz4_cy [1])
  );
  XORCY   \c/Mcount_Hz4_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(\c/Mcount_Hz4_lut [0]),
    .O(\c/Result<0>1 )
  );
  MUXCY   \c/Mcount_Hz4_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(\c/Mcount_Hz4_lut [0]),
    .O(\c/Mcount_Hz4_cy [0])
  );
  XORCY   \c/Mcount_Hz2_xor<24>  (
    .CI(\c/Mcount_Hz2_cy [23]),
    .LI(\c/Mcount_Hz2_xor<24>_rt_762 ),
    .O(\c/Result [24])
  );
  XORCY   \c/Mcount_Hz2_xor<23>  (
    .CI(\c/Mcount_Hz2_cy [22]),
    .LI(\c/Mcount_Hz2_cy<23>_rt_734 ),
    .O(\c/Result [23])
  );
  MUXCY   \c/Mcount_Hz2_cy<23>  (
    .CI(\c/Mcount_Hz2_cy [22]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<23>_rt_734 ),
    .O(\c/Mcount_Hz2_cy [23])
  );
  XORCY   \c/Mcount_Hz2_xor<22>  (
    .CI(\c/Mcount_Hz2_cy [21]),
    .LI(\c/Mcount_Hz2_cy<22>_rt_735 ),
    .O(\c/Result [22])
  );
  MUXCY   \c/Mcount_Hz2_cy<22>  (
    .CI(\c/Mcount_Hz2_cy [21]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<22>_rt_735 ),
    .O(\c/Mcount_Hz2_cy [22])
  );
  XORCY   \c/Mcount_Hz2_xor<21>  (
    .CI(\c/Mcount_Hz2_cy [20]),
    .LI(\c/Mcount_Hz2_cy<21>_rt_736 ),
    .O(\c/Result [21])
  );
  MUXCY   \c/Mcount_Hz2_cy<21>  (
    .CI(\c/Mcount_Hz2_cy [20]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<21>_rt_736 ),
    .O(\c/Mcount_Hz2_cy [21])
  );
  XORCY   \c/Mcount_Hz2_xor<20>  (
    .CI(\c/Mcount_Hz2_cy [19]),
    .LI(\c/Mcount_Hz2_cy<20>_rt_737 ),
    .O(\c/Result [20])
  );
  MUXCY   \c/Mcount_Hz2_cy<20>  (
    .CI(\c/Mcount_Hz2_cy [19]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<20>_rt_737 ),
    .O(\c/Mcount_Hz2_cy [20])
  );
  XORCY   \c/Mcount_Hz2_xor<19>  (
    .CI(\c/Mcount_Hz2_cy [18]),
    .LI(\c/Mcount_Hz2_cy<19>_rt_738 ),
    .O(\c/Result [19])
  );
  MUXCY   \c/Mcount_Hz2_cy<19>  (
    .CI(\c/Mcount_Hz2_cy [18]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<19>_rt_738 ),
    .O(\c/Mcount_Hz2_cy [19])
  );
  XORCY   \c/Mcount_Hz2_xor<18>  (
    .CI(\c/Mcount_Hz2_cy [17]),
    .LI(\c/Mcount_Hz2_cy<18>_rt_739 ),
    .O(\c/Result [18])
  );
  MUXCY   \c/Mcount_Hz2_cy<18>  (
    .CI(\c/Mcount_Hz2_cy [17]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<18>_rt_739 ),
    .O(\c/Mcount_Hz2_cy [18])
  );
  XORCY   \c/Mcount_Hz2_xor<17>  (
    .CI(\c/Mcount_Hz2_cy [16]),
    .LI(\c/Mcount_Hz2_cy<17>_rt_740 ),
    .O(\c/Result [17])
  );
  MUXCY   \c/Mcount_Hz2_cy<17>  (
    .CI(\c/Mcount_Hz2_cy [16]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<17>_rt_740 ),
    .O(\c/Mcount_Hz2_cy [17])
  );
  XORCY   \c/Mcount_Hz2_xor<16>  (
    .CI(\c/Mcount_Hz2_cy [15]),
    .LI(\c/Mcount_Hz2_cy<16>_rt_741 ),
    .O(\c/Result [16])
  );
  MUXCY   \c/Mcount_Hz2_cy<16>  (
    .CI(\c/Mcount_Hz2_cy [15]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<16>_rt_741 ),
    .O(\c/Mcount_Hz2_cy [16])
  );
  XORCY   \c/Mcount_Hz2_xor<15>  (
    .CI(\c/Mcount_Hz2_cy [14]),
    .LI(\c/Mcount_Hz2_cy<15>_rt_742 ),
    .O(\c/Result [15])
  );
  MUXCY   \c/Mcount_Hz2_cy<15>  (
    .CI(\c/Mcount_Hz2_cy [14]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<15>_rt_742 ),
    .O(\c/Mcount_Hz2_cy [15])
  );
  XORCY   \c/Mcount_Hz2_xor<14>  (
    .CI(\c/Mcount_Hz2_cy [13]),
    .LI(\c/Mcount_Hz2_cy<14>_rt_743 ),
    .O(\c/Result [14])
  );
  MUXCY   \c/Mcount_Hz2_cy<14>  (
    .CI(\c/Mcount_Hz2_cy [13]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<14>_rt_743 ),
    .O(\c/Mcount_Hz2_cy [14])
  );
  XORCY   \c/Mcount_Hz2_xor<13>  (
    .CI(\c/Mcount_Hz2_cy [12]),
    .LI(\c/Mcount_Hz2_cy<13>_rt_744 ),
    .O(\c/Result [13])
  );
  MUXCY   \c/Mcount_Hz2_cy<13>  (
    .CI(\c/Mcount_Hz2_cy [12]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<13>_rt_744 ),
    .O(\c/Mcount_Hz2_cy [13])
  );
  XORCY   \c/Mcount_Hz2_xor<12>  (
    .CI(\c/Mcount_Hz2_cy [11]),
    .LI(\c/Mcount_Hz2_cy<12>_rt_745 ),
    .O(\c/Result [12])
  );
  MUXCY   \c/Mcount_Hz2_cy<12>  (
    .CI(\c/Mcount_Hz2_cy [11]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<12>_rt_745 ),
    .O(\c/Mcount_Hz2_cy [12])
  );
  XORCY   \c/Mcount_Hz2_xor<11>  (
    .CI(\c/Mcount_Hz2_cy [10]),
    .LI(\c/Mcount_Hz2_cy<11>_rt_746 ),
    .O(\c/Result [11])
  );
  MUXCY   \c/Mcount_Hz2_cy<11>  (
    .CI(\c/Mcount_Hz2_cy [10]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<11>_rt_746 ),
    .O(\c/Mcount_Hz2_cy [11])
  );
  XORCY   \c/Mcount_Hz2_xor<10>  (
    .CI(\c/Mcount_Hz2_cy [9]),
    .LI(\c/Mcount_Hz2_cy<10>_rt_747 ),
    .O(\c/Result [10])
  );
  MUXCY   \c/Mcount_Hz2_cy<10>  (
    .CI(\c/Mcount_Hz2_cy [9]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<10>_rt_747 ),
    .O(\c/Mcount_Hz2_cy [10])
  );
  XORCY   \c/Mcount_Hz2_xor<9>  (
    .CI(\c/Mcount_Hz2_cy [8]),
    .LI(\c/Mcount_Hz2_cy<9>_rt_748 ),
    .O(\c/Result [9])
  );
  MUXCY   \c/Mcount_Hz2_cy<9>  (
    .CI(\c/Mcount_Hz2_cy [8]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<9>_rt_748 ),
    .O(\c/Mcount_Hz2_cy [9])
  );
  XORCY   \c/Mcount_Hz2_xor<8>  (
    .CI(\c/Mcount_Hz2_cy [7]),
    .LI(\c/Mcount_Hz2_cy<8>_rt_749 ),
    .O(\c/Result [8])
  );
  MUXCY   \c/Mcount_Hz2_cy<8>  (
    .CI(\c/Mcount_Hz2_cy [7]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<8>_rt_749 ),
    .O(\c/Mcount_Hz2_cy [8])
  );
  XORCY   \c/Mcount_Hz2_xor<7>  (
    .CI(\c/Mcount_Hz2_cy [6]),
    .LI(\c/Mcount_Hz2_cy<7>_rt_750 ),
    .O(\c/Result [7])
  );
  MUXCY   \c/Mcount_Hz2_cy<7>  (
    .CI(\c/Mcount_Hz2_cy [6]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<7>_rt_750 ),
    .O(\c/Mcount_Hz2_cy [7])
  );
  XORCY   \c/Mcount_Hz2_xor<6>  (
    .CI(\c/Mcount_Hz2_cy [5]),
    .LI(\c/Mcount_Hz2_cy<6>_rt_751 ),
    .O(\c/Result [6])
  );
  MUXCY   \c/Mcount_Hz2_cy<6>  (
    .CI(\c/Mcount_Hz2_cy [5]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<6>_rt_751 ),
    .O(\c/Mcount_Hz2_cy [6])
  );
  XORCY   \c/Mcount_Hz2_xor<5>  (
    .CI(\c/Mcount_Hz2_cy [4]),
    .LI(\c/Mcount_Hz2_cy<5>_rt_752 ),
    .O(\c/Result [5])
  );
  MUXCY   \c/Mcount_Hz2_cy<5>  (
    .CI(\c/Mcount_Hz2_cy [4]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<5>_rt_752 ),
    .O(\c/Mcount_Hz2_cy [5])
  );
  XORCY   \c/Mcount_Hz2_xor<4>  (
    .CI(\c/Mcount_Hz2_cy [3]),
    .LI(\c/Mcount_Hz2_cy<4>_rt_753 ),
    .O(\c/Result [4])
  );
  MUXCY   \c/Mcount_Hz2_cy<4>  (
    .CI(\c/Mcount_Hz2_cy [3]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<4>_rt_753 ),
    .O(\c/Mcount_Hz2_cy [4])
  );
  XORCY   \c/Mcount_Hz2_xor<3>  (
    .CI(\c/Mcount_Hz2_cy [2]),
    .LI(\c/Mcount_Hz2_cy<3>_rt_754 ),
    .O(\c/Result [3])
  );
  MUXCY   \c/Mcount_Hz2_cy<3>  (
    .CI(\c/Mcount_Hz2_cy [2]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<3>_rt_754 ),
    .O(\c/Mcount_Hz2_cy [3])
  );
  XORCY   \c/Mcount_Hz2_xor<2>  (
    .CI(\c/Mcount_Hz2_cy [1]),
    .LI(\c/Mcount_Hz2_cy<2>_rt_755 ),
    .O(\c/Result [2])
  );
  MUXCY   \c/Mcount_Hz2_cy<2>  (
    .CI(\c/Mcount_Hz2_cy [1]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<2>_rt_755 ),
    .O(\c/Mcount_Hz2_cy [2])
  );
  XORCY   \c/Mcount_Hz2_xor<1>  (
    .CI(\c/Mcount_Hz2_cy [0]),
    .LI(\c/Mcount_Hz2_cy<1>_rt_756 ),
    .O(\c/Result [1])
  );
  MUXCY   \c/Mcount_Hz2_cy<1>  (
    .CI(\c/Mcount_Hz2_cy [0]),
    .DI(\c/Hz1 [26]),
    .S(\c/Mcount_Hz2_cy<1>_rt_756 ),
    .O(\c/Mcount_Hz2_cy [1])
  );
  XORCY   \c/Mcount_Hz2_xor<0>  (
    .CI(\c/Hz1 [26]),
    .LI(\c/Mcount_Hz2_lut [0]),
    .O(\c/Result [0])
  );
  MUXCY   \c/Mcount_Hz2_cy<0>  (
    .CI(\c/Hz1 [26]),
    .DI(seg_7_OBUF_125),
    .S(\c/Mcount_Hz2_lut [0]),
    .O(\c/Mcount_Hz2_cy [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_6  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin6 ),
    .Q(\M/minutesCounter1Hz/countmin [6])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_5  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin5 ),
    .Q(\M/minutesCounter1Hz/countmin [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_4  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin4 ),
    .Q(\M/minutesCounter1Hz/countmin [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_3  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin3 ),
    .Q(\M/minutesCounter1Hz/countmin [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_2  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin2 ),
    .Q(\M/minutesCounter1Hz/countmin [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_1  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin1 ),
    .Q(\M/minutesCounter1Hz/countmin [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/minutesCounter1Hz/countmin_0  (
    .C(\M/clock_in_561 ),
    .CE(\M/minutesCounter1Hz/_n0021_inv_541 ),
    .CLR(btnRST_40),
    .D(\M/minutesCounter1Hz/Mcount_countmin ),
    .Q(\M/minutesCounter1Hz/countmin [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_6  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [6]),
    .Q(\M/minutesCount [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_5  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [5]),
    .Q(\M/minutesCount [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_4  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [4]),
    .Q(\M/minutesCount [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_3  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [3]),
    .Q(\M/minutesCount [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_2  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [2]),
    .Q(\M/minutesCount [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_1  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [1]),
    .Q(\M/minutesCount [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/minutesCount_0  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/minutesCounter1Hz/countmin [0]),
    .Q(\M/minutesCount [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_5  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [5]),
    .Q(\M/secondsCount [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_4  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [4]),
    .Q(\M/secondsCount [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_3  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [3]),
    .Q(\M/secondsCount [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_2  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [2]),
    .Q(\M/secondsCount [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_1  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [1]),
    .Q(\M/secondsCount [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/secondsCount_0  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/secondsCounter1Hz/count [0]),
    .Q(\M/secondsCount [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \M/clock_in  (
    .C(clk_BUFGP_0),
    .CE(\M/enableMaster_560 ),
    .D(\M/clock_in_clock1_MUX_58_o ),
    .Q(\M/clock_in_561 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_5  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<5> ),
    .Q(\M/secondsCounter1Hz/count [5])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_4  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<4> ),
    .Q(\M/secondsCounter1Hz/count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_3  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<3> ),
    .Q(\M/secondsCounter1Hz/count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_2  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<2> ),
    .Q(\M/secondsCounter1Hz/count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_1  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<1> ),
    .Q(\M/secondsCounter1Hz/count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \M/secondsCounter1Hz/count_0  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0043_inv ),
    .CLR(btnRST_40),
    .D(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<0> ),
    .Q(\M/secondsCounter1Hz/count [0])
  );
  FDRE   \M/secondsCounter1Hz/overflow_0  (
    .C(\M/clock_in_561 ),
    .CE(\M/secondsCounter1Hz/_n0047_inv1 ),
    .D(\M/secondsCounter1Hz/N11 ),
    .R(\M/secondsCounter1Hz/_n0036 ),
    .Q(\M/secondsCounter1Hz/overflow [0])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  btnS_btn2_OR_35_o1 (
    .I0(btn2_IBUF_3),
    .I1(btn3_IBUF_4),
    .I2(btnR_IBUF_1),
    .I3(btnS_IBUF_2),
    .O(btnS_btn2_OR_35_o)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mram__n035412 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .O(Mram__n0354)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mram__n0354111 (
    .I0(caseStatements[1]),
    .I1(caseStatements[0]),
    .O(Mram__n03541)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mram__n035421 (
    .I0(caseStatements[1]),
    .I1(caseStatements[0]),
    .O(Mram__n03542)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mram__n035431 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .O(Mram__n03543)
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \_n0230<4>1  (
    .I0(sseg_num_0_114),
    .I1(sseg_num_1_113),
    .I2(sseg_num_2_112),
    .I3(sseg_num_3_119),
    .O(seg_4_OBUF_128)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \secondsCount[5]_PWR_1_o_div_2_OUT<2>1  (
    .I0(\M/secondsCount [5]),
    .I1(\M/secondsCount [4]),
    .I2(\M/secondsCount [3]),
    .O(\secondsCount[5]_PWR_1_o_div_2_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \minutesCount[6]_PWR_1_o_div_4_OUT<3>1  (
    .I0(\M/minutesCount [6]),
    .I1(\M/minutesCount [5]),
    .I2(\M/minutesCount [4]),
    .O(\minutesCount[6]_PWR_1_o_div_4_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hD9C85140 ))
  Mmux__n018811 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .I2(minutes1[3]),
    .I3(seconds1[3]),
    .I4(minutes2[3]),
    .O(_n0188)
  );
  LUT4 #(
    .INIT ( 16'hFA8E ))
  \_n0230<3>1  (
    .I0(sseg_num_1_113),
    .I1(sseg_num_0_114),
    .I2(sseg_num_2_112),
    .I3(sseg_num_3_119),
    .O(seg_5_OBUF_127)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n017811 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .I2(seconds2[0]),
    .I3(minutes2[0]),
    .I4(minutes1[0]),
    .I5(seconds1[0]),
    .O(_n0178)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n024011 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .I2(seconds2[1]),
    .I3(minutes2[1]),
    .I4(minutes1[1]),
    .I5(seconds1[1]),
    .O(_n0240)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n029011 (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .I2(seconds2[2]),
    .I3(minutes2[2]),
    .I4(minutes1[2]),
    .I5(seconds1[2]),
    .O(_n0290)
  );
  LUT4 #(
    .INIT ( 16'hFA14 ))
  \_n0230<8>1  (
    .I0(sseg_num_1_113),
    .I1(sseg_num_0_114),
    .I2(sseg_num_2_112),
    .I3(sseg_num_3_119),
    .O(seg_0_OBUF_132)
  );
  LUT5 #(
    .INIT ( 32'h6D496664 ))
  \secondsCount[5]_PWR_1_o_div_2_OUT<0>1  (
    .I0(\M/secondsCount [3]),
    .I1(\M/secondsCount [5]),
    .I2(\M/secondsCount [2]),
    .I3(\M/secondsCount [1]),
    .I4(\M/secondsCount [4]),
    .O(\secondsCount[5]_PWR_1_o_div_2_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h9A18 ))
  \secondsCount[5]_PWR_1_o_mod_1/BUS_0006_INV_52_o1  (
    .I0(\M/secondsCount [4]),
    .I1(\M/secondsCount [3]),
    .I2(\M/secondsCount [5]),
    .I3(\M/secondsCount [2]),
    .O(\secondsCount[5]_PWR_1_o_mod_1/BUS_0006_INV_52_o )
  );
  LUT4 #(
    .INIT ( 16'hEE91 ))
  \_n0230<2>1  (
    .I0(sseg_num_2_112),
    .I1(sseg_num_1_113),
    .I2(sseg_num_0_114),
    .I3(sseg_num_3_119),
    .O(seg_6_OBUF_126)
  );
  LUT4 #(
    .INIT ( 16'h9A18 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0006_INV_175_o1  (
    .I0(\M/minutesCount [5]),
    .I1(\M/minutesCount [4]),
    .I2(\M/minutesCount [6]),
    .I3(\M/minutesCount [3]),
    .O(\minutesCount[6]_PWR_1_o_mod_3/BUS_0006_INV_175_o )
  );
  LUT4 #(
    .INIT ( 16'hA8AC ))
  \_n0230<6>1  (
    .I0(sseg_num_3_119),
    .I1(sseg_num_1_113),
    .I2(sseg_num_2_112),
    .I3(sseg_num_0_114),
    .O(seg_2_OBUF_130)
  );
  LUT4 #(
    .INIT ( 16'hCAE8 ))
  \_n0230<7>1  (
    .I0(sseg_num_2_112),
    .I1(sseg_num_3_119),
    .I2(sseg_num_1_113),
    .I3(sseg_num_0_114),
    .O(seg_1_OBUF_131)
  );
  LUT6 #(
    .INIT ( 64'h9699696666966966 ))
  \secondsCount[5]_PWR_1_o_mod_1/Mmux_o41  (
    .I0(\M/secondsCount [3]),
    .I1(\secondsCount[5]_PWR_1_o_div_2_OUT<2> ),
    .I2(\M/secondsCount [2]),
    .I3(\secondsCount[5]_PWR_1_o_mod_1/BUS_0006_INV_52_o ),
    .I4(\secondsCount[5]_PWR_1_o_div_2_OUT<0> ),
    .I5(\M/secondsCount [1]),
    .O(\secondsCount[5]_PWR_1_o_mod_1_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<4>11  (
    .I0(\M/minutesCounter1Hz/countmin [4]),
    .I1(\M/minutesCounter1Hz/countmin [0]),
    .I2(\M/minutesCounter1Hz/countmin [1]),
    .I3(\M/minutesCounter1Hz/countmin [2]),
    .I4(\M/minutesCounter1Hz/countmin [3]),
    .O(\M/minutesCounter1Hz/Mcount_countmin4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<3>11  (
    .I0(\M/minutesCounter1Hz/countmin [3]),
    .I1(\M/minutesCounter1Hz/countmin [0]),
    .I2(\M/minutesCounter1Hz/countmin [1]),
    .I3(\M/minutesCounter1Hz/countmin [2]),
    .O(\M/minutesCounter1Hz/Mcount_countmin3 )
  );
  LUT4 #(
    .INIT ( 16'h66A8 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<2>11  (
    .I0(\M/minutesCounter1Hz/countmin [2]),
    .I1(\M/minutesCounter1Hz/countmin [0]),
    .I2(\M/minutesCounter1Hz/Mcount_countmin_xor<0>111 ),
    .I3(\M/minutesCounter1Hz/countmin [1]),
    .O(\M/minutesCounter1Hz/Mcount_countmin2 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<0>1111  (
    .I0(\M/minutesCounter1Hz/countmin [3]),
    .I1(\M/minutesCounter1Hz/countmin [5]),
    .I2(\M/minutesCounter1Hz/countmin [6]),
    .I3(\M/minutesCounter1Hz/countmin [4]),
    .O(\M/minutesCounter1Hz/Mcount_countmin_xor<0>111 )
  );
  LUT4 #(
    .INIT ( 16'h5545 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<0>11  (
    .I0(\M/minutesCounter1Hz/countmin [0]),
    .I1(\M/minutesCounter1Hz/Mcount_countmin_xor<0>111 ),
    .I2(\M/minutesCounter1Hz/countmin [2]),
    .I3(\M/minutesCounter1Hz/countmin [1]),
    .O(\M/minutesCounter1Hz/Mcount_countmin )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFEFF ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<5>1111  (
    .I0(\M/minutesCounter1Hz/countmin [0]),
    .I1(\M/minutesCounter1Hz/countmin [3]),
    .I2(\M/minutesCounter1Hz/countmin [4]),
    .I3(\M/minutesCounter1Hz/countmin [2]),
    .I4(\M/minutesCounter1Hz/countmin [1]),
    .O(\M/minutesCounter1Hz/Mcount_countmin_xor<5>111 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<1>11  (
    .I0(\M/minutesCounter1Hz/countmin [1]),
    .I1(\M/minutesCounter1Hz/countmin [0]),
    .O(\M/minutesCounter1Hz/Mcount_countmin1 )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \M/Mmux_clock_in_clock1_MUX_58_o11  (
    .I0(btnADJ_38),
    .I1(\c/clock2_6 ),
    .I2(\c/clock1_5 ),
    .O(\M/clock_in_clock1_MUX_58_o )
  );
  LUT6 #(
    .INIT ( 64'h6AAA2AAA6AAAAAAA ))
  \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT51  (
    .I0(\M/secondsCounter1Hz/count [4]),
    .I1(\M/secondsCounter1Hz/count [0]),
    .I2(\M/secondsCounter1Hz/count [1]),
    .I3(\M/secondsCounter1Hz/count [3]),
    .I4(\M/secondsCounter1Hz/count [2]),
    .I5(\M/secondsCounter1Hz/count [5]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h4666AAAAAAAAAAAA ))
  \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT41  (
    .I0(\M/secondsCounter1Hz/count [3]),
    .I1(\M/secondsCounter1Hz/count [2]),
    .I2(\M/secondsCounter1Hz/count [4]),
    .I3(\M/secondsCounter1Hz/count [5]),
    .I4(\M/secondsCounter1Hz/count [0]),
    .I5(\M/secondsCounter1Hz/count [1]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAA2AAAAAAA ))
  \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT61  (
    .I0(\M/secondsCounter1Hz/count [5]),
    .I1(\M/secondsCounter1Hz/count [0]),
    .I2(\M/secondsCounter1Hz/count [1]),
    .I3(\M/secondsCounter1Hz/count [3]),
    .I4(\M/secondsCounter1Hz/count [4]),
    .I5(\M/secondsCounter1Hz/count [2]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h7078787878787878 ))
  \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT31  (
    .I0(\M/secondsCounter1Hz/count [0]),
    .I1(\M/secondsCounter1Hz/count [1]),
    .I2(\M/secondsCounter1Hz/count [2]),
    .I3(\M/secondsCounter1Hz/count [3]),
    .I4(\M/secondsCounter1Hz/count [4]),
    .I5(\M/secondsCounter1Hz/count [5]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h2322 ))
  \M/secondsCounter1Hz/_n0047_inv12  (
    .I0(\M/enableSeconds_559 ),
    .I1(btnRST_40),
    .I2(\M/secondsCounter1Hz/count [0]),
    .I3(\M/secondsCounter1Hz/_n0047_inv11 ),
    .O(\M/secondsCounter1Hz/_n0047_inv1 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \M/secondsCounter1Hz/_n00361  (
    .I0(btnRST_40),
    .I1(\M/secondsCounter1Hz/count [0]),
    .I2(\M/secondsCounter1Hz/_n0047_inv11 ),
    .O(\M/secondsCounter1Hz/_n0036 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \M/secondsCounter1Hz/_n00381  (
    .I0(\M/secondsCounter1Hz/count [0]),
    .I1(btnRST_40),
    .I2(\M/secondsCounter1Hz/_n0047_inv11 ),
    .O(\M/secondsCounter1Hz/N11 )
  );
  LUT5 #(
    .INIT ( 32'h00800000 ))
  \M/secondsCounter1Hz/_n0047_inv111  (
    .I0(\M/secondsCounter1Hz/count [5]),
    .I1(\M/secondsCounter1Hz/count [4]),
    .I2(\M/secondsCounter1Hz/count [3]),
    .I3(\M/secondsCounter1Hz/count [2]),
    .I4(\M/secondsCounter1Hz/count [1]),
    .O(\M/secondsCounter1Hz/_n0047_inv11 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT21  (
    .I0(\M/secondsCounter1Hz/count [1]),
    .I1(\M/secondsCounter1Hz/count [0]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \debounceCount[31]_GND_1_o_equal_7_o<31>1  (
    .I0(debounceCount[12]),
    .I1(debounceCount[10]),
    .I2(debounceCount[19]),
    .I3(debounceCount[15]),
    .I4(debounceCount[23]),
    .I5(debounceCount[20]),
    .O(\debounceCount[31]_GND_1_o_equal_7_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \debounceCount[31]_GND_1_o_equal_7_o<31>2  (
    .I0(debounceCount[0]),
    .I1(debounceCount[1]),
    .I2(debounceCount[2]),
    .I3(debounceCount[3]),
    .I4(debounceCount[9]),
    .I5(debounceCount[7]),
    .O(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debounceCount[31]_GND_1_o_equal_7_o<31>3  (
    .I0(debounceCount[5]),
    .I1(debounceCount[4]),
    .I2(debounceCount[6]),
    .I3(debounceCount[8]),
    .I4(debounceCount[11]),
    .I5(debounceCount[13]),
    .O(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \debounceCount[31]_GND_1_o_equal_7_o<31>4  (
    .I0(debounceCount[16]),
    .I1(debounceCount[14]),
    .I2(debounceCount[17]),
    .I3(debounceCount[18]),
    .I4(debounceCount[21]),
    .I5(debounceCount[22]),
    .O(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>11  (
    .I0(caseStatements[2]),
    .I1(caseStatements[31]),
    .I2(caseStatements[3]),
    .I3(caseStatements[4]),
    .I4(caseStatements[5]),
    .I5(caseStatements[6]),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>11_577 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>12  (
    .I0(caseStatements[8]),
    .I1(caseStatements[7]),
    .I2(caseStatements[9]),
    .I3(caseStatements[11]),
    .I4(caseStatements[10]),
    .I5(caseStatements[12]),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>12_578 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>13  (
    .I0(caseStatements[14]),
    .I1(caseStatements[13]),
    .I2(caseStatements[16]),
    .I3(caseStatements[15]),
    .I4(caseStatements[17]),
    .I5(caseStatements[18]),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>13_579 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>14  (
    .I0(caseStatements[21]),
    .I1(caseStatements[19]),
    .I2(caseStatements[20]),
    .I3(caseStatements[22]),
    .I4(caseStatements[23]),
    .I5(caseStatements[24]),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>14_580 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>15  (
    .I0(caseStatements[26]),
    .I1(caseStatements[25]),
    .I2(caseStatements[27]),
    .I3(caseStatements[28]),
    .I4(caseStatements[30]),
    .I5(caseStatements[29]),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>15_581 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>16  (
    .I0(\caseStatements[31]_GND_1_o_equal_26_o<31>12_578 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>13_579 ),
    .I2(\caseStatements[31]_GND_1_o_equal_26_o<31>11_577 ),
    .I3(\caseStatements[31]_GND_1_o_equal_26_o<31>14_580 ),
    .I4(\caseStatements[31]_GND_1_o_equal_26_o<31>15_581 ),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>1 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>1  (
    .I0(\c/Hz1 [20]),
    .I1(\c/Hz1 [19]),
    .I2(\c/Hz1 [22]),
    .I3(\c/Hz1 [21]),
    .I4(\c/Hz1 [25]),
    .I5(\c/Hz1 [23]),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>2  (
    .I0(\c/Hz1 [12]),
    .I1(\c/Hz1 [7]),
    .I2(\c/Hz1 [14]),
    .I3(\c/Hz1 [13]),
    .I4(\c/Hz1 [17]),
    .I5(\c/Hz1 [15]),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o<31>1_586 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>3  (
    .I0(\c/Hz1 [1]),
    .I1(\c/Hz1 [0]),
    .I2(\c/Hz1 [2]),
    .I3(\c/Hz1 [3]),
    .I4(\c/Hz1 [4]),
    .I5(\c/Hz1 [5]),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o<31>2_587 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>4  (
    .I0(\c/Hz1 [8]),
    .I1(\c/Hz1 [6]),
    .I2(\c/Hz1 [9]),
    .I3(\c/Hz1 [10]),
    .I4(\c/Hz1 [11]),
    .I5(\c/Hz1 [16]),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o<31>3_588 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>5  (
    .I0(\c/Hz1 [18]),
    .I1(\c/Hz1 [24]),
    .I2(\c/Hz1[31]_GND_2_o_equal_2_o<31>3_588 ),
    .I3(\c/Hz1[31]_GND_2_o_equal_2_o<31>2_587 ),
    .I4(\c/Hz1[31]_GND_2_o_equal_2_o<31>1_586 ),
    .I5(\c/Hz1[31]_GND_2_o_equal_2_o<31> ),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz4[31]_GND_2_o_equal_11_o<31>1  (
    .I0(\c/Hz4 [12]),
    .I1(\c/Hz4 [10]),
    .I2(\c/Hz4 [19]),
    .I3(\c/Hz4 [15]),
    .I4(\c/Hz4 [23]),
    .I5(\c/Hz4 [20]),
    .O(\c/Hz4[31]_GND_2_o_equal_11_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \c/Hz4[31]_GND_2_o_equal_11_o<31>2  (
    .I0(\c/Hz4 [0]),
    .I1(\c/Hz4 [1]),
    .I2(\c/Hz4 [2]),
    .I3(\c/Hz4 [3]),
    .I4(\c/Hz4 [9]),
    .I5(\c/Hz4 [7]),
    .O(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz4[31]_GND_2_o_equal_11_o<31>3  (
    .I0(\c/Hz4 [5]),
    .I1(\c/Hz4 [4]),
    .I2(\c/Hz4 [6]),
    .I3(\c/Hz4 [8]),
    .I4(\c/Hz4 [11]),
    .I5(\c/Hz4 [13]),
    .O(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz4[31]_GND_2_o_equal_11_o<31>4  (
    .I0(\c/Hz4 [16]),
    .I1(\c/Hz4 [14]),
    .I2(\c/Hz4 [17]),
    .I3(\c/Hz4 [18]),
    .I4(\c/Hz4 [21]),
    .I5(\c/Hz4 [22]),
    .O(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz3[31]_GND_2_o_equal_8_o<31>1  (
    .I0(\c/Hz3 [7]),
    .I1(\c/Hz3 [5]),
    .I2(\c/Hz3 [10]),
    .I3(\c/Hz3 [9]),
    .I4(\c/Hz3 [16]),
    .I5(\c/Hz3 [15]),
    .O(\c/Hz3[31]_GND_2_o_equal_8_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz3[31]_GND_2_o_equal_8_o<31>2  (
    .I0(\c/Hz3 [1]),
    .I1(\c/Hz3 [0]),
    .I2(\c/Hz3 [2]),
    .I3(\c/Hz3 [3]),
    .I4(\c/Hz3 [4]),
    .I5(\c/Hz3 [6]),
    .O(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \c/Hz3[31]_GND_2_o_equal_8_o<31>3  (
    .I0(\c/Hz3 [11]),
    .I1(\c/Hz3 [8]),
    .I2(\c/Hz3 [12]),
    .I3(\c/Hz3 [13]),
    .I4(\c/Hz3 [14]),
    .O(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz2[31]_GND_2_o_equal_5_o<31>1  (
    .I0(\c/Hz2 [19]),
    .I1(\c/Hz2 [18]),
    .I2(\c/Hz2 [21]),
    .I3(\c/Hz2 [20]),
    .I4(\c/Hz2 [24]),
    .I5(\c/Hz2 [22]),
    .O(\c/Hz2[31]_GND_2_o_equal_5_o<31> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \c/Hz2[31]_GND_2_o_equal_5_o<31>2  (
    .I0(\c/Hz2 [11]),
    .I1(\c/Hz2 [6]),
    .I2(\c/Hz2 [13]),
    .I3(\c/Hz2 [12]),
    .I4(\c/Hz2 [16]),
    .I5(\c/Hz2 [14]),
    .O(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz2[31]_GND_2_o_equal_5_o<31>3  (
    .I0(\c/Hz2 [1]),
    .I1(\c/Hz2 [0]),
    .I2(\c/Hz2 [2]),
    .I3(\c/Hz2 [3]),
    .I4(\c/Hz2 [4]),
    .I5(\c/Hz2 [5]),
    .O(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \c/Hz2[31]_GND_2_o_equal_5_o<31>4  (
    .I0(\c/Hz2 [8]),
    .I1(\c/Hz2 [7]),
    .I2(\c/Hz2 [9]),
    .I3(\c/Hz2 [10]),
    .I4(\c/Hz2 [15]),
    .I5(\c/Hz2 [17]),
    .O(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<6>1_SW0  (
    .I0(\M/minutesCounter1Hz/countmin [3]),
    .I1(\M/minutesCounter1Hz/countmin [1]),
    .I2(\M/minutesCounter1Hz/countmin [4]),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'hE6A2A2A2A2A2A2A2 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<6>1  (
    .I0(\M/minutesCounter1Hz/countmin [6]),
    .I1(\M/minutesCounter1Hz/countmin [5]),
    .I2(\M/minutesCounter1Hz/Mcount_countmin_xor<5>111 ),
    .I3(\M/minutesCounter1Hz/countmin [2]),
    .I4(\M/minutesCounter1Hz/countmin [0]),
    .I5(N41),
    .O(\M/minutesCounter1Hz/Mcount_countmin6 )
  );
  LUT6 #(
    .INIT ( 64'hEE46AA02AA02AA02 ))
  \M/minutesCounter1Hz/Mcount_countmin_xor<5>1  (
    .I0(\M/minutesCounter1Hz/countmin [5]),
    .I1(\M/minutesCounter1Hz/countmin [0]),
    .I2(\M/minutesCounter1Hz/countmin [6]),
    .I3(\M/minutesCounter1Hz/Mcount_countmin_xor<5>111 ),
    .I4(N41),
    .I5(\M/minutesCounter1Hz/countmin [2]),
    .O(\M/minutesCounter1Hz/Mcount_countmin5 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \M/minutesCounter1Hz/_n0021_inv_SW0  (
    .I0(\M/minutesCounter1Hz/countmin [4]),
    .I1(\M/minutesCounter1Hz/countmin [3]),
    .I2(\M/minutesCounter1Hz/countmin [1]),
    .I3(\M/minutesCounter1Hz/countmin [0]),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hFEEEEEEEEEEEEEEE ))
  \M/minutesCounter1Hz/_n0021_inv  (
    .I0(\M/enableMinutes_558 ),
    .I1(\M/secondsCounter1Hz/overflow [0]),
    .I2(\M/minutesCounter1Hz/countmin [5]),
    .I3(\M/minutesCounter1Hz/countmin [6]),
    .I4(\M/minutesCounter1Hz/countmin [2]),
    .I5(N45),
    .O(\M/minutesCounter1Hz/_n0021_inv_541 )
  );
  IBUF   btnR_IBUF (
    .I(btnR),
    .O(btnR_IBUF_1)
  );
  IBUF   btnS_IBUF (
    .I(btnS),
    .O(btnS_IBUF_2)
  );
  IBUF   btn2_IBUF (
    .I(btn2),
    .O(btn2_IBUF_3)
  );
  IBUF   btn3_IBUF (
    .I(btn3),
    .O(btn3_IBUF_4)
  );
  OBUF   seg_7_OBUF (
    .I(seg_7_OBUF_125),
    .O(seg[7])
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_126),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_127),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_128),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_129),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_130),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_131),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_132),
    .O(seg[0])
  );
  OBUF   an_3_OBUF (
    .I(an_3_115),
    .O(an[3])
  );
  OBUF   an_2_OBUF (
    .I(an_2_116),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_117),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_118),
    .O(an[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \M/enableMinutes  (
    .C(clk_BUFGP_0),
    .D(\M/enableMinutes_glue_set_619 ),
    .R(\M/enableMaster_inv ),
    .Q(\M/enableMinutes_558 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \M/enableSeconds  (
    .C(clk_BUFGP_0),
    .D(\M/enableSeconds_glue_set_620 ),
    .R(\M/enableMaster_inv ),
    .Q(\M/enableSeconds_559 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<1>_rt  (
    .I0(caseStatements[1]),
    .O(\Mcount_caseStatements_cy<1>_rt_621 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<2>_rt  (
    .I0(caseStatements[2]),
    .O(\Mcount_caseStatements_cy<2>_rt_622 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<3>_rt  (
    .I0(caseStatements[3]),
    .O(\Mcount_caseStatements_cy<3>_rt_623 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<4>_rt  (
    .I0(caseStatements[4]),
    .O(\Mcount_caseStatements_cy<4>_rt_624 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<5>_rt  (
    .I0(caseStatements[5]),
    .O(\Mcount_caseStatements_cy<5>_rt_625 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<6>_rt  (
    .I0(caseStatements[6]),
    .O(\Mcount_caseStatements_cy<6>_rt_626 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<7>_rt  (
    .I0(caseStatements[7]),
    .O(\Mcount_caseStatements_cy<7>_rt_627 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<8>_rt  (
    .I0(caseStatements[8]),
    .O(\Mcount_caseStatements_cy<8>_rt_628 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<9>_rt  (
    .I0(caseStatements[9]),
    .O(\Mcount_caseStatements_cy<9>_rt_629 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<10>_rt  (
    .I0(caseStatements[10]),
    .O(\Mcount_caseStatements_cy<10>_rt_630 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<11>_rt  (
    .I0(caseStatements[11]),
    .O(\Mcount_caseStatements_cy<11>_rt_631 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<12>_rt  (
    .I0(caseStatements[12]),
    .O(\Mcount_caseStatements_cy<12>_rt_632 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<13>_rt  (
    .I0(caseStatements[13]),
    .O(\Mcount_caseStatements_cy<13>_rt_633 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<14>_rt  (
    .I0(caseStatements[14]),
    .O(\Mcount_caseStatements_cy<14>_rt_634 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<15>_rt  (
    .I0(caseStatements[15]),
    .O(\Mcount_caseStatements_cy<15>_rt_635 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<16>_rt  (
    .I0(caseStatements[16]),
    .O(\Mcount_caseStatements_cy<16>_rt_636 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<17>_rt  (
    .I0(caseStatements[17]),
    .O(\Mcount_caseStatements_cy<17>_rt_637 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<18>_rt  (
    .I0(caseStatements[18]),
    .O(\Mcount_caseStatements_cy<18>_rt_638 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<19>_rt  (
    .I0(caseStatements[19]),
    .O(\Mcount_caseStatements_cy<19>_rt_639 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<20>_rt  (
    .I0(caseStatements[20]),
    .O(\Mcount_caseStatements_cy<20>_rt_640 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<21>_rt  (
    .I0(caseStatements[21]),
    .O(\Mcount_caseStatements_cy<21>_rt_641 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<22>_rt  (
    .I0(caseStatements[22]),
    .O(\Mcount_caseStatements_cy<22>_rt_642 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<23>_rt  (
    .I0(caseStatements[23]),
    .O(\Mcount_caseStatements_cy<23>_rt_643 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<24>_rt  (
    .I0(caseStatements[24]),
    .O(\Mcount_caseStatements_cy<24>_rt_644 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<25>_rt  (
    .I0(caseStatements[25]),
    .O(\Mcount_caseStatements_cy<25>_rt_645 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<26>_rt  (
    .I0(caseStatements[26]),
    .O(\Mcount_caseStatements_cy<26>_rt_646 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<27>_rt  (
    .I0(caseStatements[27]),
    .O(\Mcount_caseStatements_cy<27>_rt_647 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<28>_rt  (
    .I0(caseStatements[28]),
    .O(\Mcount_caseStatements_cy<28>_rt_648 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<29>_rt  (
    .I0(caseStatements[29]),
    .O(\Mcount_caseStatements_cy<29>_rt_649 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_cy<30>_rt  (
    .I0(caseStatements[30]),
    .O(\Mcount_caseStatements_cy<30>_rt_650 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<1>_rt  (
    .I0(debounceCount[1]),
    .O(\Mcount_debounceCount_cy<1>_rt_651 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<2>_rt  (
    .I0(debounceCount[2]),
    .O(\Mcount_debounceCount_cy<2>_rt_652 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<3>_rt  (
    .I0(debounceCount[3]),
    .O(\Mcount_debounceCount_cy<3>_rt_653 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<4>_rt  (
    .I0(debounceCount[4]),
    .O(\Mcount_debounceCount_cy<4>_rt_654 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<5>_rt  (
    .I0(debounceCount[5]),
    .O(\Mcount_debounceCount_cy<5>_rt_655 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<6>_rt  (
    .I0(debounceCount[6]),
    .O(\Mcount_debounceCount_cy<6>_rt_656 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<7>_rt  (
    .I0(debounceCount[7]),
    .O(\Mcount_debounceCount_cy<7>_rt_657 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<8>_rt  (
    .I0(debounceCount[8]),
    .O(\Mcount_debounceCount_cy<8>_rt_658 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<9>_rt  (
    .I0(debounceCount[9]),
    .O(\Mcount_debounceCount_cy<9>_rt_659 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<10>_rt  (
    .I0(debounceCount[10]),
    .O(\Mcount_debounceCount_cy<10>_rt_660 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<11>_rt  (
    .I0(debounceCount[11]),
    .O(\Mcount_debounceCount_cy<11>_rt_661 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<12>_rt  (
    .I0(debounceCount[12]),
    .O(\Mcount_debounceCount_cy<12>_rt_662 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<13>_rt  (
    .I0(debounceCount[13]),
    .O(\Mcount_debounceCount_cy<13>_rt_663 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<14>_rt  (
    .I0(debounceCount[14]),
    .O(\Mcount_debounceCount_cy<14>_rt_664 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<15>_rt  (
    .I0(debounceCount[15]),
    .O(\Mcount_debounceCount_cy<15>_rt_665 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<16>_rt  (
    .I0(debounceCount[16]),
    .O(\Mcount_debounceCount_cy<16>_rt_666 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<17>_rt  (
    .I0(debounceCount[17]),
    .O(\Mcount_debounceCount_cy<17>_rt_667 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<18>_rt  (
    .I0(debounceCount[18]),
    .O(\Mcount_debounceCount_cy<18>_rt_668 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<19>_rt  (
    .I0(debounceCount[19]),
    .O(\Mcount_debounceCount_cy<19>_rt_669 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<20>_rt  (
    .I0(debounceCount[20]),
    .O(\Mcount_debounceCount_cy<20>_rt_670 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<21>_rt  (
    .I0(debounceCount[21]),
    .O(\Mcount_debounceCount_cy<21>_rt_671 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_cy<22>_rt  (
    .I0(debounceCount[22]),
    .O(\Mcount_debounceCount_cy<22>_rt_672 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<24>_rt  (
    .I0(\c/Hz1 [24]),
    .O(\c/Mcount_Hz1_cy<24>_rt_673 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<23>_rt  (
    .I0(\c/Hz1 [23]),
    .O(\c/Mcount_Hz1_cy<23>_rt_674 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<22>_rt  (
    .I0(\c/Hz1 [22]),
    .O(\c/Mcount_Hz1_cy<22>_rt_675 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<21>_rt  (
    .I0(\c/Hz1 [21]),
    .O(\c/Mcount_Hz1_cy<21>_rt_676 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<20>_rt  (
    .I0(\c/Hz1 [20]),
    .O(\c/Mcount_Hz1_cy<20>_rt_677 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<19>_rt  (
    .I0(\c/Hz1 [19]),
    .O(\c/Mcount_Hz1_cy<19>_rt_678 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<18>_rt  (
    .I0(\c/Hz1 [18]),
    .O(\c/Mcount_Hz1_cy<18>_rt_679 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<17>_rt  (
    .I0(\c/Hz1 [17]),
    .O(\c/Mcount_Hz1_cy<17>_rt_680 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<16>_rt  (
    .I0(\c/Hz1 [16]),
    .O(\c/Mcount_Hz1_cy<16>_rt_681 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<15>_rt  (
    .I0(\c/Hz1 [15]),
    .O(\c/Mcount_Hz1_cy<15>_rt_682 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<14>_rt  (
    .I0(\c/Hz1 [14]),
    .O(\c/Mcount_Hz1_cy<14>_rt_683 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<13>_rt  (
    .I0(\c/Hz1 [13]),
    .O(\c/Mcount_Hz1_cy<13>_rt_684 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<12>_rt  (
    .I0(\c/Hz1 [12]),
    .O(\c/Mcount_Hz1_cy<12>_rt_685 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<11>_rt  (
    .I0(\c/Hz1 [11]),
    .O(\c/Mcount_Hz1_cy<11>_rt_686 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<10>_rt  (
    .I0(\c/Hz1 [10]),
    .O(\c/Mcount_Hz1_cy<10>_rt_687 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<9>_rt  (
    .I0(\c/Hz1 [9]),
    .O(\c/Mcount_Hz1_cy<9>_rt_688 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<8>_rt  (
    .I0(\c/Hz1 [8]),
    .O(\c/Mcount_Hz1_cy<8>_rt_689 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<7>_rt  (
    .I0(\c/Hz1 [7]),
    .O(\c/Mcount_Hz1_cy<7>_rt_690 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<6>_rt  (
    .I0(\c/Hz1 [6]),
    .O(\c/Mcount_Hz1_cy<6>_rt_691 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<5>_rt  (
    .I0(\c/Hz1 [5]),
    .O(\c/Mcount_Hz1_cy<5>_rt_692 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<4>_rt  (
    .I0(\c/Hz1 [4]),
    .O(\c/Mcount_Hz1_cy<4>_rt_693 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<3>_rt  (
    .I0(\c/Hz1 [3]),
    .O(\c/Mcount_Hz1_cy<3>_rt_694 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<2>_rt  (
    .I0(\c/Hz1 [2]),
    .O(\c/Mcount_Hz1_cy<2>_rt_695 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_cy<1>_rt  (
    .I0(\c/Hz1 [1]),
    .O(\c/Mcount_Hz1_cy<1>_rt_696 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<15>_rt  (
    .I0(\c/Hz3 [15]),
    .O(\c/Mcount_Hz3_cy<15>_rt_697 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<14>_rt  (
    .I0(\c/Hz3 [14]),
    .O(\c/Mcount_Hz3_cy<14>_rt_698 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<13>_rt  (
    .I0(\c/Hz3 [13]),
    .O(\c/Mcount_Hz3_cy<13>_rt_699 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<12>_rt  (
    .I0(\c/Hz3 [12]),
    .O(\c/Mcount_Hz3_cy<12>_rt_700 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<11>_rt  (
    .I0(\c/Hz3 [11]),
    .O(\c/Mcount_Hz3_cy<11>_rt_701 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<10>_rt  (
    .I0(\c/Hz3 [10]),
    .O(\c/Mcount_Hz3_cy<10>_rt_702 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<9>_rt  (
    .I0(\c/Hz3 [9]),
    .O(\c/Mcount_Hz3_cy<9>_rt_703 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<8>_rt  (
    .I0(\c/Hz3 [8]),
    .O(\c/Mcount_Hz3_cy<8>_rt_704 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<7>_rt  (
    .I0(\c/Hz3 [7]),
    .O(\c/Mcount_Hz3_cy<7>_rt_705 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<6>_rt  (
    .I0(\c/Hz3 [6]),
    .O(\c/Mcount_Hz3_cy<6>_rt_706 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<5>_rt  (
    .I0(\c/Hz3 [5]),
    .O(\c/Mcount_Hz3_cy<5>_rt_707 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<4>_rt  (
    .I0(\c/Hz3 [4]),
    .O(\c/Mcount_Hz3_cy<4>_rt_708 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<3>_rt  (
    .I0(\c/Hz3 [3]),
    .O(\c/Mcount_Hz3_cy<3>_rt_709 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<2>_rt  (
    .I0(\c/Hz3 [2]),
    .O(\c/Mcount_Hz3_cy<2>_rt_710 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_cy<1>_rt  (
    .I0(\c/Hz3 [1]),
    .O(\c/Mcount_Hz3_cy<1>_rt_711 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<22>_rt  (
    .I0(\c/Hz4 [22]),
    .O(\c/Mcount_Hz4_cy<22>_rt_712 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<21>_rt  (
    .I0(\c/Hz4 [21]),
    .O(\c/Mcount_Hz4_cy<21>_rt_713 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<20>_rt  (
    .I0(\c/Hz4 [20]),
    .O(\c/Mcount_Hz4_cy<20>_rt_714 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<19>_rt  (
    .I0(\c/Hz4 [19]),
    .O(\c/Mcount_Hz4_cy<19>_rt_715 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<18>_rt  (
    .I0(\c/Hz4 [18]),
    .O(\c/Mcount_Hz4_cy<18>_rt_716 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<17>_rt  (
    .I0(\c/Hz4 [17]),
    .O(\c/Mcount_Hz4_cy<17>_rt_717 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<16>_rt  (
    .I0(\c/Hz4 [16]),
    .O(\c/Mcount_Hz4_cy<16>_rt_718 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<15>_rt  (
    .I0(\c/Hz4 [15]),
    .O(\c/Mcount_Hz4_cy<15>_rt_719 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<14>_rt  (
    .I0(\c/Hz4 [14]),
    .O(\c/Mcount_Hz4_cy<14>_rt_720 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<13>_rt  (
    .I0(\c/Hz4 [13]),
    .O(\c/Mcount_Hz4_cy<13>_rt_721 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<12>_rt  (
    .I0(\c/Hz4 [12]),
    .O(\c/Mcount_Hz4_cy<12>_rt_722 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<11>_rt  (
    .I0(\c/Hz4 [11]),
    .O(\c/Mcount_Hz4_cy<11>_rt_723 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<10>_rt  (
    .I0(\c/Hz4 [10]),
    .O(\c/Mcount_Hz4_cy<10>_rt_724 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<9>_rt  (
    .I0(\c/Hz4 [9]),
    .O(\c/Mcount_Hz4_cy<9>_rt_725 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<8>_rt  (
    .I0(\c/Hz4 [8]),
    .O(\c/Mcount_Hz4_cy<8>_rt_726 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<7>_rt  (
    .I0(\c/Hz4 [7]),
    .O(\c/Mcount_Hz4_cy<7>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<6>_rt  (
    .I0(\c/Hz4 [6]),
    .O(\c/Mcount_Hz4_cy<6>_rt_728 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<5>_rt  (
    .I0(\c/Hz4 [5]),
    .O(\c/Mcount_Hz4_cy<5>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<4>_rt  (
    .I0(\c/Hz4 [4]),
    .O(\c/Mcount_Hz4_cy<4>_rt_730 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<3>_rt  (
    .I0(\c/Hz4 [3]),
    .O(\c/Mcount_Hz4_cy<3>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<2>_rt  (
    .I0(\c/Hz4 [2]),
    .O(\c/Mcount_Hz4_cy<2>_rt_732 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_cy<1>_rt  (
    .I0(\c/Hz4 [1]),
    .O(\c/Mcount_Hz4_cy<1>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<23>_rt  (
    .I0(\c/Hz2 [23]),
    .O(\c/Mcount_Hz2_cy<23>_rt_734 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<22>_rt  (
    .I0(\c/Hz2 [22]),
    .O(\c/Mcount_Hz2_cy<22>_rt_735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<21>_rt  (
    .I0(\c/Hz2 [21]),
    .O(\c/Mcount_Hz2_cy<21>_rt_736 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<20>_rt  (
    .I0(\c/Hz2 [20]),
    .O(\c/Mcount_Hz2_cy<20>_rt_737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<19>_rt  (
    .I0(\c/Hz2 [19]),
    .O(\c/Mcount_Hz2_cy<19>_rt_738 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<18>_rt  (
    .I0(\c/Hz2 [18]),
    .O(\c/Mcount_Hz2_cy<18>_rt_739 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<17>_rt  (
    .I0(\c/Hz2 [17]),
    .O(\c/Mcount_Hz2_cy<17>_rt_740 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<16>_rt  (
    .I0(\c/Hz2 [16]),
    .O(\c/Mcount_Hz2_cy<16>_rt_741 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<15>_rt  (
    .I0(\c/Hz2 [15]),
    .O(\c/Mcount_Hz2_cy<15>_rt_742 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<14>_rt  (
    .I0(\c/Hz2 [14]),
    .O(\c/Mcount_Hz2_cy<14>_rt_743 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<13>_rt  (
    .I0(\c/Hz2 [13]),
    .O(\c/Mcount_Hz2_cy<13>_rt_744 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<12>_rt  (
    .I0(\c/Hz2 [12]),
    .O(\c/Mcount_Hz2_cy<12>_rt_745 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<11>_rt  (
    .I0(\c/Hz2 [11]),
    .O(\c/Mcount_Hz2_cy<11>_rt_746 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<10>_rt  (
    .I0(\c/Hz2 [10]),
    .O(\c/Mcount_Hz2_cy<10>_rt_747 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<9>_rt  (
    .I0(\c/Hz2 [9]),
    .O(\c/Mcount_Hz2_cy<9>_rt_748 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<8>_rt  (
    .I0(\c/Hz2 [8]),
    .O(\c/Mcount_Hz2_cy<8>_rt_749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<7>_rt  (
    .I0(\c/Hz2 [7]),
    .O(\c/Mcount_Hz2_cy<7>_rt_750 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<6>_rt  (
    .I0(\c/Hz2 [6]),
    .O(\c/Mcount_Hz2_cy<6>_rt_751 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<5>_rt  (
    .I0(\c/Hz2 [5]),
    .O(\c/Mcount_Hz2_cy<5>_rt_752 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<4>_rt  (
    .I0(\c/Hz2 [4]),
    .O(\c/Mcount_Hz2_cy<4>_rt_753 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<3>_rt  (
    .I0(\c/Hz2 [3]),
    .O(\c/Mcount_Hz2_cy<3>_rt_754 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<2>_rt  (
    .I0(\c/Hz2 [2]),
    .O(\c/Mcount_Hz2_cy<2>_rt_755 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_cy<1>_rt  (
    .I0(\c/Hz2 [1]),
    .O(\c/Mcount_Hz2_cy<1>_rt_756 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_caseStatements_xor<31>_rt  (
    .I0(caseStatements[31]),
    .O(\Mcount_caseStatements_xor<31>_rt_757 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_debounceCount_xor<23>_rt  (
    .I0(debounceCount[23]),
    .O(\Mcount_debounceCount_xor<23>_rt_758 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz1_xor<25>_rt  (
    .I0(\c/Hz1 [25]),
    .O(\c/Mcount_Hz1_xor<25>_rt_759 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz3_xor<16>_rt  (
    .I0(\c/Hz3 [16]),
    .O(\c/Mcount_Hz3_xor<16>_rt_760 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz4_xor<23>_rt  (
    .I0(\c/Hz4 [23]),
    .O(\c/Mcount_Hz4_xor<23>_rt_761 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \c/Mcount_Hz2_xor<24>_rt  (
    .I0(\c/Hz2 [24]),
    .O(\c/Mcount_Hz2_xor<24>_rt_762 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/clock4  (
    .C(clk_BUFGP_0),
    .D(\c/clock4_rstpot_763 ),
    .Q(\c/clock4_8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/clock3  (
    .C(clk_BUFGP_0),
    .D(\c/clock3_rstpot_764 ),
    .Q(\c/clock3_928 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/clock2  (
    .C(clk_BUFGP_0),
    .D(\c/clock2_rstpot_765 ),
    .Q(\c/clock2_6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/clock1  (
    .C(clk_BUFGP_0),
    .D(\c/clock1_rstpot_766 ),
    .Q(\c/clock1_5 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \M/enableMaster  (
    .C(clk_BUFGP_0),
    .D(\M/enableMaster_rstpot_767 ),
    .Q(\M/enableMaster_560 )
  );
  FD #(
    .INIT ( 1'b0 ))
  enableDebounce (
    .C(clk_BUFGP_0),
    .D(enableDebounce_rstpot_768),
    .Q(enableDebounce_37)
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \minutesCount[6]_PWR_1_o_mod_3/Mmux_o21  (
    .I0(\M/minutesCount [1]),
    .I1(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2_583 ),
    .I2(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3_584 ),
    .I3(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1_582 ),
    .O(\minutesCount[6]_PWR_1_o_mod_3_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h5554AAABAAAB5554 ))
  \minutesCount[6]_PWR_1_o_mod_3/Mmux_o31  (
    .I0(\M/minutesCount [1]),
    .I1(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2_583 ),
    .I2(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3_584 ),
    .I3(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1_582 ),
    .I4(\M/minutesCount [2]),
    .I5(\minutesCount[6]_PWR_1_o_div_4_OUT<1>_109 ),
    .O(\minutesCount[6]_PWR_1_o_mod_3_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h3C3C3C6C3C3C3C39 ))
  \minutesCount[6]_PWR_1_o_mod_3/Mmux_o41  (
    .I0(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3_584 ),
    .I1(\minutesCount[6]_PWR_1_o_mod_3/BUS_0006_INV_175_o ),
    .I2(N48),
    .I3(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1_582 ),
    .I4(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2_583 ),
    .I5(N47),
    .O(\minutesCount[6]_PWR_1_o_mod_3_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  _n03261 (
    .I0(enableDebounce_37),
    .I1(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .O(_n0326)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>16_SW0  (
    .I0(caseStatements[0]),
    .I1(caseStatements[1]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>2  (
    .I0(N52),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>11_577 ),
    .I2(\caseStatements[31]_GND_1_o_equal_26_o<31>12_578 ),
    .I3(\caseStatements[31]_GND_1_o_equal_26_o<31>13_579 ),
    .I4(\caseStatements[31]_GND_1_o_equal_26_o<31>14_580 ),
    .I5(\caseStatements[31]_GND_1_o_equal_26_o<31>15_581 ),
    .O(\caseStatements[31]_GND_1_o_equal_26_o )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_0_rstpot (
    .I0(\Result<0>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_0_rstpot_772)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_0 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_0_rstpot_772),
    .Q(caseStatements[0])
  );
  LUT5 #(
    .INIT ( 32'h6D496664 ))
  \minutesCount[6]_PWR_1_o_div_4_OUT<1>  (
    .I0(\M/minutesCount [4]),
    .I1(\M/minutesCount [6]),
    .I2(\M/minutesCount [3]),
    .I3(\M/minutesCount [2]),
    .I4(\M/minutesCount [5]),
    .O(\minutesCount[6]_PWR_1_o_div_4_OUT<1>_109 )
  );
  LUT6 #(
    .INIT ( 64'h4694420442040000 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3  (
    .I0(\M/minutesCount [5]),
    .I1(\M/minutesCount [3]),
    .I2(\M/minutesCount [6]),
    .I3(\M/minutesCount [4]),
    .I4(\M/minutesCount [2]),
    .I5(\M/minutesCount [1]),
    .O(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o3_584 )
  );
  LUT5 #(
    .INIT ( 32'h55551C79 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o4_SW0  (
    .I0(\M/minutesCount [3]),
    .I1(\M/minutesCount [6]),
    .I2(\M/minutesCount [4]),
    .I3(\M/minutesCount [5]),
    .I4(\M/minutesCount [2]),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'h0F640F6926F06DF0 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o4_SW1  (
    .I0(\M/minutesCount [6]),
    .I1(\M/minutesCount [4]),
    .I2(\M/minutesCount [3]),
    .I3(\M/minutesCount [1]),
    .I4(\M/minutesCount [5]),
    .I5(\M/minutesCount [2]),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'h00088020 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2  (
    .I0(\M/minutesCount [2]),
    .I1(\M/minutesCount [6]),
    .I2(\M/minutesCount [5]),
    .I3(\M/minutesCount [4]),
    .I4(\M/minutesCount [3]),
    .O(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o2_583 )
  );
  LUT5 #(
    .INIT ( 32'h10144110 ))
  \minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1  (
    .I0(\M/minutesCount [2]),
    .I1(\M/minutesCount [3]),
    .I2(\M/minutesCount [5]),
    .I3(\M/minutesCount [4]),
    .I4(\M/minutesCount [6]),
    .O(\minutesCount[6]_PWR_1_o_mod_3/BUS_0008_INV_191_o1_582 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF2AAAAAAA ))
  enableDebounce_rstpot (
    .I0(enableDebounce_37),
    .I1(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I5(btnS_btn2_OR_35_o),
    .O(enableDebounce_rstpot_768)
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \c/clock4_rstpot  (
    .I0(\c/clock4_8 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/clock4_rstpot_763 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \c/clock3_rstpot  (
    .I0(\c/clock3_928 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/clock3_rstpot_764 )
  );
  LUT6 #(
    .INIT ( 64'h9AAAAAAAAAAAAAAA ))
  \c/clock2_rstpot  (
    .I0(\c/clock2_6 ),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .O(\c/clock2_rstpot_765 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>5_SW0  (
    .I0(\c/Hz1 [24]),
    .I1(\c/Hz1 [18]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \c/clock1_rstpot  (
    .I0(\c/clock1_5 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>3_588 ),
    .I2(\c/Hz1[31]_GND_2_o_equal_2_o<31>2_587 ),
    .I3(\c/Hz1[31]_GND_2_o_equal_2_o<31>1_586 ),
    .I4(\c/Hz1[31]_GND_2_o_equal_2_o<31> ),
    .I5(N54),
    .O(\c/clock1_rstpot_766 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20000000 ))
  \M/secondsCounter1Hz/_n0043_inv1  (
    .I0(\M/secondsCounter1Hz/count [1]),
    .I1(\M/secondsCounter1Hz/count [2]),
    .I2(\M/secondsCounter1Hz/count [3]),
    .I3(\M/secondsCounter1Hz/count [4]),
    .I4(\M/secondsCounter1Hz/count [5]),
    .I5(\M/enableSeconds_559 ),
    .O(\M/secondsCounter1Hz/_n0043_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \M/enableMinutes_glue_set  (
    .I0(btnADJ_38),
    .I1(btnSEL_39),
    .O(\M/enableMinutes_glue_set_619 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \M/enableSeconds_glue_set  (
    .I0(btnADJ_38),
    .I1(btnSEL_39),
    .O(\M/enableSeconds_glue_set_620 )
  );
  LUT6 #(
    .INIT ( 64'h6B6666D662464694 ))
  \minutesCount[6]_PWR_1_o_div_4_OUT<0>  (
    .I0(\M/minutesCount [3]),
    .I1(\M/minutesCount [5]),
    .I2(\M/minutesCount [4]),
    .I3(\M/minutesCount [6]),
    .I4(\M/minutesCount [2]),
    .I5(\M/minutesCount [1]),
    .O(\minutesCount[6]_PWR_1_o_div_4_OUT<0>_110 )
  );
  LUT5 #(
    .INIT ( 32'h29626246 ))
  \secondsCount[5]_PWR_1_o_mod_1/Mmux_o31  (
    .I0(\M/secondsCount [2]),
    .I1(\M/secondsCount [4]),
    .I2(\M/secondsCount [3]),
    .I3(\M/secondsCount [5]),
    .I4(\M/secondsCount [1]),
    .O(\secondsCount[5]_PWR_1_o_mod_1_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h92964992 ))
  \secondsCount[5]_PWR_1_o_mod_1/Mmux_o21  (
    .I0(\M/secondsCount [1]),
    .I1(\M/secondsCount [3]),
    .I2(\M/secondsCount [5]),
    .I3(\M/secondsCount [4]),
    .I4(\M/secondsCount [2]),
    .O(\secondsCount[5]_PWR_1_o_mod_1_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \M/enableMaster_rstpot  (
    .I0(btnPAUSE_41),
    .I1(\M/enableMaster_560 ),
    .O(\M/enableMaster_rstpot_767 )
  );
  LUT4 #(
    .INIT ( 16'hFA86 ))
  \_n0230<5>1  (
    .I0(sseg_num_2_112),
    .I1(sseg_num_0_114),
    .I2(sseg_num_1_113),
    .I3(sseg_num_3_119),
    .O(seg_3_OBUF_129)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_1_rstpot (
    .I0(\Result<1>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_1_rstpot_774)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_1 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_1_rstpot_774),
    .Q(caseStatements[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_2_rstpot (
    .I0(\Result<2>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_2_rstpot_775)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_2 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_2_rstpot_775),
    .Q(caseStatements[2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_3_rstpot (
    .I0(\Result<3>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_3_rstpot_776)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_3 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_3_rstpot_776),
    .Q(caseStatements[3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_4_rstpot (
    .I0(\Result<4>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_4_rstpot_777)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_4 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_4_rstpot_777),
    .Q(caseStatements[4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_5_rstpot (
    .I0(\Result<5>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_5_rstpot_778)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_5 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_5_rstpot_778),
    .Q(caseStatements[5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_6_rstpot (
    .I0(\Result<6>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_6_rstpot_779)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_6 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_6_rstpot_779),
    .Q(caseStatements[6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_7_rstpot (
    .I0(\Result<7>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_7_rstpot_780)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_7 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_7_rstpot_780),
    .Q(caseStatements[7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_8_rstpot (
    .I0(\Result<8>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_8_rstpot_781)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_8 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_8_rstpot_781),
    .Q(caseStatements[8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_9_rstpot (
    .I0(\Result<9>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_9_rstpot_782)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_9 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_9_rstpot_782),
    .Q(caseStatements[9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_10_rstpot (
    .I0(\Result<10>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_10_rstpot_783)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_10 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_10_rstpot_783),
    .Q(caseStatements[10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_11_rstpot (
    .I0(\Result<11>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_11_rstpot_784)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_11 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_11_rstpot_784),
    .Q(caseStatements[11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_12_rstpot (
    .I0(\Result<12>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_12_rstpot_785)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_12 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_12_rstpot_785),
    .Q(caseStatements[12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_13_rstpot (
    .I0(\Result<13>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_13_rstpot_786)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_13 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_13_rstpot_786),
    .Q(caseStatements[13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_14_rstpot (
    .I0(\Result<14>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_14_rstpot_787)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_14 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_14_rstpot_787),
    .Q(caseStatements[14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_15_rstpot (
    .I0(\Result<15>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_15_rstpot_788)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_15 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_15_rstpot_788),
    .Q(caseStatements[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_16_rstpot (
    .I0(\Result<16>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o ),
    .O(caseStatements_16_rstpot_789)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_16 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_16_rstpot_789),
    .Q(caseStatements[16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_17_rstpot (
    .I0(\Result<17>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_17_rstpot_790)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_17 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_17_rstpot_790),
    .Q(caseStatements[17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_18_rstpot (
    .I0(\Result<18>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_18_rstpot_791)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_18 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_18_rstpot_791),
    .Q(caseStatements[18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_19_rstpot (
    .I0(\Result<19>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_19_rstpot_792)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_19 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_19_rstpot_792),
    .Q(caseStatements[19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_20_rstpot (
    .I0(\Result<20>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_20_rstpot_793)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_20 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_20_rstpot_793),
    .Q(caseStatements[20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_21_rstpot (
    .I0(\Result<21>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_21_rstpot_794)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_21 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_21_rstpot_794),
    .Q(caseStatements[21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_22_rstpot (
    .I0(\Result<22>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_22_rstpot_795)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_22 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_22_rstpot_795),
    .Q(caseStatements[22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_23_rstpot (
    .I0(\Result<23>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_23_rstpot_796)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_23 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_23_rstpot_796),
    .Q(caseStatements[23])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_0_rstpot (
    .I0(debounceCount[0]),
    .I1(enableDebounce_37),
    .I2(Result[0]),
    .I3(_n0326),
    .O(debounceCount_0_rstpot_797)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_0 (
    .C(clk_BUFGP_0),
    .D(debounceCount_0_rstpot_797),
    .Q(debounceCount[0])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_1_rstpot (
    .I0(debounceCount[1]),
    .I1(enableDebounce_37),
    .I2(Result[1]),
    .I3(_n0326),
    .O(debounceCount_1_rstpot_798)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_1 (
    .C(clk_BUFGP_0),
    .D(debounceCount_1_rstpot_798),
    .Q(debounceCount[1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_2_rstpot (
    .I0(debounceCount[2]),
    .I1(enableDebounce_37),
    .I2(Result[2]),
    .I3(_n0326),
    .O(debounceCount_2_rstpot_799)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_2 (
    .C(clk_BUFGP_0),
    .D(debounceCount_2_rstpot_799),
    .Q(debounceCount[2])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_3_rstpot (
    .I0(debounceCount[3]),
    .I1(enableDebounce_37),
    .I2(Result[3]),
    .I3(_n0326),
    .O(debounceCount_3_rstpot_800)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_3 (
    .C(clk_BUFGP_0),
    .D(debounceCount_3_rstpot_800),
    .Q(debounceCount[3])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_4_rstpot (
    .I0(debounceCount[4]),
    .I1(enableDebounce_37),
    .I2(Result[4]),
    .I3(_n0326),
    .O(debounceCount_4_rstpot_801)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_4 (
    .C(clk_BUFGP_0),
    .D(debounceCount_4_rstpot_801),
    .Q(debounceCount[4])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_5_rstpot (
    .I0(debounceCount[5]),
    .I1(enableDebounce_37),
    .I2(Result[5]),
    .I3(_n0326),
    .O(debounceCount_5_rstpot_802)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_5 (
    .C(clk_BUFGP_0),
    .D(debounceCount_5_rstpot_802),
    .Q(debounceCount[5])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_6_rstpot (
    .I0(debounceCount[6]),
    .I1(enableDebounce_37),
    .I2(Result[6]),
    .I3(_n0326),
    .O(debounceCount_6_rstpot_803)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_6 (
    .C(clk_BUFGP_0),
    .D(debounceCount_6_rstpot_803),
    .Q(debounceCount[6])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_7_rstpot (
    .I0(debounceCount[7]),
    .I1(enableDebounce_37),
    .I2(Result[7]),
    .I3(_n0326),
    .O(debounceCount_7_rstpot_804)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_7 (
    .C(clk_BUFGP_0),
    .D(debounceCount_7_rstpot_804),
    .Q(debounceCount[7])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_8_rstpot (
    .I0(debounceCount[8]),
    .I1(enableDebounce_37),
    .I2(Result[8]),
    .I3(_n0326),
    .O(debounceCount_8_rstpot_805)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_8 (
    .C(clk_BUFGP_0),
    .D(debounceCount_8_rstpot_805),
    .Q(debounceCount[8])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_9_rstpot (
    .I0(debounceCount[9]),
    .I1(enableDebounce_37),
    .I2(Result[9]),
    .I3(_n0326),
    .O(debounceCount_9_rstpot_806)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_9 (
    .C(clk_BUFGP_0),
    .D(debounceCount_9_rstpot_806),
    .Q(debounceCount[9])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_10_rstpot (
    .I0(debounceCount[10]),
    .I1(enableDebounce_37),
    .I2(Result[10]),
    .I3(_n0326),
    .O(debounceCount_10_rstpot_807)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_10 (
    .C(clk_BUFGP_0),
    .D(debounceCount_10_rstpot_807),
    .Q(debounceCount[10])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_11_rstpot (
    .I0(debounceCount[11]),
    .I1(enableDebounce_37),
    .I2(Result[11]),
    .I3(_n0326),
    .O(debounceCount_11_rstpot_808)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_11 (
    .C(clk_BUFGP_0),
    .D(debounceCount_11_rstpot_808),
    .Q(debounceCount[11])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_12_rstpot (
    .I0(debounceCount[12]),
    .I1(enableDebounce_37),
    .I2(Result[12]),
    .I3(_n0326),
    .O(debounceCount_12_rstpot_809)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_12 (
    .C(clk_BUFGP_0),
    .D(debounceCount_12_rstpot_809),
    .Q(debounceCount[12])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_13_rstpot (
    .I0(debounceCount[13]),
    .I1(enableDebounce_37),
    .I2(Result[13]),
    .I3(_n03261_910),
    .O(debounceCount_13_rstpot_810)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_13 (
    .C(clk_BUFGP_0),
    .D(debounceCount_13_rstpot_810),
    .Q(debounceCount[13])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_14_rstpot (
    .I0(debounceCount[14]),
    .I1(enableDebounce_37),
    .I2(Result[14]),
    .I3(_n03261_910),
    .O(debounceCount_14_rstpot_811)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_14 (
    .C(clk_BUFGP_0),
    .D(debounceCount_14_rstpot_811),
    .Q(debounceCount[14])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_15_rstpot (
    .I0(debounceCount[15]),
    .I1(enableDebounce_37),
    .I2(Result[15]),
    .I3(_n03261_910),
    .O(debounceCount_15_rstpot_812)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_15 (
    .C(clk_BUFGP_0),
    .D(debounceCount_15_rstpot_812),
    .Q(debounceCount[15])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_16_rstpot (
    .I0(debounceCount[16]),
    .I1(enableDebounce_37),
    .I2(Result[16]),
    .I3(_n03261_910),
    .O(debounceCount_16_rstpot_813)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_16 (
    .C(clk_BUFGP_0),
    .D(debounceCount_16_rstpot_813),
    .Q(debounceCount[16])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_17_rstpot (
    .I0(debounceCount[17]),
    .I1(enableDebounce_37),
    .I2(Result[17]),
    .I3(_n03261_910),
    .O(debounceCount_17_rstpot_814)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_17 (
    .C(clk_BUFGP_0),
    .D(debounceCount_17_rstpot_814),
    .Q(debounceCount[17])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_18_rstpot (
    .I0(debounceCount[18]),
    .I1(enableDebounce_37),
    .I2(Result[18]),
    .I3(_n03261_910),
    .O(debounceCount_18_rstpot_815)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_18 (
    .C(clk_BUFGP_0),
    .D(debounceCount_18_rstpot_815),
    .Q(debounceCount[18])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_19_rstpot (
    .I0(debounceCount[19]),
    .I1(enableDebounce_37),
    .I2(Result[19]),
    .I3(_n03261_910),
    .O(debounceCount_19_rstpot_816)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_19 (
    .C(clk_BUFGP_0),
    .D(debounceCount_19_rstpot_816),
    .Q(debounceCount[19])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_20_rstpot (
    .I0(debounceCount[20]),
    .I1(enableDebounce_37),
    .I2(Result[20]),
    .I3(_n03261_910),
    .O(debounceCount_20_rstpot_817)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_20 (
    .C(clk_BUFGP_0),
    .D(debounceCount_20_rstpot_817),
    .Q(debounceCount[20])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_21_rstpot (
    .I0(debounceCount[21]),
    .I1(enableDebounce_37),
    .I2(Result[21]),
    .I3(_n03261_910),
    .O(debounceCount_21_rstpot_818)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_21 (
    .C(clk_BUFGP_0),
    .D(debounceCount_21_rstpot_818),
    .Q(debounceCount[21])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_22_rstpot (
    .I0(debounceCount[22]),
    .I1(enableDebounce_37),
    .I2(Result[22]),
    .I3(_n03261_910),
    .O(debounceCount_22_rstpot_819)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_22 (
    .C(clk_BUFGP_0),
    .D(debounceCount_22_rstpot_819),
    .Q(debounceCount[22])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  debounceCount_23_rstpot (
    .I0(debounceCount[23]),
    .I1(enableDebounce_37),
    .I2(Result[23]),
    .I3(_n03261_910),
    .O(debounceCount_23_rstpot_820)
  );
  FD #(
    .INIT ( 1'b0 ))
  debounceCount_23 (
    .C(clk_BUFGP_0),
    .D(debounceCount_23_rstpot_820),
    .Q(debounceCount[23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_24_rstpot (
    .I0(\Result<24>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_24_rstpot_825)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_24 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_24_rstpot_825),
    .Q(caseStatements[24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_25_rstpot (
    .I0(\Result<25>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_25_rstpot_826)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_25 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_25_rstpot_826),
    .Q(caseStatements[25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_25_rstpot  (
    .I0(\c/Result<25>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_25_rstpot_827 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_25  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_25_rstpot_827 ),
    .Q(\c/Hz1 [25])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_24_rstpot  (
    .I0(\c/Result<24>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_24_rstpot_828 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_24  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_24_rstpot_828 ),
    .Q(\c/Hz1 [24])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_23_rstpot  (
    .I0(\c/Result<23>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_23_rstpot_829 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_23  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_23_rstpot_829 ),
    .Q(\c/Hz1 [23])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_22_rstpot  (
    .I0(\c/Result<22>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_22_rstpot_830 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_22  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_22_rstpot_830 ),
    .Q(\c/Hz1 [22])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_21_rstpot  (
    .I0(\c/Result<21>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_21_rstpot_831 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_21  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_21_rstpot_831 ),
    .Q(\c/Hz1 [21])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_20_rstpot  (
    .I0(\c/Result<20>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_20_rstpot_832 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_20  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_20_rstpot_832 ),
    .Q(\c/Hz1 [20])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_19_rstpot  (
    .I0(\c/Result<19>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_19_rstpot_833 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_19  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_19_rstpot_833 ),
    .Q(\c/Hz1 [19])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_18_rstpot  (
    .I0(\c/Result<18>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_18_rstpot_834 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_18  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_18_rstpot_834 ),
    .Q(\c/Hz1 [18])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_17_rstpot  (
    .I0(\c/Result<17>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_17_rstpot_835 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_17  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_17_rstpot_835 ),
    .Q(\c/Hz1 [17])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_16_rstpot  (
    .I0(\c/Result<16>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_16_rstpot_836 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_16  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_16_rstpot_836 ),
    .Q(\c/Hz1 [16])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_15_rstpot  (
    .I0(\c/Result<15>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_15_rstpot_837 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_15  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_15_rstpot_837 ),
    .Q(\c/Hz1 [15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_14_rstpot  (
    .I0(\c/Result<14>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_14_rstpot_838 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_14  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_14_rstpot_838 ),
    .Q(\c/Hz1 [14])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_13_rstpot  (
    .I0(\c/Result<13>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_13_rstpot_839 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_13  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_13_rstpot_839 ),
    .Q(\c/Hz1 [13])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_12_rstpot  (
    .I0(\c/Result<12>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o ),
    .O(\c/Hz1_12_rstpot_840 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_12  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_12_rstpot_840 ),
    .Q(\c/Hz1 [12])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_11_rstpot  (
    .I0(\c/Result<11>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_11_rstpot_841 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_11  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_11_rstpot_841 ),
    .Q(\c/Hz1 [11])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_10_rstpot  (
    .I0(\c/Result<10>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_10_rstpot_842 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_10  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_10_rstpot_842 ),
    .Q(\c/Hz1 [10])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_9_rstpot  (
    .I0(\c/Result<9>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_9_rstpot_843 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_9  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_9_rstpot_843 ),
    .Q(\c/Hz1 [9])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_8_rstpot  (
    .I0(\c/Result<8>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_8_rstpot_844 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_8  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_8_rstpot_844 ),
    .Q(\c/Hz1 [8])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_7_rstpot  (
    .I0(\c/Result<7>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_7_rstpot_845 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_7  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_7_rstpot_845 ),
    .Q(\c/Hz1 [7])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_6_rstpot  (
    .I0(\c/Result<6>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_6_rstpot_846 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_6  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_6_rstpot_846 ),
    .Q(\c/Hz1 [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_5_rstpot  (
    .I0(\c/Result<5>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_5_rstpot_847 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_5  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_5_rstpot_847 ),
    .Q(\c/Hz1 [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_4_rstpot  (
    .I0(\c/Result<4>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_4_rstpot_848 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_4  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_4_rstpot_848 ),
    .Q(\c/Hz1 [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_3_rstpot  (
    .I0(\c/Result<3>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_3_rstpot_849 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_3  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_3_rstpot_849 ),
    .Q(\c/Hz1 [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_2_rstpot  (
    .I0(\c/Result<2>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_2_rstpot_850 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_2  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_2_rstpot_850 ),
    .Q(\c/Hz1 [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_1_rstpot  (
    .I0(\c/Result<1>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_1_rstpot_851 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_1  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_1_rstpot_851 ),
    .Q(\c/Hz1 [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \c/Hz1_0_rstpot  (
    .I0(\c/Result<0>3 ),
    .I1(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 ),
    .O(\c/Hz1_0_rstpot_852 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz1_0  (
    .C(clk_BUFGP_0),
    .D(\c/Hz1_0_rstpot_852 ),
    .Q(\c/Hz1 [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_26_rstpot (
    .I0(\Result<26>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_26_rstpot_853)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_26 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_26_rstpot_853),
    .Q(caseStatements[26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_24  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_24_rstpot_854 ),
    .Q(\c/Hz2 [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_23  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_23_rstpot_855 ),
    .Q(\c/Hz2 [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_22  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_22_rstpot_856 ),
    .Q(\c/Hz2 [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_21  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_21_rstpot_857 ),
    .Q(\c/Hz2 [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_20  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_20_rstpot_858 ),
    .Q(\c/Hz2 [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_19  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_19_rstpot_859 ),
    .Q(\c/Hz2 [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_18  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_18_rstpot_860 ),
    .Q(\c/Hz2 [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_17  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_17_rstpot_861 ),
    .Q(\c/Hz2 [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_16  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_16_rstpot_862 ),
    .Q(\c/Hz2 [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_15  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_15_rstpot_863 ),
    .Q(\c/Hz2 [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_14  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_14_rstpot_864 ),
    .Q(\c/Hz2 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_13  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_13_rstpot_865 ),
    .Q(\c/Hz2 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_12  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_12_rstpot_866 ),
    .Q(\c/Hz2 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_11  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_11_rstpot_867 ),
    .Q(\c/Hz2 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_10  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_10_rstpot_868 ),
    .Q(\c/Hz2 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_9  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_9_rstpot_869 ),
    .Q(\c/Hz2 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_8  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_8_rstpot_870 ),
    .Q(\c/Hz2 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_7  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_7_rstpot_871 ),
    .Q(\c/Hz2 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_6  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_6_rstpot_872 ),
    .Q(\c/Hz2 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_5  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_5_rstpot_873 ),
    .Q(\c/Hz2 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_4  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_4_rstpot_874 ),
    .Q(\c/Hz2 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_3  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_3_rstpot_875 ),
    .Q(\c/Hz2 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_2  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_2_rstpot_876 ),
    .Q(\c/Hz2 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_1  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_1_rstpot_877 ),
    .Q(\c/Hz2 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz2_0  (
    .C(clk_BUFGP_0),
    .D(\c/Hz2_0_rstpot_878 ),
    .Q(\c/Hz2 [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_27_rstpot (
    .I0(\Result<27>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_27_rstpot_879)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_27 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_27_rstpot_879),
    .Q(caseStatements[27])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_28_rstpot (
    .I0(\Result<28>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_28_rstpot_880)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_28 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_28_rstpot_880),
    .Q(caseStatements[28])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_29_rstpot (
    .I0(\Result<29>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_29_rstpot_881)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_29 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_29_rstpot_881),
    .Q(caseStatements[29])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_30_rstpot (
    .I0(\Result<30>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_30_rstpot_882)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_30 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_30_rstpot_882),
    .Q(caseStatements[30])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  caseStatements_31_rstpot (
    .I0(\Result<31>1 ),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 ),
    .O(caseStatements_31_rstpot_883)
  );
  FD #(
    .INIT ( 1'b0 ))
  caseStatements_31 (
    .C(\c/clock3_BUFG_7 ),
    .D(caseStatements_31_rstpot_883),
    .Q(caseStatements[31])
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_1_rstpot  (
    .I0(\c/Result [1]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_1_rstpot_877 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_0_rstpot  (
    .I0(\c/Result [0]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_0_rstpot_878 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_2_rstpot  (
    .I0(\c/Result [2]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_2_rstpot_876 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_3_rstpot  (
    .I0(\c/Result [3]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_3_rstpot_875 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_4_rstpot  (
    .I0(\c/Result [4]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_4_rstpot_874 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_5_rstpot  (
    .I0(\c/Result [5]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_5_rstpot_873 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_6_rstpot  (
    .I0(\c/Result [6]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_6_rstpot_872 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_7_rstpot  (
    .I0(\c/Result [7]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_7_rstpot_871 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_8_rstpot  (
    .I0(\c/Result [8]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_8_rstpot_870 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_9_rstpot  (
    .I0(\c/Result [9]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_9_rstpot_869 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_10_rstpot  (
    .I0(\c/Result [10]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_10_rstpot_868 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_11_rstpot  (
    .I0(\c/Result [11]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_11_rstpot_867 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_12_rstpot  (
    .I0(\c/Result [12]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_12_rstpot_866 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_13_rstpot  (
    .I0(\c/Result [13]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_13_rstpot_865 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_14_rstpot  (
    .I0(\c/Result [14]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_14_rstpot_864 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_15_rstpot  (
    .I0(\c/Result [15]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_15_rstpot_863 )
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  btnADJ_dpot (
    .I0(btnADJ_38),
    .I1(enableDebounce_37),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I5(btn2_IBUF_3),
    .O(btnADJ_dpot_821)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  btnPAUSE_dpot (
    .I0(btnPAUSE_41),
    .I1(enableDebounce_37),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I5(btn3_IBUF_4),
    .O(btnPAUSE_dpot_822)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  btnRST_dpot (
    .I0(btnRST_40),
    .I1(enableDebounce_37),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I5(btnR_IBUF_1),
    .O(btnRST_dpot_823)
  );
  LUT6 #(
    .INIT ( 64'hEAAAAAAA2AAAAAAA ))
  btnSEL_dpot (
    .I0(btnSEL_39),
    .I1(enableDebounce_37),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I5(btnS_IBUF_2),
    .O(btnSEL_dpot_824)
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_16_rstpot  (
    .I0(\c/Result [16]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_16_rstpot_862 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_17_rstpot  (
    .I0(\c/Result [17]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_17_rstpot_861 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_18_rstpot  (
    .I0(\c/Result [18]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_18_rstpot_860 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_19_rstpot  (
    .I0(\c/Result [19]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_19_rstpot_859 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_20_rstpot  (
    .I0(\c/Result [20]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_20_rstpot_858 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_21_rstpot  (
    .I0(\c/Result [21]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_21_rstpot_857 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_22_rstpot  (
    .I0(\c/Result [22]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_22_rstpot_856 )
  );
  LUT6 #(
    .INIT ( 64'h8AAAAAAAAAAAAAAA ))
  \c/Hz2_23_rstpot  (
    .I0(\c/Result [23]),
    .I1(\c/Hz2 [23]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .O(\c/Hz2_23_rstpot_855 )
  );
  LUT6 #(
    .INIT ( 64'h8CCCCCCCCCCCCCCC ))
  \c/Hz2_24_rstpot  (
    .I0(\c/Hz2 [23]),
    .I1(\c/Result [24]),
    .I2(\c/Hz2[31]_GND_2_o_equal_5_o<31> ),
    .I3(\c/Hz2[31]_GND_2_o_equal_5_o<31>3_599 ),
    .I4(\c/Hz2[31]_GND_2_o_equal_5_o<31>2_598 ),
    .I5(\c/Hz2[31]_GND_2_o_equal_5_o<31>1_597 ),
    .O(\c/Hz2_24_rstpot_854 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \caseStatements[31]_GND_1_o_equal_26_o<31>2_1  (
    .I0(N52),
    .I1(\caseStatements[31]_GND_1_o_equal_26_o<31>11_577 ),
    .I2(\caseStatements[31]_GND_1_o_equal_26_o<31>12_578 ),
    .I3(\caseStatements[31]_GND_1_o_equal_26_o<31>13_579 ),
    .I4(\caseStatements[31]_GND_1_o_equal_26_o<31>14_580 ),
    .I5(\caseStatements[31]_GND_1_o_equal_26_o<31>15_581 ),
    .O(\caseStatements[31]_GND_1_o_equal_26_o<31>2_884 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_23  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_23_rstpot_885 ),
    .Q(\c/Hz4 [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_22  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_22_rstpot_886 ),
    .Q(\c/Hz4 [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_21  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_21_rstpot_887 ),
    .Q(\c/Hz4 [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_20  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_20_rstpot_888 ),
    .Q(\c/Hz4 [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_19  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_19_rstpot_889 ),
    .Q(\c/Hz4 [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_18  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_18_rstpot_890 ),
    .Q(\c/Hz4 [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_17  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_17_rstpot_891 ),
    .Q(\c/Hz4 [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_16  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_16_rstpot_892 ),
    .Q(\c/Hz4 [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_15  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_15_rstpot_893 ),
    .Q(\c/Hz4 [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_14  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_14_rstpot_894 ),
    .Q(\c/Hz4 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_13  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_13_rstpot_895 ),
    .Q(\c/Hz4 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_12  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_12_rstpot_896 ),
    .Q(\c/Hz4 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_11  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_11_rstpot_897 ),
    .Q(\c/Hz4 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_10  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_10_rstpot_898 ),
    .Q(\c/Hz4 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_9  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_9_rstpot_899 ),
    .Q(\c/Hz4 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_8  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_8_rstpot_900 ),
    .Q(\c/Hz4 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_7  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_7_rstpot_901 ),
    .Q(\c/Hz4 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_6  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_6_rstpot_902 ),
    .Q(\c/Hz4 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_5  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_5_rstpot_903 ),
    .Q(\c/Hz4 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_4  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_4_rstpot_904 ),
    .Q(\c/Hz4 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_3  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_3_rstpot_905 ),
    .Q(\c/Hz4 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_2  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_2_rstpot_906 ),
    .Q(\c/Hz4 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_1  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_1_rstpot_907 ),
    .Q(\c/Hz4 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz4_0  (
    .C(clk_BUFGP_0),
    .D(\c/Hz4_0_rstpot_908 ),
    .Q(\c/Hz4 [0])
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \c/Hz1[31]_GND_2_o_equal_2_o<31>5_1  (
    .I0(\c/Hz1 [18]),
    .I1(\c/Hz1 [24]),
    .I2(\c/Hz1[31]_GND_2_o_equal_2_o<31>3_588 ),
    .I3(\c/Hz1[31]_GND_2_o_equal_2_o<31>2_587 ),
    .I4(\c/Hz1[31]_GND_2_o_equal_2_o<31>1_586 ),
    .I5(\c/Hz1[31]_GND_2_o_equal_2_o<31> ),
    .O(\c/Hz1[31]_GND_2_o_equal_2_o<31>5_909 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  _n03261_1 (
    .I0(enableDebounce_37),
    .I1(\debounceCount[31]_GND_1_o_equal_7_o<31>3_576 ),
    .I2(\debounceCount[31]_GND_1_o_equal_7_o<31>2_575 ),
    .I3(\debounceCount[31]_GND_1_o_equal_7_o<31>1_574 ),
    .I4(\debounceCount[31]_GND_1_o_equal_7_o<31> ),
    .O(_n03261_910)
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_1_rstpot  (
    .I0(\c/Result<1>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_1_rstpot_907 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_0_rstpot  (
    .I0(\c/Result<0>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_0_rstpot_908 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_2_rstpot  (
    .I0(\c/Result<2>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_2_rstpot_906 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_3_rstpot  (
    .I0(\c/Result<3>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_3_rstpot_905 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_4_rstpot  (
    .I0(\c/Result<4>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_4_rstpot_904 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_5_rstpot  (
    .I0(\c/Result<5>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_5_rstpot_903 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_6_rstpot  (
    .I0(\c/Result<6>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_6_rstpot_902 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_7_rstpot  (
    .I0(\c/Result<7>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_7_rstpot_901 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_8_rstpot  (
    .I0(\c/Result<8>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_8_rstpot_900 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_9_rstpot  (
    .I0(\c/Result<9>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_9_rstpot_899 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_10_rstpot  (
    .I0(\c/Result<10>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_10_rstpot_898 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_11_rstpot  (
    .I0(\c/Result<11>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_11_rstpot_897 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_12_rstpot  (
    .I0(\c/Result<12>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_12_rstpot_896 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_13_rstpot  (
    .I0(\c/Result<13>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_13_rstpot_895 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_14_rstpot  (
    .I0(\c/Result<14>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_14_rstpot_894 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_15_rstpot  (
    .I0(\c/Result<15>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_15_rstpot_893 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_16_rstpot  (
    .I0(\c/Result<16>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_16_rstpot_892 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_17_rstpot  (
    .I0(\c/Result<17>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_17_rstpot_891 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_18_rstpot  (
    .I0(\c/Result<18>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_18_rstpot_890 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_19_rstpot  (
    .I0(\c/Result<19>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_19_rstpot_889 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_20_rstpot  (
    .I0(\c/Result<20>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_20_rstpot_888 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_21_rstpot  (
    .I0(\c/Result<21>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_21_rstpot_887 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_22_rstpot  (
    .I0(\c/Result<22>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_22_rstpot_886 )
  );
  LUT5 #(
    .INIT ( 32'h2AAAAAAA ))
  \c/Hz4_23_rstpot  (
    .I0(\c/Result<23>1 ),
    .I1(\c/Hz4[31]_GND_2_o_equal_11_o<31> ),
    .I2(\c/Hz4[31]_GND_2_o_equal_11_o<31>1_590 ),
    .I3(\c/Hz4[31]_GND_2_o_equal_11_o<31>2_591 ),
    .I4(\c/Hz4[31]_GND_2_o_equal_11_o<31>3_592 ),
    .O(\c/Hz4_23_rstpot_885 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_16  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_16_rstpot_911 ),
    .Q(\c/Hz3 [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_15  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_15_rstpot_912 ),
    .Q(\c/Hz3 [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_14  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_14_rstpot_913 ),
    .Q(\c/Hz3 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_13  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_13_rstpot_914 ),
    .Q(\c/Hz3 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_12  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_12_rstpot_915 ),
    .Q(\c/Hz3 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_11  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_11_rstpot_916 ),
    .Q(\c/Hz3 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_10  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_10_rstpot_917 ),
    .Q(\c/Hz3 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_9  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_9_rstpot_918 ),
    .Q(\c/Hz3 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_8  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_8_rstpot_919 ),
    .Q(\c/Hz3 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_7  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_7_rstpot_920 ),
    .Q(\c/Hz3 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_6  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_6_rstpot_921 ),
    .Q(\c/Hz3 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_5  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_5_rstpot_922 ),
    .Q(\c/Hz3 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_4  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_4_rstpot_923 ),
    .Q(\c/Hz3 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_3  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_3_rstpot_924 ),
    .Q(\c/Hz3 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_2  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_2_rstpot_925 ),
    .Q(\c/Hz3 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_1  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_1_rstpot_926 ),
    .Q(\c/Hz3 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c/Hz3_0  (
    .C(clk_BUFGP_0),
    .D(\c/Hz3_0_rstpot_927 ),
    .Q(\c/Hz3 [0])
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_1_rstpot  (
    .I0(\c/Result<1>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_1_rstpot_926 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_0_rstpot  (
    .I0(\c/Result<0>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_0_rstpot_927 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_2_rstpot  (
    .I0(\c/Result<2>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_2_rstpot_925 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_3_rstpot  (
    .I0(\c/Result<3>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_3_rstpot_924 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_4_rstpot  (
    .I0(\c/Result<4>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_4_rstpot_923 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_5_rstpot  (
    .I0(\c/Result<5>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_5_rstpot_922 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_6_rstpot  (
    .I0(\c/Result<6>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_6_rstpot_921 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_7_rstpot  (
    .I0(\c/Result<7>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_7_rstpot_920 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_8_rstpot  (
    .I0(\c/Result<8>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_8_rstpot_919 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_9_rstpot  (
    .I0(\c/Result<9>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_9_rstpot_918 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_10_rstpot  (
    .I0(\c/Result<10>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_10_rstpot_917 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_11_rstpot  (
    .I0(\c/Result<11>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_11_rstpot_916 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_12_rstpot  (
    .I0(\c/Result<12>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_12_rstpot_915 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_13_rstpot  (
    .I0(\c/Result<13>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_13_rstpot_914 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_14_rstpot  (
    .I0(\c/Result<14>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_14_rstpot_913 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_15_rstpot  (
    .I0(\c/Result<15>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_15_rstpot_912 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \c/Hz3_16_rstpot  (
    .I0(\c/Result<16>2 ),
    .I1(\c/Hz3[31]_GND_2_o_equal_8_o<31> ),
    .I2(\c/Hz3[31]_GND_2_o_equal_8_o<31>1_594 ),
    .I3(\c/Hz3[31]_GND_2_o_equal_8_o<31>2_595 ),
    .O(\c/Hz3_16_rstpot_911 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  BUFG   \c/clock3_BUFG  (
    .O(\c/clock3_BUFG_7 ),
    .I(\c/clock3_928 )
  );
  INV   \Mcount_caseStatements_lut<0>_INV_0  (
    .I(caseStatements[0]),
    .O(Mcount_caseStatements_lut[0])
  );
  INV   \Mcount_debounceCount_lut<0>_INV_0  (
    .I(debounceCount[0]),
    .O(Mcount_debounceCount_lut[0])
  );
  INV   \c/Mcount_Hz1_lut<0>_INV_0  (
    .I(\c/Hz1 [0]),
    .O(\c/Mcount_Hz1_lut [0])
  );
  INV   \c/Mcount_Hz3_lut<0>_INV_0  (
    .I(\c/Hz3 [0]),
    .O(\c/Mcount_Hz3_lut [0])
  );
  INV   \c/Mcount_Hz4_lut<0>_INV_0  (
    .I(\c/Hz4 [0]),
    .O(\c/Mcount_Hz4_lut [0])
  );
  INV   \c/Mcount_Hz2_lut<0>_INV_0  (
    .I(\c/Hz2 [0]),
    .O(\c/Mcount_Hz2_lut [0])
  );
  INV   enableLight_inv1_INV_0 (
    .I(enableLight_99),
    .O(enableLight_inv)
  );
  INV   btn2_inv1_INV_0 (
    .I(btn2_IBUF_3),
    .O(btn2_inv)
  );
  INV   \M/enableMaster_inv1_INV_0  (
    .I(\M/enableMaster_560 ),
    .O(\M/enableMaster_inv )
  );
  INV   \M/secondsCounter1Hz/Mmux_count[5]_PWR_4_o_mux_7_OUT11_INV_0  (
    .I(\M/secondsCounter1Hz/count [0]),
    .O(\M/secondsCounter1Hz/count[5]_PWR_4_o_mux_7_OUT<0> )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

