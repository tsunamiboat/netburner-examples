`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 01:41:02 PM
// Design Name: 
// Module Name: quaterion_add
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module quaterion_add(
    input clk,
    input q00_valid,
    input [31:0] q00,
    input q01_valid,
    input [31:0] q01,
    input q02_valid,
    input [31:0] q02,
    input q03_valid,
    input [31:0] q03,
    input q10_valid,
    input [31:0] q10,
    input q11_valid,
    input [31:0] q11,
    input q12_valid,
    input [31:0] q12,
    input q13_valid,
    input [31:0] q13,
    output qr0_valid,
    output [31:0] qr0,
    output qr1_valid,
    output [31:0] qr1,
    output qr2_valid,
    output [31:0] qr2,
    output qr3_valid,
    output [31:0] qr3
    );
    
floating_point_1 floating_point_add0(clk, q00_valid, q00, q10_valid, q10, qr0_valid, qr0);
floating_point_1 floating_point_add1(clk, q01_valid, q01, q11_valid, q11, qr1_valid, qr1);
floating_point_1 floating_point_add2(clk, q02_valid, q02, q10_valid, q12, qr2_valid, qr2);
floating_point_1 floating_point_add3(clk, q03_valid, q03, q11_valid, q13, qr3_valid, qr3);
  
endmodule
