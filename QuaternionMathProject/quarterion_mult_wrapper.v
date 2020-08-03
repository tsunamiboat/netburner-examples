//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
//Date        : Sat Jul 22 22:29:20 2017
//Host        : DESKTOP-7PGUGF9 running 64-bit major release  (build 9200)
//Command     : generate_target quarterion_mult_wrapper.bd
//Design      : quarterion_mult_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module quarterion_mult_wrapper
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
  wire [31:0]q1;
  wire [31:0]q2;
  wire [31:0]q3;
  wire [31:0]r0;
  wire [31:0]r1;
  wire [31:0]r2;
  wire [31:0]r3;
  wire [31:0]t0;
  wire [31:0]t1;
  wire [31:0]t2;
  wire [31:0]t3;
  wire valid_q0;
  wire valid_q1;
  wire valid_q2;
  wire valid_q3;
  wire valid_r0;
  wire valid_r1;
  wire valid_r2;
  wire valid_r3;
  wire valid_t0;
  wire valid_t1;
  wire valid_t2;
  wire valid_t3;

  quarterion_mult quarterion_mult_i
       (.clk(clk),
        .q0(q0),
        .q1(q1),
        .q2(q2),
        .q3(q3),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .valid_q0(valid_q0),
        .valid_q1(valid_q1),
        .valid_q2(valid_q2),
        .valid_q3(valid_q3),
        .valid_r0(valid_r0),
        .valid_r1(valid_r1),
        .valid_r2(valid_r2),
        .valid_r3(valid_r3),
        .valid_t0(valid_t0),
        .valid_t1(valid_t1),
        .valid_t2(valid_t2),
        .valid_t3(valid_t3));
endmodule
