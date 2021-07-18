-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jun 15 17:55:20 2020
-- Host        : DESKTOP-B38P1G4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {C:/Users/Public/Zynq System/Zynq
--               System.srcs/sources_1/bd/Zynq_System/ip/Zynq_System_LogicSignalOut_0_0/Zynq_System_LogicSignalOut_0_0_stub.vhdl}
-- Design      : Zynq_System_LogicSignalOut_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_System_LogicSignalOut_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    logic_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    common_digit : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Zynq_System_LogicSignalOut_0_0;

architecture stub of Zynq_System_LogicSignalOut_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,logic_out[7:0],common_digit[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LogicSignalOut,Vivado 2017.4";
begin
end;
