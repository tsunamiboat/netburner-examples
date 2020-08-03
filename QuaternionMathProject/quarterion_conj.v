`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2017 04:47:40 PM
// Design Name: 
// Module Name: quarterion_conj
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


module quarterion_conj(
    input [31:0] q0,
    input [31:0] q1,
    input [31:0] q2,
    input [31:0] q3,
    output [31:0] t0,
    output [31:0] t1,
    output [31:0] t2,
    output [31:0] t3
    );
    
    assign t0 = q0;
    assign t1 = {~q1[31], q1[30:0]};
    assign t2 = {~q2[31], q2[30:0]};
    assign t3 = {~q3[31], q3[30:0]};
    
endmodule
