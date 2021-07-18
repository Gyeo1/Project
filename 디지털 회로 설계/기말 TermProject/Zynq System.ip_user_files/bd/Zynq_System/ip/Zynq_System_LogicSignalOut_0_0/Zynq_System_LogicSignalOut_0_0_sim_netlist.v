// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon May 18 15:20:09 2020
// Host        : DESKTOP-B38P1G4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Public/Zynq System/Zynq
//               System.srcs/sources_1/bd/Zynq_System/ip/Zynq_System_LogicSignalOut_0_0/Zynq_System_LogicSignalOut_0_0_sim_netlist.v}
// Design      : Zynq_System_LogicSignalOut_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_System_LogicSignalOut_0_0,LogicSignalOut,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "LogicSignalOut,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Zynq_System_LogicSignalOut_0_0
   (clk,
    reset,
    logic_out,
    led_out,
    common_digit);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Zynq_System_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  output [7:0]logic_out;
  output led_out;
  output [3:0]common_digit;

  wire \<const0> ;
  wire clk;
  wire [3:0]common_digit;
  wire reset;

  assign led_out = \<const0> ;
  assign logic_out[7] = \<const0> ;
  assign logic_out[6] = \<const0> ;
  assign logic_out[5] = \<const0> ;
  assign logic_out[4] = \<const0> ;
  assign logic_out[3] = \<const0> ;
  assign logic_out[2] = \<const0> ;
  assign logic_out[1] = \<const0> ;
  assign logic_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Zynq_System_LogicSignalOut_0_0_LogicSignalOut inst
       (.clk(clk),
        .common_digit(common_digit),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "LogicSignalOut" *) 
module Zynq_System_LogicSignalOut_0_0_LogicSignalOut
   (common_digit,
    reset,
    clk);
  output [3:0]common_digit;
  input reset;
  input clk;

  wire \Led_act_counter[0]_i_1_n_0 ;
  wire \Led_act_counter[1]_i_1_n_0 ;
  wire \Led_act_counter_reg_n_0_[0] ;
  wire \Led_act_counter_reg_n_0_[1] ;
  wire bit_count1_carry__0_i_1_n_0;
  wire bit_count1_carry__0_i_2_n_0;
  wire bit_count1_carry__0_i_3_n_0;
  wire bit_count1_carry__0_i_4_n_0;
  wire bit_count1_carry__0_i_5_n_0;
  wire bit_count1_carry__0_i_6_n_0;
  wire bit_count1_carry__0_i_7_n_0;
  wire bit_count1_carry__0_n_0;
  wire bit_count1_carry__0_n_1;
  wire bit_count1_carry__0_n_2;
  wire bit_count1_carry__0_n_3;
  wire bit_count1_carry__1_i_1_n_0;
  wire bit_count1_carry__1_i_2_n_0;
  wire bit_count1_carry__1_i_3_n_0;
  wire bit_count1_carry__1_i_4_n_0;
  wire bit_count1_carry__1_i_5_n_0;
  wire bit_count1_carry__1_i_6_n_0;
  wire bit_count1_carry__1_n_0;
  wire bit_count1_carry__1_n_1;
  wire bit_count1_carry__1_n_2;
  wire bit_count1_carry__1_n_3;
  wire bit_count1_carry__2_i_1_n_0;
  wire bit_count1_carry__2_i_2_n_0;
  wire bit_count1_carry__2_i_3_n_0;
  wire bit_count1_carry__2_i_4_n_0;
  wire bit_count1_carry__2_n_0;
  wire bit_count1_carry__2_n_1;
  wire bit_count1_carry__2_n_2;
  wire bit_count1_carry__2_n_3;
  wire bit_count1_carry_i_1_n_0;
  wire bit_count1_carry_i_2_n_0;
  wire bit_count1_carry_i_3_n_0;
  wire bit_count1_carry_i_4_n_0;
  wire bit_count1_carry_i_5_n_0;
  wire bit_count1_carry_i_6_n_0;
  wire bit_count1_carry_i_7_n_0;
  wire bit_count1_carry_n_0;
  wire bit_count1_carry_n_1;
  wire bit_count1_carry_n_2;
  wire bit_count1_carry_n_3;
  wire clk;
  wire [3:0]common_digit;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[28]_i_2_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_4_n_0 ;
  wire \count[28]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
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
  wire reset;
  wire [3:0]NLW_bit_count1_carry_O_UNCONNECTED;
  wire [3:0]NLW_bit_count1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_bit_count1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_bit_count1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Led_act_counter[0]_i_1 
       (.I0(bit_count1_carry__2_n_0),
        .I1(reset),
        .I2(\Led_act_counter_reg_n_0_[0] ),
        .O(\Led_act_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Led_act_counter[1]_i_1 
       (.I0(\Led_act_counter_reg_n_0_[0] ),
        .I1(reset),
        .I2(bit_count1_carry__2_n_0),
        .I3(\Led_act_counter_reg_n_0_[1] ),
        .O(\Led_act_counter[1]_i_1_n_0 ));
  FDRE \Led_act_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\Led_act_counter[0]_i_1_n_0 ),
        .Q(\Led_act_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Led_act_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\Led_act_counter[1]_i_1_n_0 ),
        .Q(\Led_act_counter_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 bit_count1_carry
       (.CI(1'b0),
        .CO({bit_count1_carry_n_0,bit_count1_carry_n_1,bit_count1_carry_n_2,bit_count1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bit_count1_carry_i_1_n_0,bit_count1_carry_i_2_n_0,bit_count1_carry_i_3_n_0}),
        .O(NLW_bit_count1_carry_O_UNCONNECTED[3:0]),
        .S({bit_count1_carry_i_4_n_0,bit_count1_carry_i_5_n_0,bit_count1_carry_i_6_n_0,bit_count1_carry_i_7_n_0}));
  CARRY4 bit_count1_carry__0
       (.CI(bit_count1_carry_n_0),
        .CO({bit_count1_carry__0_n_0,bit_count1_carry__0_n_1,bit_count1_carry__0_n_2,bit_count1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({bit_count1_carry__0_i_1_n_0,1'b0,bit_count1_carry__0_i_2_n_0,bit_count1_carry__0_i_3_n_0}),
        .O(NLW_bit_count1_carry__0_O_UNCONNECTED[3:0]),
        .S({bit_count1_carry__0_i_4_n_0,bit_count1_carry__0_i_5_n_0,bit_count1_carry__0_i_6_n_0,bit_count1_carry__0_i_7_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__0_i_1
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(bit_count1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    bit_count1_carry__0_i_2
       (.I0(count_reg[11]),
        .O(bit_count1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bit_count1_carry__0_i_3
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(bit_count1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    bit_count1_carry__0_i_4
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(bit_count1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__0_i_5
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(bit_count1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    bit_count1_carry__0_i_6
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(bit_count1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    bit_count1_carry__0_i_7
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(bit_count1_carry__0_i_7_n_0));
  CARRY4 bit_count1_carry__1
       (.CI(bit_count1_carry__0_n_0),
        .CO({bit_count1_carry__1_n_0,bit_count1_carry__1_n_1,bit_count1_carry__1_n_2,bit_count1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({bit_count1_carry__1_i_1_n_0,1'b0,bit_count1_carry__1_i_2_n_0,1'b0}),
        .O(NLW_bit_count1_carry__1_O_UNCONNECTED[3:0]),
        .S({bit_count1_carry__1_i_3_n_0,bit_count1_carry__1_i_4_n_0,bit_count1_carry__1_i_5_n_0,bit_count1_carry__1_i_6_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__1_i_1
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(bit_count1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bit_count1_carry__1_i_2
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(bit_count1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    bit_count1_carry__1_i_3
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(bit_count1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__1_i_4
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(bit_count1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    bit_count1_carry__1_i_5
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(bit_count1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__1_i_6
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(bit_count1_carry__1_i_6_n_0));
  CARRY4 bit_count1_carry__2
       (.CI(bit_count1_carry__1_n_0),
        .CO({bit_count1_carry__2_n_0,bit_count1_carry__2_n_1,bit_count1_carry__2_n_2,bit_count1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({count_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_bit_count1_carry__2_O_UNCONNECTED[3:0]),
        .S({bit_count1_carry__2_i_1_n_0,bit_count1_carry__2_i_2_n_0,bit_count1_carry__2_i_3_n_0,bit_count1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__2_i_1
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(bit_count1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__2_i_2
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(bit_count1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__2_i_3
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(bit_count1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry__2_i_4
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(bit_count1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bit_count1_carry_i_1
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(bit_count1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bit_count1_carry_i_2
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(bit_count1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bit_count1_carry_i_3
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(bit_count1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    bit_count1_carry_i_4
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(bit_count1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    bit_count1_carry_i_5
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(bit_count1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    bit_count1_carry_i_6
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(bit_count1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    bit_count1_carry_i_7
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(bit_count1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \common_digit[0]_INST_0 
       (.I0(\Led_act_counter_reg_n_0_[0] ),
        .I1(\Led_act_counter_reg_n_0_[1] ),
        .O(common_digit[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \common_digit[1]_INST_0 
       (.I0(\Led_act_counter_reg_n_0_[1] ),
        .I1(\Led_act_counter_reg_n_0_[0] ),
        .O(common_digit[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \common_digit[2]_INST_0 
       (.I0(\Led_act_counter_reg_n_0_[0] ),
        .I1(\Led_act_counter_reg_n_0_[1] ),
        .O(common_digit[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \common_digit[3]_INST_0 
       (.I0(\Led_act_counter_reg_n_0_[0] ),
        .I1(\Led_act_counter_reg_n_0_[1] ),
        .O(common_digit[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(reset),
        .O(\count[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[3]),
        .O(\count[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[2]),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[1]),
        .O(\count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .I1(bit_count1_carry__2_n_0),
        .O(\count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[27]),
        .O(\count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[26]),
        .O(\count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[25]),
        .O(\count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[24]),
        .O(\count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[31]),
        .O(\count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[30]),
        .O(\count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[29]),
        .O(\count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[28]),
        .O(\count[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[5]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[4]),
        .O(\count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_2 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_3 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_4 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_5 
       (.I0(bit_count1_carry__2_n_0),
        .I1(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,bit_count1_carry__2_n_0}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 }));
  FDCE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]));
  FDCE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDCE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]));
  FDCE \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDCE \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]));
  FDCE \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]));
  FDCE \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]));
  FDCE \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count[28]_i_2_n_0 ,\count[28]_i_3_n_0 ,\count[28]_i_4_n_0 ,\count[28]_i_5_n_0 }));
  FDCE \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]));
  FDCE \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]));
  FDCE \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]));
  FDCE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]));
  FDCE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
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
