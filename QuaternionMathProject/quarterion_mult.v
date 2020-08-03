//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
//Date        : Sat Jul 22 22:29:20 2017
//Host        : DESKTOP-7PGUGF9 running 64-bit major release  (build 9200)
//Command     : generate_target quarterion_mult.bd
//Design      : quarterion_mult
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "quarterion_mult,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=quarterion_mult,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=28,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "quarterion_mult.hwdef" *) 
module quarterion_mult
   (clk,
    q0,
    q1,
    q2,
    q3,
    r0,
    r1,
    r2,
    r3,
    t0,
    t1,
    t2,
    t3,
    valid_q0,
    valid_q1,
    valid_q2,
    valid_q3,
    valid_r0,
    valid_r1,
    valid_r2,
    valid_r3,
    valid_t0,
    valid_t1,
    valid_t2,
    valid_t3);
  input clk;
  input [31:0]q0;
  input [31:0]q1;
  input [31:0]q2;
  input [31:0]q3;
  input [31:0]r0;
  input [31:0]r1;
  input [31:0]r2;
  input [31:0]r3;
  output [31:0]t0;
  output [31:0]t1;
  output [31:0]t2;
  output [31:0]t3;
  input valid_q0;
  input valid_q1;
  input valid_q2;
  input valid_q3;
  input valid_r0;
  input valid_r1;
  input valid_r2;
  input valid_r3;
  output valid_t0;
  output valid_t1;
  output valid_t2;
  output valid_t3;

  wire clk;
  wire [31:0]q0;
  wire q0_valid;
  wire [31:0]q1;
  wire q1_valid;
  wire [31:0]q2;
  wire q2_valid;
  wire [31:0]q3;
  wire q3_valid;
  wire [31:0]r0;
  wire r0_valid;
  wire [31:0]r0q0;
  wire [31:0]r0q0_minus_r1q1;
  wire r0q0_minus_r1q1_valid;
  wire r0q0_valid;
  wire [31:0]r0q1;
  wire [31:0]r0q1_plus_r1q0;
  wire r0q1_plus_r1q0_valid;
  wire r0q1_valid;
  wire [31:0]r0q2;
  wire [31:0]r0q2_plus_r1q3;
  wire r0q2_plus_r1q3_valid;
  wire r0q2_valid;
  wire [31:0]r0q3;
  wire [31:0]r0q3_minus_r1q2;
  wire r0q3_minus_r1q2_valid;
  wire r0q3_valid;
  wire [31:0]r1;
  wire r1_valid;
  wire [31:0]r1q0;
  wire r1q0_valid;
  wire [31:0]r1q1;
  wire r1q1_valid;
  wire [31:0]r1q2;
  wire r1q2_valid;
  wire [31:0]r1q3;
  wire r1q3_valid;
  wire [31:0]r2;
  wire r2_valid;
  wire [31:0]r2q0;
  wire [31:0]r2q0_minus_r3q1;
  wire r2q0_minus_r3q1_valid;
  wire r2q0_valid;
  wire [31:0]r2q1;
  wire [31:0]r2q1_plus_r3q0;
  wire r2q1_plus_r3q0_valid;
  wire r2q1_valid;
  wire [31:0]r2q2;
  wire [31:0]r2q2_plus_r3q3;
  wire r2q2_plus_r3q3_valid;
  wire r2q2_valid;
  wire [31:0]r2q3;
  wire r2q3_valid;
  wire [31:0]r3;
  wire r3_valid;
  wire [31:0]r3q0;
  wire r3q0_valid;
  wire [31:0]r3q1;
  wire r3q1_valid;
  wire [31:0]r3q2;
  wire [31:0]r3q2_minus_r2q3;
  wire r3q2_minus_r2q3_valid;
  wire r3q2_valid;
  wire [31:0]r3q3;
  wire r3q3_valid;
  wire [31:0]t0;
  wire t0_valid;
  wire [31:0]t1;
  wire t1_valid;
  wire [31:0]t2;
  wire t2_valid;
  wire [31:0]t3;
  wire t3_valid;

  assign q0_valid = valid_q0;
  assign q1_valid = valid_q1;
  assign q2_valid = valid_q2;
  assign q3_valid = valid_q3;
  assign r0_valid = valid_r0;
  assign r1_valid = valid_r1;
  assign r2_valid = valid_r2;
  assign r3_valid = valid_r3;
  assign valid_t0 = t0_valid;
  assign valid_t1 = t1_valid;
  assign valid_t2 = t2_valid;
  assign valid_t3 = t3_valid;
  quarterion_mult_floating_add_r0q1_r1q0_0 floating_add_r0q1_r1q0
       (.aclk(clk),
        .m_axis_result_tdata(r0q1_plus_r1q0),
        .m_axis_result_tvalid(r0q1_plus_r1q0_valid),
        .s_axis_a_tdata(r1q0),
        .s_axis_a_tvalid(r1q0_valid),
        .s_axis_b_tdata(r0q1),
        .s_axis_b_tvalid(r0q1_valid));
  quarterion_mult_floating_add_r0q2_r1q3_0 floating_add_r0q2_r1q3
       (.aclk(clk),
        .m_axis_result_tdata(r0q2_plus_r1q3),
        .m_axis_result_tvalid(r0q2_plus_r1q3_valid),
        .s_axis_a_tdata(r0q2),
        .s_axis_a_tvalid(r0q2_valid),
        .s_axis_b_tdata(r1q3),
        .s_axis_b_tvalid(r1q3_valid));
  quarterion_mult_floating_add_r2q1_r3q0_0 floating_add_r2q1_r3q0
       (.aclk(clk),
        .m_axis_result_tdata(r2q1_plus_r3q0),
        .m_axis_result_tvalid(r2q1_plus_r3q0_valid),
        .s_axis_a_tdata(r2q1),
        .s_axis_a_tvalid(r2q1_valid),
        .s_axis_b_tdata(r3q0),
        .s_axis_b_tvalid(r3q0_valid));
  quarterion_mult_floating_add_r2q2_r3q3_0 floating_add_r2q2_r3q3
       (.aclk(clk),
        .m_axis_result_tdata(r2q2_plus_r3q3),
        .m_axis_result_tvalid(r2q2_plus_r3q3_valid),
        .s_axis_a_tdata(r2q2),
        .s_axis_a_tvalid(r2q2_valid),
        .s_axis_b_tdata(r3q3),
        .s_axis_b_tvalid(r3q3_valid));
  quarterion_mult_floating_add_t1_0 floating_add_t1
       (.aclk(clk),
        .m_axis_result_tdata(t1),
        .m_axis_result_tvalid(t1_valid),
        .s_axis_a_tdata(r0q1_plus_r1q0),
        .s_axis_a_tvalid(r0q1_plus_r1q0_valid),
        .s_axis_b_tdata(r3q2_minus_r2q3),
        .s_axis_b_tvalid(r3q2_minus_r2q3_valid));
  quarterion_mult_floating_add_t2_0 floating_add_t2
       (.aclk(clk),
        .m_axis_result_tdata(t2),
        .m_axis_result_tvalid(t2_valid),
        .s_axis_a_tdata(r0q2_plus_r1q3),
        .s_axis_a_tvalid(r0q2_plus_r1q3_valid),
        .s_axis_b_tdata(r2q0_minus_r3q1),
        .s_axis_b_tvalid(r2q0_minus_r3q1_valid));
  quarterion_mult_floating_add_t3_0 floating_add_t3
       (.aclk(clk),
        .m_axis_result_tdata(t3),
        .m_axis_result_tvalid(t3_valid),
        .s_axis_a_tdata(r2q1_plus_r3q0),
        .s_axis_a_tvalid(r2q1_plus_r3q0_valid),
        .s_axis_b_tdata(r0q3_minus_r1q2),
        .s_axis_b_tvalid(r0q3_minus_r1q2_valid));
  quarterion_mult_floating_mult_r0q0_0 floating_mult_r0q0
       (.aclk(clk),
        .m_axis_result_tdata(r0q0),
        .m_axis_result_tvalid(r0q0_valid),
        .s_axis_a_tdata(r0),
        .s_axis_a_tvalid(r0_valid),
        .s_axis_b_tdata(q0),
        .s_axis_b_tvalid(q0_valid));
  quarterion_mult_floating_mult_r0q1_0 floating_mult_r0q1
       (.aclk(clk),
        .m_axis_result_tdata(r0q1),
        .m_axis_result_tvalid(r0q1_valid),
        .s_axis_a_tdata(r0),
        .s_axis_a_tvalid(r0_valid),
        .s_axis_b_tdata(q1),
        .s_axis_b_tvalid(q1_valid));
  quarterion_mult_floating_mult_r0q2_0 floating_mult_r0q2
       (.aclk(clk),
        .m_axis_result_tdata(r0q2),
        .m_axis_result_tvalid(r0q2_valid),
        .s_axis_a_tdata(r0),
        .s_axis_a_tvalid(r0_valid),
        .s_axis_b_tdata(q2),
        .s_axis_b_tvalid(q2_valid));
  quarterion_mult_floating_mult_r0q3_0 floating_mult_r0q3
       (.aclk(clk),
        .m_axis_result_tdata(r0q3),
        .m_axis_result_tvalid(r0q3_valid),
        .s_axis_a_tdata(r0),
        .s_axis_a_tvalid(r0_valid),
        .s_axis_b_tdata(q3),
        .s_axis_b_tvalid(q3_valid));
  quarterion_mult_floating_mult_r1q0_0 floating_mult_r1q0
       (.aclk(clk),
        .m_axis_result_tdata(r1q0),
        .m_axis_result_tvalid(r1q0_valid),
        .s_axis_a_tdata(r1),
        .s_axis_a_tvalid(r1_valid),
        .s_axis_b_tdata(q0),
        .s_axis_b_tvalid(q0_valid));
  quarterion_mult_floating_mult_r1q1_0 floating_mult_r1q1
       (.aclk(clk),
        .m_axis_result_tdata(r1q1),
        .m_axis_result_tvalid(r1q1_valid),
        .s_axis_a_tdata(r1),
        .s_axis_a_tvalid(r1_valid),
        .s_axis_b_tdata(q1),
        .s_axis_b_tvalid(q1_valid));
  quarterion_mult_floating_mult_r1q2_0 floating_mult_r1q2
       (.aclk(clk),
        .m_axis_result_tdata(r1q2),
        .m_axis_result_tvalid(r1q2_valid),
        .s_axis_a_tdata(r1),
        .s_axis_a_tvalid(r1_valid),
        .s_axis_b_tdata(q2),
        .s_axis_b_tvalid(q2_valid));
  quarterion_mult_floating_mult_r1q3_0 floating_mult_r1q3
       (.aclk(clk),
        .m_axis_result_tdata(r1q3),
        .m_axis_result_tvalid(r1q3_valid),
        .s_axis_a_tdata(r1),
        .s_axis_a_tvalid(r1_valid),
        .s_axis_b_tdata(q3),
        .s_axis_b_tvalid(q3_valid));
  quarterion_mult_floating_mult_r2q0_0 floating_mult_r2q0
       (.aclk(clk),
        .m_axis_result_tdata(r2q0),
        .m_axis_result_tvalid(r2q0_valid),
        .s_axis_a_tdata(r2),
        .s_axis_a_tvalid(r2_valid),
        .s_axis_b_tdata(q0),
        .s_axis_b_tvalid(q0_valid));
  quarterion_mult_floating_mult_r2q1_0 floating_mult_r2q1
       (.aclk(clk),
        .m_axis_result_tdata(r2q1),
        .m_axis_result_tvalid(r2q1_valid),
        .s_axis_a_tdata(r2),
        .s_axis_a_tvalid(r2_valid),
        .s_axis_b_tdata(q1),
        .s_axis_b_tvalid(q1_valid));
  quarterion_mult_floating_mult_r2q2_0 floating_mult_r2q2
       (.aclk(clk),
        .m_axis_result_tdata(r2q2),
        .m_axis_result_tvalid(r2q2_valid),
        .s_axis_a_tdata(r2),
        .s_axis_a_tvalid(r2_valid),
        .s_axis_b_tdata(q2),
        .s_axis_b_tvalid(q2_valid));
  quarterion_mult_floating_mult_r2q3_0 floating_mult_r2q3
       (.aclk(clk),
        .m_axis_result_tdata(r2q3),
        .m_axis_result_tvalid(r2q3_valid),
        .s_axis_a_tdata(r2),
        .s_axis_a_tvalid(r2_valid),
        .s_axis_b_tdata(q3),
        .s_axis_b_tvalid(q3_valid));
  quarterion_mult_floating_mult_r3q0_0 floating_mult_r3q0
       (.aclk(clk),
        .m_axis_result_tdata(r3q0),
        .m_axis_result_tvalid(r3q0_valid),
        .s_axis_a_tdata(r3),
        .s_axis_a_tvalid(r3_valid),
        .s_axis_b_tdata(q0),
        .s_axis_b_tvalid(q0_valid));
  quarterion_mult_floating_mult_r3q1_0 floating_mult_r3q1
       (.aclk(clk),
        .m_axis_result_tdata(r3q1),
        .m_axis_result_tvalid(r3q1_valid),
        .s_axis_a_tdata(r3),
        .s_axis_a_tvalid(r3_valid),
        .s_axis_b_tdata(q1),
        .s_axis_b_tvalid(q1_valid));
  quarterion_mult_floating_mult_r3q2_0 floating_mult_r3q2
       (.aclk(clk),
        .m_axis_result_tdata(r3q2),
        .m_axis_result_tvalid(r3q2_valid),
        .s_axis_a_tdata(r3),
        .s_axis_a_tvalid(r3_valid),
        .s_axis_b_tdata(q2),
        .s_axis_b_tvalid(q2_valid));
  quarterion_mult_floating_mult_r3q3_0 floating_mult_r3q3
       (.aclk(clk),
        .m_axis_result_tdata(r3q3),
        .m_axis_result_tvalid(r3q3_valid),
        .s_axis_a_tdata(r3),
        .s_axis_a_tvalid(r3_valid),
        .s_axis_b_tdata(q3),
        .s_axis_b_tvalid(q3_valid));
  quarterion_mult_floating_sub_r0q0_r1q1_0 floating_sub_r0q0_r1q1
       (.aclk(clk),
        .m_axis_result_tdata(r0q0_minus_r1q1),
        .m_axis_result_tvalid(r0q0_minus_r1q1_valid),
        .s_axis_a_tdata(r0q0),
        .s_axis_a_tvalid(r0q0_valid),
        .s_axis_b_tdata(r1q1),
        .s_axis_b_tvalid(r1q1_valid));
  quarterion_mult_floating_sub_r0q3_r1q2_0 floating_sub_r0q3_r1q2
       (.aclk(clk),
        .m_axis_result_tdata(r0q3_minus_r1q2),
        .m_axis_result_tvalid(r0q3_minus_r1q2_valid),
        .s_axis_a_tdata(r0q3),
        .s_axis_a_tvalid(r0q3_valid),
        .s_axis_b_tdata(r1q2),
        .s_axis_b_tvalid(r1q2_valid));
  quarterion_mult_floating_sub_r2q0_r3q1_0 floating_sub_r2q0_r3q1
       (.aclk(clk),
        .m_axis_result_tdata(r2q0_minus_r3q1),
        .m_axis_result_tvalid(r2q0_minus_r3q1_valid),
        .s_axis_a_tdata(r2q0),
        .s_axis_a_tvalid(r2q0_valid),
        .s_axis_b_tdata(r3q1),
        .s_axis_b_tvalid(r3q1_valid));
  quarterion_mult_floating_sub_r3q2_r2q3_0 floating_sub_r3q2_r2q3
       (.aclk(clk),
        .m_axis_result_tdata(r3q2_minus_r2q3),
        .m_axis_result_tvalid(r3q2_minus_r2q3_valid),
        .s_axis_a_tdata(r3q2),
        .s_axis_a_tvalid(r3q2_valid),
        .s_axis_b_tdata(r2q3),
        .s_axis_b_tvalid(r2q3_valid));
  quarterion_mult_floating_sub_t0_0 floating_sub_t0
       (.aclk(clk),
        .m_axis_result_tdata(t0),
        .m_axis_result_tvalid(t0_valid),
        .s_axis_a_tdata(r0q0_minus_r1q1),
        .s_axis_a_tvalid(r0q0_minus_r1q1_valid),
        .s_axis_b_tdata(r2q2_plus_r3q3),
        .s_axis_b_tvalid(r2q2_plus_r3q3_valid));
endmodule
