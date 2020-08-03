`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2017 01:41:02 PM
// Design Name: 
// Module Name: quaterion_mult
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


module quaterion_mult(
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
    output qr_valid,
    output [31:0] qr
    );
    wire [31:0] qi00;
    wire [31:0] qi01;
    wire [31:0] qi02;
    wire [31:0] qi03;
    wire [31:0] qi10;
    wire [31:0] qi11;
    wire [31:0] qi12;
    wire [31:0] qi13;
    wire [31:0] qi20;
    wire [31:0] qi21;
    wire [31:0] qi22;
    wire [31:0] qi23;
    wire [31:0] qi30;
    wire [31:0] qi31;
    wire [31:0] qi32;
    wire [31:0] qi33;
        
        
        
floating_point_0 floating_point_mult_00(clk, q00_valid, q00, q10_valid, q10, qr_valid, qr00);
floating_point_0 floating_point_mult_01(clk, q00_valid, q00, q11_valid, q11, qr_valid, qr01);
floating_point_0 floating_point_mult_02(clk, q00_valid, q00, q12_valid, q12, qr_valid, qr02);
floating_point_0 floating_point_mult_03(clk, q00_valid, q00, q13_valid, q13, qr_valid, qr03);
floating_point_0 floating_point_mult_10(clk, q01_valid, q01, q10_valid, q10, qr_valid, qr10);
floating_point_0 floating_point_mult_11(clk, q01_valid, q01, q11_valid, q11, qr_valid, qr11);
floating_point_0 floating_point_mult_12(clk, q01_valid, q01, q12_valid, q12, qr_valid, qr12);
floating_point_0 floating_point_mult_13(clk, q01_valid, q01, q13_valid, q13, qr_valid, qr13);
floating_point_0 floating_point_mult_20(clk, q02_valid, q02, q10_valid, q10, qr_valid, qr20);
floating_point_0 floating_point_mult_21(clk, q02_valid, q02, q11_valid, q11, qr_valid, qr21);
floating_point_0 floating_point_mult_22(clk, q02_valid, q02, q12_valid, q12, qr_valid, qr22);
floating_point_0 floating_point_mult_23(clk, q02_valid, q02, q13_valid, q13, qr_valid, qr23);
floating_point_0 floating_point_mult_30(clk, q03_valid, q03, q10_valid, q10, qr_valid, qr30);
floating_point_0 floating_point_mult_31(clk, q03_valid, q03, q11_valid, q11, qr_valid, qr31);
floating_point_0 floating_point_mult_32(clk, q03_valid, q03, q12_valid, q12, qr_valid, qr32);
floating_point_0 floating_point_mult_33(clk, q03_valid, q03, q13_valid, q13, qr_valid, qr33);


endmodule
