-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon May 18 15:20:09 2020
-- Host        : DESKTOP-B38P1G4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Public/Zynq System/Zynq
--               System.srcs/sources_1/bd/Zynq_System/ip/Zynq_System_LogicSignalOut_0_0/Zynq_System_LogicSignalOut_0_0_sim_netlist.vhdl}
-- Design      : Zynq_System_LogicSignalOut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_System_LogicSignalOut_0_0_LogicSignalOut is
  port (
    common_digit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_System_LogicSignalOut_0_0_LogicSignalOut : entity is "LogicSignalOut";
end Zynq_System_LogicSignalOut_0_0_LogicSignalOut;

architecture STRUCTURE of Zynq_System_LogicSignalOut_0_0_LogicSignalOut is
  signal \Led_act_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \Led_act_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \Led_act_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \Led_act_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__0_n_1\ : STD_LOGIC;
  signal \bit_count1_carry__0_n_2\ : STD_LOGIC;
  signal \bit_count1_carry__0_n_3\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__1_n_1\ : STD_LOGIC;
  signal \bit_count1_carry__1_n_2\ : STD_LOGIC;
  signal \bit_count1_carry__1_n_3\ : STD_LOGIC;
  signal \bit_count1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__2_n_0\ : STD_LOGIC;
  signal \bit_count1_carry__2_n_1\ : STD_LOGIC;
  signal \bit_count1_carry__2_n_2\ : STD_LOGIC;
  signal \bit_count1_carry__2_n_3\ : STD_LOGIC;
  signal bit_count1_carry_i_1_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_2_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_3_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_4_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_5_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_6_n_0 : STD_LOGIC;
  signal bit_count1_carry_i_7_n_0 : STD_LOGIC;
  signal bit_count1_carry_n_0 : STD_LOGIC;
  signal bit_count1_carry_n_1 : STD_LOGIC;
  signal bit_count1_carry_n_2 : STD_LOGIC;
  signal bit_count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_i_3_n_0\ : STD_LOGIC;
  signal \count[16]_i_4_n_0\ : STD_LOGIC;
  signal \count[16]_i_5_n_0\ : STD_LOGIC;
  signal \count[20]_i_2_n_0\ : STD_LOGIC;
  signal \count[20]_i_3_n_0\ : STD_LOGIC;
  signal \count[20]_i_4_n_0\ : STD_LOGIC;
  signal \count[20]_i_5_n_0\ : STD_LOGIC;
  signal \count[24]_i_2_n_0\ : STD_LOGIC;
  signal \count[24]_i_3_n_0\ : STD_LOGIC;
  signal \count[24]_i_4_n_0\ : STD_LOGIC;
  signal \count[24]_i_5_n_0\ : STD_LOGIC;
  signal \count[28]_i_2_n_0\ : STD_LOGIC;
  signal \count[28]_i_3_n_0\ : STD_LOGIC;
  signal \count[28]_i_4_n_0\ : STD_LOGIC;
  signal \count[28]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
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
  signal NLW_bit_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bit_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bit_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bit_count1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Led_act_counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Led_act_counter[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \common_digit[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \common_digit[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \common_digit[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \common_digit[3]_INST_0\ : label is "soft_lutpair2";
begin
\Led_act_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => reset,
      I2 => \Led_act_counter_reg_n_0_[0]\,
      O => \Led_act_counter[0]_i_1_n_0\
    );
\Led_act_counter[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Led_act_counter_reg_n_0_[0]\,
      I1 => reset,
      I2 => \bit_count1_carry__2_n_0\,
      I3 => \Led_act_counter_reg_n_0_[1]\,
      O => \Led_act_counter[1]_i_1_n_0\
    );
\Led_act_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \Led_act_counter[0]_i_1_n_0\,
      Q => \Led_act_counter_reg_n_0_[0]\,
      R => '0'
    );
\Led_act_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \Led_act_counter[1]_i_1_n_0\,
      Q => \Led_act_counter_reg_n_0_[1]\,
      R => '0'
    );
bit_count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bit_count1_carry_n_0,
      CO(2) => bit_count1_carry_n_1,
      CO(1) => bit_count1_carry_n_2,
      CO(0) => bit_count1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => bit_count1_carry_i_1_n_0,
      DI(1) => bit_count1_carry_i_2_n_0,
      DI(0) => bit_count1_carry_i_3_n_0,
      O(3 downto 0) => NLW_bit_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => bit_count1_carry_i_4_n_0,
      S(2) => bit_count1_carry_i_5_n_0,
      S(1) => bit_count1_carry_i_6_n_0,
      S(0) => bit_count1_carry_i_7_n_0
    );
\bit_count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bit_count1_carry_n_0,
      CO(3) => \bit_count1_carry__0_n_0\,
      CO(2) => \bit_count1_carry__0_n_1\,
      CO(1) => \bit_count1_carry__0_n_2\,
      CO(0) => \bit_count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \bit_count1_carry__0_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \bit_count1_carry__0_i_2_n_0\,
      DI(0) => \bit_count1_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_bit_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \bit_count1_carry__0_i_4_n_0\,
      S(2) => \bit_count1_carry__0_i_5_n_0\,
      S(1) => \bit_count1_carry__0_i_6_n_0\,
      S(0) => \bit_count1_carry__0_i_7_n_0\
    );
\bit_count1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(15),
      O => \bit_count1_carry__0_i_1_n_0\
    );
\bit_count1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(11),
      O => \bit_count1_carry__0_i_2_n_0\
    );
\bit_count1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      O => \bit_count1_carry__0_i_3_n_0\
    );
\bit_count1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(15),
      O => \bit_count1_carry__0_i_4_n_0\
    );
\bit_count1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(12),
      I1 => count_reg(13),
      O => \bit_count1_carry__0_i_5_n_0\
    );
\bit_count1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      O => \bit_count1_carry__0_i_6_n_0\
    );
\bit_count1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      O => \bit_count1_carry__0_i_7_n_0\
    );
\bit_count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_count1_carry__0_n_0\,
      CO(3) => \bit_count1_carry__1_n_0\,
      CO(2) => \bit_count1_carry__1_n_1\,
      CO(1) => \bit_count1_carry__1_n_2\,
      CO(0) => \bit_count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \bit_count1_carry__1_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \bit_count1_carry__1_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_bit_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \bit_count1_carry__1_i_3_n_0\,
      S(2) => \bit_count1_carry__1_i_4_n_0\,
      S(1) => \bit_count1_carry__1_i_5_n_0\,
      S(0) => \bit_count1_carry__1_i_6_n_0\
    );
\bit_count1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(22),
      I1 => count_reg(23),
      O => \bit_count1_carry__1_i_1_n_0\
    );
\bit_count1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \bit_count1_carry__1_i_2_n_0\
    );
\bit_count1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(22),
      I1 => count_reg(23),
      O => \bit_count1_carry__1_i_3_n_0\
    );
\bit_count1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(20),
      I1 => count_reg(21),
      O => \bit_count1_carry__1_i_4_n_0\
    );
\bit_count1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      O => \bit_count1_carry__1_i_5_n_0\
    );
\bit_count1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      O => \bit_count1_carry__1_i_6_n_0\
    );
\bit_count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_count1_carry__1_n_0\,
      CO(3) => \bit_count1_carry__2_n_0\,
      CO(2) => \bit_count1_carry__2_n_1\,
      CO(1) => \bit_count1_carry__2_n_2\,
      CO(0) => \bit_count1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => count_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_bit_count1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \bit_count1_carry__2_i_1_n_0\,
      S(2) => \bit_count1_carry__2_i_2_n_0\,
      S(1) => \bit_count1_carry__2_i_3_n_0\,
      S(0) => \bit_count1_carry__2_i_4_n_0\
    );
\bit_count1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(30),
      I1 => count_reg(31),
      O => \bit_count1_carry__2_i_1_n_0\
    );
\bit_count1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(28),
      I1 => count_reg(29),
      O => \bit_count1_carry__2_i_2_n_0\
    );
\bit_count1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(26),
      I1 => count_reg(27),
      O => \bit_count1_carry__2_i_3_n_0\
    );
\bit_count1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(24),
      I1 => count_reg(25),
      O => \bit_count1_carry__2_i_4_n_0\
    );
bit_count1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => bit_count1_carry_i_1_n_0
    );
bit_count1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      O => bit_count1_carry_i_2_n_0
    );
bit_count1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => bit_count1_carry_i_3_n_0
    );
bit_count1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(7),
      O => bit_count1_carry_i_4_n_0
    );
bit_count1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      O => bit_count1_carry_i_5_n_0
    );
bit_count1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      O => bit_count1_carry_i_6_n_0
    );
bit_count1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => bit_count1_carry_i_7_n_0
    );
\common_digit[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Led_act_counter_reg_n_0_[0]\,
      I1 => \Led_act_counter_reg_n_0_[1]\,
      O => common_digit(0)
    );
\common_digit[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Led_act_counter_reg_n_0_[1]\,
      I1 => \Led_act_counter_reg_n_0_[0]\,
      O => common_digit(1)
    );
\common_digit[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Led_act_counter_reg_n_0_[0]\,
      I1 => \Led_act_counter_reg_n_0_[1]\,
      O => common_digit(2)
    );
\common_digit[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Led_act_counter_reg_n_0_[0]\,
      I1 => \Led_act_counter_reg_n_0_[1]\,
      O => common_digit(3)
    );
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(3),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(2),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(1),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => count_reg(0),
      I1 => \bit_count1_carry__2_n_0\,
      O => \count[0]_i_6_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(15),
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(14),
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(13),
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(12),
      O => \count[12]_i_5_n_0\
    );
\count[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(19),
      O => \count[16]_i_2_n_0\
    );
\count[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(18),
      O => \count[16]_i_3_n_0\
    );
\count[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(17),
      O => \count[16]_i_4_n_0\
    );
\count[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(16),
      O => \count[16]_i_5_n_0\
    );
\count[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(23),
      O => \count[20]_i_2_n_0\
    );
\count[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(22),
      O => \count[20]_i_3_n_0\
    );
\count[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(21),
      O => \count[20]_i_4_n_0\
    );
\count[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(20),
      O => \count[20]_i_5_n_0\
    );
\count[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(27),
      O => \count[24]_i_2_n_0\
    );
\count[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(26),
      O => \count[24]_i_3_n_0\
    );
\count[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(25),
      O => \count[24]_i_4_n_0\
    );
\count[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(24),
      O => \count[24]_i_5_n_0\
    );
\count[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(31),
      O => \count[28]_i_2_n_0\
    );
\count[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(30),
      O => \count[28]_i_3_n_0\
    );
\count[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(29),
      O => \count[28]_i_4_n_0\
    );
\count[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(28),
      O => \count[28]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(7),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(6),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(5),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(4),
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(11),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(10),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(9),
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_count1_carry__2_n_0\,
      I1 => count_reg(8),
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \bit_count1_carry__2_n_0\,
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count[0]_i_3_n_0\,
      S(2) => \count[0]_i_4_n_0\,
      S(1) => \count[0]_i_5_n_0\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12)
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
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16)
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
      S(3) => \count[16]_i_2_n_0\,
      S(2) => \count[16]_i_3_n_0\,
      S(1) => \count[16]_i_4_n_0\,
      S(0) => \count[16]_i_5_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20)
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
      S(3) => \count[20]_i_2_n_0\,
      S(2) => \count[20]_i_3_n_0\,
      S(1) => \count[20]_i_4_n_0\,
      S(0) => \count[20]_i_5_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23)
    );
\count_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24)
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
      S(3) => \count[24]_i_2_n_0\,
      S(2) => \count[24]_i_3_n_0\,
      S(1) => \count[24]_i_4_n_0\,
      S(0) => \count[24]_i_5_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25)
    );
\count_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26)
    );
\count_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27)
    );
\count_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28)
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
      S(3) => \count[28]_i_2_n_0\,
      S(2) => \count[28]_i_3_n_0\,
      S(1) => \count[28]_i_4_n_0\,
      S(0) => \count[28]_i_5_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2)
    );
\count_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30)
    );
\count_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
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
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8)
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
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_System_LogicSignalOut_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    logic_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_out : out STD_LOGIC;
    common_digit : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_System_LogicSignalOut_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_System_LogicSignalOut_0_0 : entity is "Zynq_System_LogicSignalOut_0_0,LogicSignalOut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_System_LogicSignalOut_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_System_LogicSignalOut_0_0 : entity is "LogicSignalOut,Vivado 2017.4";
end Zynq_System_LogicSignalOut_0_0;

architecture STRUCTURE of Zynq_System_LogicSignalOut_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN Zynq_System_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
  led_out <= \<const0>\;
  logic_out(7) <= \<const0>\;
  logic_out(6) <= \<const0>\;
  logic_out(5) <= \<const0>\;
  logic_out(4) <= \<const0>\;
  logic_out(3) <= \<const0>\;
  logic_out(2) <= \<const0>\;
  logic_out(1) <= \<const0>\;
  logic_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Zynq_System_LogicSignalOut_0_0_LogicSignalOut
     port map (
      clk => clk,
      common_digit(3 downto 0) => common_digit(3 downto 0),
      reset => reset
    );
end STRUCTURE;
