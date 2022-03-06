-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Mar  4 10:40:38 2022
-- Host        : Tom-Laptop running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub C:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll_stub.vhdl
-- Design      : pll
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll is
  Port ( 
    clk_gb2 : out STD_LOGIC;
    clk_vga : out STD_LOGIC;
    clk_mem : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end pll;

architecture stub of pll is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_gb2,clk_vga,clk_mem,reset,locked,clk_in1";
begin
end;
