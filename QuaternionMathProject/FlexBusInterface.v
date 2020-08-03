`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NetBurner, Inc.
// Engineer: Matt Brown
// 
// Create Date: 05/15/2017 06:58:37 PM
// Design Name: FlexBus Interface for the MOD5441X Processor
// Module Name: FlexBusInterface
// Project Name: 
// Target Devices: MICROZED board attached to MOD5441X
// Tool Versions: Vivado 2017.1, NBEclipse 2.8.2
// Description: This module will interface the Flexbus design on the MOD5441X by
//              listening on a given CS interface and reading back the data read
//              on separate CS interfaces, one for address, one for data.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FlexBusInterface(
    inout [31:0]  FB_AD,
    input [5:0]  bFB_CS,
    input [3:0]  bFB_BE,
    input        bFB_OE,
    input         FB_RbW,
    input         FB_ALE,
    input [1:0]   FB_TSIZ,
    input        bFB_TBST,
	input		  FB_CLK,
    output       bFB_TA
    );
    reg [31:0] address, data, out;
    reg [31:0] v [0:3];
    reg [31:0] r [0:3];
    wire [31:0] out_val [0:3];
    wire valid_result;
    wire [3:0] valid_v, valid_r;

always@(posedge FB_ALE)
    address <= FB_AD;

always@(negedge bFB_CS[1])
    if(!FB_RbW)
        data <= FB_AD;
        
always@(address or data or out_val)
case(address)
    32'h02000000: v[0] = data;
    32'h02000001: v[1] = data;
    32'h02000002: v[2] = data;
    32'h02000003: v[3] = data;
    
    32'h02000004: r[0] = data;
    32'h02000005: r[1] = data;
    32'h02000006: r[2] = data;
    32'h02000007: r[3] = data;
    
    32'h02000008: out = out_val[0];
    32'h02000009: out = out_val[1];
    32'h0200000A: out = out_val[2];
    32'h0200000B: out = out_val[3];
endcase

assign FB_AD = FB_RbW ? out: 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;

rotation rotation_math(
    .clk(FB_CLK),
    .v0(v[0]),
    .v1(v[1]),
    .v2(v[2]),
    .v3(v[3]),
    .valid_v(valid_v),
    .r0(r[0]),
    .r1(r[1]),
    .r2(r[2]),
    .r3(r[3]),
    .valid_r(valid_r),
    .out0(out_val[0]),
    .out1(out_val[1]),
    .out2(out_val[2]),
    .out3(out_val[3]),
    .valid_result(valid_result)
    );
    
assign bFB_TA = !valid_result;

endmodule
