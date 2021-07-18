// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Jun 15 17:55:19 2020
// Host        : DESKTOP-B38P1G4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Zynq_System_LogicSignalOut_0_0_sim_netlist.v
// Design      : Zynq_System_LogicSignalOut_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut
   (common_digit,
    \logic_out[7] ,
    logic_out,
    clk);
  output [3:0]common_digit;
  output \logic_out[7] ;
  output [6:0]logic_out;
  input clk;

  wire clk;
  wire [3:0]common_digit;
  wire count1_carry__0_i_1_n_0;
  wire count1_carry__0_i_2_n_0;
  wire count1_carry__0_i_3_n_0;
  wire count1_carry__0_i_4_n_0;
  wire count1_carry__0_i_5_n_0;
  wire count1_carry__0_i_6_n_0;
  wire count1_carry__0_n_0;
  wire count1_carry__0_n_1;
  wire count1_carry__0_n_2;
  wire count1_carry__0_n_3;
  wire count1_carry__1_i_1_n_0;
  wire count1_carry__1_i_2_n_0;
  wire count1_carry__1_i_3_n_0;
  wire count1_carry__1_i_4_n_0;
  wire count1_carry__1_i_5_n_0;
  wire count1_carry__1_i_6_n_0;
  wire count1_carry__1_i_7_n_0;
  wire count1_carry__1_i_8_n_0;
  wire count1_carry__1_n_0;
  wire count1_carry__1_n_1;
  wire count1_carry__1_n_2;
  wire count1_carry__1_n_3;
  wire count1_carry__2_i_1_n_0;
  wire count1_carry__2_i_2_n_0;
  wire count1_carry__2_i_3_n_0;
  wire count1_carry__2_i_4_n_0;
  wire count1_carry__2_i_5_n_0;
  wire count1_carry__2_i_6_n_0;
  wire count1_carry__2_n_0;
  wire count1_carry__2_n_1;
  wire count1_carry__2_n_2;
  wire count1_carry__2_n_3;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_i_8_n_0;
  wire count1_carry_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire \count[0]_i_3_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire data0;
  wire [1:1]digit;
  wire \digit[0]_i_10_n_0 ;
  wire \digit[0]_i_11_n_0 ;
  wire \digit[0]_i_12_n_0 ;
  wire \digit[0]_i_13_n_0 ;
  wire \digit[0]_i_14_n_0 ;
  wire \digit[0]_i_15_n_0 ;
  wire \digit[0]_i_16_n_0 ;
  wire \digit[0]_i_17_n_0 ;
  wire \digit[0]_i_18_n_0 ;
  wire \digit[0]_i_19_n_0 ;
  wire \digit[0]_i_1_n_0 ;
  wire \digit[0]_i_2_n_0 ;
  wire \digit[0]_i_3_n_0 ;
  wire \digit[0]_i_4_n_0 ;
  wire \digit[0]_i_5_n_0 ;
  wire \digit[0]_i_6_n_0 ;
  wire \digit[0]_i_7_n_0 ;
  wire \digit[0]_i_8_n_0 ;
  wire \digit[0]_i_9_n_0 ;
  wire \digit[1]_i_1_n_0 ;
  wire \digit[1]_i_2_n_0 ;
  wire [7:0]hour;
  wire \hour[0]_i_1_n_0 ;
  wire \hour[1]_i_1_n_0 ;
  wire \hour[2]_i_1_n_0 ;
  wire \hour[3]_i_1_n_0 ;
  wire \hour[4]_i_1_n_0 ;
  wire \hour[5]_i_1_n_0 ;
  wire \hour[6]_i_1_n_0 ;
  wire \hour[7]_i_1_n_0 ;
  wire \hour[7]_i_2_n_0 ;
  wire \hour[7]_i_3_n_0 ;
  wire \hour[7]_i_4_n_0 ;
  wire \hour[7]_i_5_n_0 ;
  wire i;
  wire i0_carry__0_i_1_n_0;
  wire i0_carry__0_i_2_n_0;
  wire i0_carry__0_i_3_n_0;
  wire i0_carry__0_i_4_n_0;
  wire i0_carry__0_i_5_n_0;
  wire i0_carry__0_i_6_n_0;
  wire i0_carry__0_i_7_n_0;
  wire i0_carry__0_i_8_n_0;
  wire i0_carry__0_n_0;
  wire i0_carry__0_n_1;
  wire i0_carry__0_n_2;
  wire i0_carry__0_n_3;
  wire i0_carry__1_i_1_n_0;
  wire i0_carry__1_i_2_n_0;
  wire i0_carry__1_i_3_n_0;
  wire i0_carry__1_i_4_n_0;
  wire i0_carry__1_i_5_n_0;
  wire i0_carry__1_i_6_n_0;
  wire i0_carry__1_i_7_n_0;
  wire i0_carry__1_i_8_n_0;
  wire i0_carry__1_n_0;
  wire i0_carry__1_n_1;
  wire i0_carry__1_n_2;
  wire i0_carry__1_n_3;
  wire i0_carry__2_i_1_n_0;
  wire i0_carry__2_i_2_n_0;
  wire i0_carry__2_i_3_n_0;
  wire i0_carry__2_i_4_n_0;
  wire i0_carry__2_i_5_n_0;
  wire i0_carry__2_i_6_n_0;
  wire i0_carry__2_i_7_n_0;
  wire i0_carry__2_i_8_n_0;
  wire i0_carry__2_n_0;
  wire i0_carry__2_n_1;
  wire i0_carry__2_n_2;
  wire i0_carry__2_n_3;
  wire i0_carry_i_1_n_0;
  wire i0_carry_i_2_n_0;
  wire i0_carry_i_3_n_0;
  wire i0_carry_i_4_n_0;
  wire i0_carry_i_5_n_0;
  wire i0_carry_i_6_n_0;
  wire i0_carry_n_0;
  wire i0_carry_n_1;
  wire i0_carry_n_2;
  wire i0_carry_n_3;
  wire \i[0]_i_3_n_0 ;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_1 ;
  wire \i_reg[0]_i_2_n_2 ;
  wire \i_reg[0]_i_2_n_3 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [6:0]logic_out;
  wire \logic_out[0]_INST_0_i_1_n_0 ;
  wire \logic_out[0]_INST_0_i_2_n_0 ;
  wire \logic_out[0]_INST_0_i_3_n_0 ;
  wire \logic_out[0]_INST_0_i_4_n_0 ;
  wire \logic_out[1]_INST_0_i_1_n_0 ;
  wire \logic_out[1]_INST_0_i_2_n_0 ;
  wire \logic_out[1]_INST_0_i_3_n_0 ;
  wire \logic_out[1]_INST_0_i_4_n_0 ;
  wire \logic_out[1]_INST_0_i_5_n_0 ;
  wire \logic_out[1]_INST_0_i_6_n_0 ;
  wire \logic_out[2]_INST_0_i_1_n_0 ;
  wire \logic_out[2]_INST_0_i_2_n_0 ;
  wire \logic_out[2]_INST_0_i_3_n_0 ;
  wire \logic_out[2]_INST_0_i_4_n_0 ;
  wire \logic_out[2]_INST_0_i_5_n_0 ;
  wire \logic_out[2]_INST_0_i_6_n_0 ;
  wire \logic_out[2]_INST_0_i_7_n_0 ;
  wire \logic_out[2]_INST_0_i_8_n_0 ;
  wire \logic_out[3]_INST_0_i_1_n_0 ;
  wire \logic_out[3]_INST_0_i_2_n_0 ;
  wire \logic_out[3]_INST_0_i_3_n_0 ;
  wire \logic_out[3]_INST_0_i_4_n_0 ;
  wire \logic_out[3]_INST_0_i_5_n_0 ;
  wire \logic_out[3]_INST_0_i_6_n_0 ;
  wire \logic_out[3]_INST_0_i_7_n_0 ;
  wire \logic_out[3]_INST_0_i_8_n_0 ;
  wire \logic_out[4]_INST_0_i_1_n_0 ;
  wire \logic_out[4]_INST_0_i_2_n_0 ;
  wire \logic_out[4]_INST_0_i_3_n_0 ;
  wire \logic_out[4]_INST_0_i_4_n_0 ;
  wire \logic_out[4]_INST_0_i_5_n_0 ;
  wire \logic_out[4]_INST_0_i_6_n_0 ;
  wire \logic_out[4]_INST_0_i_7_n_0 ;
  wire \logic_out[4]_INST_0_i_8_n_0 ;
  wire \logic_out[4]_INST_0_i_9_n_0 ;
  wire \logic_out[5]_INST_0_i_10_n_0 ;
  wire \logic_out[5]_INST_0_i_1_n_0 ;
  wire \logic_out[5]_INST_0_i_2_n_0 ;
  wire \logic_out[5]_INST_0_i_3_n_0 ;
  wire \logic_out[5]_INST_0_i_4_n_0 ;
  wire \logic_out[5]_INST_0_i_5_n_0 ;
  wire \logic_out[5]_INST_0_i_6_n_0 ;
  wire \logic_out[5]_INST_0_i_7_n_0 ;
  wire \logic_out[5]_INST_0_i_8_n_0 ;
  wire \logic_out[5]_INST_0_i_9_n_0 ;
  wire \logic_out[6]_INST_0_i_10_n_0 ;
  wire \logic_out[6]_INST_0_i_11_n_0 ;
  wire \logic_out[6]_INST_0_i_12_n_0 ;
  wire \logic_out[6]_INST_0_i_13_n_0 ;
  wire \logic_out[6]_INST_0_i_14_n_0 ;
  wire \logic_out[6]_INST_0_i_15_n_0 ;
  wire \logic_out[6]_INST_0_i_16_n_0 ;
  wire \logic_out[6]_INST_0_i_17_n_0 ;
  wire \logic_out[6]_INST_0_i_18_n_0 ;
  wire \logic_out[6]_INST_0_i_1_n_0 ;
  wire \logic_out[6]_INST_0_i_2_n_0 ;
  wire \logic_out[6]_INST_0_i_3_n_0 ;
  wire \logic_out[6]_INST_0_i_4_n_0 ;
  wire \logic_out[6]_INST_0_i_5_n_0 ;
  wire \logic_out[6]_INST_0_i_6_n_0 ;
  wire \logic_out[6]_INST_0_i_7_n_0 ;
  wire \logic_out[6]_INST_0_i_8_n_0 ;
  wire \logic_out[6]_INST_0_i_9_n_0 ;
  wire \logic_out[7] ;
  wire [7:0]min;
  wire \min[0]_i_1_n_0 ;
  wire \min[1]_i_1_n_0 ;
  wire \min[2]_i_1_n_0 ;
  wire \min[3]_i_1_n_0 ;
  wire \min[4]_i_1_n_0 ;
  wire \min[5]_i_1_n_0 ;
  wire \min[5]_i_2_n_0 ;
  wire \min[6]_i_1_n_0 ;
  wire \min[7]_i_1_n_0 ;
  wire \min[7]_i_2_n_0 ;
  wire \min[7]_i_3_n_0 ;
  wire \min[7]_i_4_n_0 ;
  wire \min[7]_i_5_n_0 ;
  wire [7:0]second;
  wire \second[0]_i_1_n_0 ;
  wire \second[1]_i_1_n_0 ;
  wire \second[2]_i_1_n_0 ;
  wire \second[3]_i_1_n_0 ;
  wire \second[4]_i_1_n_0 ;
  wire \second[5]_i_1_n_0 ;
  wire \second[5]_i_2_n_0 ;
  wire \second[6]_i_1_n_0 ;
  wire \second[7]_i_1_n_0 ;
  wire \second[7]_i_2_n_0 ;
  wire \second[7]_i_3_n_0 ;
  wire \second[7]_i_4_n_0 ;
  wire \second[7]_i_5_n_0 ;
  wire [3:0]NLW_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_i0_carry_O_UNCONNECTED;
  wire [3:0]NLW_i0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_i0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_i0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_i_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \common_digit[0]_INST_0 
       (.I0(digit),
        .I1(\logic_out[7] ),
        .O(common_digit[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \common_digit[1]_INST_0 
       (.I0(\logic_out[7] ),
        .I1(digit),
        .O(common_digit[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \common_digit[2]_INST_0 
       (.I0(digit),
        .I1(\logic_out[7] ),
        .O(common_digit[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \common_digit[3]_INST_0 
       (.I0(digit),
        .I1(\logic_out[7] ),
        .O(common_digit[3]));
  CARRY4 count1_carry
       (.CI(1'b0),
        .CO({count1_carry_n_0,count1_carry_n_1,count1_carry_n_2,count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0,count1_carry_i_4_n_0}),
        .O(NLW_count1_carry_O_UNCONNECTED[3:0]),
        .S({count1_carry_i_5_n_0,count1_carry_i_6_n_0,count1_carry_i_7_n_0,count1_carry_i_8_n_0}));
  CARRY4 count1_carry__0
       (.CI(count1_carry_n_0),
        .CO({count1_carry__0_n_0,count1_carry__0_n_1,count1_carry__0_n_2,count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__0_i_1_n_0,count1_carry__0_i_2_n_0,1'b0,1'b0}),
        .O(NLW_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({count1_carry__0_i_3_n_0,count1_carry__0_i_4_n_0,count1_carry__0_i_5_n_0,count1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry__0_i_1
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(count1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count1_carry__0_i_2
       (.I0(count_reg[13]),
        .O(count1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry__0_i_3
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(count1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__0_i_4
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(count1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_5
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(count1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__0_i_6
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(count1_carry__0_i_6_n_0));
  CARRY4 count1_carry__1
       (.CI(count1_carry__0_n_0),
        .CO({count1_carry__1_n_0,count1_carry__1_n_1,count1_carry__1_n_2,count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count1_carry__1_i_1_n_0,count1_carry__1_i_2_n_0,count1_carry__1_i_3_n_0,count1_carry__1_i_4_n_0}),
        .O(NLW_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({count1_carry__1_i_5_n_0,count1_carry__1_i_6_n_0,count1_carry__1_i_7_n_0,count1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry__1_i_1
       (.I0(count_reg[23]),
        .I1(count_reg[22]),
        .O(count1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry__1_i_2
       (.I0(count_reg[21]),
        .I1(count_reg[20]),
        .O(count1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_3
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__1_i_4
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry__1_i_5
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(count1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry__1_i_6
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(count1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_7
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(count1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__1_i_8
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(count1_carry__1_i_8_n_0));
  CARRY4 count1_carry__2
       (.CI(count1_carry__1_n_0),
        .CO({count1_carry__2_n_0,count1_carry__2_n_1,count1_carry__2_n_2,count1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({count_reg[31],1'b0,count1_carry__2_i_1_n_0,count1_carry__2_i_2_n_0}),
        .O(NLW_count1_carry__2_O_UNCONNECTED[3:0]),
        .S({count1_carry__2_i_3_n_0,count1_carry__2_i_4_n_0,count1_carry__2_i_5_n_0,count1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_1
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(count1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_2
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_3
       (.I0(count_reg[31]),
        .I1(count_reg[30]),
        .O(count1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count1_carry__2_i_4
       (.I0(count_reg[29]),
        .I1(count_reg[28]),
        .O(count1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__2_i_5
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(count1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count1_carry__2_i_6
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(count1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_1
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(count1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_2
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(count1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_3
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count1_carry_i_4
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_5
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_6
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(count1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_7
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(count1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count1_carry_i_8
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(count1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count1_carry__2_n_0),
        .O(data0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(data0));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(data0));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(data0));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(data0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(data0));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(data0));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(data0));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(data0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(data0));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(data0));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(data0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(data0));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(data0));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(data0));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(data0));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(data0));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(data0));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(data0));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(data0));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(data0));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(data0));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(data0));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(data0));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(data0));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(data0));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(data0));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(data0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(data0));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(data0));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(data0));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(data0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(data0));
  LUT6 #(
    .INIT(64'hFFFFF2FF00000200)) 
    \digit[0]_i_1 
       (.I0(\digit[0]_i_2_n_0 ),
        .I1(\digit[0]_i_3_n_0 ),
        .I2(\digit[0]_i_4_n_0 ),
        .I3(\digit[0]_i_5_n_0 ),
        .I4(\digit[0]_i_6_n_0 ),
        .I5(\logic_out[7] ),
        .O(\digit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \digit[0]_i_10 
       (.I0(\digit[0]_i_5_n_0 ),
        .I1(\digit[0]_i_17_n_0 ),
        .I2(i_reg[22]),
        .I3(i_reg[21]),
        .I4(i_reg[24]),
        .I5(i_reg[23]),
        .O(\digit[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \digit[0]_i_11 
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(\digit[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \digit[0]_i_12 
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(\digit[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \digit[0]_i_13 
       (.I0(i_reg[21]),
        .I1(i_reg[22]),
        .I2(i_reg[9]),
        .I3(i_reg[10]),
        .I4(\digit[0]_i_18_n_0 ),
        .O(\digit[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \digit[0]_i_14 
       (.I0(i_reg[14]),
        .I1(i_reg[17]),
        .I2(i_reg[23]),
        .I3(i_reg[7]),
        .I4(\digit[0]_i_19_n_0 ),
        .I5(\digit[0]_i_8_n_0 ),
        .O(\digit[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hBCBF)) 
    \digit[0]_i_15 
       (.I0(i_reg[6]),
        .I1(i_reg[5]),
        .I2(i_reg[3]),
        .I3(i_reg[4]),
        .O(\digit[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \digit[0]_i_16 
       (.I0(i_reg[18]),
        .I1(i_reg[17]),
        .I2(i_reg[20]),
        .I3(i_reg[19]),
        .O(\digit[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \digit[0]_i_17 
       (.I0(i_reg[28]),
        .I1(i_reg[27]),
        .I2(i_reg[26]),
        .I3(i_reg[25]),
        .O(\digit[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \digit[0]_i_18 
       (.I0(i_reg[20]),
        .I1(i_reg[8]),
        .I2(i_reg[26]),
        .I3(i_reg[11]),
        .O(\digit[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \digit[0]_i_19 
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(\digit[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \digit[0]_i_2 
       (.I0(\digit[0]_i_7_n_0 ),
        .I1(i_reg[8]),
        .I2(i_reg[7]),
        .I3(\digit[0]_i_8_n_0 ),
        .I4(\digit[0]_i_9_n_0 ),
        .I5(\digit[0]_i_10_n_0 ),
        .O(\digit[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEFFBFF)) 
    \digit[0]_i_3 
       (.I0(i_reg[2]),
        .I1(i_reg[6]),
        .I2(i_reg[5]),
        .I3(i_reg[4]),
        .I4(i_reg[3]),
        .O(\digit[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \digit[0]_i_4 
       (.I0(i_reg[27]),
        .I1(i_reg[28]),
        .I2(i_reg[15]),
        .I3(i_reg[16]),
        .I4(\digit[0]_i_11_n_0 ),
        .I5(\digit[0]_i_12_n_0 ),
        .O(\digit[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \digit[0]_i_5 
       (.I0(i_reg[31]),
        .I1(i_reg[30]),
        .I2(i_reg[29]),
        .O(\digit[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF9A)) 
    \digit[0]_i_6 
       (.I0(i_reg[2]),
        .I1(i_reg[6]),
        .I2(i_reg[4]),
        .I3(\digit[0]_i_13_n_0 ),
        .I4(\digit[0]_i_14_n_0 ),
        .I5(\digit[0]_i_15_n_0 ),
        .O(\digit[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \digit[0]_i_7 
       (.I0(i_reg[13]),
        .I1(i_reg[14]),
        .I2(i_reg[15]),
        .I3(i_reg[16]),
        .I4(\digit[0]_i_16_n_0 ),
        .O(\digit[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \digit[0]_i_8 
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(\digit[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \digit[0]_i_9 
       (.I0(i_reg[10]),
        .I1(i_reg[9]),
        .I2(i_reg[12]),
        .I3(i_reg[11]),
        .O(\digit[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF2FF00000200)) 
    \digit[1]_i_1 
       (.I0(\digit[0]_i_2_n_0 ),
        .I1(\digit[1]_i_2_n_0 ),
        .I2(\digit[0]_i_4_n_0 ),
        .I3(\digit[0]_i_5_n_0 ),
        .I4(\digit[0]_i_6_n_0 ),
        .I5(digit),
        .O(\digit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFFBFFFF)) 
    \digit[1]_i_2 
       (.I0(i_reg[3]),
        .I1(i_reg[6]),
        .I2(i_reg[2]),
        .I3(i_reg[5]),
        .I4(i_reg[4]),
        .O(\digit[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit[0]_i_1_n_0 ),
        .Q(\logic_out[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit[1]_i_1_n_0 ),
        .Q(digit),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \hour[0]_i_1 
       (.I0(hour[0]),
        .I1(\hour[7]_i_3_n_0 ),
        .O(\hour[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hour[1]_i_1 
       (.I0(hour[1]),
        .I1(hour[0]),
        .O(\hour[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hour[2]_i_1 
       (.I0(hour[2]),
        .I1(hour[0]),
        .I2(hour[1]),
        .O(\hour[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \hour[3]_i_1 
       (.I0(hour[0]),
        .I1(hour[1]),
        .I2(hour[2]),
        .I3(hour[3]),
        .I4(\hour[7]_i_3_n_0 ),
        .O(\hour[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \hour[4]_i_1 
       (.I0(hour[2]),
        .I1(hour[1]),
        .I2(hour[0]),
        .I3(hour[3]),
        .I4(hour[4]),
        .I5(\hour[7]_i_3_n_0 ),
        .O(\hour[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hour[5]_i_1 
       (.I0(hour[5]),
        .I1(hour[4]),
        .I2(hour[2]),
        .I3(hour[1]),
        .I4(hour[0]),
        .I5(hour[3]),
        .O(\hour[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hour[6]_i_1 
       (.I0(hour[6]),
        .I1(\hour[7]_i_4_n_0 ),
        .O(\hour[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hour[7]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(\hour[7]_i_3_n_0 ),
        .O(\hour[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hour[7]_i_2 
       (.I0(hour[7]),
        .I1(hour[6]),
        .I2(\hour[7]_i_4_n_0 ),
        .O(\hour[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \hour[7]_i_3 
       (.I0(hour[7]),
        .I1(hour[2]),
        .I2(hour[1]),
        .I3(hour[0]),
        .I4(\hour[7]_i_5_n_0 ),
        .O(\hour[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hour[7]_i_4 
       (.I0(hour[5]),
        .I1(hour[4]),
        .I2(hour[2]),
        .I3(hour[1]),
        .I4(hour[0]),
        .I5(hour[3]),
        .O(\hour[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \hour[7]_i_5 
       (.I0(hour[5]),
        .I1(hour[6]),
        .I2(hour[3]),
        .I3(hour[4]),
        .O(\hour[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[0] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[0]_i_1_n_0 ),
        .Q(hour[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[1] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[1]_i_1_n_0 ),
        .Q(hour[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[2] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[2]_i_1_n_0 ),
        .Q(hour[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[3] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[3]_i_1_n_0 ),
        .Q(hour[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[4] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[4]_i_1_n_0 ),
        .Q(hour[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[5] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[5]_i_1_n_0 ),
        .Q(hour[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[6] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[6]_i_1_n_0 ),
        .Q(hour[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hour_reg[7] 
       (.C(clk),
        .CE(\hour[7]_i_1_n_0 ),
        .D(\hour[7]_i_2_n_0 ),
        .Q(hour[7]),
        .R(1'b0));
  CARRY4 i0_carry
       (.CI(1'b0),
        .CO({i0_carry_n_0,i0_carry_n_1,i0_carry_n_2,i0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({i_reg[7],i0_carry_i_1_n_0,i_reg[3],i0_carry_i_2_n_0}),
        .O(NLW_i0_carry_O_UNCONNECTED[3:0]),
        .S({i0_carry_i_3_n_0,i0_carry_i_4_n_0,i0_carry_i_5_n_0,i0_carry_i_6_n_0}));
  CARRY4 i0_carry__0
       (.CI(i0_carry_n_0),
        .CO({i0_carry__0_n_0,i0_carry__0_n_1,i0_carry__0_n_2,i0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({i0_carry__0_i_1_n_0,i0_carry__0_i_2_n_0,i0_carry__0_i_3_n_0,i0_carry__0_i_4_n_0}),
        .O(NLW_i0_carry__0_O_UNCONNECTED[3:0]),
        .S({i0_carry__0_i_5_n_0,i0_carry__0_i_6_n_0,i0_carry__0_i_7_n_0,i0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__0_i_1
       (.I0(i_reg[15]),
        .I1(i_reg[14]),
        .O(i0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__0_i_2
       (.I0(i_reg[13]),
        .I1(i_reg[12]),
        .O(i0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__0_i_3
       (.I0(i_reg[11]),
        .I1(i_reg[10]),
        .O(i0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__0_i_4
       (.I0(i_reg[9]),
        .I1(i_reg[8]),
        .O(i0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__0_i_5
       (.I0(i_reg[14]),
        .I1(i_reg[15]),
        .O(i0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__0_i_6
       (.I0(i_reg[12]),
        .I1(i_reg[13]),
        .O(i0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__0_i_7
       (.I0(i_reg[10]),
        .I1(i_reg[11]),
        .O(i0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__0_i_8
       (.I0(i_reg[8]),
        .I1(i_reg[9]),
        .O(i0_carry__0_i_8_n_0));
  CARRY4 i0_carry__1
       (.CI(i0_carry__0_n_0),
        .CO({i0_carry__1_n_0,i0_carry__1_n_1,i0_carry__1_n_2,i0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({i0_carry__1_i_1_n_0,i0_carry__1_i_2_n_0,i0_carry__1_i_3_n_0,i0_carry__1_i_4_n_0}),
        .O(NLW_i0_carry__1_O_UNCONNECTED[3:0]),
        .S({i0_carry__1_i_5_n_0,i0_carry__1_i_6_n_0,i0_carry__1_i_7_n_0,i0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__1_i_1
       (.I0(i_reg[23]),
        .I1(i_reg[22]),
        .O(i0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__1_i_2
       (.I0(i_reg[21]),
        .I1(i_reg[20]),
        .O(i0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__1_i_3
       (.I0(i_reg[19]),
        .I1(i_reg[18]),
        .O(i0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__1_i_4
       (.I0(i_reg[17]),
        .I1(i_reg[16]),
        .O(i0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__1_i_5
       (.I0(i_reg[22]),
        .I1(i_reg[23]),
        .O(i0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__1_i_6
       (.I0(i_reg[20]),
        .I1(i_reg[21]),
        .O(i0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__1_i_7
       (.I0(i_reg[18]),
        .I1(i_reg[19]),
        .O(i0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__1_i_8
       (.I0(i_reg[16]),
        .I1(i_reg[17]),
        .O(i0_carry__1_i_8_n_0));
  CARRY4 i0_carry__2
       (.CI(i0_carry__1_n_0),
        .CO({i0_carry__2_n_0,i0_carry__2_n_1,i0_carry__2_n_2,i0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({i0_carry__2_i_1_n_0,i0_carry__2_i_2_n_0,i0_carry__2_i_3_n_0,i0_carry__2_i_4_n_0}),
        .O(NLW_i0_carry__2_O_UNCONNECTED[3:0]),
        .S({i0_carry__2_i_5_n_0,i0_carry__2_i_6_n_0,i0_carry__2_i_7_n_0,i0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    i0_carry__2_i_1
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(i0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__2_i_2
       (.I0(i_reg[29]),
        .I1(i_reg[28]),
        .O(i0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__2_i_3
       (.I0(i_reg[27]),
        .I1(i_reg[26]),
        .O(i0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry__2_i_4
       (.I0(i_reg[25]),
        .I1(i_reg[24]),
        .O(i0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__2_i_5
       (.I0(i_reg[30]),
        .I1(i_reg[31]),
        .O(i0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__2_i_6
       (.I0(i_reg[28]),
        .I1(i_reg[29]),
        .O(i0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__2_i_7
       (.I0(i_reg[26]),
        .I1(i_reg[27]),
        .O(i0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry__2_i_8
       (.I0(i_reg[24]),
        .I1(i_reg[25]),
        .O(i0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i0_carry_i_1
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .O(i0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i0_carry_i_2
       (.I0(i_reg[1]),
        .I1(i_reg[0]),
        .O(i0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i0_carry_i_3
       (.I0(i_reg[6]),
        .I1(i_reg[7]),
        .O(i0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i0_carry_i_4
       (.I0(i_reg[5]),
        .I1(i_reg[4]),
        .O(i0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i0_carry_i_5
       (.I0(i_reg[2]),
        .I1(i_reg[3]),
        .O(i0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i0_carry_i_6
       (.I0(i_reg[0]),
        .I1(i_reg[1]),
        .O(i0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \i[0]_i_1 
       (.I0(i0_carry__2_n_0),
        .I1(count1_carry__2_n_0),
        .O(i));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_3 
       (.I0(i_reg[0]),
        .O(\i[0]_i_3_n_0 ));
  FDRE \i_reg[0] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .R(i));
  CARRY4 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2_n_0 ,\i_reg[0]_i_2_n_1 ,\i_reg[0]_i_2_n_2 ,\i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({i_reg[3:1],\i[0]_i_3_n_0 }));
  FDRE \i_reg[10] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(i));
  FDRE \i_reg[11] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(i));
  FDRE \i_reg[12] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(i));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  FDRE \i_reg[13] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(i));
  FDRE \i_reg[14] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(i));
  FDRE \i_reg[15] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(i));
  FDRE \i_reg[16] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(i));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg[19:16]));
  FDRE \i_reg[17] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(i));
  FDRE \i_reg[18] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(i));
  FDRE \i_reg[19] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(i));
  FDRE \i_reg[1] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(i));
  FDRE \i_reg[20] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(i));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg[23:20]));
  FDRE \i_reg[21] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(i));
  FDRE \i_reg[22] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(i));
  FDRE \i_reg[23] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(i));
  FDRE \i_reg[24] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(i));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S(i_reg[27:24]));
  FDRE \i_reg[25] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg[25]),
        .R(i));
  FDRE \i_reg[26] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg[26]),
        .R(i));
  FDRE \i_reg[27] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg[27]),
        .R(i));
  FDRE \i_reg[28] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg[28]),
        .R(i));
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_reg[28]_i_1_CO_UNCONNECTED [3],\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S(i_reg[31:28]));
  FDRE \i_reg[29] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg[29]),
        .R(i));
  FDRE \i_reg[2] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(i));
  FDRE \i_reg[30] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg[30]),
        .R(i));
  FDRE \i_reg[31] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg[31]),
        .R(i));
  FDRE \i_reg[3] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[0]_i_2_n_4 ),
        .Q(i_reg[3]),
        .R(i));
  FDRE \i_reg[4] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(i));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  FDRE \i_reg[5] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(i));
  FDRE \i_reg[6] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(i));
  FDRE \i_reg[7] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(i));
  FDRE \i_reg[8] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(i));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  FDRE \i_reg[9] 
       (.C(clk),
        .CE(count1_carry__2_n_0),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(i));
  LUT6 #(
    .INIT(64'hFBFBFB00FAFAFAFA)) 
    \logic_out[0]_INST_0 
       (.I0(\logic_out[0]_INST_0_i_1_n_0 ),
        .I1(\logic_out[0]_INST_0_i_2_n_0 ),
        .I2(\logic_out[0]_INST_0_i_3_n_0 ),
        .I3(digit),
        .I4(\logic_out[0]_INST_0_i_4_n_0 ),
        .I5(\logic_out[7] ),
        .O(logic_out[0]));
  LUT6 #(
    .INIT(64'h4010104004010104)) 
    \logic_out[0]_INST_0_i_1 
       (.I0(\logic_out[6]_INST_0_i_8_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(min[2]),
        .I5(\logic_out[2]_INST_0_i_3_n_0 ),
        .O(\logic_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEE00E)) 
    \logic_out[0]_INST_0_i_2 
       (.I0(\logic_out[3]_INST_0_i_2_n_0 ),
        .I1(\logic_out[6]_INST_0_i_7_n_0 ),
        .I2(\logic_out[4]_INST_0_i_4_n_0 ),
        .I3(\logic_out[6]_INST_0_i_15_n_0 ),
        .I4(\logic_out[5]_INST_0_i_9_n_0 ),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0880022002200880)) 
    \logic_out[0]_INST_0_i_3 
       (.I0(\logic_out[5]_INST_0_i_7_n_0 ),
        .I1(hour[0]),
        .I2(hour[1]),
        .I3(\logic_out[4]_INST_0_i_4_n_0 ),
        .I4(hour[2]),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCF7110CF308EEF30)) 
    \logic_out[0]_INST_0_i_4 
       (.I0(min[3]),
        .I1(min[4]),
        .I2(min[6]),
        .I3(min[7]),
        .I4(min[5]),
        .I5(\logic_out[2]_INST_0_i_3_n_0 ),
        .O(\logic_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEF0F0EEEEFFFF)) 
    \logic_out[1]_INST_0 
       (.I0(digit),
        .I1(\logic_out[1]_INST_0_i_1_n_0 ),
        .I2(\logic_out[1]_INST_0_i_2_n_0 ),
        .I3(\logic_out[1]_INST_0_i_3_n_0 ),
        .I4(\logic_out[7] ),
        .I5(\logic_out[1]_INST_0_i_4_n_0 ),
        .O(logic_out[1]));
  LUT6 #(
    .INIT(64'h24418265A6418224)) 
    \logic_out[1]_INST_0_i_1 
       (.I0(\logic_out[2]_INST_0_i_5_n_0 ),
        .I1(\logic_out[6]_INST_0_i_12_n_0 ),
        .I2(min[3]),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(min[2]),
        .I5(min[1]),
        .O(\logic_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010410441040010)) 
    \logic_out[1]_INST_0_i_2 
       (.I0(\logic_out[6]_INST_0_i_8_n_0 ),
        .I1(min[0]),
        .I2(\logic_out[2]_INST_0_i_3_n_0 ),
        .I3(min[1]),
        .I4(min[2]),
        .I5(\logic_out[6]_INST_0_i_7_n_0 ),
        .O(\logic_out[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEE0EEEEEEEEE)) 
    \logic_out[1]_INST_0_i_3 
       (.I0(\logic_out[3]_INST_0_i_2_n_0 ),
        .I1(\logic_out[1]_INST_0_i_5_n_0 ),
        .I2(\logic_out[6]_INST_0_i_13_n_0 ),
        .I3(\logic_out[6]_INST_0_i_15_n_0 ),
        .I4(\logic_out[5]_INST_0_i_9_n_0 ),
        .I5(\logic_out[1]_INST_0_i_6_n_0 ),
        .O(\logic_out[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF9F9FFF9FFFFF6F)) 
    \logic_out[1]_INST_0_i_4 
       (.I0(\logic_out[6]_INST_0_i_6_n_0 ),
        .I1(hour[2]),
        .I2(\logic_out[5]_INST_0_i_7_n_0 ),
        .I3(hour[0]),
        .I4(\logic_out[4]_INST_0_i_4_n_0 ),
        .I5(hour[1]),
        .O(\logic_out[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hCF1CC3F7)) 
    \logic_out[1]_INST_0_i_5 
       (.I0(min[3]),
        .I1(min[5]),
        .I2(min[7]),
        .I3(min[4]),
        .I4(min[6]),
        .O(\logic_out[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAAFEBBAAFE)) 
    \logic_out[1]_INST_0_i_6 
       (.I0(\logic_out[6]_INST_0_i_6_n_0 ),
        .I1(hour[2]),
        .I2(hour[1]),
        .I3(hour[3]),
        .I4(\logic_out[6]_INST_0_i_15_n_0 ),
        .I5(\logic_out[4]_INST_0_i_9_n_0 ),
        .O(\logic_out[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAABAFFFFAABA0000)) 
    \logic_out[2]_INST_0 
       (.I0(\logic_out[2]_INST_0_i_1_n_0 ),
        .I1(\logic_out[3]_INST_0_i_2_n_0 ),
        .I2(\logic_out[2]_INST_0_i_2_n_0 ),
        .I3(\logic_out[2]_INST_0_i_3_n_0 ),
        .I4(\logic_out[7] ),
        .I5(\logic_out[2]_INST_0_i_4_n_0 ),
        .O(logic_out[2]));
  LUT4 #(
    .INIT(16'h0080)) 
    \logic_out[2]_INST_0_i_1 
       (.I0(\logic_out[4]_INST_0_i_4_n_0 ),
        .I1(\logic_out[6]_INST_0_i_15_n_0 ),
        .I2(\logic_out[6]_INST_0_i_6_n_0 ),
        .I3(\logic_out[5]_INST_0_i_9_n_0 ),
        .O(\logic_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00E03E03030000E0)) 
    \logic_out[2]_INST_0_i_2 
       (.I0(min[2]),
        .I1(min[3]),
        .I2(min[4]),
        .I3(min[6]),
        .I4(min[7]),
        .I5(min[5]),
        .O(\logic_out[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDB417D6559417D24)) 
    \logic_out[2]_INST_0_i_3 
       (.I0(\logic_out[2]_INST_0_i_5_n_0 ),
        .I1(\logic_out[6]_INST_0_i_12_n_0 ),
        .I2(min[3]),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(min[2]),
        .I5(min[1]),
        .O(\logic_out[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0200020002FF0200)) 
    \logic_out[2]_INST_0_i_4 
       (.I0(\logic_out[2]_INST_0_i_6_n_0 ),
        .I1(\logic_out[4]_INST_0_i_7_n_0 ),
        .I2(hour[0]),
        .I3(digit),
        .I4(\logic_out[2]_INST_0_i_7_n_0 ),
        .I5(\logic_out[2]_INST_0_i_8_n_0 ),
        .O(\logic_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h4BB424DB)) 
    \logic_out[2]_INST_0_i_5 
       (.I0(min[5]),
        .I1(min[7]),
        .I2(min[6]),
        .I3(min[3]),
        .I4(min[4]),
        .O(\logic_out[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFA6007D0041FFDB)) 
    \logic_out[2]_INST_0_i_6 
       (.I0(\logic_out[4]_INST_0_i_9_n_0 ),
        .I1(\logic_out[6]_INST_0_i_15_n_0 ),
        .I2(hour[3]),
        .I3(hour[1]),
        .I4(hour[2]),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4054404411011501)) 
    \logic_out[2]_INST_0_i_7 
       (.I0(min[0]),
        .I1(\logic_out[6]_INST_0_i_18_n_0 ),
        .I2(\logic_out[6]_INST_0_i_17_n_0 ),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(min[2]),
        .I5(min[1]),
        .O(\logic_out[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF004B90F624)) 
    \logic_out[2]_INST_0_i_8 
       (.I0(min[3]),
        .I1(\logic_out[6]_INST_0_i_12_n_0 ),
        .I2(\logic_out[2]_INST_0_i_5_n_0 ),
        .I3(min[2]),
        .I4(\logic_out[6]_INST_0_i_7_n_0 ),
        .I5(min[1]),
        .O(\logic_out[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    \logic_out[3]_INST_0 
       (.I0(\logic_out[3]_INST_0_i_1_n_0 ),
        .I1(\logic_out[3]_INST_0_i_2_n_0 ),
        .I2(\logic_out[3]_INST_0_i_3_n_0 ),
        .I3(\logic_out[7] ),
        .I4(\logic_out[3]_INST_0_i_4_n_0 ),
        .I5(\logic_out[3]_INST_0_i_5_n_0 ),
        .O(logic_out[3]));
  LUT6 #(
    .INIT(64'hFFFFFF0FFF2FFF2F)) 
    \logic_out[3]_INST_0_i_1 
       (.I0(\logic_out[2]_INST_0_i_3_n_0 ),
        .I1(\logic_out[2]_INST_0_i_2_n_0 ),
        .I2(\logic_out[7] ),
        .I3(digit),
        .I4(\logic_out[3]_INST_0_i_6_n_0 ),
        .I5(\logic_out[3]_INST_0_i_7_n_0 ),
        .O(\logic_out[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFAFFEA)) 
    \logic_out[3]_INST_0_i_2 
       (.I0(digit),
        .I1(min[4]),
        .I2(min[6]),
        .I3(min[7]),
        .I4(min[5]),
        .O(\logic_out[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005553)) 
    \logic_out[3]_INST_0_i_3 
       (.I0(\logic_out[4]_INST_0_i_4_n_0 ),
        .I1(\logic_out[3]_INST_0_i_8_n_0 ),
        .I2(\logic_out[6]_INST_0_i_6_n_0 ),
        .I3(\logic_out[6]_INST_0_i_15_n_0 ),
        .I4(\logic_out[5]_INST_0_i_8_n_0 ),
        .I5(\logic_out[5]_INST_0_i_9_n_0 ),
        .O(\logic_out[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4410104404414104)) 
    \logic_out[3]_INST_0_i_4 
       (.I0(\logic_out[6]_INST_0_i_8_n_0 ),
        .I1(min[0]),
        .I2(min[1]),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(min[2]),
        .I5(\logic_out[2]_INST_0_i_3_n_0 ),
        .O(\logic_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD56B6BD5FFFFFFFF)) 
    \logic_out[3]_INST_0_i_5 
       (.I0(hour[0]),
        .I1(hour[1]),
        .I2(\logic_out[4]_INST_0_i_4_n_0 ),
        .I3(hour[2]),
        .I4(\logic_out[6]_INST_0_i_6_n_0 ),
        .I5(\logic_out[5]_INST_0_i_7_n_0 ),
        .O(\logic_out[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0C0F010C0F01)) 
    \logic_out[3]_INST_0_i_6 
       (.I0(min[1]),
        .I1(min[2]),
        .I2(\logic_out[6]_INST_0_i_7_n_0 ),
        .I3(min[3]),
        .I4(\logic_out[6]_INST_0_i_12_n_0 ),
        .I5(\logic_out[2]_INST_0_i_5_n_0 ),
        .O(\logic_out[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000C07C7C070000)) 
    \logic_out[3]_INST_0_i_7 
       (.I0(min[2]),
        .I1(min[3]),
        .I2(min[4]),
        .I3(min[6]),
        .I4(min[7]),
        .I5(min[5]),
        .O(\logic_out[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5900656541416524)) 
    \logic_out[3]_INST_0_i_8 
       (.I0(\logic_out[4]_INST_0_i_9_n_0 ),
        .I1(\logic_out[6]_INST_0_i_15_n_0 ),
        .I2(hour[3]),
        .I3(hour[1]),
        .I4(hour[2]),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBABB)) 
    \logic_out[4]_INST_0 
       (.I0(\logic_out[4]_INST_0_i_1_n_0 ),
        .I1(\logic_out[4]_INST_0_i_2_n_0 ),
        .I2(\logic_out[4]_INST_0_i_3_n_0 ),
        .I3(\logic_out[4]_INST_0_i_4_n_0 ),
        .I4(\logic_out[4]_INST_0_i_5_n_0 ),
        .I5(\logic_out[4]_INST_0_i_6_n_0 ),
        .O(logic_out[4]));
  LUT6 #(
    .INIT(64'h00F000F000600000)) 
    \logic_out[4]_INST_0_i_1 
       (.I0(\logic_out[6]_INST_0_i_6_n_0 ),
        .I1(hour[2]),
        .I2(digit),
        .I3(\logic_out[7] ),
        .I4(\logic_out[4]_INST_0_i_7_n_0 ),
        .I5(hour[0]),
        .O(\logic_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFF3FFF7F)) 
    \logic_out[4]_INST_0_i_2 
       (.I0(\logic_out[6]_INST_0_i_14_n_0 ),
        .I1(digit),
        .I2(\logic_out[7] ),
        .I3(\logic_out[6]_INST_0_i_16_n_0 ),
        .I4(\logic_out[6]_INST_0_i_15_n_0 ),
        .I5(\logic_out[4]_INST_0_i_8_n_0 ),
        .O(\logic_out[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0860061008E00E30)) 
    \logic_out[4]_INST_0_i_3 
       (.I0(hour[3]),
        .I1(hour[4]),
        .I2(hour[7]),
        .I3(hour[5]),
        .I4(hour[6]),
        .I5(hour[2]),
        .O(\logic_out[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h24A68282BEBE9ADB)) 
    \logic_out[4]_INST_0_i_4 
       (.I0(\logic_out[4]_INST_0_i_9_n_0 ),
        .I1(\logic_out[6]_INST_0_i_15_n_0 ),
        .I2(hour[3]),
        .I3(hour[1]),
        .I4(hour[2]),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020202000200030)) 
    \logic_out[4]_INST_0_i_5 
       (.I0(\logic_out[2]_INST_0_i_3_n_0 ),
        .I1(\logic_out[6]_INST_0_i_10_n_0 ),
        .I2(common_digit[1]),
        .I3(\logic_out[6]_INST_0_i_11_n_0 ),
        .I4(\logic_out[6]_INST_0_i_7_n_0 ),
        .I5(\logic_out[6]_INST_0_i_12_n_0 ),
        .O(\logic_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF060F000F000F060)) 
    \logic_out[4]_INST_0_i_6 
       (.I0(min[2]),
        .I1(\logic_out[6]_INST_0_i_7_n_0 ),
        .I2(common_digit[0]),
        .I3(min[0]),
        .I4(\logic_out[2]_INST_0_i_3_n_0 ),
        .I5(min[1]),
        .O(\logic_out[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8FA53C8FF13CA5F1)) 
    \logic_out[4]_INST_0_i_7 
       (.I0(\logic_out[6]_INST_0_i_6_n_0 ),
        .I1(hour[2]),
        .I2(hour[1]),
        .I3(hour[3]),
        .I4(\logic_out[6]_INST_0_i_15_n_0 ),
        .I5(\logic_out[4]_INST_0_i_9_n_0 ),
        .O(\logic_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h320380C820C20CB0)) 
    \logic_out[4]_INST_0_i_8 
       (.I0(hour[2]),
        .I1(hour[6]),
        .I2(hour[5]),
        .I3(hour[7]),
        .I4(hour[4]),
        .I5(hour[3]),
        .O(\logic_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h59A66559)) 
    \logic_out[4]_INST_0_i_9 
       (.I0(hour[3]),
        .I1(hour[7]),
        .I2(hour[5]),
        .I3(hour[6]),
        .I4(hour[4]),
        .O(\logic_out[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4F4F4)) 
    \logic_out[5]_INST_0 
       (.I0(\logic_out[5]_INST_0_i_1_n_0 ),
        .I1(\logic_out[5]_INST_0_i_2_n_0 ),
        .I2(\logic_out[5]_INST_0_i_3_n_0 ),
        .I3(\logic_out[5]_INST_0_i_4_n_0 ),
        .I4(\logic_out[5]_INST_0_i_5_n_0 ),
        .I5(\logic_out[5]_INST_0_i_6_n_0 ),
        .O(logic_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h06FF)) 
    \logic_out[5]_INST_0_i_1 
       (.I0(hour[1]),
        .I1(\logic_out[4]_INST_0_i_4_n_0 ),
        .I2(hour[0]),
        .I3(\logic_out[5]_INST_0_i_7_n_0 ),
        .O(\logic_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1581E87E7E571581)) 
    \logic_out[5]_INST_0_i_10 
       (.I0(hour[2]),
        .I1(hour[3]),
        .I2(hour[7]),
        .I3(hour[5]),
        .I4(hour[6]),
        .I5(hour[4]),
        .O(\logic_out[5]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF99F9996)) 
    \logic_out[5]_INST_0_i_2 
       (.I0(hour[2]),
        .I1(\logic_out[6]_INST_0_i_6_n_0 ),
        .I2(hour[1]),
        .I3(\logic_out[4]_INST_0_i_4_n_0 ),
        .I4(hour[0]),
        .O(\logic_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE00000)) 
    \logic_out[5]_INST_0_i_3 
       (.I0(\logic_out[6]_INST_0_i_7_n_0 ),
        .I1(\logic_out[6]_INST_0_i_12_n_0 ),
        .I2(\logic_out[2]_INST_0_i_3_n_0 ),
        .I3(\logic_out[2]_INST_0_i_2_n_0 ),
        .I4(\logic_out[7] ),
        .I5(\logic_out[3]_INST_0_i_2_n_0 ),
        .O(\logic_out[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9FF99699)) 
    \logic_out[5]_INST_0_i_4 
       (.I0(\logic_out[6]_INST_0_i_7_n_0 ),
        .I1(min[2]),
        .I2(min[1]),
        .I3(\logic_out[2]_INST_0_i_3_n_0 ),
        .I4(min[0]),
        .O(\logic_out[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00F6)) 
    \logic_out[5]_INST_0_i_5 
       (.I0(\logic_out[2]_INST_0_i_3_n_0 ),
        .I1(min[1]),
        .I2(min[0]),
        .I3(\logic_out[6]_INST_0_i_8_n_0 ),
        .O(\logic_out[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D000D000000)) 
    \logic_out[5]_INST_0_i_6 
       (.I0(\logic_out[4]_INST_0_i_4_n_0 ),
        .I1(\logic_out[5]_INST_0_i_8_n_0 ),
        .I2(\logic_out[5]_INST_0_i_9_n_0 ),
        .I3(\logic_out[7] ),
        .I4(\logic_out[6]_INST_0_i_15_n_0 ),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8A88A0A22A0A82A)) 
    \logic_out[5]_INST_0_i_7 
       (.I0(common_digit[2]),
        .I1(\logic_out[6]_INST_0_i_6_n_0 ),
        .I2(hour[2]),
        .I3(hour[1]),
        .I4(\logic_out[6]_INST_0_i_5_n_0 ),
        .I5(\logic_out[5]_INST_0_i_10_n_0 ),
        .O(\logic_out[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h300300C020C20CB0)) 
    \logic_out[5]_INST_0_i_8 
       (.I0(hour[2]),
        .I1(hour[6]),
        .I2(hour[5]),
        .I3(hour[7]),
        .I4(hour[4]),
        .I5(hour[3]),
        .O(\logic_out[5]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFECCFFFF)) 
    \logic_out[5]_INST_0_i_9 
       (.I0(hour[4]),
        .I1(hour[7]),
        .I2(hour[5]),
        .I3(hour[6]),
        .I4(digit),
        .O(\logic_out[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFCFCFDDDDCCCC)) 
    \logic_out[6]_INST_0 
       (.I0(\logic_out[6]_INST_0_i_1_n_0 ),
        .I1(\logic_out[6]_INST_0_i_2_n_0 ),
        .I2(\logic_out[6]_INST_0_i_3_n_0 ),
        .I3(\logic_out[6]_INST_0_i_4_n_0 ),
        .I4(digit),
        .I5(\logic_out[7] ),
        .O(logic_out[6]));
  LUT6 #(
    .INIT(64'hF5A77FFF7FFFFA5B)) 
    \logic_out[6]_INST_0_i_1 
       (.I0(\logic_out[6]_INST_0_i_5_n_0 ),
        .I1(hour[0]),
        .I2(hour[1]),
        .I3(\logic_out[4]_INST_0_i_4_n_0 ),
        .I4(hour[2]),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \logic_out[6]_INST_0_i_10 
       (.I0(min[7]),
        .I1(min[5]),
        .I2(min[6]),
        .O(\logic_out[6]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8C38)) 
    \logic_out[6]_INST_0_i_11 
       (.I0(min[4]),
        .I1(min[6]),
        .I2(min[7]),
        .I3(min[5]),
        .O(\logic_out[6]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h9929B96B)) 
    \logic_out[6]_INST_0_i_12 
       (.I0(min[5]),
        .I1(min[7]),
        .I2(min[6]),
        .I3(min[4]),
        .I4(min[3]),
        .O(\logic_out[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4D992200FFFFFFFF)) 
    \logic_out[6]_INST_0_i_13 
       (.I0(\logic_out[6]_INST_0_i_15_n_0 ),
        .I1(hour[3]),
        .I2(hour[1]),
        .I3(hour[2]),
        .I4(\logic_out[4]_INST_0_i_9_n_0 ),
        .I5(\logic_out[6]_INST_0_i_6_n_0 ),
        .O(\logic_out[6]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2DBD)) 
    \logic_out[6]_INST_0_i_14 
       (.I0(hour[7]),
        .I1(hour[5]),
        .I2(hour[6]),
        .I3(hour[4]),
        .O(\logic_out[6]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC71CF10F)) 
    \logic_out[6]_INST_0_i_15 
       (.I0(hour[3]),
        .I1(hour[4]),
        .I2(hour[7]),
        .I3(hour[5]),
        .I4(hour[6]),
        .O(\logic_out[6]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \logic_out[6]_INST_0_i_16 
       (.I0(hour[7]),
        .I1(hour[5]),
        .I2(hour[6]),
        .O(\logic_out[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h66D6B96B99294694)) 
    \logic_out[6]_INST_0_i_17 
       (.I0(min[5]),
        .I1(min[7]),
        .I2(min[6]),
        .I3(min[4]),
        .I4(min[3]),
        .I5(min[2]),
        .O(\logic_out[6]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h24DB45B25D24DB45)) 
    \logic_out[6]_INST_0_i_18 
       (.I0(min[2]),
        .I1(min[5]),
        .I2(min[7]),
        .I3(min[6]),
        .I4(min[3]),
        .I5(min[4]),
        .O(\logic_out[6]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E00E3883)) 
    \logic_out[6]_INST_0_i_2 
       (.I0(min[0]),
        .I1(min[1]),
        .I2(\logic_out[6]_INST_0_i_7_n_0 ),
        .I3(min[2]),
        .I4(\logic_out[2]_INST_0_i_3_n_0 ),
        .I5(\logic_out[6]_INST_0_i_8_n_0 ),
        .O(\logic_out[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h03300202)) 
    \logic_out[6]_INST_0_i_3 
       (.I0(\logic_out[6]_INST_0_i_9_n_0 ),
        .I1(\logic_out[6]_INST_0_i_10_n_0 ),
        .I2(\logic_out[6]_INST_0_i_11_n_0 ),
        .I3(\logic_out[6]_INST_0_i_7_n_0 ),
        .I4(\logic_out[6]_INST_0_i_12_n_0 ),
        .O(\logic_out[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000C3A0)) 
    \logic_out[6]_INST_0_i_4 
       (.I0(\logic_out[6]_INST_0_i_13_n_0 ),
        .I1(\logic_out[6]_INST_0_i_6_n_0 ),
        .I2(\logic_out[6]_INST_0_i_14_n_0 ),
        .I3(\logic_out[6]_INST_0_i_15_n_0 ),
        .I4(\logic_out[6]_INST_0_i_16_n_0 ),
        .O(\logic_out[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6DB65BA59249A45A)) 
    \logic_out[6]_INST_0_i_5 
       (.I0(hour[3]),
        .I1(hour[4]),
        .I2(hour[7]),
        .I3(hour[5]),
        .I4(hour[6]),
        .I5(hour[2]),
        .O(\logic_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3B23C2CC23C2CCBC)) 
    \logic_out[6]_INST_0_i_6 
       (.I0(hour[2]),
        .I1(hour[6]),
        .I2(hour[5]),
        .I3(hour[7]),
        .I4(hour[4]),
        .I5(hour[3]),
        .O(\logic_out[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4FB42DF20DB024D2)) 
    \logic_out[6]_INST_0_i_7 
       (.I0(min[5]),
        .I1(min[7]),
        .I2(min[6]),
        .I3(min[4]),
        .I4(min[3]),
        .I5(min[2]),
        .O(\logic_out[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h034CB142FFFFFFFF)) 
    \logic_out[6]_INST_0_i_8 
       (.I0(min[1]),
        .I1(min[2]),
        .I2(\logic_out[6]_INST_0_i_7_n_0 ),
        .I3(\logic_out[6]_INST_0_i_17_n_0 ),
        .I4(\logic_out[6]_INST_0_i_18_n_0 ),
        .I5(common_digit[0]),
        .O(\logic_out[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2490FFFFA4D0FFFF)) 
    \logic_out[6]_INST_0_i_9 
       (.I0(min[3]),
        .I1(min[2]),
        .I2(\logic_out[2]_INST_0_i_5_n_0 ),
        .I3(\logic_out[6]_INST_0_i_12_n_0 ),
        .I4(\logic_out[6]_INST_0_i_7_n_0 ),
        .I5(min[1]),
        .O(\logic_out[6]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \min[0]_i_1 
       (.I0(min[0]),
        .I1(\min[7]_i_3_n_0 ),
        .O(\min[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \min[1]_i_1 
       (.I0(min[1]),
        .I1(min[0]),
        .O(\min[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \min[2]_i_1 
       (.I0(min[1]),
        .I1(min[0]),
        .I2(min[2]),
        .I3(\min[7]_i_3_n_0 ),
        .O(\min[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \min[3]_i_1 
       (.I0(min[0]),
        .I1(min[1]),
        .I2(min[2]),
        .I3(min[3]),
        .I4(\min[7]_i_3_n_0 ),
        .O(\min[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \min[4]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(min[3]),
        .I2(min[2]),
        .I3(min[1]),
        .I4(min[0]),
        .I5(min[4]),
        .O(\min[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \min[5]_i_1 
       (.I0(\min[7]_i_3_n_0 ),
        .I1(\min[5]_i_2_n_0 ),
        .I2(min[5]),
        .O(\min[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \min[5]_i_2 
       (.I0(min[0]),
        .I1(min[1]),
        .I2(min[2]),
        .I3(min[3]),
        .I4(min[4]),
        .O(\min[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \min[6]_i_1 
       (.I0(min[6]),
        .I1(\min[7]_i_4_n_0 ),
        .O(\min[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \min[7]_i_1 
       (.I0(\second[7]_i_3_n_0 ),
        .I1(\min[7]_i_3_n_0 ),
        .O(\min[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \min[7]_i_2 
       (.I0(min[7]),
        .I1(min[6]),
        .I2(\min[7]_i_4_n_0 ),
        .O(\min[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \min[7]_i_3 
       (.I0(min[6]),
        .I1(min[0]),
        .I2(min[4]),
        .I3(min[3]),
        .I4(\min[7]_i_5_n_0 ),
        .O(\min[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \min[7]_i_4 
       (.I0(min[4]),
        .I1(min[3]),
        .I2(min[2]),
        .I3(min[1]),
        .I4(min[0]),
        .I5(min[5]),
        .O(\min[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \min[7]_i_5 
       (.I0(min[1]),
        .I1(min[2]),
        .I2(min[7]),
        .I3(min[5]),
        .O(\min[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[0] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[0]_i_1_n_0 ),
        .Q(min[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[1] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[1]_i_1_n_0 ),
        .Q(min[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[2] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[2]_i_1_n_0 ),
        .Q(min[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[3] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[3]_i_1_n_0 ),
        .Q(min[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[4] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[4]_i_1_n_0 ),
        .Q(min[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[5] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[5]_i_1_n_0 ),
        .Q(min[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[6] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[6]_i_1_n_0 ),
        .Q(min[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \min_reg[7] 
       (.C(clk),
        .CE(\min[7]_i_1_n_0 ),
        .D(\min[7]_i_2_n_0 ),
        .Q(min[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \second[0]_i_1 
       (.I0(second[0]),
        .I1(\second[7]_i_3_n_0 ),
        .O(\second[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \second[1]_i_1 
       (.I0(second[0]),
        .I1(second[1]),
        .O(\second[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \second[2]_i_1 
       (.I0(second[0]),
        .I1(second[1]),
        .I2(second[2]),
        .I3(\second[7]_i_3_n_0 ),
        .O(\second[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \second[3]_i_1 
       (.I0(second[2]),
        .I1(second[1]),
        .I2(second[0]),
        .I3(second[3]),
        .I4(\second[7]_i_3_n_0 ),
        .O(\second[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \second[4]_i_1 
       (.I0(\second[7]_i_3_n_0 ),
        .I1(second[3]),
        .I2(second[0]),
        .I3(second[1]),
        .I4(second[2]),
        .I5(second[4]),
        .O(\second[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \second[5]_i_1 
       (.I0(\second[7]_i_3_n_0 ),
        .I1(\second[5]_i_2_n_0 ),
        .I2(second[5]),
        .O(\second[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \second[5]_i_2 
       (.I0(second[4]),
        .I1(second[2]),
        .I2(second[1]),
        .I3(second[0]),
        .I4(second[3]),
        .O(\second[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \second[6]_i_1 
       (.I0(second[6]),
        .I1(\second[7]_i_4_n_0 ),
        .O(\second[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \second[7]_i_1 
       (.I0(\second[7]_i_3_n_0 ),
        .I1(count1_carry__2_n_0),
        .O(\second[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \second[7]_i_2 
       (.I0(second[7]),
        .I1(\second[7]_i_4_n_0 ),
        .I2(second[6]),
        .O(\second[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \second[7]_i_3 
       (.I0(second[7]),
        .I1(second[3]),
        .I2(second[2]),
        .I3(second[5]),
        .I4(\second[7]_i_5_n_0 ),
        .O(\second[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \second[7]_i_4 
       (.I0(second[3]),
        .I1(second[0]),
        .I2(second[1]),
        .I3(second[2]),
        .I4(second[4]),
        .I5(second[5]),
        .O(\second[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \second[7]_i_5 
       (.I0(second[4]),
        .I1(second[6]),
        .I2(second[1]),
        .I3(second[0]),
        .O(\second[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[0] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[0]_i_1_n_0 ),
        .Q(second[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[1] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[1]_i_1_n_0 ),
        .Q(second[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[2] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[2]_i_1_n_0 ),
        .Q(second[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[3] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[3]_i_1_n_0 ),
        .Q(second[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[4] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[4]_i_1_n_0 ),
        .Q(second[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[5] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[5]_i_1_n_0 ),
        .Q(second[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[6] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[6]_i_1_n_0 ),
        .Q(second[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[7] 
       (.C(clk),
        .CE(\second[7]_i_1_n_0 ),
        .D(\second[7]_i_2_n_0 ),
        .Q(second[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Zynq_System_LogicSignalOut_0_0,LogicSignalOut,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "LogicSignalOut,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    logic_out,
    common_digit);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_System_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW" *) input resetn;
  output [7:0]logic_out;
  output [3:0]common_digit;

  wire clk;
  wire [3:0]common_digit;
  wire [7:0]logic_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut inst
       (.clk(clk),
        .common_digit(common_digit),
        .logic_out(logic_out[6:0]),
        .\logic_out[7] (logic_out[7]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
