-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jun 15 17:55:20 2020
-- Host        : DESKTOP-B38P1G4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Zynq_System_LogicSignalOut_0_0_sim_netlist.vhdl
-- Design      : Zynq_System_LogicSignalOut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut is
  port (
    common_digit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \logic_out[7]\ : out STD_LOGIC;
    logic_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut is
  signal \^common_digit\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_1\ : STD_LOGIC;
  signal \count1_carry__2_n_2\ : STD_LOGIC;
  signal \count1_carry__2_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_i_6_n_0 : STD_LOGIC;
  signal count1_carry_i_7_n_0 : STD_LOGIC;
  signal count1_carry_i_8_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal digit : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \digit[0]_i_10_n_0\ : STD_LOGIC;
  signal \digit[0]_i_11_n_0\ : STD_LOGIC;
  signal \digit[0]_i_12_n_0\ : STD_LOGIC;
  signal \digit[0]_i_13_n_0\ : STD_LOGIC;
  signal \digit[0]_i_14_n_0\ : STD_LOGIC;
  signal \digit[0]_i_15_n_0\ : STD_LOGIC;
  signal \digit[0]_i_16_n_0\ : STD_LOGIC;
  signal \digit[0]_i_17_n_0\ : STD_LOGIC;
  signal \digit[0]_i_18_n_0\ : STD_LOGIC;
  signal \digit[0]_i_19_n_0\ : STD_LOGIC;
  signal \digit[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit[0]_i_2_n_0\ : STD_LOGIC;
  signal \digit[0]_i_3_n_0\ : STD_LOGIC;
  signal \digit[0]_i_4_n_0\ : STD_LOGIC;
  signal \digit[0]_i_5_n_0\ : STD_LOGIC;
  signal \digit[0]_i_6_n_0\ : STD_LOGIC;
  signal \digit[0]_i_7_n_0\ : STD_LOGIC;
  signal \digit[0]_i_8_n_0\ : STD_LOGIC;
  signal \digit[0]_i_9_n_0\ : STD_LOGIC;
  signal \digit[1]_i_1_n_0\ : STD_LOGIC;
  signal \digit[1]_i_2_n_0\ : STD_LOGIC;
  signal hour : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hour[0]_i_1_n_0\ : STD_LOGIC;
  signal \hour[1]_i_1_n_0\ : STD_LOGIC;
  signal \hour[2]_i_1_n_0\ : STD_LOGIC;
  signal \hour[3]_i_1_n_0\ : STD_LOGIC;
  signal \hour[4]_i_1_n_0\ : STD_LOGIC;
  signal \hour[5]_i_1_n_0\ : STD_LOGIC;
  signal \hour[6]_i_1_n_0\ : STD_LOGIC;
  signal \hour[7]_i_1_n_0\ : STD_LOGIC;
  signal \hour[7]_i_2_n_0\ : STD_LOGIC;
  signal \hour[7]_i_3_n_0\ : STD_LOGIC;
  signal \hour[7]_i_4_n_0\ : STD_LOGIC;
  signal \hour[7]_i_5_n_0\ : STD_LOGIC;
  signal i : STD_LOGIC;
  signal \i0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i0_carry__0_n_0\ : STD_LOGIC;
  signal \i0_carry__0_n_1\ : STD_LOGIC;
  signal \i0_carry__0_n_2\ : STD_LOGIC;
  signal \i0_carry__0_n_3\ : STD_LOGIC;
  signal \i0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i0_carry__1_n_0\ : STD_LOGIC;
  signal \i0_carry__1_n_1\ : STD_LOGIC;
  signal \i0_carry__1_n_2\ : STD_LOGIC;
  signal \i0_carry__1_n_3\ : STD_LOGIC;
  signal \i0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i0_carry__2_n_0\ : STD_LOGIC;
  signal \i0_carry__2_n_1\ : STD_LOGIC;
  signal \i0_carry__2_n_2\ : STD_LOGIC;
  signal \i0_carry__2_n_3\ : STD_LOGIC;
  signal i0_carry_i_1_n_0 : STD_LOGIC;
  signal i0_carry_i_2_n_0 : STD_LOGIC;
  signal i0_carry_i_3_n_0 : STD_LOGIC;
  signal i0_carry_i_4_n_0 : STD_LOGIC;
  signal i0_carry_i_5_n_0 : STD_LOGIC;
  signal i0_carry_i_6_n_0 : STD_LOGIC;
  signal i0_carry_n_0 : STD_LOGIC;
  signal i0_carry_n_1 : STD_LOGIC;
  signal i0_carry_n_2 : STD_LOGIC;
  signal i0_carry_n_3 : STD_LOGIC;
  signal \i[0]_i_3_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \logic_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \logic_out[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \logic_out[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \logic_out[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \logic_out[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \logic_out[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \^logic_out[7]\ : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \min[0]_i_1_n_0\ : STD_LOGIC;
  signal \min[1]_i_1_n_0\ : STD_LOGIC;
  signal \min[2]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_1_n_0\ : STD_LOGIC;
  signal \min[5]_i_1_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[6]_i_1_n_0\ : STD_LOGIC;
  signal \min[7]_i_1_n_0\ : STD_LOGIC;
  signal \min[7]_i_2_n_0\ : STD_LOGIC;
  signal \min[7]_i_3_n_0\ : STD_LOGIC;
  signal \min[7]_i_4_n_0\ : STD_LOGIC;
  signal \min[7]_i_5_n_0\ : STD_LOGIC;
  signal second : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \second[0]_i_1_n_0\ : STD_LOGIC;
  signal \second[1]_i_1_n_0\ : STD_LOGIC;
  signal \second[2]_i_1_n_0\ : STD_LOGIC;
  signal \second[3]_i_1_n_0\ : STD_LOGIC;
  signal \second[4]_i_1_n_0\ : STD_LOGIC;
  signal \second[5]_i_1_n_0\ : STD_LOGIC;
  signal \second[5]_i_2_n_0\ : STD_LOGIC;
  signal \second[6]_i_1_n_0\ : STD_LOGIC;
  signal \second[7]_i_1_n_0\ : STD_LOGIC;
  signal \second[7]_i_2_n_0\ : STD_LOGIC;
  signal \second[7]_i_3_n_0\ : STD_LOGIC;
  signal \second[7]_i_4_n_0\ : STD_LOGIC;
  signal \second[7]_i_5_n_0\ : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_i0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \common_digit[0]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \common_digit[1]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \common_digit[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \common_digit[3]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \digit[0]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \digit[0]_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \digit[0]_i_16\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \digit[0]_i_17\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit[0]_i_19\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \digit[0]_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \digit[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hour[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \hour[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hour[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hour[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hour[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \hour[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \hour[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hour[7]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \logic_out[1]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \logic_out[2]_INST_0_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \logic_out[3]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \logic_out[4]_INST_0_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \logic_out[5]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \logic_out[5]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \logic_out[5]_INST_0_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_15\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \logic_out[6]_INST_0_i_16\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \min[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \min[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \min[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \min[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \min[7]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \second[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \second[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \second[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \second[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \second[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \second[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \second[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \second[7]_i_5\ : label is "soft_lutpair12";
begin
  common_digit(3 downto 0) <= \^common_digit\(3 downto 0);
  \logic_out[7]\ <= \^logic_out[7]\;
\common_digit[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => digit(1),
      I1 => \^logic_out[7]\,
      O => \^common_digit\(0)
    );
\common_digit[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^logic_out[7]\,
      I1 => digit(1),
      O => \^common_digit\(1)
    );
\common_digit[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => digit(1),
      I1 => \^logic_out[7]\,
      O => \^common_digit\(2)
    );
\common_digit[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => digit(1),
      I1 => \^logic_out[7]\,
      O => \^common_digit\(3)
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => count1_carry_i_1_n_0,
      DI(2) => count1_carry_i_2_n_0,
      DI(1) => count1_carry_i_3_n_0,
      DI(0) => count1_carry_i_4_n_0,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_5_n_0,
      S(2) => count1_carry_i_6_n_0,
      S(1) => count1_carry_i_7_n_0,
      S(0) => count1_carry_i_8_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1_n_0\,
      DI(2) => \count1_carry__0_i_2_n_0\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_3_n_0\,
      S(2) => \count1_carry__0_i_4_n_0\,
      S(1) => \count1_carry__0_i_5_n_0\,
      S(0) => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(15),
      I1 => count_reg(14),
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(13),
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(15),
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \count1_carry__1_n_0\,
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__1_i_1_n_0\,
      DI(2) => \count1_carry__1_i_2_n_0\,
      DI(1) => \count1_carry__1_i_3_n_0\,
      DI(0) => \count1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__1_i_5_n_0\,
      S(2) => \count1_carry__1_i_6_n_0\,
      S(1) => \count1_carry__1_i_7_n_0\,
      S(0) => \count1_carry__1_i_8_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(23),
      I1 => count_reg(22),
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(21),
      I1 => count_reg(20),
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(22),
      I1 => count_reg(23),
      O => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(20),
      I1 => count_reg(21),
      O => \count1_carry__1_i_6_n_0\
    );
\count1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \count1_carry__1_i_7_n_0\
    );
\count1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \count1_carry__1_i_8_n_0\
    );
\count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__1_n_0\,
      CO(3) => \count1_carry__2_n_0\,
      CO(2) => \count1_carry__2_n_1\,
      CO(1) => \count1_carry__2_n_2\,
      CO(0) => \count1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => count_reg(31),
      DI(2) => '0',
      DI(1) => \count1_carry__2_i_1_n_0\,
      DI(0) => \count1_carry__2_i_2_n_0\,
      O(3 downto 0) => \NLW_count1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__2_i_3_n_0\,
      S(2) => \count1_carry__2_i_4_n_0\,
      S(1) => \count1_carry__2_i_5_n_0\,
      S(0) => \count1_carry__2_i_6_n_0\
    );
\count1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(26),
      I1 => count_reg(27),
      O => \count1_carry__2_i_1_n_0\
    );
\count1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(24),
      I1 => count_reg(25),
      O => \count1_carry__2_i_2_n_0\
    );
\count1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(31),
      I1 => count_reg(30),
      O => \count1_carry__2_i_3_n_0\
    );
\count1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(29),
      I1 => count_reg(28),
      O => \count1_carry__2_i_4_n_0\
    );
\count1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(26),
      I1 => count_reg(27),
      O => \count1_carry__2_i_5_n_0\
    );
\count1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(24),
      I1 => count_reg(25),
      O => \count1_carry__2_i_6_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(7),
      O => count1_carry_i_5_n_0
    );
count1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => count1_carry_i_6_n_0
    );
count1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      O => count1_carry_i_7_n_0
    );
count1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => count1_carry_i_8_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count1_carry__2_n_0\,
      O => data0
    );
\count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => data0
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_3_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => data0
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => data0
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => data0
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => data0
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => data0
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => data0
    );
\count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => data0
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => data0
    );
\count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => data0
    );
\count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => data0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => data0
    );
\count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => data0
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => data0
    );
\count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => data0
    );
\count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => data0
    );
\count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => data0
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => data0
    );
\count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => data0
    );
\count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => data0
    );
\count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28),
      R => data0
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1_n_4\,
      O(2) => \count_reg[28]_i_1_n_5\,
      O(1) => \count_reg[28]_i_1_n_6\,
      O(0) => \count_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29),
      R => data0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => data0
    );
\count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30),
      R => data0
    );
\count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31),
      R => data0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => data0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => data0
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => data0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => data0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => data0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => data0
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => data0
    );
\digit[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00000200"
    )
        port map (
      I0 => \digit[0]_i_2_n_0\,
      I1 => \digit[0]_i_3_n_0\,
      I2 => \digit[0]_i_4_n_0\,
      I3 => \digit[0]_i_5_n_0\,
      I4 => \digit[0]_i_6_n_0\,
      I5 => \^logic_out[7]\,
      O => \digit[0]_i_1_n_0\
    );
\digit[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \digit[0]_i_5_n_0\,
      I1 => \digit[0]_i_17_n_0\,
      I2 => i_reg(22),
      I3 => i_reg(21),
      I4 => i_reg(24),
      I5 => i_reg(23),
      O => \digit[0]_i_10_n_0\
    );
\digit[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => \digit[0]_i_11_n_0\
    );
\digit[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => \digit[0]_i_12_n_0\
    );
\digit[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_reg(21),
      I1 => i_reg(22),
      I2 => i_reg(9),
      I3 => i_reg(10),
      I4 => \digit[0]_i_18_n_0\,
      O => \digit[0]_i_13_n_0\
    );
\digit[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(17),
      I2 => i_reg(23),
      I3 => i_reg(7),
      I4 => \digit[0]_i_19_n_0\,
      I5 => \digit[0]_i_8_n_0\,
      O => \digit[0]_i_14_n_0\
    );
\digit[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BCBF"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(5),
      I2 => i_reg(3),
      I3 => i_reg(4),
      O => \digit[0]_i_15_n_0\
    );
\digit[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(17),
      I2 => i_reg(20),
      I3 => i_reg(19),
      O => \digit[0]_i_16_n_0\
    );
\digit[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(27),
      I2 => i_reg(26),
      I3 => i_reg(25),
      O => \digit[0]_i_17_n_0\
    );
\digit[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(8),
      I2 => i_reg(26),
      I3 => i_reg(11),
      O => \digit[0]_i_18_n_0\
    );
\digit[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => \digit[0]_i_19_n_0\
    );
\digit[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \digit[0]_i_7_n_0\,
      I1 => i_reg(8),
      I2 => i_reg(7),
      I3 => \digit[0]_i_8_n_0\,
      I4 => \digit[0]_i_9_n_0\,
      I5 => \digit[0]_i_10_n_0\,
      O => \digit[0]_i_2_n_0\
    );
\digit[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFBFF"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(6),
      I2 => i_reg(5),
      I3 => i_reg(4),
      I4 => i_reg(3),
      O => \digit[0]_i_3_n_0\
    );
\digit[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => i_reg(27),
      I1 => i_reg(28),
      I2 => i_reg(15),
      I3 => i_reg(16),
      I4 => \digit[0]_i_11_n_0\,
      I5 => \digit[0]_i_12_n_0\,
      O => \digit[0]_i_4_n_0\
    );
\digit[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => i_reg(31),
      I1 => i_reg(30),
      I2 => i_reg(29),
      O => \digit[0]_i_5_n_0\
    );
\digit[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF9A"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(6),
      I2 => i_reg(4),
      I3 => \digit[0]_i_13_n_0\,
      I4 => \digit[0]_i_14_n_0\,
      I5 => \digit[0]_i_15_n_0\,
      O => \digit[0]_i_6_n_0\
    );
\digit[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => i_reg(13),
      I1 => i_reg(14),
      I2 => i_reg(15),
      I3 => i_reg(16),
      I4 => \digit[0]_i_16_n_0\,
      O => \digit[0]_i_7_n_0\
    );
\digit[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => \digit[0]_i_8_n_0\
    );
\digit[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(9),
      I2 => i_reg(12),
      I3 => i_reg(11),
      O => \digit[0]_i_9_n_0\
    );
\digit[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2FF00000200"
    )
        port map (
      I0 => \digit[0]_i_2_n_0\,
      I1 => \digit[1]_i_2_n_0\,
      I2 => \digit[0]_i_4_n_0\,
      I3 => \digit[0]_i_5_n_0\,
      I4 => \digit[0]_i_6_n_0\,
      I5 => digit(1),
      O => \digit[1]_i_1_n_0\
    );
\digit[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFBFFFF"
    )
        port map (
      I0 => i_reg(3),
      I1 => i_reg(6),
      I2 => i_reg(2),
      I3 => i_reg(5),
      I4 => i_reg(4),
      O => \digit[1]_i_2_n_0\
    );
\digit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \digit[0]_i_1_n_0\,
      Q => \^logic_out[7]\,
      R => '0'
    );
\digit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \digit[1]_i_1_n_0\,
      Q => digit(1),
      R => '0'
    );
\hour[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hour(0),
      I1 => \hour[7]_i_3_n_0\,
      O => \hour[0]_i_1_n_0\
    );
\hour[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hour(1),
      I1 => hour(0),
      O => \hour[1]_i_1_n_0\
    );
\hour[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => hour(2),
      I1 => hour(0),
      I2 => hour(1),
      O => \hour[2]_i_1_n_0\
    );
\hour[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => hour(0),
      I1 => hour(1),
      I2 => hour(2),
      I3 => hour(3),
      I4 => \hour[7]_i_3_n_0\,
      O => \hour[3]_i_1_n_0\
    );
\hour[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => hour(2),
      I1 => hour(1),
      I2 => hour(0),
      I3 => hour(3),
      I4 => hour(4),
      I5 => \hour[7]_i_3_n_0\,
      O => \hour[4]_i_1_n_0\
    );
\hour[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => hour(5),
      I1 => hour(4),
      I2 => hour(2),
      I3 => hour(1),
      I4 => hour(0),
      I5 => hour(3),
      O => \hour[5]_i_1_n_0\
    );
\hour[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hour(6),
      I1 => \hour[7]_i_4_n_0\,
      O => \hour[6]_i_1_n_0\
    );
\hour[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => \hour[7]_i_3_n_0\,
      O => \hour[7]_i_1_n_0\
    );
\hour[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => hour(7),
      I1 => hour(6),
      I2 => \hour[7]_i_4_n_0\,
      O => \hour[7]_i_2_n_0\
    );
\hour[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => hour(7),
      I1 => hour(2),
      I2 => hour(1),
      I3 => hour(0),
      I4 => \hour[7]_i_5_n_0\,
      O => \hour[7]_i_3_n_0\
    );
\hour[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => hour(5),
      I1 => hour(4),
      I2 => hour(2),
      I3 => hour(1),
      I4 => hour(0),
      I5 => hour(3),
      O => \hour[7]_i_4_n_0\
    );
\hour[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => hour(5),
      I1 => hour(6),
      I2 => hour(3),
      I3 => hour(4),
      O => \hour[7]_i_5_n_0\
    );
\hour_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[0]_i_1_n_0\,
      Q => hour(0),
      R => '0'
    );
\hour_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[1]_i_1_n_0\,
      Q => hour(1),
      R => '0'
    );
\hour_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[2]_i_1_n_0\,
      Q => hour(2),
      R => '0'
    );
\hour_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[3]_i_1_n_0\,
      Q => hour(3),
      R => '0'
    );
\hour_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[4]_i_1_n_0\,
      Q => hour(4),
      R => '0'
    );
\hour_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[5]_i_1_n_0\,
      Q => hour(5),
      R => '0'
    );
\hour_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[6]_i_1_n_0\,
      Q => hour(6),
      R => '0'
    );
\hour_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \hour[7]_i_1_n_0\,
      D => \hour[7]_i_2_n_0\,
      Q => hour(7),
      R => '0'
    );
i0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => i0_carry_n_0,
      CO(2) => i0_carry_n_1,
      CO(1) => i0_carry_n_2,
      CO(0) => i0_carry_n_3,
      CYINIT => '0',
      DI(3) => i_reg(7),
      DI(2) => i0_carry_i_1_n_0,
      DI(1) => i_reg(3),
      DI(0) => i0_carry_i_2_n_0,
      O(3 downto 0) => NLW_i0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => i0_carry_i_3_n_0,
      S(2) => i0_carry_i_4_n_0,
      S(1) => i0_carry_i_5_n_0,
      S(0) => i0_carry_i_6_n_0
    );
\i0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => i0_carry_n_0,
      CO(3) => \i0_carry__0_n_0\,
      CO(2) => \i0_carry__0_n_1\,
      CO(1) => \i0_carry__0_n_2\,
      CO(0) => \i0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i0_carry__0_i_1_n_0\,
      DI(2) => \i0_carry__0_i_2_n_0\,
      DI(1) => \i0_carry__0_i_3_n_0\,
      DI(0) => \i0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_i0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i0_carry__0_i_5_n_0\,
      S(2) => \i0_carry__0_i_6_n_0\,
      S(1) => \i0_carry__0_i_7_n_0\,
      S(0) => \i0_carry__0_i_8_n_0\
    );
\i0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(15),
      I1 => i_reg(14),
      O => \i0_carry__0_i_1_n_0\
    );
\i0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(13),
      I1 => i_reg(12),
      O => \i0_carry__0_i_2_n_0\
    );
\i0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(11),
      I1 => i_reg(10),
      O => \i0_carry__0_i_3_n_0\
    );
\i0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(9),
      I1 => i_reg(8),
      O => \i0_carry__0_i_4_n_0\
    );
\i0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(14),
      I1 => i_reg(15),
      O => \i0_carry__0_i_5_n_0\
    );
\i0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(12),
      I1 => i_reg(13),
      O => \i0_carry__0_i_6_n_0\
    );
\i0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(10),
      I1 => i_reg(11),
      O => \i0_carry__0_i_7_n_0\
    );
\i0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(8),
      I1 => i_reg(9),
      O => \i0_carry__0_i_8_n_0\
    );
\i0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_carry__0_n_0\,
      CO(3) => \i0_carry__1_n_0\,
      CO(2) => \i0_carry__1_n_1\,
      CO(1) => \i0_carry__1_n_2\,
      CO(0) => \i0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i0_carry__1_i_1_n_0\,
      DI(2) => \i0_carry__1_i_2_n_0\,
      DI(1) => \i0_carry__1_i_3_n_0\,
      DI(0) => \i0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_i0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i0_carry__1_i_5_n_0\,
      S(2) => \i0_carry__1_i_6_n_0\,
      S(1) => \i0_carry__1_i_7_n_0\,
      S(0) => \i0_carry__1_i_8_n_0\
    );
\i0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(23),
      I1 => i_reg(22),
      O => \i0_carry__1_i_1_n_0\
    );
\i0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(21),
      I1 => i_reg(20),
      O => \i0_carry__1_i_2_n_0\
    );
\i0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(19),
      I1 => i_reg(18),
      O => \i0_carry__1_i_3_n_0\
    );
\i0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(17),
      I1 => i_reg(16),
      O => \i0_carry__1_i_4_n_0\
    );
\i0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(22),
      I1 => i_reg(23),
      O => \i0_carry__1_i_5_n_0\
    );
\i0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(20),
      I1 => i_reg(21),
      O => \i0_carry__1_i_6_n_0\
    );
\i0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(18),
      I1 => i_reg(19),
      O => \i0_carry__1_i_7_n_0\
    );
\i0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(16),
      I1 => i_reg(17),
      O => \i0_carry__1_i_8_n_0\
    );
\i0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_carry__1_n_0\,
      CO(3) => \i0_carry__2_n_0\,
      CO(2) => \i0_carry__2_n_1\,
      CO(1) => \i0_carry__2_n_2\,
      CO(0) => \i0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i0_carry__2_i_1_n_0\,
      DI(2) => \i0_carry__2_i_2_n_0\,
      DI(1) => \i0_carry__2_i_3_n_0\,
      DI(0) => \i0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_i0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i0_carry__2_i_5_n_0\,
      S(2) => \i0_carry__2_i_6_n_0\,
      S(1) => \i0_carry__2_i_7_n_0\,
      S(0) => \i0_carry__2_i_8_n_0\
    );
\i0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(30),
      I1 => i_reg(31),
      O => \i0_carry__2_i_1_n_0\
    );
\i0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(29),
      I1 => i_reg(28),
      O => \i0_carry__2_i_2_n_0\
    );
\i0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(27),
      I1 => i_reg(26),
      O => \i0_carry__2_i_3_n_0\
    );
\i0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(25),
      I1 => i_reg(24),
      O => \i0_carry__2_i_4_n_0\
    );
\i0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(30),
      I1 => i_reg(31),
      O => \i0_carry__2_i_5_n_0\
    );
\i0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(28),
      I1 => i_reg(29),
      O => \i0_carry__2_i_6_n_0\
    );
\i0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(26),
      I1 => i_reg(27),
      O => \i0_carry__2_i_7_n_0\
    );
\i0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(24),
      I1 => i_reg(25),
      O => \i0_carry__2_i_8_n_0\
    );
i0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_reg(5),
      I1 => i_reg(4),
      O => i0_carry_i_1_n_0
    );
i0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_reg(1),
      I1 => i_reg(0),
      O => i0_carry_i_2_n_0
    );
i0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(6),
      I1 => i_reg(7),
      O => i0_carry_i_3_n_0
    );
i0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(5),
      I1 => i_reg(4),
      O => i0_carry_i_4_n_0
    );
i0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_reg(2),
      I1 => i_reg(3),
      O => i0_carry_i_5_n_0
    );
i0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      I1 => i_reg(1),
      O => i0_carry_i_6_n_0
    );
\i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \i0_carry__2_n_0\,
      I1 => \count1_carry__2_n_0\,
      O => i
    );
\i[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_3_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[0]_i_2_n_7\,
      Q => i_reg(0),
      R => i
    );
\i_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[0]_i_2_n_0\,
      CO(2) => \i_reg[0]_i_2_n_1\,
      CO(1) => \i_reg[0]_i_2_n_2\,
      CO(0) => \i_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_reg[0]_i_2_n_4\,
      O(2) => \i_reg[0]_i_2_n_5\,
      O(1) => \i_reg[0]_i_2_n_6\,
      O(0) => \i_reg[0]_i_2_n_7\,
      S(3 downto 1) => i_reg(3 downto 1),
      S(0) => \i[0]_i_3_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[8]_i_1_n_5\,
      Q => i_reg(10),
      R => i
    );
\i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[8]_i_1_n_4\,
      Q => i_reg(11),
      R => i
    );
\i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[12]_i_1_n_7\,
      Q => i_reg(12),
      R => i
    );
\i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CO(3) => \i_reg[12]_i_1_n_0\,
      CO(2) => \i_reg[12]_i_1_n_1\,
      CO(1) => \i_reg[12]_i_1_n_2\,
      CO(0) => \i_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1_n_4\,
      O(2) => \i_reg[12]_i_1_n_5\,
      O(1) => \i_reg[12]_i_1_n_6\,
      O(0) => \i_reg[12]_i_1_n_7\,
      S(3 downto 0) => i_reg(15 downto 12)
    );
\i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[12]_i_1_n_6\,
      Q => i_reg(13),
      R => i
    );
\i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[12]_i_1_n_5\,
      Q => i_reg(14),
      R => i
    );
\i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[12]_i_1_n_4\,
      Q => i_reg(15),
      R => i
    );
\i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[16]_i_1_n_7\,
      Q => i_reg(16),
      R => i
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1_n_0\,
      CO(3) => \i_reg[16]_i_1_n_0\,
      CO(2) => \i_reg[16]_i_1_n_1\,
      CO(1) => \i_reg[16]_i_1_n_2\,
      CO(0) => \i_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1_n_4\,
      O(2) => \i_reg[16]_i_1_n_5\,
      O(1) => \i_reg[16]_i_1_n_6\,
      O(0) => \i_reg[16]_i_1_n_7\,
      S(3 downto 0) => i_reg(19 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[16]_i_1_n_6\,
      Q => i_reg(17),
      R => i
    );
\i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[16]_i_1_n_5\,
      Q => i_reg(18),
      R => i
    );
\i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[16]_i_1_n_4\,
      Q => i_reg(19),
      R => i
    );
\i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[0]_i_2_n_6\,
      Q => i_reg(1),
      R => i
    );
\i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[20]_i_1_n_7\,
      Q => i_reg(20),
      R => i
    );
\i_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CO(3) => \i_reg[20]_i_1_n_0\,
      CO(2) => \i_reg[20]_i_1_n_1\,
      CO(1) => \i_reg[20]_i_1_n_2\,
      CO(0) => \i_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1_n_4\,
      O(2) => \i_reg[20]_i_1_n_5\,
      O(1) => \i_reg[20]_i_1_n_6\,
      O(0) => \i_reg[20]_i_1_n_7\,
      S(3 downto 0) => i_reg(23 downto 20)
    );
\i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[20]_i_1_n_6\,
      Q => i_reg(21),
      R => i
    );
\i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[20]_i_1_n_5\,
      Q => i_reg(22),
      R => i
    );
\i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[20]_i_1_n_4\,
      Q => i_reg(23),
      R => i
    );
\i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[24]_i_1_n_7\,
      Q => i_reg(24),
      R => i
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1_n_0\,
      CO(3) => \i_reg[24]_i_1_n_0\,
      CO(2) => \i_reg[24]_i_1_n_1\,
      CO(1) => \i_reg[24]_i_1_n_2\,
      CO(0) => \i_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[24]_i_1_n_4\,
      O(2) => \i_reg[24]_i_1_n_5\,
      O(1) => \i_reg[24]_i_1_n_6\,
      O(0) => \i_reg[24]_i_1_n_7\,
      S(3 downto 0) => i_reg(27 downto 24)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[24]_i_1_n_6\,
      Q => i_reg(25),
      R => i
    );
\i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[24]_i_1_n_5\,
      Q => i_reg(26),
      R => i
    );
\i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[24]_i_1_n_4\,
      Q => i_reg(27),
      R => i
    );
\i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[28]_i_1_n_7\,
      Q => i_reg(28),
      R => i
    );
\i_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_1_n_0\,
      CO(3) => \NLW_i_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \i_reg[28]_i_1_n_1\,
      CO(1) => \i_reg[28]_i_1_n_2\,
      CO(0) => \i_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[28]_i_1_n_4\,
      O(2) => \i_reg[28]_i_1_n_5\,
      O(1) => \i_reg[28]_i_1_n_6\,
      O(0) => \i_reg[28]_i_1_n_7\,
      S(3 downto 0) => i_reg(31 downto 28)
    );
\i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[28]_i_1_n_6\,
      Q => i_reg(29),
      R => i
    );
\i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[0]_i_2_n_5\,
      Q => i_reg(2),
      R => i
    );
\i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[28]_i_1_n_5\,
      Q => i_reg(30),
      R => i
    );
\i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[28]_i_1_n_4\,
      Q => i_reg(31),
      R => i
    );
\i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[0]_i_2_n_4\,
      Q => i_reg(3),
      R => i
    );
\i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[4]_i_1_n_7\,
      Q => i_reg(4),
      R => i
    );
\i_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[0]_i_2_n_0\,
      CO(3) => \i_reg[4]_i_1_n_0\,
      CO(2) => \i_reg[4]_i_1_n_1\,
      CO(1) => \i_reg[4]_i_1_n_2\,
      CO(0) => \i_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1_n_4\,
      O(2) => \i_reg[4]_i_1_n_5\,
      O(1) => \i_reg[4]_i_1_n_6\,
      O(0) => \i_reg[4]_i_1_n_7\,
      S(3 downto 0) => i_reg(7 downto 4)
    );
\i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[4]_i_1_n_6\,
      Q => i_reg(5),
      R => i
    );
\i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[4]_i_1_n_5\,
      Q => i_reg(6),
      R => i
    );
\i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[4]_i_1_n_4\,
      Q => i_reg(7),
      R => i
    );
\i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[8]_i_1_n_7\,
      Q => i_reg(8),
      R => i
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1_n_0\,
      CO(3) => \i_reg[8]_i_1_n_0\,
      CO(2) => \i_reg[8]_i_1_n_1\,
      CO(1) => \i_reg[8]_i_1_n_2\,
      CO(0) => \i_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1_n_4\,
      O(2) => \i_reg[8]_i_1_n_5\,
      O(1) => \i_reg[8]_i_1_n_6\,
      O(0) => \i_reg[8]_i_1_n_7\,
      S(3 downto 0) => i_reg(11 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count1_carry__2_n_0\,
      D => \i_reg[8]_i_1_n_6\,
      Q => i_reg(9),
      R => i
    );
\logic_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB00FAFAFAFA"
    )
        port map (
      I0 => \logic_out[0]_INST_0_i_1_n_0\,
      I1 => \logic_out[0]_INST_0_i_2_n_0\,
      I2 => \logic_out[0]_INST_0_i_3_n_0\,
      I3 => digit(1),
      I4 => \logic_out[0]_INST_0_i_4_n_0\,
      I5 => \^logic_out[7]\,
      O => logic_out(0)
    );
\logic_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010104004010104"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_8_n_0\,
      I1 => min(0),
      I2 => min(1),
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => min(2),
      I5 => \logic_out[2]_INST_0_i_3_n_0\,
      O => \logic_out[0]_INST_0_i_1_n_0\
    );
\logic_out[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEE00E"
    )
        port map (
      I0 => \logic_out[3]_INST_0_i_2_n_0\,
      I1 => \logic_out[6]_INST_0_i_7_n_0\,
      I2 => \logic_out[4]_INST_0_i_4_n_0\,
      I3 => \logic_out[6]_INST_0_i_15_n_0\,
      I4 => \logic_out[5]_INST_0_i_9_n_0\,
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[0]_INST_0_i_2_n_0\
    );
\logic_out[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880022002200880"
    )
        port map (
      I0 => \logic_out[5]_INST_0_i_7_n_0\,
      I1 => hour(0),
      I2 => hour(1),
      I3 => \logic_out[4]_INST_0_i_4_n_0\,
      I4 => hour(2),
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[0]_INST_0_i_3_n_0\
    );
\logic_out[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF7110CF308EEF30"
    )
        port map (
      I0 => min(3),
      I1 => min(4),
      I2 => min(6),
      I3 => min(7),
      I4 => min(5),
      I5 => \logic_out[2]_INST_0_i_3_n_0\,
      O => \logic_out[0]_INST_0_i_4_n_0\
    );
\logic_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEF0F0EEEEFFFF"
    )
        port map (
      I0 => digit(1),
      I1 => \logic_out[1]_INST_0_i_1_n_0\,
      I2 => \logic_out[1]_INST_0_i_2_n_0\,
      I3 => \logic_out[1]_INST_0_i_3_n_0\,
      I4 => \^logic_out[7]\,
      I5 => \logic_out[1]_INST_0_i_4_n_0\,
      O => logic_out(1)
    );
\logic_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24418265A6418224"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_5_n_0\,
      I1 => \logic_out[6]_INST_0_i_12_n_0\,
      I2 => min(3),
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => min(2),
      I5 => min(1),
      O => \logic_out[1]_INST_0_i_1_n_0\
    );
\logic_out[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010410441040010"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_8_n_0\,
      I1 => min(0),
      I2 => \logic_out[2]_INST_0_i_3_n_0\,
      I3 => min(1),
      I4 => min(2),
      I5 => \logic_out[6]_INST_0_i_7_n_0\,
      O => \logic_out[1]_INST_0_i_2_n_0\
    );
\logic_out[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEE0EEEEEEEEE"
    )
        port map (
      I0 => \logic_out[3]_INST_0_i_2_n_0\,
      I1 => \logic_out[1]_INST_0_i_5_n_0\,
      I2 => \logic_out[6]_INST_0_i_13_n_0\,
      I3 => \logic_out[6]_INST_0_i_15_n_0\,
      I4 => \logic_out[5]_INST_0_i_9_n_0\,
      I5 => \logic_out[1]_INST_0_i_6_n_0\,
      O => \logic_out[1]_INST_0_i_3_n_0\
    );
\logic_out[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F9FFF9FFFFF6F"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_6_n_0\,
      I1 => hour(2),
      I2 => \logic_out[5]_INST_0_i_7_n_0\,
      I3 => hour(0),
      I4 => \logic_out[4]_INST_0_i_4_n_0\,
      I5 => hour(1),
      O => \logic_out[1]_INST_0_i_4_n_0\
    );
\logic_out[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF1CC3F7"
    )
        port map (
      I0 => min(3),
      I1 => min(5),
      I2 => min(7),
      I3 => min(4),
      I4 => min(6),
      O => \logic_out[1]_INST_0_i_5_n_0\
    );
\logic_out[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAAFEBBAAFE"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_6_n_0\,
      I1 => hour(2),
      I2 => hour(1),
      I3 => hour(3),
      I4 => \logic_out[6]_INST_0_i_15_n_0\,
      I5 => \logic_out[4]_INST_0_i_9_n_0\,
      O => \logic_out[1]_INST_0_i_6_n_0\
    );
\logic_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAFFFFAABA0000"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_1_n_0\,
      I1 => \logic_out[3]_INST_0_i_2_n_0\,
      I2 => \logic_out[2]_INST_0_i_2_n_0\,
      I3 => \logic_out[2]_INST_0_i_3_n_0\,
      I4 => \^logic_out[7]\,
      I5 => \logic_out[2]_INST_0_i_4_n_0\,
      O => logic_out(2)
    );
\logic_out[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_4_n_0\,
      I1 => \logic_out[6]_INST_0_i_15_n_0\,
      I2 => \logic_out[6]_INST_0_i_6_n_0\,
      I3 => \logic_out[5]_INST_0_i_9_n_0\,
      O => \logic_out[2]_INST_0_i_1_n_0\
    );
\logic_out[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E03E03030000E0"
    )
        port map (
      I0 => min(2),
      I1 => min(3),
      I2 => min(4),
      I3 => min(6),
      I4 => min(7),
      I5 => min(5),
      O => \logic_out[2]_INST_0_i_2_n_0\
    );
\logic_out[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DB417D6559417D24"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_5_n_0\,
      I1 => \logic_out[6]_INST_0_i_12_n_0\,
      I2 => min(3),
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => min(2),
      I5 => min(1),
      O => \logic_out[2]_INST_0_i_3_n_0\
    );
\logic_out[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020002FF0200"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_6_n_0\,
      I1 => \logic_out[4]_INST_0_i_7_n_0\,
      I2 => hour(0),
      I3 => digit(1),
      I4 => \logic_out[2]_INST_0_i_7_n_0\,
      I5 => \logic_out[2]_INST_0_i_8_n_0\,
      O => \logic_out[2]_INST_0_i_4_n_0\
    );
\logic_out[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB424DB"
    )
        port map (
      I0 => min(5),
      I1 => min(7),
      I2 => min(6),
      I3 => min(3),
      I4 => min(4),
      O => \logic_out[2]_INST_0_i_5_n_0\
    );
\logic_out[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA6007D0041FFDB"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_9_n_0\,
      I1 => \logic_out[6]_INST_0_i_15_n_0\,
      I2 => hour(3),
      I3 => hour(1),
      I4 => hour(2),
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[2]_INST_0_i_6_n_0\
    );
\logic_out[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4054404411011501"
    )
        port map (
      I0 => min(0),
      I1 => \logic_out[6]_INST_0_i_18_n_0\,
      I2 => \logic_out[6]_INST_0_i_17_n_0\,
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => min(2),
      I5 => min(1),
      O => \logic_out[2]_INST_0_i_7_n_0\
    );
\logic_out[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF004B90F624"
    )
        port map (
      I0 => min(3),
      I1 => \logic_out[6]_INST_0_i_12_n_0\,
      I2 => \logic_out[2]_INST_0_i_5_n_0\,
      I3 => min(2),
      I4 => \logic_out[6]_INST_0_i_7_n_0\,
      I5 => min(1),
      O => \logic_out[2]_INST_0_i_8_n_0\
    );
\logic_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA200AAAAAAAA"
    )
        port map (
      I0 => \logic_out[3]_INST_0_i_1_n_0\,
      I1 => \logic_out[3]_INST_0_i_2_n_0\,
      I2 => \logic_out[3]_INST_0_i_3_n_0\,
      I3 => \^logic_out[7]\,
      I4 => \logic_out[3]_INST_0_i_4_n_0\,
      I5 => \logic_out[3]_INST_0_i_5_n_0\,
      O => logic_out(3)
    );
\logic_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF0FFF2FFF2F"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_3_n_0\,
      I1 => \logic_out[2]_INST_0_i_2_n_0\,
      I2 => \^logic_out[7]\,
      I3 => digit(1),
      I4 => \logic_out[3]_INST_0_i_6_n_0\,
      I5 => \logic_out[3]_INST_0_i_7_n_0\,
      O => \logic_out[3]_INST_0_i_1_n_0\
    );
\logic_out[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFAFFEA"
    )
        port map (
      I0 => digit(1),
      I1 => min(4),
      I2 => min(6),
      I3 => min(7),
      I4 => min(5),
      O => \logic_out[3]_INST_0_i_2_n_0\
    );
\logic_out[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005553"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_4_n_0\,
      I1 => \logic_out[3]_INST_0_i_8_n_0\,
      I2 => \logic_out[6]_INST_0_i_6_n_0\,
      I3 => \logic_out[6]_INST_0_i_15_n_0\,
      I4 => \logic_out[5]_INST_0_i_8_n_0\,
      I5 => \logic_out[5]_INST_0_i_9_n_0\,
      O => \logic_out[3]_INST_0_i_3_n_0\
    );
\logic_out[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4410104404414104"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_8_n_0\,
      I1 => min(0),
      I2 => min(1),
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => min(2),
      I5 => \logic_out[2]_INST_0_i_3_n_0\,
      O => \logic_out[3]_INST_0_i_4_n_0\
    );
\logic_out[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D56B6BD5FFFFFFFF"
    )
        port map (
      I0 => hour(0),
      I1 => hour(1),
      I2 => \logic_out[4]_INST_0_i_4_n_0\,
      I3 => hour(2),
      I4 => \logic_out[6]_INST_0_i_6_n_0\,
      I5 => \logic_out[5]_INST_0_i_7_n_0\,
      O => \logic_out[3]_INST_0_i_5_n_0\
    );
\logic_out[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0C0F010C0F01"
    )
        port map (
      I0 => min(1),
      I1 => min(2),
      I2 => \logic_out[6]_INST_0_i_7_n_0\,
      I3 => min(3),
      I4 => \logic_out[6]_INST_0_i_12_n_0\,
      I5 => \logic_out[2]_INST_0_i_5_n_0\,
      O => \logic_out[3]_INST_0_i_6_n_0\
    );
\logic_out[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000C07C7C070000"
    )
        port map (
      I0 => min(2),
      I1 => min(3),
      I2 => min(4),
      I3 => min(6),
      I4 => min(7),
      I5 => min(5),
      O => \logic_out[3]_INST_0_i_7_n_0\
    );
\logic_out[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5900656541416524"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_9_n_0\,
      I1 => \logic_out[6]_INST_0_i_15_n_0\,
      I2 => hour(3),
      I3 => hour(1),
      I4 => hour(2),
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[3]_INST_0_i_8_n_0\
    );
\logic_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBABB"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_1_n_0\,
      I1 => \logic_out[4]_INST_0_i_2_n_0\,
      I2 => \logic_out[4]_INST_0_i_3_n_0\,
      I3 => \logic_out[4]_INST_0_i_4_n_0\,
      I4 => \logic_out[4]_INST_0_i_5_n_0\,
      I5 => \logic_out[4]_INST_0_i_6_n_0\,
      O => logic_out(4)
    );
\logic_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000F000600000"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_6_n_0\,
      I1 => hour(2),
      I2 => digit(1),
      I3 => \^logic_out[7]\,
      I4 => \logic_out[4]_INST_0_i_7_n_0\,
      I5 => hour(0),
      O => \logic_out[4]_INST_0_i_1_n_0\
    );
\logic_out[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FFF3FFF7F"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_14_n_0\,
      I1 => digit(1),
      I2 => \^logic_out[7]\,
      I3 => \logic_out[6]_INST_0_i_16_n_0\,
      I4 => \logic_out[6]_INST_0_i_15_n_0\,
      I5 => \logic_out[4]_INST_0_i_8_n_0\,
      O => \logic_out[4]_INST_0_i_2_n_0\
    );
\logic_out[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0860061008E00E30"
    )
        port map (
      I0 => hour(3),
      I1 => hour(4),
      I2 => hour(7),
      I3 => hour(5),
      I4 => hour(6),
      I5 => hour(2),
      O => \logic_out[4]_INST_0_i_3_n_0\
    );
\logic_out[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24A68282BEBE9ADB"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_9_n_0\,
      I1 => \logic_out[6]_INST_0_i_15_n_0\,
      I2 => hour(3),
      I3 => hour(1),
      I4 => hour(2),
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[4]_INST_0_i_4_n_0\
    );
\logic_out[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202000200030"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_3_n_0\,
      I1 => \logic_out[6]_INST_0_i_10_n_0\,
      I2 => \^common_digit\(1),
      I3 => \logic_out[6]_INST_0_i_11_n_0\,
      I4 => \logic_out[6]_INST_0_i_7_n_0\,
      I5 => \logic_out[6]_INST_0_i_12_n_0\,
      O => \logic_out[4]_INST_0_i_5_n_0\
    );
\logic_out[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F060F000F000F060"
    )
        port map (
      I0 => min(2),
      I1 => \logic_out[6]_INST_0_i_7_n_0\,
      I2 => \^common_digit\(0),
      I3 => min(0),
      I4 => \logic_out[2]_INST_0_i_3_n_0\,
      I5 => min(1),
      O => \logic_out[4]_INST_0_i_6_n_0\
    );
\logic_out[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FA53C8FF13CA5F1"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_6_n_0\,
      I1 => hour(2),
      I2 => hour(1),
      I3 => hour(3),
      I4 => \logic_out[6]_INST_0_i_15_n_0\,
      I5 => \logic_out[4]_INST_0_i_9_n_0\,
      O => \logic_out[4]_INST_0_i_7_n_0\
    );
\logic_out[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"320380C820C20CB0"
    )
        port map (
      I0 => hour(2),
      I1 => hour(6),
      I2 => hour(5),
      I3 => hour(7),
      I4 => hour(4),
      I5 => hour(3),
      O => \logic_out[4]_INST_0_i_8_n_0\
    );
\logic_out[4]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59A66559"
    )
        port map (
      I0 => hour(3),
      I1 => hour(7),
      I2 => hour(5),
      I3 => hour(6),
      I4 => hour(4),
      O => \logic_out[4]_INST_0_i_9_n_0\
    );
\logic_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \logic_out[5]_INST_0_i_1_n_0\,
      I1 => \logic_out[5]_INST_0_i_2_n_0\,
      I2 => \logic_out[5]_INST_0_i_3_n_0\,
      I3 => \logic_out[5]_INST_0_i_4_n_0\,
      I4 => \logic_out[5]_INST_0_i_5_n_0\,
      I5 => \logic_out[5]_INST_0_i_6_n_0\,
      O => logic_out(5)
    );
\logic_out[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"06FF"
    )
        port map (
      I0 => hour(1),
      I1 => \logic_out[4]_INST_0_i_4_n_0\,
      I2 => hour(0),
      I3 => \logic_out[5]_INST_0_i_7_n_0\,
      O => \logic_out[5]_INST_0_i_1_n_0\
    );
\logic_out[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1581E87E7E571581"
    )
        port map (
      I0 => hour(2),
      I1 => hour(3),
      I2 => hour(7),
      I3 => hour(5),
      I4 => hour(6),
      I5 => hour(4),
      O => \logic_out[5]_INST_0_i_10_n_0\
    );
\logic_out[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F99F9996"
    )
        port map (
      I0 => hour(2),
      I1 => \logic_out[6]_INST_0_i_6_n_0\,
      I2 => hour(1),
      I3 => \logic_out[4]_INST_0_i_4_n_0\,
      I4 => hour(0),
      O => \logic_out[5]_INST_0_i_2_n_0\
    );
\logic_out[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE00000"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_7_n_0\,
      I1 => \logic_out[6]_INST_0_i_12_n_0\,
      I2 => \logic_out[2]_INST_0_i_3_n_0\,
      I3 => \logic_out[2]_INST_0_i_2_n_0\,
      I4 => \^logic_out[7]\,
      I5 => \logic_out[3]_INST_0_i_2_n_0\,
      O => \logic_out[5]_INST_0_i_3_n_0\
    );
\logic_out[5]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FF99699"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_7_n_0\,
      I1 => min(2),
      I2 => min(1),
      I3 => \logic_out[2]_INST_0_i_3_n_0\,
      I4 => min(0),
      O => \logic_out[5]_INST_0_i_4_n_0\
    );
\logic_out[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F6"
    )
        port map (
      I0 => \logic_out[2]_INST_0_i_3_n_0\,
      I1 => min(1),
      I2 => min(0),
      I3 => \logic_out[6]_INST_0_i_8_n_0\,
      O => \logic_out[5]_INST_0_i_5_n_0\
    );
\logic_out[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000D000D000000"
    )
        port map (
      I0 => \logic_out[4]_INST_0_i_4_n_0\,
      I1 => \logic_out[5]_INST_0_i_8_n_0\,
      I2 => \logic_out[5]_INST_0_i_9_n_0\,
      I3 => \^logic_out[7]\,
      I4 => \logic_out[6]_INST_0_i_15_n_0\,
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[5]_INST_0_i_6_n_0\
    );
\logic_out[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88A0A22A0A82A"
    )
        port map (
      I0 => \^common_digit\(2),
      I1 => \logic_out[6]_INST_0_i_6_n_0\,
      I2 => hour(2),
      I3 => hour(1),
      I4 => \logic_out[6]_INST_0_i_5_n_0\,
      I5 => \logic_out[5]_INST_0_i_10_n_0\,
      O => \logic_out[5]_INST_0_i_7_n_0\
    );
\logic_out[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300300C020C20CB0"
    )
        port map (
      I0 => hour(2),
      I1 => hour(6),
      I2 => hour(5),
      I3 => hour(7),
      I4 => hour(4),
      I5 => hour(3),
      O => \logic_out[5]_INST_0_i_8_n_0\
    );
\logic_out[5]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECCFFFF"
    )
        port map (
      I0 => hour(4),
      I1 => hour(7),
      I2 => hour(5),
      I3 => hour(6),
      I4 => digit(1),
      O => \logic_out[5]_INST_0_i_9_n_0\
    );
\logic_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFCFCFDDDDCCCC"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_1_n_0\,
      I1 => \logic_out[6]_INST_0_i_2_n_0\,
      I2 => \logic_out[6]_INST_0_i_3_n_0\,
      I3 => \logic_out[6]_INST_0_i_4_n_0\,
      I4 => digit(1),
      I5 => \^logic_out[7]\,
      O => logic_out(6)
    );
\logic_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5A77FFF7FFFFA5B"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_5_n_0\,
      I1 => hour(0),
      I2 => hour(1),
      I3 => \logic_out[4]_INST_0_i_4_n_0\,
      I4 => hour(2),
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[6]_INST_0_i_1_n_0\
    );
\logic_out[6]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => min(7),
      I1 => min(5),
      I2 => min(6),
      O => \logic_out[6]_INST_0_i_10_n_0\
    );
\logic_out[6]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C38"
    )
        port map (
      I0 => min(4),
      I1 => min(6),
      I2 => min(7),
      I3 => min(5),
      O => \logic_out[6]_INST_0_i_11_n_0\
    );
\logic_out[6]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9929B96B"
    )
        port map (
      I0 => min(5),
      I1 => min(7),
      I2 => min(6),
      I3 => min(4),
      I4 => min(3),
      O => \logic_out[6]_INST_0_i_12_n_0\
    );
\logic_out[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D992200FFFFFFFF"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_15_n_0\,
      I1 => hour(3),
      I2 => hour(1),
      I3 => hour(2),
      I4 => \logic_out[4]_INST_0_i_9_n_0\,
      I5 => \logic_out[6]_INST_0_i_6_n_0\,
      O => \logic_out[6]_INST_0_i_13_n_0\
    );
\logic_out[6]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DBD"
    )
        port map (
      I0 => hour(7),
      I1 => hour(5),
      I2 => hour(6),
      I3 => hour(4),
      O => \logic_out[6]_INST_0_i_14_n_0\
    );
\logic_out[6]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C71CF10F"
    )
        port map (
      I0 => hour(3),
      I1 => hour(4),
      I2 => hour(7),
      I3 => hour(5),
      I4 => hour(6),
      O => \logic_out[6]_INST_0_i_15_n_0\
    );
\logic_out[6]_INST_0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hour(7),
      I1 => hour(5),
      I2 => hour(6),
      O => \logic_out[6]_INST_0_i_16_n_0\
    );
\logic_out[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66D6B96B99294694"
    )
        port map (
      I0 => min(5),
      I1 => min(7),
      I2 => min(6),
      I3 => min(4),
      I4 => min(3),
      I5 => min(2),
      O => \logic_out[6]_INST_0_i_17_n_0\
    );
\logic_out[6]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24DB45B25D24DB45"
    )
        port map (
      I0 => min(2),
      I1 => min(5),
      I2 => min(7),
      I3 => min(6),
      I4 => min(3),
      I5 => min(4),
      O => \logic_out[6]_INST_0_i_18_n_0\
    );
\logic_out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E00E3883"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      I2 => \logic_out[6]_INST_0_i_7_n_0\,
      I3 => min(2),
      I4 => \logic_out[2]_INST_0_i_3_n_0\,
      I5 => \logic_out[6]_INST_0_i_8_n_0\,
      O => \logic_out[6]_INST_0_i_2_n_0\
    );
\logic_out[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03300202"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_9_n_0\,
      I1 => \logic_out[6]_INST_0_i_10_n_0\,
      I2 => \logic_out[6]_INST_0_i_11_n_0\,
      I3 => \logic_out[6]_INST_0_i_7_n_0\,
      I4 => \logic_out[6]_INST_0_i_12_n_0\,
      O => \logic_out[6]_INST_0_i_3_n_0\
    );
\logic_out[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3A0"
    )
        port map (
      I0 => \logic_out[6]_INST_0_i_13_n_0\,
      I1 => \logic_out[6]_INST_0_i_6_n_0\,
      I2 => \logic_out[6]_INST_0_i_14_n_0\,
      I3 => \logic_out[6]_INST_0_i_15_n_0\,
      I4 => \logic_out[6]_INST_0_i_16_n_0\,
      O => \logic_out[6]_INST_0_i_4_n_0\
    );
\logic_out[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6DB65BA59249A45A"
    )
        port map (
      I0 => hour(3),
      I1 => hour(4),
      I2 => hour(7),
      I3 => hour(5),
      I4 => hour(6),
      I5 => hour(2),
      O => \logic_out[6]_INST_0_i_5_n_0\
    );
\logic_out[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B23C2CC23C2CCBC"
    )
        port map (
      I0 => hour(2),
      I1 => hour(6),
      I2 => hour(5),
      I3 => hour(7),
      I4 => hour(4),
      I5 => hour(3),
      O => \logic_out[6]_INST_0_i_6_n_0\
    );
\logic_out[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FB42DF20DB024D2"
    )
        port map (
      I0 => min(5),
      I1 => min(7),
      I2 => min(6),
      I3 => min(4),
      I4 => min(3),
      I5 => min(2),
      O => \logic_out[6]_INST_0_i_7_n_0\
    );
\logic_out[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"034CB142FFFFFFFF"
    )
        port map (
      I0 => min(1),
      I1 => min(2),
      I2 => \logic_out[6]_INST_0_i_7_n_0\,
      I3 => \logic_out[6]_INST_0_i_17_n_0\,
      I4 => \logic_out[6]_INST_0_i_18_n_0\,
      I5 => \^common_digit\(0),
      O => \logic_out[6]_INST_0_i_8_n_0\
    );
\logic_out[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2490FFFFA4D0FFFF"
    )
        port map (
      I0 => min(3),
      I1 => min(2),
      I2 => \logic_out[2]_INST_0_i_5_n_0\,
      I3 => \logic_out[6]_INST_0_i_12_n_0\,
      I4 => \logic_out[6]_INST_0_i_7_n_0\,
      I5 => min(1),
      O => \logic_out[6]_INST_0_i_9_n_0\
    );
\min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => min(0),
      I1 => \min[7]_i_3_n_0\,
      O => \min[0]_i_1_n_0\
    );
\min[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min(1),
      I1 => min(0),
      O => \min[1]_i_1_n_0\
    );
\min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => min(1),
      I1 => min(0),
      I2 => min(2),
      I3 => \min[7]_i_3_n_0\,
      O => \min[2]_i_1_n_0\
    );
\min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      I2 => min(2),
      I3 => min(3),
      I4 => \min[7]_i_3_n_0\,
      O => \min[3]_i_1_n_0\
    );
\min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => min(3),
      I2 => min(2),
      I3 => min(1),
      I4 => min(0),
      I5 => min(4),
      O => \min[4]_i_1_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => \min[5]_i_2_n_0\,
      I2 => min(5),
      O => \min[5]_i_1_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      I2 => min(2),
      I3 => min(3),
      I4 => min(4),
      O => \min[5]_i_2_n_0\
    );
\min[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => min(6),
      I1 => \min[7]_i_4_n_0\,
      O => \min[6]_i_1_n_0\
    );
\min[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \second[7]_i_3_n_0\,
      I1 => \min[7]_i_3_n_0\,
      O => \min[7]_i_1_n_0\
    );
\min[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => min(7),
      I1 => min(6),
      I2 => \min[7]_i_4_n_0\,
      O => \min[7]_i_2_n_0\
    );
\min[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => min(6),
      I1 => min(0),
      I2 => min(4),
      I3 => min(3),
      I4 => \min[7]_i_5_n_0\,
      O => \min[7]_i_3_n_0\
    );
\min[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => min(4),
      I1 => min(3),
      I2 => min(2),
      I3 => min(1),
      I4 => min(0),
      I5 => min(5),
      O => \min[7]_i_4_n_0\
    );
\min[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => min(1),
      I1 => min(2),
      I2 => min(7),
      I3 => min(5),
      O => \min[7]_i_5_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[0]_i_1_n_0\,
      Q => min(0),
      R => '0'
    );
\min_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[1]_i_1_n_0\,
      Q => min(1),
      R => '0'
    );
\min_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[2]_i_1_n_0\,
      Q => min(2),
      R => '0'
    );
\min_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[3]_i_1_n_0\,
      Q => min(3),
      R => '0'
    );
\min_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[4]_i_1_n_0\,
      Q => min(4),
      R => '0'
    );
\min_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[5]_i_1_n_0\,
      Q => min(5),
      R => '0'
    );
\min_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[6]_i_1_n_0\,
      Q => min(6),
      R => '0'
    );
\min_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \min[7]_i_1_n_0\,
      D => \min[7]_i_2_n_0\,
      Q => min(7),
      R => '0'
    );
\second[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => second(0),
      I1 => \second[7]_i_3_n_0\,
      O => \second[0]_i_1_n_0\
    );
\second[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => second(0),
      I1 => second(1),
      O => \second[1]_i_1_n_0\
    );
\second[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => second(0),
      I1 => second(1),
      I2 => second(2),
      I3 => \second[7]_i_3_n_0\,
      O => \second[2]_i_1_n_0\
    );
\second[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => second(2),
      I1 => second(1),
      I2 => second(0),
      I3 => second(3),
      I4 => \second[7]_i_3_n_0\,
      O => \second[3]_i_1_n_0\
    );
\second[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \second[7]_i_3_n_0\,
      I1 => second(3),
      I2 => second(0),
      I3 => second(1),
      I4 => second(2),
      I5 => second(4),
      O => \second[4]_i_1_n_0\
    );
\second[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \second[7]_i_3_n_0\,
      I1 => \second[5]_i_2_n_0\,
      I2 => second(5),
      O => \second[5]_i_1_n_0\
    );
\second[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => second(4),
      I1 => second(2),
      I2 => second(1),
      I3 => second(0),
      I4 => second(3),
      O => \second[5]_i_2_n_0\
    );
\second[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => second(6),
      I1 => \second[7]_i_4_n_0\,
      O => \second[6]_i_1_n_0\
    );
\second[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \second[7]_i_3_n_0\,
      I1 => \count1_carry__2_n_0\,
      O => \second[7]_i_1_n_0\
    );
\second[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => second(7),
      I1 => \second[7]_i_4_n_0\,
      I2 => second(6),
      O => \second[7]_i_2_n_0\
    );
\second[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => second(7),
      I1 => second(3),
      I2 => second(2),
      I3 => second(5),
      I4 => \second[7]_i_5_n_0\,
      O => \second[7]_i_3_n_0\
    );
\second[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => second(3),
      I1 => second(0),
      I2 => second(1),
      I3 => second(2),
      I4 => second(4),
      I5 => second(5),
      O => \second[7]_i_4_n_0\
    );
\second[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => second(4),
      I1 => second(6),
      I2 => second(1),
      I3 => second(0),
      O => \second[7]_i_5_n_0\
    );
\second_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[0]_i_1_n_0\,
      Q => second(0),
      R => '0'
    );
\second_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[1]_i_1_n_0\,
      Q => second(1),
      R => '0'
    );
\second_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[2]_i_1_n_0\,
      Q => second(2),
      R => '0'
    );
\second_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[3]_i_1_n_0\,
      Q => second(3),
      R => '0'
    );
\second_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[4]_i_1_n_0\,
      Q => second(4),
      R => '0'
    );
\second_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[5]_i_1_n_0\,
      Q => second(5),
      R => '0'
    );
\second_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[6]_i_1_n_0\,
      Q => second(6),
      R => '0'
    );
\second_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \second[7]_i_1_n_0\,
      D => \second[7]_i_2_n_0\,
      Q => second(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    logic_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    common_digit : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Zynq_System_LogicSignalOut_0_0,LogicSignalOut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "LogicSignalOut,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_System_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LogicSignalOut
     port map (
      clk => clk,
      common_digit(3 downto 0) => common_digit(3 downto 0),
      logic_out(6 downto 0) => logic_out(6 downto 0),
      \logic_out[7]\ => logic_out(7)
    );
end STRUCTURE;
