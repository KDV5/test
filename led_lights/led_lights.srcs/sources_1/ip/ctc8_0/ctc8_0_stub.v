// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Fri Aug 18 10:25:40 2017
// Host        : DESKTOP-QNENN53 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub e:/ctc/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_stub.v
// Design      : ctc8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ctc8,Vivado 2015.4" *)
module ctc8_0(clk, resetn, count)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,count[2:0]" */;
  input clk;
  input resetn;
  output [2:0]count;
endmodule
