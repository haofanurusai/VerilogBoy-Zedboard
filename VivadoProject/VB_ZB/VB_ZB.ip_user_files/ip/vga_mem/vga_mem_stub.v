// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar  4 10:22:38 2022
// Host        : Tom-Laptop running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub c:/Users/Tom/VB_ZB/VB_ZB.srcs/sources_1/ip/vga_mem/vga_mem_stub.v
// Design      : vga_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module vga_mem(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[14:0],dina[1:0],clkb,addrb[14:0],doutb[1:0]" */;
  input clka;
  input [0:0]wea;
  input [14:0]addra;
  input [1:0]dina;
  input clkb;
  input [14:0]addrb;
  output [1:0]doutb;
endmodule
