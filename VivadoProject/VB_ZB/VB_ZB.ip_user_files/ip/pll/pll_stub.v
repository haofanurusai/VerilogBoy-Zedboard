// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar  4 10:40:38 2022
// Host        : Tom-Laptop running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub C:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/pll/pll_stub.v
// Design      : pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll(clk_gb2, clk_vga, clk_mem, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_gb2,clk_vga,clk_mem,reset,locked,clk_in1" */;
  output clk_gb2;
  output clk_vga;
  output clk_mem;
  input reset;
  output locked;
  input clk_in1;
endmodule
